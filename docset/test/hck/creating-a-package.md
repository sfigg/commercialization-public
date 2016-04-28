---
author: joshbax-msft
title: Creating a Package
description: Creating a Package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 67f13e47-4a85-4f4d-83ac-6a2c1e909791
---

# Creating a Package


The following code samples show how to:

**C#**

-   [create a submission package from a project](#bkmk-cs-createsubmissionpackage)

-   [sign a package using a digital signature stored in a pfx file.](#bkmk-cs-signpackage)

**Windows PowerShell®**

-   [create a submission package from a project](#bkmk-ps-createsubmissionpackage)

-   [sign a package using a digital signature stored in a pfx file.](#bkmk-signpackage)

-   [determine for what operating systems a driver passes the signing checks](#bkmk-checkos)

-   [verify a digital certificate](#bkmk-verifiycertificate)

## <a href="" id="c-"></a>C#


### <a href="" id="bkmk-cs-createsubmissionpackage"></a>Create a submission package from a project

This sample shows how to create a submission package from a project.

``` syntax
//-----------------------------------------------------------------------
// <copyright file="CreateAPackage.cs" company="Microsoft">
//    Copyright © Microsoft Corporation. All rights reserved.
// </copyright>
//-----------------------------------------------------------------------

namespace Samples
{
    using System;
    using System.Collections.ObjectModel;
    using System.Linq;
    using System.Collections.Generic;
    using Microsoft.Windows.Kits.Hardware.ObjectModel;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.Submission;
    using System.Collections.Specialized;

    public class CreateAPackage
    {
        public static void Main(string[] args)
        {
            Console.WriteLine("Usage: CreateAPackage.exe [ControllerMachineName] [ProjectName] [PathToDrivers] [SaveFileName]");

            if (args.Length != 4)
            {
                Console.WriteLine("Controller Name, Project Name, Path-to-drivers and SaveFile all need to be supplied as an argument.");
                return;
            }

            // first, connect to the controller
            string controllerName = args[0];
            Console.WriteLine("Connecting to controller : {0}", controllerName);
            ProjectManager manager = new DatabaseProjectManager(controllerName);

            // next, load the project
            string projectName = args[1];
            Console.WriteLine("Opening project : {0}", projectName);
            Project project;
            try
            {
                project = manager.GetProject(projectName);
            }
            catch (ProjectManagerException e)
            {
                Console.WriteLine("could not open project {0} \nError : {1}",
                    projectName,
                    e.Message);
                return;
            }

            string driverPath = args[2];
            Console.WriteLine("adding drivers found at {0}", driverPath);

            string saveFileName = args[3];
            Console.WriteLine("saving package to {0}", saveFileName);

            // the steps to create a package are:
            // 1) create a LogoPackageWriter
            // 2) add drivers
            // 3) [optional] add supplemental content
            // 4) save to disk

            PackageWriter packageWriter = new PackageWriter(project);

            // packaging can be somewhat slow because it may have a lot of files to read, so compress and write
            // the packaging information does have an alerting mechanism
            // this will also be alerted for events when processing drivers
            packageWriter.SetProgressActionHandler(SubmissionCreationProgressHandler);


            // the AddDriver method has this definition
            //  public bool AddDriver(
            //        string pathToDriver, 
            //        string pathToSymbols, 
            //        ReadOnlyCollection<Target> targets, 
            //        ReadOnlyCollection<string> locales, 
            //        out StringCollection errorMessages,
            //        out StringCollection warningMessages)
            // the path to symbols is optional and can be null
            
            // each driver package can be associated with one or more targets, and can be from targets in different product instances
            // the possible locales can be retrieved from LogoManager.GetLocaleList()
            // when adding a driver, the driver package is validated that it will be signalable, and additional checks will be performed
            // this means that if this task fails, errorMessages and warningMessages will be filled out to provide information about any
            // problems that are encountered

            // for simplicity, add one driver package as received from the command line, 
            // and associate that with all of the targets in the project
            List<Target> targetList = new List<Target>();
            foreach (ProductInstance pi in project.GetProductInstances())
            {
                targetList.AddRange(pi.GetTargets());
            }

            // also for simplicity, use the first 3 locales returned by GetLocaleList
            List<string> localeList = new List<string>();
            localeList.Add(ProjectManager.GetLocaleList()[0]);
            localeList.Add(ProjectManager.GetLocaleList()[1]);
            localeList.Add(ProjectManager.GetLocaleList()[2]);

            StringCollection errorMessages;
            StringCollection warningMessages;
            
            // call this method
            if (packageWriter.AddDriver(driverPath, null, targetList.AsReadOnly(), localeList.AsReadOnly(), out errorMessages, out warningMessages) == false)
            {
                Console.WriteLine("Add driver failed to add this driver found at : {0}", driverPath);
                foreach (string message in errorMessages)
                {
                    Console.WriteLine("Error: {0}", message);
                }
            }

            // warnings might not cause the method to fail, but may still be present
            if (warningMessages.Count != 0)
            {
                Console.WriteLine("Add driver found warnings in the package found at : {0}", driverPath);                
                foreach (string message in warningMessages)
                {
                    Console.WriteLine("Warning: {0}", message);
                }
            }

            // and now call the save as
            // this save as does the bulk of the work
            packageWriter.Save(saveFileName);

            // now that you're finished writing the package, dispose of it to make sure that the file handle is closed
            packageWriter.Dispose();            
        }

        public static void SubmissionCreationProgressHandler(PackageProgressInfo info)
        {
            Console.WriteLine("Package progress {0} of {1} : {2}", info.Current, info.Maximum, info.Message);
        }
    }
}
```

### <a href="" id="bkmk-cs-signpackage"></a>Sign a package using a digital signature stored in a pfx file

This sample shows how to sign a package using a digital signature stored in a pfx file.

``` syntax
namespace HCK
{
    using System;
    using System.Security.Cryptography.X509Certificates;
    using Microsoft.Windows.Kits.Hardware.ObjectModel.Submission;
 
    class Program
    {
        static void Main(string[] args)
        {
            string packageFile = args[0];
            string pfxFile = args[1];

            Console.WriteLine("Enter the password for the pfx file:");

            string password = Console.ReadLine();

            X509Certificate certificate = new X509Certificate(pfxFile, password);

            PackageManager.Sign(packageFile, certificate);
        }
    }
}
```

## Windows PowerShell®


### <a href="" id="bkmk-ps-createsubmissionpackage"></a>Create a submission package from a project

This sample shows how to create a submission package from a project.

``` syntax
$ObjectModel  = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dll")
$DbConnection = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.dbconnection.dll")
$Submission   = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.submission.dll")
$Submission   = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "microsoft.windows.Kits.Hardware.objectmodel.submission.package.dll")

    write-Host "Usage: %SystemRoot%\syswow64\WindowsPowerShell\v1.0\powershell.exe -file CreateAPackage.ps1 [ControllerMachineName] [ProjectName] [PathToDrivers] [SaveFileName]"

    if ($args.count -ne 4)
    {
        write-host "error: need to provide the controller name, name of the project to package, path to drivers, and save file location "
        return
    }

    $ControllerName = $args[0]
    $projectName = $args[1];
    $driverPath = $args[2];
    $saveFileName = $args[3];
    
# we need to connect to the Server

    if ($ControllerName -eq $null -OR $ControllerName -eq "")
    {
        write-host "Need to supply the controller Name as a parameter to this script"
        return
    }

    if ($projectName -eq $null -OR $projectName -eq "")
    {
        write-host "Need to supply the Project Name as a parameter to this script"
        return
    }

    Write-host "connecting to controller : $ControllerName"
    $Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.DBConnection.DatabaseProjectManager -Args $ControllerName, DTMJobs


# next load the project
    write-host "Opening project :$projectName"
    $project = $Manager.GetProject($projectName)
    if ($project -eq $null)
    {
        write-host "unable to load project `n" $error.ToString()
    }

    write-host "adding drivers found at $driverPath"

    write-host "saving package to $saveFileName"

# the steps needed to create a package are:
# 1) create a LogoPackageWriter
# 2) add drivers
# 3) [optional] add supplemental content
# 4) save to disk

    $packageWriter = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageWriter -Args $project
   
# the AddDriver method has this definition.
#  public bool AddDriver(
#        string pathToDriver, 
#        string pathToSymbols, 
#        ReadOnlyCollection<Target> targets, 
#        ReadOnlyCollection<string> locales, 
#        out StringCollection errorMessages,
#        out StringCollection warningMessages)
# the path to symbols are optional, and can be null
            
# each driver package can be associated with one or more targets, and can be from targets in different product instances.
# the possible locales can be retrieved from LogoManager.GetLocaleList()
# when adding a driver, the driver package is validated that it will be signal-able, and additional checks will be performed
# this means that if this task fails, the errorMessages and warningMessages will be filled out to provide information about any
# problems encountered

# for simplicity, we are going to add one driver package that we received from the command line, 
# and associate that with all of the targets in the project
    $targetList = New-Object "System.Collections.Generic.List``1[Microsoft.Windows.Kits.Hardware.ObjectModel.Target]"
            
    $Project.GetProductInstances() | foreach {
        $targetlist.AddRange($_.GetTargets())
        }            
            
# also for simplicity, we are going to use the first 3 locales returned by the GetLocaleList.
    $localeList = New-Object "System.Collections.Generic.List``1[System.string]"
    $localeList.Add([Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectManager]::GetLocaleList()[0])
    $localeList.Add([Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectManager]::GetLocaleList()[1])
    $localeList.Add([Microsoft.Windows.Kits.Hardware.ObjectModel.ProjectManager]::GetLocaleList()[2])
            
    $errorMessages = New-Object "System.Collections.Specialized.StringCollection"
    $warningMessages = New-Object "System.Collections.Specialized.StringCollection"
            
# go ahead and call this API
    if ($packageWriter.AddDriver($driverPath, [System.Management.Automation.Language.NullString]::Value, $targetList.AsReadOnly(), $localeList.AsReadOnly(), [ref] $errorMessages, [ref] $warningMessages) -eq $false)
    {
        Write-Host "Add driver failed to add this driver found at : $driverPath"
        foreach ($msg in $errorMessages)
        {
            Write-Host "Error: $msg" 
        }
    }

# warnings might not cause the method to fail, but may still be present
    if ($warningMessages.Count -ne 0)
    {
        Write-Host "Add driver found warnings in the package found at : $driverPath"
        foreach ($msg in $warningMessages)
        {
            Write-Host "Warning: $msg"
        }
    }
                                   
# Since packaging can be somewhat slow, as it may have a lot of files to read, compress and write
# the packaging information does have an alerting mechanism
#  This is not implemented in the PowerShell example, but it is implemented in the C# version
# packageWriter.SetProgressActionHandler(SubmissionCreationProgressHandler);

# and now call the save as
# this save as does the bulk of the work
    $packageWriter.Save($saveFileName);

# now that we're done with writing the package, dispose it to make sure the file handle is closed
    $packageWriter.Dispose();
        

       
```

### <a href="" id="bkmk-signpackage"></a>Sign a package using a digital signature stored in a pfx file

This sample shows how to sign a package using a digital signature stored in a pfx file.

``` syntax
# Load DLLs.
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.submission.dll")

    Write-Host "Usage: %SystemRoot%\syswow64\WindowsPowershell\v1.0\powershell.exe -file sign_package.ps1 <<Full Path To Package>> <<Full Path to PFX>>"

# The package to sign.
    $packageFile = $args[0]

# The pfx file to use.
    $pfxfile = $args[1]

# The password for the pfx file.
    $pfxpassword = Read-host "Please enter the password for the pfx file" -AsSecureString

# Load the certificate.
    $cert = new-object -typename System.Security.Cryptography.X509Certificates.X509Certificate($pfxfile, $pfxpassword)

# Sign the package.
    [Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageManager]::Sign($packageFile, $cert)
```

**Note**  
When signing some (large) packages using PowerShell, you might see an exception such as "Unable to determine the identity of domain". When this exception occurs, please use the managed API (see [http://msdn.microsoft.com/library/windows/hardware/jj123504.aspx\#BKMK\_CS\_SignPackage](http://msdn.microsoft.com/library/windows/hardware/jj123504.aspx)) as a work-around."

 

### <a href="" id="bkmk-checkos"></a>Determine for what operating systems a driver passes the signing checks

This sample shows how to determine for what operating systems a driver passes the signing checks.

``` syntax
# Load DLLs.
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.submission.dll")

    Write-Host "Usage: %SystemRoot%\syswow64\WindowsPowershell\v1.0\powershell.exe -file check_downlevel_os.ps1 <<Full Path To Package>>"

# The package file.
    $packageFile = $args[0]

# Create a package manager.
    $Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageManager -Args $packageFile

    $Manager.GetProjectNames() | foreach {
        Write-Host Examining Project $_
        $Project = $Manager.GetProject($_)
        $Project.GetProductInstances() | foreach {
            $_.GetTargetFamilies() | foreach {
                $_.GetTargets() | foreach {
                    Write-Host Examining Target $_.Name
                    $_.GetDrivers() | foreach {
                        Write-Host Driver is signable for the following platforms
                        Write-Host $_.SignabilityResults
                    }
                }
            }
        }
    }

# Clean up.
    $Manager.Dispose()
```

### <a href="" id="bkmk-verifiycertificate"></a>Verify a digital certificate

This sample shows how to verify a digital certificate.

``` syntax
# Load DLLs.
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.dll")
$ObjectModel = [Reflection.Assembly]::LoadFrom($env:WTTSTDIO + "Microsoft.Windows.Kits.Hardware.objectmodel.submission.dll")

    Write-Host "Usage: %SystemRoot%\syswow64\WindowsPowershell\v1.0\powershell.exe -file verify_certificate.ps1 <<Full Path To Package>>"

# The package file.
    $packageFile = $args[0]

# Create a package manager.
    $Manager = new-object -typename Microsoft.Windows.Kits.Hardware.ObjectModel.Submission.PackageManager -Args $packageFile

# Write out the certificate object.
    Write-host $Manager.Certificate

# Clean Up.
    $Manager.Dispose()
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Creating%20a%20Package%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




