---
author: joshbax-msft
title: Merge packages
description: Merge packages
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5bac0453-355c-4ca3-90dd-d4eee4faccda
---

# Merge packages


Windows Hardware Certification Kit (Windows HCK) Studio supports merging packages into a single package. This feature gives you the flexibility to distribute your tests across different projects, machine pools, and/or other HCK environments (other controllers).

For example, you want to create one submission for a system, filter, or device that applies to multiple versions of Windows and associated architectures. You can independently test against each version of Windows and later merge the packages into one submission package.

You can also test portions of a single-product (at the target family level) across different projects and later merge the packages into a single submission package. This concept of distributed feature and component testing is ideal for components that are expensive to setup and run. This is known as a deep merge. This merge support has the following limitations:

-   The targets must be for the same operating system and architecture.

-   The Targets must be the same type (that is, System or Device).

-   You cannot deep merge software filter types.

-   The distinct set of features for all targets under a target family must match the distinct set of features in the target family from the merged package.

-   All distinct set of tests for all targets under a target family must match the distinct set of tests in the target family from the merged package.

-   (For device target types): the set of drivers must match.

-   (For device target types): the set of hardware Ids must match. (Note: this means that device families are not taken into consideration when matching hardware Ids)

**Note**  
To guarantee that none of the tests is missed, we recommend that you create a package for the source project before you divide testing into separate projects. This package does not necessarily hold any test results; its purpose is to hold all required tests for all family targets. Later, this package can be merged with other packages into a single submission package. In this way, the submission package holds all required tests, regardless if the test has been executed.

 

**To merge .hckx packages**

1.  Open an existing project or package.

2.  Click the **Package** tab and then click **Merge Package**.

3.  Click **Add** and, in the Open dialog box, select an .hckx package that you want to merge.

    **Note**  
    If you accidentally selected the wrong package, select the package in the data grid and click **Remove**.

    Packages that were previously selected and saved (by clicking **OK** in the dialog box) can only be removed by clicking **Reset** on the main **Package** tab. These packages have a lock icon next to them.

     

4.  Repeat **Steps 3** and **4** for each additional package that you want to merge. Note the **Open** dialog supports the selection of multiple packages at a time.

5.  Click **OK** to save your changes or **Cancel** to undo.

6.  Click **Create Package**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Merge%20packages%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




