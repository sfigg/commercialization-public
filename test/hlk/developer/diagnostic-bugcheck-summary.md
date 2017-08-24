---
title: Diagnostic Bugcheck Summary
description: Diagnostic Bugcheck Summary
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4F0CC716-DDD1-4F89-B0B4-A035BDF3E000
---

# Diagnostic Bugcheck Summary


This sample shows how to retrieve and display a diagnostic bugcheck summary for a test that fails during a system crash.

**Note**  This feature is available only for Desktop client and server machines.

 

## <span id="C_"></span><span id="c_"></span>**C#**


``` syntax
//-----------------------------------------------------------------------
// <copyright file="DiagnosticSummary.cs" company="Microsoft">
//    Copyright (c) Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

namespace Microsoft.Windows.Kits.Samples
{
    using System;
    using System.Collections.ObjectModel;
    using System.Linq;
    using System.Threading;
    using System.Xml;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.Submission;
    using Microsoft.Windows.Kits.Hardware.DiagnosticSummary;

    public static class DiagnosticSummary
    {
        static ProjectManager ConnectToLocalServer()
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(Environment.ExpandEnvironmentVariables(@"%WTTSTDIO%\\connect.xml"));
            XmlNode root = doc.SelectSingleNode("/Connection");
            string controllerName = root.Attributes["Server"].Value;
            string databaseName = root.Attributes["Source"].Value;

            DatabaseProjectManager manager = new DatabaseProjectManager(controllerName, databaseName);
            Console.WriteLine("Connected to database {0} on controller {1}", databaseName, controllerName);

            return manager;
        }

        public static void Main(string[] args)
        {
            try
            {
                // Note: Diagnostic Bugcheck Summary is only supported on Desktop based HLK Clients (Device Under Tests)
                string projectName = "TestProjectWithBugcheck";
                if (args.Length == 1)
                {
                    projectName = args[0];
                }

                ProjectManager manager = ConnectToLocalServer();

                // Find and load the project object
                Project project = manager.GetProject(projectName);
                if (project != null)
                {
                    Console.WriteLine("Loaded project: {0}", projectName);
                    foreach (var productInstance in project.GetProductInstances())
                    {
                        foreach (var targetFamily in productInstance.GetTargetFamilies())
                        {
                            foreach (var testResult in targetFamily.GetTestResults())
                            {
                                // Get diagnostic summary for the test result
                                DiagnosticSummaryLog diagnosticSummary = testResult.GetDiagnosticSummaryLog();
                                if (diagnosticSummary != null && diagnosticSummary.BugcheckSummary != null)
                                {
                                    // Display bugcheck summary if available
                                    Console.WriteLine(" Bugcheck summary for Test: {0}", testResult.Test.Name);
                                    Console.WriteLine("    Details - {0}", diagnosticSummary.BugcheckSummary.ToString());
                                }
                            }
                        }
                    }
                }
            }
            catch (ProjectException e)
            {
                System.Console.WriteLine(e);
            }
        }
    }
}
        
```

## <span id="PowerShell"></span><span id="powershell"></span><span id="POWERSHELL"></span>**PowerShell**


``` syntax
Param
(
    [Parameter(Mandatory=$true, Position=0, HelpMessage="HLK Controller name. Mandatory parameter.")]
    [string]$ControllerName,

    [Parameter(Mandatory=$true, Position=1, HelpMessage="HLK Project name. Mandatory parameter.")]
    [string]$ProjectName
)

function Initialize()
{
#Pre-load all binaries from the studio directory
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dbconnection.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.submission.dll")    
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.Package.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.DiagnosticSummary.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.Logging.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.TraceLoggingSupport.dll")
    $ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Diagnostics.Tracing.EventSource.dll")
}

Clear-Host

Write-Host "Usage: %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe -file DiagnosticSummary.ps1 <<ControllerName>> <<ProjectName>>"

#Diagnostic Bugcheck Summary is only supported on Desktop based HLK Clients (Device Under Tests)
Initialize
$ProjectManager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection.DatabaseProjectManager -Args $ControllerName

#Try loading given project
$Project = $ProjectManager.GetProject($ProjectName)
if ($Project -ne $null)
{
    "Loaded project: {0}" -f $ProjectName
    foreach ($ProductInstance in $Project.GetProductInstances())
    {
        foreach ($TargetFamily in $ProductInstance.GetTargetFamilies())
        {
            foreach ($TestResult in $TargetFamily.GetTestResults())
            {
#Get diagnostic summary for the test result
                $DiagnosticSummary = $TestResult.GetDiagnosticSummaryLog()
                if (($DiagnosticSummary -ne $null) -and ($DiagnosticSummary.BugcheckSummary -ne $null))
                {
#Display bugcheck summary if available
                    "   Bugcheck summary for Test: {0}" -f $TestResult.Test.Name
                    "      Details - {0}" -f $DiagnosticSummary.BugcheckSummary.ToString()
                }           
            }
        }
    }
}
else
{
    Write-Host "Could not find project {0}" -f $ProjectName
}

                
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Diagnostic%20Bugcheck%20Summary%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




