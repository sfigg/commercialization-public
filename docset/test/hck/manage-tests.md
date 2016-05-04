---
author: joshbax-msft
title: Manage Tests
description: Manage Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 188043ce-3927-4165-9ff4-cd000cec04f6
---

# Manage Tests


The following code sample shows how to enumerate, retrieve and schedule tests in a project by content levels. It enumerates all tests in a project and gives a project test summary for content level type.

A test can be mapped to at least one of the 6 content level types:

1.  Basic

2.  Functional

3.  Reliability

4.  Certification

5.  Experiences

6.  Optional

The sample also shows how we can schedule only "Basic" tests in a Project.

## GetRollupsByContentLevel Sample


**C#**

``` syntax
// ------------------------------------------------------------------------------------------------
// <copyright file="GetRollupsByContentLevel.cs" company="Microsoft">
//   Copyright (c) Microsoft Corporation. All rights reserved.
// </copyright>
// ------------------------------------------------------------------------------------------------

//[assembly: System.CLSCompliant(true)]

namespace Microsoft.Windows.Kits.Samples.ContentLevel
{
    using System;
    using System.Collections.ObjectModel;

    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;

    /// <summary>
    /// Sample code for getting test roll-up by content level
    /// </summary>
    public class GetRollupsByContentLevel
    {
        /// <summary>
        /// Prevents a default instance of the <see cref="GetRollupsByContentLevel"/> class from being created.
        /// </summary>
        private GetRollupsByContentLevel()
        {
        }

        /// <summary>
        /// Entry point method for the sample application
        /// </summary>
        /// <param name="args">standard parameter arguments</param>
        public static void Main(string[] args)
        {
            string controllerName;
            string projectName;
            if (args.Length == 2)
            {
                controllerName = args[0];
                projectName = args[1];
            }
            else
            {
                Console.WriteLine("Usage:\tGetRollupsByContentLevel.exe [ControllerMachineName] [ProjectName]");
                return;
            }

            // first we need to connect to the Server
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            // load the project
            Project project = manager.GetProject(projectName);

            // Let's retrieve the new property that returns project test roll-up for each content level type
            ReadOnlyCollection<ContentLevelRollupInfo> rollupSummaryByContentLevels = project.Info.RollupSummaryByContentLevels;

            Console.Out.WriteLine("Roll-up summary by content level for project: '{0}'", projectName);
            foreach (ContentLevelRollupInfo rollupInfo in rollupSummaryByContentLevels)
            {
                Console.Out.WriteLine("\tSummary for '{0}' level:", rollupInfo.ContentLevel);
                Console.Out.WriteLine("\t\tFailedCount: {0}", rollupInfo.FailedCount);
                Console.Out.WriteLine("\t\tNotRunCount: {0}", rollupInfo.NotRunCount);
                Console.Out.WriteLine("\t\tPassedCount: {0}", rollupInfo.PassedCount);
                Console.Out.WriteLine("\t\tRunningCount: {0}", rollupInfo.RunningCount);
                Console.Out.WriteLine("\t\tTotalCount: {0}", rollupInfo.TotalCount);
                Console.Out.WriteLine("\t\tStatus: {0}", rollupInfo.Status);
            }

            // Other existing properties in ProjectInfo will now only return roll-up counts for tests that are mapped to certification content level
            // this to keep backwards compatibility with HCK 2.0 OM API
            ProjectInfo projectInfo = project.Info;
            Console.Out.WriteLine();
            Console.Out.WriteLine("\tCurrent Roll-up properties should be same as the roll-up counts for 'Certification' level");
            Console.Out.WriteLine("\t\tFailedCount: {0}", projectInfo.FailedCount);
            Console.Out.WriteLine("\t\tNotRunCount: {0}", projectInfo.NotRunCount);
            Console.Out.WriteLine("\t\tPassedCount: {0}", projectInfo.PassedCount);
            Console.Out.WriteLine("\t\tRunningCount: {0}", projectInfo.RunningCount);
            Console.Out.WriteLine("\t\tTotalCount: {0}", projectInfo.TotalCount);
            Console.Out.WriteLine("\t\tStatus: {0}", projectInfo.Status);
        }
    }
}
```

