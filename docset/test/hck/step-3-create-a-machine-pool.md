---
author: joshbax-msft
title: Step 3 Create a machine pool
description: Step 3 Create a machine pool
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ece554d-9652-4ea0-a23b-caf0749a465b
---

# Step 3: Create a machine pool


A *machine pool* is a logical grouping of one or more test computers. After you install Windows HCK Client on each test computer, the computers are automatically added to the default machine pool. Before you can work with a test computer, you must move it to a working machine pool.

Every project needs a machine pool. A machine pool can be used for multiple projects. A project can reference multiple machine pools.

The following image shows the Studio Configuration page.

![hck studio configuration machine management tab](images/hck-winb-studio-configuration-machinem.png)

## To create a machine pool


1.  In Windows HCK Studio, click **Configuration**.

2.  Select existing machine pool and click **Create Machine Pool** or right-click an existing machine pool, and select **Create Machine Pool**.

    The new pool is named "New Pool 1" by default. You can change that by typing a different name and then pressing Enter.

3.  Click **Default Pool**, and then confirm that each test computer appears in the main pane. If you've installed the Client software on multiple test computers, you can add any of them to the pool.

    **Note**  
    A computer can only be in one pool at a time.

     

4.  Select the test computer, and then drag it to the newly created pool.

5.  Under **Machines**, right-click the test computer, click **Change Machine Status**, and then click **Ready**.

    The **Status** column changes to **Ready**.

    **Warning**  
    You cannot schedule a test against a computer with status equal to **NotReady**. A computer cannot be set to ready while in the Default pool.

     

6.  Repeat for each test computer that you want to include in the pool.

7.  Click the Back arrow to return to the main area of Windows HCK Studio.

After all of the test computers are placed in a pool, you're ready to conduct testing against those computers.

To learn more about the different options on this page including distributed and multi-device support, see [HCK Studio - Configuration Page](hck-studio---configuration-page.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Step%203:%20Create%20a%20machine%20pool%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




