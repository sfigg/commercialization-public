---
author: joshbax-msft
title: List Projects
description: List Projects
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fd4c6b6c-2a68-48e3-a71f-b639ff7706da
---

# List Projects


These samples list all projects in a controller and print basic information about each project.

## <a href="" id="c-"></a>C#


``` syntax
//-----------------------------------------------------------------------
// <copyright file="ListProjects.cs" company="Microsoft">
//    Copyright (c) Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

namespace Samples
{
    using System;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;

    class ListProjects
    {
        public static void Main(string[] args)
        {
            string controllerName = args[1];

            // first, connect to the server
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            // list all projects
            Console.WriteLine("Listing all projects");
            foreach (string name in manager.GetProjectNames())
            {
                Console.WriteLine("Project {0}", name);
            }
            
            // list all projects, and get the basic status of each
            Console.WriteLine("\nGetting all project status");
            foreach (ProjectInfo info in manager.GetProjectInfoList())
            {
                Console.WriteLine("Project {0}", info.Name);
                Console.WriteLine("\t status : {0}", info.Status);
                Console.WriteLine("\t not run: {0}", info.NotRunCount);
                Console.WriteLine("\t passed : {0}", info.PassedCount);
                Console.WriteLine("\t Failed : {0}", info.FailedCount);
                Console.WriteLine("\t Running: {0}", info.RunningCount);
            }

            // list all the tests for each project
            Console.WriteLine("\nGetting all projects and their tests");
            foreach (string name in manager.GetProjectNames())
            {
                Project project = manager.GetProject(name);

                Console.WriteLine("Project name : {0}, status: {1}", project.Name, project.Info.Status);

                foreach (ProductInstance pi in project.GetProductInstances())
                {
                    Console.WriteLine("Product Instance : {0}, Machine Pool : {1}, Platform type : {2}", pi.Name, pi.MachinePool.Name, pi.OSPlatform.Description);

                    foreach (Target target in pi.GetTargets())
                    {
                        Console.WriteLine("Target Name : {0}", target.Name);

                        foreach (Test test in target.GetTests())
                        {
                            Console.WriteLine("\tTest : {0}, status : {1}", test.Name, test.Status);
                        }
                    }
                }
            }

        }
    }
}
```

## Windows PowerShell®


``` syntax
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dbconnection.dll")

$ControllerName = $args[0]

write-Host "Usage: %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -file ListProjects.ps1 <<ControllerName>>"

# connect to the server
if ($ControllerName -eq $null -OR $ControllerName -eq "")
{
    write-host "Need to supply the controller Name as a parameter to this script"
    return
}
else
{
    write-host connecting to the controller $ControllerName
}

$Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection.DatabaseProjectManager -Args $ControllerName, DTMJobs
$RootPool = $Manager.GetRootMachinePool();

# first, get a list of all projects
write "All project names on this controller"
$Manager.GetProjectNames() 

# list all projects, and get the basic status of each
$Manager.GetProjectInfoList() | foreach {
    write-host "Name   : " $_.Name
    write-host "`tStatus : " $_.Status
    write-host "`tNotRun : " $_.NotRunCount.ToString()
    write-host "`tPassed : " $_.PassedCount
    write-host "`tFailed : " $_.FailedCount
    write-host "`tRunning: " $_.RunningCount
    }

# list all the tests for each project
$Manager.GetProjectNames() | foreach {
    $Project = $Manager.GetProject($_)

    write-host "Project Name  : " $Project.Name 
    write-host "`tProject Status: " $Project.Info.Status

# list all the product instances
    $Project.GetProductInstances() | foreach {
        write-host "Product Instance : " $_.Name 
        write-host "`tMachine pool : " $_.MachinePool.Name 
        write-host "`tOS Platform : " $_.OSPlatform.Description

        $_.GetTargetFamilies() | foreach {
            write-host "Target Family : " $_.Family.Name

# get target data
            $_.GetTargets() | foreach {
                write-host "Target : " $_.Name
                write-host "`tType : " $_.TargetType
                write-host "`tKey   : " $_.Key 
                
# there's more information if this is a device type
                $DeviceData =  $_ –AS [Microsoft.Windows.Kits.Hardware.ObjectModel.IDeviceTargetData]
                if ($DeviceData -ne $null)
                {
                    write-host "`tManufacturer : " $DeviceData.Manufacturer
                    write-host "`tVendorId : " $DeviceData.VendorId
                    write-host "`tDeviceClass : " $DeviceData.DeviceClass
                    write-host "`tInBox : " $DeviceData.AllInboxDrivers
                    write-host "`tDriver : "
                    $DeviceData.Drivers
                    write-host "`tDriverHash : "
                    $DeviceData.DriverHash
                }

# there's more infomation if this is a system type
                $SystemData = $_ -AS [Microsoft.Windows. Kits.Hardware.ObjectModel.ISystemTargetData]
                if ($SystemData -ne $null)
                {
                    write-host "`tManufacturer : " $SystemData.Manufacturer
                    write-host "`tModel : " $SystemData.Model                    
                }

# there's more infomation if this is a system type
                $FilterData = $_ -AS [Microsoft.Windows. Kits.Hardware.ObjectModel.IFilterTargetData] 
                if ($FilterData -ne $null)
                {
                    write-host "`tManufacturer : " $FilterData.Manufacturer
                    write-host "`tVersion : " $FilterData.Version                    
                    write-host "`tAllInbox : " $FilterData.AllInboxDrivers                    
                }
                
                write-host "`tFeatures : " 
                $_.GetFeatures() | foreach { 
                    write-host "`t`t" $_.FullName 

                    $_.GetRequirements() | foreach {
                        write-host "`t`t`tRequirement: " $_.FullName
                    }
                }                
            }

# now, list all the tests for this family
            write-host "Tests:"
            $_.GetTests() | foreach {
                write-host "`t" $_.Name -NoNewline
                if ($_.GetTestTargets().Count -ne 1)
                    { write-host " - shared" }
                else
                    { write-host " -  not shared" }
            }
        }
    }
}
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20List%20Projects%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