**Windows PowerShell®**

``` syntax
. ..\Initialization.ps1

Clear-Host
$Manager = Initialize

#Load Project
$Project = $Manager.GetProject("SampleTestProject")

#Let's retrieve the new property that returns project test roll-up for each content level type
$RollupSummaryByContentLevels = $Project.Info.RollupSummaryByContentLevels

Write-Host ("Roll-up summary by content level for project: '{0}'" -f $Project.Name)
foreach ($RollupInfo in rollupSummaryByContentLevels)
{
Write-Host ("Summary for '{0}' level:" -f $RollupInfo.ContentLevel)
Write-Host ("FailedCount: {0}" -f $RollupInfo.FailedCount)
Write-Host ("NotRunCount: {0}" -f $RollupInfo.NotRunCount)
Write-Host ("PassedCount: {0}" -f $RollupInfo.PassedCount)
Write-Host ("RunningCount: {0}" -f $RollupInfo.RunningCount)
Write-Host ("TotalCount: {0}" -f $RollupInfo.TotalCount)
Write-Host ("Status: {0}" -f $RollupInfo.Status)
}

#Other existing properties in ProjectInfo will now only return roll-up counts for tests that are mapped to certification content level
#this to keep backwards compatibility with HCK 2.0 OM API
$ProjectInfo = $Project.Info
Write-Host ""
Write-Host "Current Roll-up properties should be same as the roll-up counts for 'Certification' level"
Write-Host ("FailedCount: {0}" -f $ProjectInfo.FailedCount)
Write-Host ("NotRunCount: {0}" -f $ProjectInfo.NotRunCount)
Write-Host ("PassedCount: {0}" -f $ProjectInfo.PassedCount)
Write-Host ("RunningCount: {0}" -f $ProjectInfo.RunningCount)
Write-Host ("TotalCount: {0}" -f $ProjectInfo.TotalCount)
Write-Host ("Status: {0}" -f $ProjectInfo.Status)
```

## ScheduleTestsByContentLevel Sample


**C#**

