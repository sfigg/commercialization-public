---
author: joshbax-msft
title: Extracting Log Files from a Package
description: Extracting Log Files from a Package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5d27bc82-4304-4ff0-a7be-ec14748550da
---

# Extracting Log Files from a Package


The following code sample shows you how to extract log files from a package.

## <a href="" id="c-"></a>C#


``` syntax
//-----------------------------------------------------------------------
// <copyright file="CreateAPackage.cs" company="Microsoft">
//    Copyright (c) Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

[assembly: System.CLSCompliant(true)]
namespace Microsoft.Windows.Kits.Samples
{
    using System;
    using System.Collections.ObjectModel;
    using System.IO;
    using System.Linq;
    using System.Collections.Generic;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.Submission;


    internal static class ProgramSettings
    {
        internal static string PackagesDir = null;
        internal static string PackageFile = null;
        internal static bool ExtactLogs = false;
        internal static string LogsDir = null;
        internal static TextWriter Log = null;
        internal static string LogFile = null;
        internal static List<string> HCKCategoryLevels = null;

    }

    internal static class Constants
    {
        internal const string HckxExt = ".hckx";
        internal const string DefaultLogName = "PackageAnalysisLog.txt";
    }
    public class PackageLogExtractor
    {
        static void Main(string[] args)
        {
            if (false == ParseArgs(args))
            {
                ShowUsage();
                return;
            }
            PackageAnalyze(); // all the command line work.

            if (ProgramSettings.Log != null)
            {
                ProgramSettings.Log.Dispose();
            }
        }
        static void ShowUsage()
        {
            string usage = "";


            usage += Environment.NewLine + "PackageLogExtractor.exe [/PackagesDir=<path>]" +
                     Environment.NewLine + "                   [/PackageFile=<path>]" +
                     Environment.NewLine + "                   [/ExtractLogsTo=<path>]" +
                     Environment.NewLine + "                   [/LogFile=<path>]" +
                     Environment.NewLine + "                   [/HCKLevelFilters=<Level1, Level2, ...>]" +
                     Environment.NewLine +
                     Environment.NewLine + "Any parameter in [] is optional." +
                     Environment.NewLine + "Atleast /PackagesDir or /PackageFile must be specified" +
                     Environment.NewLine +
                     Environment.NewLine + "PackageLogExtractor.exe /PackageFile=[FullPathwithHCKFILE.hckx] /LogFile=[FullPathwithLogFileName]" +
                     Environment.NewLine +
                     Environment.NewLine + "Parameter Descriptions:" +
                     Environment.NewLine + "======================================================================" +
                     Environment.NewLine +
                     Environment.NewLine + "PackagesDir:   Directory to recursively search for Hckx files." +
                     Environment.NewLine +
                     Environment.NewLine + "PackageFile:   Path to single Hckx file to process" +
                     Environment.NewLine +
                     Environment.NewLine + "ExtractLogsTo: Path to directory where extracted logs will be stored" +
                     Environment.NewLine +
                     Environment.NewLine + "LogFile:       Path to file where to write the logging output to." +
                     Environment.NewLine +
                     Environment.NewLine + "HCKLevelFilters:    A CSV list of HCK Content Categorization levels.  Any combination of the following is supported: " +
                     Environment.NewLine + "                        Basic, Certification, Experiences, Functional, Optional, Reliability." +
                     Environment.NewLine + "                        Default is all levels." +
                     Environment.NewLine +
                     Environment.NewLine;


            Console.WriteLine(usage);

        }


        static bool ParseArgs(string[] args)
        {

            if ((args.Length == 0) || (args[0].Contains("?")))
            {
                return false;
            }

           foreach (string arg in args)
            {
                if (arg.StartsWith("/PackagesDir=", StringComparison.OrdinalIgnoreCase))
                {
                    ProgramSettings.PackagesDir = Path.GetFullPath(arg.Substring("/PackagesDir=".Length));
                }
                else if (arg.StartsWith("/PackageFile=", StringComparison.OrdinalIgnoreCase))
                {
                    ProgramSettings.PackageFile = Path.GetFullPath(arg.Substring("/PackageFile=".Length));
                }
                else if (arg.StartsWith("/ExtractLogsTo=", StringComparison.OrdinalIgnoreCase))
                {
                    ProgramSettings.LogsDir = Path.GetFullPath(arg.Substring("/ExtractLogsTo=".Length));
                    ProgramSettings.ExtactLogs = true;
                }
                else if (arg.StartsWith("/LogFile=", StringComparison.OrdinalIgnoreCase))
                {
                    string logFile = Path.GetFullPath(arg.Substring("/LogFile=".Length));

                    if (!Directory.Exists(Path.GetDirectoryName(logFile)))
                    {
                        Directory.CreateDirectory(Path.GetDirectoryName(logFile));
                    }
                    ProgramSettings.LogFile = logFile;
                    if (false == string.IsNullOrWhiteSpace(ProgramSettings.LogFile))
                    {
                        try
                        {
                            ProgramSettings.Log = new StreamWriter(ProgramSettings.LogFile);
                        }
                        catch (Exception e)
                        {
                            Console.WriteLine(e.ToString());
                        }
                    }

                }
                else if (arg.StartsWith("/HCKLevelFilters=", StringComparison.OrdinalIgnoreCase))
                {
                    ProgramSettings.HCKCategoryLevels =
                        new List<String>(arg.Substring("/HCKLevelFilters=".Length).ToUpperInvariant().Split(','));
                }
                else
                {
                    Console.WriteLine("Unrecognized parameter: " + arg);
                    return false;
                }
            }
            return true;
        }

        private static void WriteMessage(string message, params object[] args)
        {
            if (ProgramSettings.Log != null)
            {
                if (args.Length > 0)
                {
                    ProgramSettings.Log.WriteLine(message, args);
                }
                else
                {
                    ProgramSettings.Log.WriteLine(message);
                }
            }
            else
            {
                Console.WriteLine(message, args);
            }
        }

        /// 
        /// <summary>
        /// The Parse engine.
        /// </summary>
        /// 
        public static void PackageAnalyze()
        {

            string[] packageFiles;
            PackageManager manager = null;
            List<ContentLevelType> hckCategoryLevels = null;


            //
            // Check category levels
            //
            if (null == ProgramSettings.HCKCategoryLevels)
            {
                hckCategoryLevels = new List<ContentLevelType>
                {
                    ContentLevelType.Basic,
                    ContentLevelType.Certification,
                    ContentLevelType.Experiences,
                    ContentLevelType.Functional,
                    ContentLevelType.Optional,
                    ContentLevelType.Reliability
                }; 
            }
            else if (0 != ProgramSettings.HCKCategoryLevels.Count)
            {
                hckCategoryLevels = new List<ContentLevelType>();

                foreach (string cl in ProgramSettings.HCKCategoryLevels)
                {
                    if ("Basic".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Basic);
                    }
                    else if ("Certification".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Certification);
                    }
                    else if ("Experiences".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Experiences);
                    }
                    else if ("Functional".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Functional);
                    }
                    else if ("Optional".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Optional);
                    }
                    else if ("Reliability".ToUpperInvariant().Equals(cl.ToUpperInvariant()))
                    {
                        hckCategoryLevels.Add(ContentLevelType.Reliability);
                    }
                    else
                    {
                        Console.WriteLine(
                            string.Format(
                            "Invalid category level supplied {0}. \nAborting filtering and using all category levels.",
                            cl));


                        //
                        // Just stomp on it with a new one.
                        //
                        hckCategoryLevels = new List<ContentLevelType>
                        {
                            ContentLevelType.Basic,
                            ContentLevelType.Certification,
                            ContentLevelType.Experiences,
                            ContentLevelType.Functional,
                            ContentLevelType.Optional,
                            ContentLevelType.Reliability
                        };
                    }
                }
            }
            if (string.IsNullOrEmpty(ProgramSettings.PackageFile) == false)
            {
                packageFiles = new string[] { ProgramSettings.PackageFile };
            }
            else
            {
                packageFiles = Directory.GetFiles(ProgramSettings.PackagesDir, "*.hckx", SearchOption.AllDirectories);
            }
            if (packageFiles.Count() == 0)
            {
                Console.WriteLine("No files in the specified directory");
            }
            else
            {

                foreach (var file in packageFiles)
                {
                    try
                    {

                        WriteMessage("Process package {0}.", file);
                        manager = new PackageManager(file);

                        IList<Test> reportedTests = null;
                        List<Project> packageProjects = new List<Project>();
                        ReadOnlyCollection<string> projectNames = manager.GetProjectNames();
                        //
                        // First see if there's only 1 test result in this package. if so, don't create seperate sub directories for each result
                        //
                        foreach (var projectName in projectNames)
                        {
                            WriteMessage("Validating project: " + projectName);

                            bool packageHasResults = false;
                            ProjectInfo pi = manager.GetProjectInfo(projectName);
                            
                            //
                            // We need to check results for every content level to make sure 
                            //
                            foreach (ContentLevelRollupInfo cl in pi.RollupSummaryByContentLevels)
                            {
                                WriteMessage(
                                        string.Format(
                                        ("Content level: {0}" +
                                        "\n\tNot run test count: {1} equals total test run count: {2}"),
                                        cl.ContentLevel,
                                        cl.NotRunCount,
                                        cl.TotalCount));

                                // 
                                // See if the user wants to look for these levels first.
                                //
                                if (!hckCategoryLevels.Contains(cl.ContentLevel))
                                {
                                    WriteMessage(
                                        "Analyzer not configured to check results for content level: " + cl.ContentLevel);

                                    continue;
                                }
                                //
                                // There wasn't anything run, so no files are going to exist.
                                // The OM is going to choke if you try to extract the log files later
                                // on.
                                //
                                if (cl.TotalCount == 0)
                                {
                                    WriteMessage("No results for content level.");
                                    continue;
                                }
                                else
                                {
                                    WriteMessage(
                                        string.Format(
                                        ("Results count for content level: {0} \n\t" +
                                        "Pass - {1} Fail - {2} Running - {3} NotRun - {4} Total - {5}"),
                                        cl.ContentLevel,
                                        cl.PassedCount,
                                        cl.FailedCount,
                                        cl.RunningCount,
                                        cl.NotRunCount,
                                        cl.TotalCount));

                                    packageHasResults = true;
                                }
                            }
                            if (true == packageHasResults)
                            {
                                var project = manager.GetProject(projectName);
                                packageProjects.Add(project);

                                //
                                // Report only tests which have results > 0.
                                //
                                reportedTests =
                                    project.GetTests(hckCategoryLevels).Where(t => (t.GetTestResults().Count > 0)).ToList();
                                foreach (var test in reportedTests)
                                {
                                    int resultCounter = 1;

                                    foreach (var result in test.GetTestResults())
                                    {

                                        WriteMessage("=============================================");
                                        string testTargetDevice = string.Join("; ", from a in test.GetTestTargets()
                                                                                    select a.Name);

                                        WriteMessage("Test         : " + test.Name);
                                        WriteMessage("Target       : " + testTargetDevice);
                                        WriteMessage("RunTime (min): " + System.Math.Round((result.CompletionTime - result.StartTime).TotalMinutes));


                                        string logsDir = ProgramSettings.LogsDir;

                                        if (false == string.IsNullOrWhiteSpace(ProgramSettings.LogsDir))
                                        {
                                            logsDir = Path.Combine(ProgramSettings.LogsDir, project.Name, test.Name, "Result" + resultCounter.ToString(), test.GetTestTargets().First().Name);

                                            foreach (var log in result.GetLogs().Where(x => x.LogType == LogType.TestRun))
                                            {
                                                log.WriteLogTo(Path.Combine(logsDir, "JobLogs", log.Name));
                                            }
                                            foreach (var log in result.GetLogs().Where(x => x.LogType == LogType.Gatherer))
                                            {
                                                log.WriteLogTo(Path.Combine(logsDir, "GathererLogs", log.Name));
                                            }
                                            foreach (var target in test.GetTestTargets())
                                            {

                                                string targetXmlDir = Path.Combine(logsDir, @"..\", "TargetXml");
                                                if (!Directory.Exists(targetXmlDir))
                                                {
                                                    try
                                                    {
                                                        Directory.CreateDirectory(targetXmlDir);
                                                    }
                                                    catch (Exception e)
                                                    {
                                                        Console.WriteLine("Directory creation failed", e.ToString());

                                                    }
                                                }

                                                File.WriteAllText(Path.Combine(targetXmlDir, (target.Name.Replace(" ", "_") + "_" + target.Machine.Name + ".xml")), target.XmlData);
                                            }

                                            ProcessResult(result.GetTasks(), Path.Combine(logsDir, "TaskLogs"), test);
                                        }
                                        else
                                        {

                                            ProcessResult(result.GetTasks(), null, test);
                                        }
                                        WriteMessage("=============================================");
                                        resultCounter++;
                                    }
                                }
                            }
                        }
                    }
                    catch (Exception e)
                    {
                        WriteMessage(e.ToString());
                        Console.WriteLine(e);
                    }
                    finally
                    {
                        if (manager != null)
                            manager.Dispose();
                        manager = null;
                    }

                    if (ProgramSettings.Log != null)
                    {
                        ProgramSettings.Log.Flush();
                    }
                }
            }
        }

        ///
        /// internal static void 
        ///     ProcessResult(Task taskToProcess, string baseLogsDir, Test test, int indentLevel = 1)
        ///     
        /// <summary>
        /// The primary result processing engine.  Extracts log files for test tasks, validates results should
        /// be reported for the task based on the WTT Task configuration extracted from the WTT infrastructure
        /// log(s) and stored in the WTTTaskLogData list.
        /// 
        /// This is a recursive method as a particular task can have (n) child tasks.
        /// </summary>
        /// 
        /// <param name="taskToProcess">
        /// The HCK Task to process results for.
        /// </param>
        /// <param name="baseLogsDir">
        /// Root log directory for the WTT Log files.
        /// </param>
        /// <param name="test">
        /// The root HCK Test Object.
        /// </param>
        /// <param name="mergedWttLog">
        /// Instance of the WTT Log we're pushing context in and out of
        /// </param>
        /// <param name="indentLevel">
        /// For output purposes, indentation of the task information presented in the console window.
        /// </param>
        ///                        
        internal static void ProcessResult(IEnumerable<Task> tasksToProcess, string baseLogsDir, Test test, int indentLevel = 1)
        {

            List<Task> tasks = null;

            tasks = tasksToProcess.OrderBy(x => x.TestResult.StartTime).ToList();

            if (tasks.Count == 0)
            {
                return;
            }

            string msgIndent = new string('\t', indentLevel - 1);
            foreach (var task in tasks)
            {           
                if (string.IsNullOrWhiteSpace(baseLogsDir))
                {
                    if (task.TaskType.Equals("RunJob", StringComparison.OrdinalIgnoreCase))  // recurse
                    {
                        ProcessResult(task.GetChildTasks(), null, test, indentLevel + 1);
                    }
                }
                else
                {
                    string taskLogsDir = Path.Combine(baseLogsDir, task.Stage, task.Name);

                    if (task.TaskType.Equals("RunJob", StringComparison.OrdinalIgnoreCase))  // recurse
                    {
                        taskLogsDir = Path.Combine(baseLogsDir, task.Stage, "RunJob-" + task.Name);
                        ProcessResult(task.GetChildTasks(), taskLogsDir, test, indentLevel + 1);
                    }
                    else
                    {
                        foreach (var log in task.GetLogFiles())
                        {
                            log.WriteLogTo(Path.Combine(taskLogsDir, log.Name));
                        }
                    }
                }
            }
        }
    }
}
```

 

 






