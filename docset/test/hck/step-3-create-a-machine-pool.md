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

 

 