``` syntax
// ------------------------------------------------------------------------------------------------
// <copyright file="ScheduleTestsByContentLevel.cs" company="Microsoft">
//   Copyright (c) Microsoft Corporation. All rights reserved.
// </copyright>
// ------------------------------------------------------------------------------------------------

[assembly: System.CLSCompliant(true)]

namespace Microsoft.Windows.Kits.Samples.ContentLevel
{
    using System;
    using System.Collections.Generic;
    using System.Linq;

    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;

    /// <summary>
    /// Sample code for enumerating tests by content level
    /// </summary>
    public class ScheduleTestsByContentLevel
    {
        /// <summary>
        /// Prevents a default instance of the <see cref="ScheduleTestsByContentLevel"/> class from being created. 
        /// </summary>
        private ScheduleTestsByContentLevel()
        { 
        }

        /// <summary>
        /// Entry point method for the sample application
        /// </summary>
        /// <param name="args">standard parameter arguments</param>
        public static void Main(string[] args)
        {
            string controllerName;
            string projectName;
            if (args.Length == 2)
            {
                controllerName = args[0];
                projectName = args[1];
            }
            else
            {
                Console.WriteLine("Usage:\tScheduleTestsByContentLevel.exe [ControllerMachineName] [ProjectName]");
                return;
            }

            // first we need to connect to the Server
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            // load the project
            Project project = manager.GetProject(projectName);

            // Calling the default GetTests() method will now return tests that are mapped to certification content level
            // this to keep backwards compatibility with HCK 2.0 OM API
            IList<Test> tests = project.GetTests();
            Console.Out.WriteLine("Assertion for all tests mapped to certification level should be true: {0}", tests.All(test => test.ContentLevels.Contains(ContentLevelType.Certification)));

            /*
             * Let's now get project test summary for all content levels.
             */
            List<ContentLevelType> contentLevelTypes = new List<ContentLevelType>
                                                           {
                                                               ContentLevelType.Basic,
                                                               ContentLevelType.Functional,
                                                               ContentLevelType.Reliability,
                                                               ContentLevelType.Certification,
                                                               ContentLevelType.Experiences,
                                                               ContentLevelType.Optional
                                                           };
            tests = project.GetTests(contentLevelTypes);
            Console.Out.WriteLine("Test summary for project '{0}'", project.Name);
            Console.Out.WriteLine("\t Basic tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Basic)));
            Console.Out.WriteLine("\t Functional tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Functional)));
            Console.Out.WriteLine("\t Reliability tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Reliability)));
            Console.Out.WriteLine("\t Certification tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Certification)));
            Console.Out.WriteLine("\t Experiences tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Experiences)));
            Console.Out.WriteLine("\t Optional tests: '{0}'", tests.Count(test => test.ContentLevels.Contains(ContentLevelType.Optional)));
            Console.Out.WriteLine("\t Total tests: '{0}'", tests.Count);
            
            /*
             * Scheduling tests based on Content level.
             * Here, we use the existing project.GetTests() method and then filter tests for a specific content level ("Basic")
             */

            // this will retrieve all jobs/tests that are tagged with "Basic" content level
            tests = project.GetTests(new[] { ContentLevelType.Basic });

            // this will schedule "Basic" jobs/tests that we just retrieved
            foreach (Test test in tests)
            {
                Console.Out.WriteLine("Scheduling 'Basic' test: '{0}'", test.Name);
                test.QueueTest();
            }

            /*
             * Scheduling tests based on multiple content levels
             * Here, we use the existing project.GetTests() method and then filter tests for a specific set of content levels ("Basic" and "Reliability")
             */

            // this will retrieve all jobs/tests that are tagged with "Basic" and "Reliability" content level
            tests = project.GetTests(new[] { ContentLevelType.Basic, ContentLevelType.Reliability });

            // this will schedule "Basic" and "Reliability" jobs/tests that we just retrieved
            foreach (Test test in tests)
            {
                Console.Out.WriteLine("Scheduling test: '{0}'", test.Name);
                test.QueueTest();
            }

             /* 
              * Scheduling tests based on multiple content levels using the new method - project.GetTests(contentLevels)
              * Here, we use the new method project.GetTests(contentLevels) to retrieve tests only for a specific set of content levels ("Functional" and "Reliability")
              */

            // let's retrieve tests for "Functional" and "Reliability" content levels
            List<ContentLevelType> contentLevels = new List<ContentLevelType>
                                                       {
                                                           ContentLevelType.Functional, 
                                                           ContentLevelType.Reliability
                                                       };
            tests = project.GetTests(contentLevels);

            // this will schedule "Functional" and "Reliability" jobs/tests that we just retrieved
            foreach (Test test in tests)
            {
                Console.Out.WriteLine("Scheduling test: '{0}'", test.Name);
                test.QueueTest();
            }

            // calling GetTests(contentLevels) method with an empty list of content levels will return an empty set of tests
            tests = project.GetTests(new List<ContentLevelType>());
            Console.Out.WriteLine("Tests count should be zero. Count: {0}", tests.Count);
        }
    }
}
```

**Windows PowerShell®**

