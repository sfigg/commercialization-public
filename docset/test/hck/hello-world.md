---
author: joshbax-msft
title: Hello World
description: Hello World
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 736d17d3-593b-40df-8e46-5c89af56640b
---

# Hello World


This sample shows how to create a project, run tests, and create a package for submission.

## <a href="" id="c-"></a>C#


``` syntax
//-----------------------------------------------------------------------
// <copyright file="HelloWorld.cs" company="Microsoft">
//    Copyright © Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

namespace Samples
{
    using System.Collections.ObjectModel;
    using System.Linq;
    using System.Threading;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.Submission;

    public class HelloWorld
    {
        public static void Main(string[] args)
        {
            string projectName = "my new project";
            string operatingSystemType = "Windows 7 x64";
            string controllerName = args[1];

            // first, connect to the server
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            //---------------
            // computer and machine pool management
            //---------------
            // now, create a machine pool
            MachinePool rootPool = manager.GetRootMachinePool();
            MachinePool testPool;

            testPool = manager.GetRootMachinePool().GetChildPools().Where(x => x.Name == "TestPool").FirstOrDefault();
            if (testPool == null)
            {
                testPool = manager.GetRootMachinePool().CreateChildPool("TestPool");
            }

            // the next line enumerates all the computers in the default pool
            // where the operating system type of the computer is "Windows 7 x64"
            // note that this uses the LINQ Where extension
            foreach (Machine machine in rootPool.DefaultPool.GetMachines().Where(x => x.OSPlatform.Description == operatingSystemType))
            {
                // each of these computers is then moved into the test pool
                rootPool.DefaultPool.MoveMachineTo(machine, testPool);
            }

            // now, make sure that the computers are in a ready state
            foreach (Machine machine in testPool.GetMachines())
            {
                machine.SetMachineStatus(MachineStatus.Ready, -1);
            }

            //---------------
            // creating a project
            //---------------
            Project project = manager.CreateProject(projectName);

            OSPlatform platform = testPool.GetMachines().First().OSPlatform;
            ProductInstance pi = project.CreateProductInstance(platform.Name, testPool, platform);

            // this is the hardware ID that corresponds to most keyboards, which all systems seem to have
            ReadOnlyCollection < TargetData > data = pi.FindTargetFromId(@"HID_DEVICE_SYSTEM_KEYBOARD");

            // the findTargetXXX methods return a list of potential targets 
            // for now, just use the first one that's found
            pi.CreateTarget(data.First());

            //---------------
            // running tests
            //---------------
            // this will schedule all tests that are associated with this project
            project.QueueTest();

            // at this point, all jobs should be scheduled to run    
            // poll to wait to see whether anything is still running
            while (project.Info.Status == ProjectStatus.Running)
            {
                // sleep for 1 minute
                Thread.Sleep(60 * 1000);
            }

            //---------------
            // wrapping up results
            //---------------
            // create wrap-up package
            Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageWriter package = new PackageWriter(project);

            // note: the .wlkx extension is added automatically
            package.Save(project.Name);
        }
    }
}
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Hello%20World%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




