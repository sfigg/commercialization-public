---
author: joshbax-msft
title: Target Families
description: Target Families
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3c09bc66-b377-4f54-aecf-ca5ddb3847c3
---

# Target Families


These samples show how to create target families and run tests against them.

## <a href="" id="c-"></a>C#


``` syntax
//-----------------------------------------------------------------------
// <copyright file="AdvancedTargetFamily.cs" company="Microsoft">
//    Copyright © Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

namespace Samples
{
    using System.Collections.Generic;
    using System.Linq;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;

    public class AdvancedTargetFamily
    {
        public static void Main(string[] args)
        {
            string projectName = "my new project";
            string controllerName = args[1];

            // first, connect to the server
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            //---------------
            // machine and machine pool management
            //---------------
            // now, create a machine pool
            MachinePool rootPool = manager.GetRootMachinePool();
            MachinePool testPool = manager.GetRootMachinePool().CreateChildPool("TestPool");

            // find all the computers in the default pool, and move them into the test pool
            foreach (Machine machine in rootPool.DefaultPool.GetMachines())
            {
                rootPool.DefaultPool.MoveMachineTo(machine, testPool);
            }

            // now, make sure that the computers are in a ready state
            foreach (Machine machine in testPool.GetMachines())
            {
                machine.SetMachineStatus(MachineStatus.Ready, -1);
            }

            // create a device family
            string[] HardwareIds = { @"HID\VID_045E&PID_006A&REV_1717&Col01", @"HID\VID_045E&PID_006A&Col01", @"HID_DEVICE_SYSTEM_MOUSE" };
            DeviceFamily mouseDeviceFamily = manager.CreateDeviceFamily("My Device Family", HardwareIds);

            //---------------
            // creating a project
            //---------------
            Project project = manager.CreateProject(projectName);

            // now you have a group of computers in your test pool
            // you must figure out what distinct list of OSPlatfoms are in there
            HashSet<OSPlatform> platformList = new HashSet<OSPlatform>();
            foreach (Machine machine in testPool.GetMachines())
            {
                if (platformList.Contains(machine.OSPlatform) == false)
                {
                    platformList.Add(machine.OSPlatform);
                }
            }

            //---------------
            // creating a product instance, one for each OSType
            //---------------
            foreach (OSPlatform platform in platformList)
            {
                ProductInstance pi = project.CreateProductInstance("Product instance for " + platform.Description, testPool, platform);
                TargetFamily targetFamily = pi.CreateTargetFamily(mouseDeviceFamily);
                
                // next, enumerate all the devices in the system that use one of the hardware IDs in the device family
                foreach (TargetData data in pi.FindTargetFromDeviceFamily(mouseDeviceFamily))
                {
                    // check this first, to see if this can be added
                    if (targetFamily.IsValidTarget(data))
                    {
                        targetFamily.CreateTarget(data);
                    }
                }

                // start running these tests now
                pi.QueueTest();
            }

            //-----------------
            // some time passes, and no more computers are available to run these tests
            // so now you must add more computers to the pool
            //-----------------
            foreach (Machine machine in testPool.DefaultPool.GetMachines())
            {
                // filter out any computer where the OSPlatform is not already part of the project
                if (platformList.Contains(machine.OSPlatform))
                {
                    rootPool.DefaultPool.MoveMachineTo(machine, testPool);
                    machine.SetMachineStatus(MachineStatus.Ready, -1);

                    // get the target family again
                    ProductInstance pi = project.GetProductInstances().Where(x => x.OSPlatform == machine.OSPlatform).First();
                    TargetFamily targetFamily = pi.GetTargetFamilies().Where(x => x.Family == mouseDeviceFamily).First();

                    foreach (TargetData data in pi.FindTargetFromDeviceFamily(mouseDeviceFamily))
                    {
                        if (targetFamily.IsValidTarget(data))
                        {
                            targetFamily.CreateTarget(data);
                        }
                    }
                }
            }

            // now, reschedule any job that hasn't run yet
            foreach (Test test in project.GetTests().Where(x => (x.Status == TestResultStatus.InQueue) || (x.Status == TestResultStatus.NotRun)))
            {
                foreach (TestResult result in test.GetTestResults().Where(x => x.Status == TestResultStatus.InQueue))
                {
                    result.Cancel();
                }

                // this will reschedule the tests on the new hardware/targets, as needed
                test.QueueTest();
            }
        }
    }
}
```

## Windows PowerShell®


``` syntax
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dbconnection.dll")

Clear-Host

write-Host "Usage: %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -file TargetFamily.ps1 <<ControllerMachineName>> "

$ControllerName = $args[0]
if ($ControllerName -eq $null -OR $ControllerName -eq "")
{
    write-host "Need to supply the controller Name as a parameter to this script"
    return
}
else
{
    write-host connecting to the controller $ControllerName
}


# connect to the controller
$Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection.DatabaseProjectManager -Args $ControllerName, DTMJobs


$RootPool = $Manager.GetRootMachinePool()
$DefaultPool = $RootPool.DefaultPool

# create the pool
$TestPool = $RootPool.CreateChildPool("TestPool")

# find all the computers in the default pool, and move them into the test pool
$DefaultPool.GetMachines() | foreach {
    write-host $_.Name
    $DefaultPool.MoveMachineTo($_, $TestPool)
    }

# now, make sure that the computers are in a ready state
$TestPool.GetMachines() | foreach { $_.SetMachineStatus([Microsoft.Windows.Kits.Hardware.ObjectModel.MachineStatus]::Ready, 1) }

# create a device family
[string[]]$HardwareIds = "HID\VID_045E&PID_006A&REV_1717&Col01", "HID\VID_045E&PID_006A&Col01", "HID_DEVICE_SYSTEM_MOUSE"
$DeviceFamily = $Manager.CreateDeviceFamily("My Device Family", $HardwareIds)

# create a project
$Project = $Manager.CreateProject("My Device Family Project {0}" -f [DateTime]::Now.ToString())

# create a product instance by using the operating system platform of the first computer that you find
$ProductInstance = $Project.CreateProductInstance("My Product Instance", $TestPool, $TestPool.GetMachines()[0].OSPlatform)

# create a target family by using the device family that you created earlier
$TargetFamily = $ProductInstance.CreateTargetFamily($DeviceFamily)

#find all the devices in this machine pool that are in this device family
$ProductInstance.FindTargetFromDeviceFamily($DeviceFamily) | foreach {
    "attempting to add target $_.Name on machine $_.Machine.Name to TargetFamily"
# and add those to the target family
    
# check this first, to make sure that this can be added to the target family
    if ($TargetFamily.IsValidTarget($_)) {
        $TargetFamily.CreateTarget($_)
        }
    }

#schedule all tests
$Project.GetTests() | foreach {
    "test {0} is {1}" -f  $_.Name, $_.ScheduleOptions.ToString()
    Write-Host "running test {0} " -f $_.Name
    $_.QueueTest();        
    }
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Target%20Families%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