``` syntax
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dbconnection.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.submission.dll")

$connectFileName = $env:WTTSTDIO + "connect.xml"
Write-Host Opening connection file $connectFileName
$connectFile = [xml](Get-Content $connectFileName)

$ControllerName = $connectFile.Connection.GetAttribute("Server")
$DatabaseName = $connectFile.Connection.GetAttribute("Source")


Clear-Host
$Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection.DatabaseProjectManager -Args $ControllerName, $DatabaseName


#Load Project
$Project = $Manager.GetProject("system test")

#let's define enumerations for all content levels
$BasicTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Basic
$FunctionalTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Functional
$ReliabilityTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Reliability
$CertificationTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Certification
$ExperiencesTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Experiences
$OptionalTestContentLevel = [Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]::Optional

# Calling the default GetTests() method will now return tests that are mapped to certification content level
# this to keep backwards compatibility with HCK 2.0 OM API
$Tests = $Project.GetTests()
Write-Host ("Assertion for all tests mapped to certification level should be true: {0}", ($Tests | where {-not $_.ContentLevels.Contains($CertificationTestContentLevel)}).Length -eq 0)

#Project test summary for each content levels.
$allContentLevels = New-Object "System.Collections.Generic.List[Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]"
@($BasicTestContentLevel, $FunctionalTestContentLevel, $ReliabilityTestContentLevel, $CertificationTestContentLevel, $ExperiencesTestContentLevel, $OptionalTestContentLevel) |% {$allContentLevels.Add($_)}
$allContentLevels

$Tests = $Project.GetTests($allContentLevels)

Write-Host ("Test summary for project {0}" -f $Project.Name)
Write-Host ("Basic tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($BasicTestContentLevel)}).Length)
Write-Host ("Functional tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($FunctionalTestContentLevel)}).Length)
Write-Host ("Reliability tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($ReliabilityTestContentLevel)}).Length)
Write-Host ("Certification tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($CertificationTestContentLevel)}).Length)
Write-Host ("Experiences tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($ExperiencesTestContentLevel)}).Length)
Write-Host ("Optional tests: {0}" -f ($Tests | where { $_.ContentLevels.Contains($OptionalTestContentLevel)}).Length)
Write-Host ("Total tests: {0}" -f ($Tests.Count))

#schedule all basic tests in the project
$contentLevels = New-Object "System.Collections.Generic.List[Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]"
$contentLevels.Add($BasicTestContentLevel)
foreach($Test in $Project.GetTests($contentLevels))
{
Write-Host ("Scheduling 'Basic' test: {0}" -f $Test.Name)
$Test.QueueTest()
}

# Scheduling tests based on multiple content levels using the new method - project.GetTests(contentLevels)
# Here, we use the new method project.GetTests(contentLevels) to retrieve tests only for a specific set of content levels ("Functional" and "Reliability")
$contentLevels = New-Object "System.Collections.Generic.List[Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]"
@($FunctionalTestContentLevel, $ReliabilityTestContentLevel) |% {$contentLevels.Add($_)}
foreach($Test in $Project.GetTests($contentLevels))
{
Write-Host ("Scheduling 'Basic' test: {0}" -f $Test.Name)
$Test.QueueTest()
}

#calling GetTests(contentLevels) method with an empty list of content levels will return an empty set of tests
$contentLevels = New-Object "System.Collections.Generic.List[Microsoft.Windows.Kits.Hardware.ObjectModel.ContentLevelType]"
$Tests = $Project.GetTests($contentLevels)
Write-Host ("Tests count should be zero. Count: {0}" -f $Tests.Count)


# Sample code for creating a new project and scheduling Basic tests
# create the project name
$now = [System.DateTime]::Now
$ProjectName = "SampleContentLevelTestProject $now" 


$RootPool = $Manager.GetRootMachinePool()
$DefaultPool = $RootPool.DefaultPool

# create the pool
$TestPool = $RootPool.GetChildPools() | Where {$_.Name -eq "TestPool" }[0]
if ($TestPool -eq $null)
{
    $TestPool = $RootPool.CreateChildPool("TestPool")
}

# move all machines in the default pool
$DefaultPool.GetMachines() | foreach {
    write-host $_.Name
    $DefaultPool.MoveMachineTo($_, $TestPool)
    }

#reset all machines
$TestPool.GetMachines() | foreach { $_.SetMachineStatus([Microsoft.Windows.Kits.Hardware.ObjectModel.MachineStatus]::Ready, 1) }

#-----------
# Creating a project
#-----------
$Project = $manager.CreateProject($ProjectName)
Write-Host "created a project named : "$Project.Name

$OSPlatform = $TestPool.GetMachines()[0].OSPlatform
$ProductInstance = $Project.CreateProductInstance("My Product Instance",
                                                 $TestPool,
                                                 $OSPlatform)

# this will find all systems in the test pool, and return those as a list of system test targets
$data = $ProductInstance.FindTargetFromSystem()


# for now, just use the first one found
Write-Host "Creating a target for " $data[0].Name
$Target = $ProductInstance.CreateTarget($data[0])
write-Host Successfully created a Target for $Target.Name that has $Target.GetTests().Count tests

# Schedule "Basic" test - i.e., tests that is marked as "Basic" content level
# Get the first "Basic" test and schedule it
$Test = $Target.GetTests() | where { $_.ContentLevels.Contains($BasicTestContentLevel)}[0]
$Test.QueueTest()
```

 

 






