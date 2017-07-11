---
title: Step 3 Create a machine pool
description: Step 3 Create a machine pool
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0403fdec-08e1-43b9-ba50-9e176c0a9632
---

# Step 3: Create a machine pool


A *machine pool* is a logical grouping of one or more test systems. After you install Windows HLK Client on each test system, the computers are automatically added to the default machine pool. Before you can work with a test system, you must move it to a working machine pool.

Every project needs a machine pool. A machine pool can be used for multiple projects. A project can reference multiple machine pools.

The following image shows the Studio **Configuration** page.

![hlk studio configuration page](images/hlk-studio-configuration-page.png)

## <span id="To_create_a_machine_pool"></span><span id="to_create_a_machine_pool"></span><span id="TO_CREATE_A_MACHINE_POOL"></span>To create a machine pool


1.  In Windows HLK Studio, choose **Configuration**.

2.  Select an existing machine pool, and then choose **Create Machine Pool**. Alternatively, you can right-click on an existing machine pool, and choose **Create Machine Pool**.

    Change the default name, if desired, and then press Enter to finish.

3.  Choose **Default Pool**, and confirm that each test system appears in the main pane on the right. If you've installed the Client on multiple test systems, you can add any of them to the pool.

    **Note**  A computer can only be in one pool at a time.

     

4.  Move a test system into the new pool by first selecting it and then dragging it onto the newly-created pool.

5.  In the pane on the right, right-click the test system under the **Machines** column, choose **Change Machine Status**, and then choose **Ready**.

    The **Status** column changes to **Ready**.

    **Warning**  You cannot schedule a test against a computer with status equal to **NotReady**.

     

    **Warning**  A computer cannot be set to **Ready** while in the **Default** pool.

     

6.  Repeat the previous two steps for each test system that you want to include in the pool.

7.  Once you've added all of the test systems to the desired machine pool, choose the back arrow to return to the main area of Windows HLK Studio.

After all of the test systems are placed in a pool, you're ready to conduct testing against those computers.

To learn more about the different options on this page including distributed and multi-device support, see [HLK Studio - Configuration Page](p_hlk.hlk_studio___configuration_page).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%203:%20Create%20a%20machine%20pool%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




