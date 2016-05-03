---
author: joshbax-msft
title: Step 4 Create a project
description: Step 4 Create a project
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 79c9589f-b05b-46d3-9fad-11a6c3fbf428
---

# Step 4: Create a project


After you setup your test server and clients, you're ready to begin testing. The first step is to create a project. A project defines what you want to test. The most common project is the device you want to submit for certification. In this example, you create a project, run all certification tests associated with that device, and finally create a single package that contains all the passing test results.

With the new [HCK Testing Concepts](hck-testing-concepts.md) feature, you can create projects that represent a wide range of scenarios. In addition, you can create several smaller projects and merge the results into one package.

The following image shows the Studio Project tab.

![hck 2.1 studio project tab](images/hck-winb-studio-project-tab.png)

## To create a project


1.  On the server computer, open **HCK Studio**.

2.  On the **Project** tab, click **Create project**.

3.  Replace the default project name with the name of your project, and then press Enter.

    **Note**  
    A project should have a meaningful name that indicates its contents, for example, "Fabrikam Multi-function Device Model Z".

     

    When the project name appears on the page, the project is created.

The right-pane displays project details. Initially the information is empty until you start testing your device. As you create multiple projects, you can load different projects to check the status.

To learn more about this page, see [HCK Studio - Project Tab](hck-studio---project-tab.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Step%204:%20Create%20a%20project%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




