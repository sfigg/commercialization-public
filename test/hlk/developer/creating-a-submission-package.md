---
title: Creating a Submission Package
description: Creating a Submission Package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2d5271aa-1102-4ad8-940d-68f75bdfdbcf
---

# Creating a Submission Package


**Note**  We highly encourage you to include driver symbols as part of package creation. Including symbols enables Microsoft to triage and root cause issues related to your driver.

 

A submission package contains all of the results, logs, and data from a project. A submission package can also contain drivers, symbols, and supplemental material that are required for certification. The submission package can then be accessed through the same set of Certification Manager APIs.

The steps to create a submission package are:

1.  Create an instance of a **PackageWriter** class and specify the project to use.

2.  Add any necessary driver packages.

3.  Add any supplemental content.

4.  Set a notification callback (if desired) by using the **PackageWriter.SetProgressActionHandler()** method.

5.  Call the **PackageWriter.Save()** method, which saves all project and test information and logs to a compressed .wlkx package file. The **Save()** method also has an override to take an X.509 signing certificate as a parameter.

If you include a driver package, you specify a directory that contains all of the files and/or symbols in the **AddDriver()** method. Each driver package is associated with one or more targets in a project. From this mapping, Microsoft can identify which operating systems and architectures your driver has been tested against.

Each driver package has a list of locales (available with the **ProjectManager.GetLocaleList()** method). Every target and locale combination should have only one driver associated with it.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Creating%20a%20Submission%20Package%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




