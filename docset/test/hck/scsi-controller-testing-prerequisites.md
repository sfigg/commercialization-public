---
author: joshbax-msft
title: SCSI Controller Testing Prerequisites
description: SCSI Controller Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d85024cb-3473-416d-88c8-2d3204f2d099
---

# SCSI Controller Testing Prerequisites


This section describes the tasks that you must complete before you test an SCSI controller by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-configure).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware Requirements


The following hardware is required to test an ATA/ATAPI controller. You might need additional hardware if the test device offers other features. To determine whether additional hardware requirements apply, see the test description for each test that appears for the device in Windows HCK Studio.

**Note**  
With the exception of the test computer and test controller, all hardware that is involved in the test must already have a logo.

 

-   One test computer. The test computer must meet the Windows HCK requirements. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   Two identical SCSI controllers (the test devices), unless the test device is an integrated controller.

-   One PCI-to-PCI bridge adapter, unless any of the following conditions apply:

    -   The RAID controllers cannot fit into PCI bridge adapters. This may occur if the controllers are integrated controllers or if the controllers can only fit into specially designed slots.

    -   The RAID controller is designed and sold only for systems that cannot accept full height PCI-to-PCI bridge adapters, such as blade servers.

    -   You can put one of the RAID controllers into a PCI bus slot that is already behind a PCI bridge.

-   If the SCSI controller supports RAID, you must have all of the following:

    -   One SCSI JBOD.

    -   One additional SCSI JBOD or three SCSI hard disk drives, unless the test device is an integrated controller.

    -   One optical drive.

-   If the SCSI controller does not support RAID, you must have all of the following:

    -   Three identical SCSI hard disk drives that have Wide SCSI support, if the test device supports it. The hard disk drives must each have at least 40 gigabytes (GB).

    -   Two SCSI CD drives that have a minimum speed of 8x.

    -   One SCSI removable media drive.

    -   One SCSI tape drive that has Wide SCSI support, if the test device supports it.

    -   One blank tape cartridge.

-   One bootable controller and hard disk drive (36 GB minimum), if the test device does not support boot.

**Note**  
To certify your product for use on servers, the test computer must support four processors and a minimum of 1 GB of RAM. These system capabilities are required to test the Rebalance, D3 State, and Multiple Processor Group functionality of the device and driver. You do not need a computer that actually has more than 64 processors to test your device. Additionally, the server system(s) being used for device or driver testing must have Server Core installed prior to testing. For more information see [Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?LinkID=251454).

If you use a pool of test computers to test devices, at least one computer in the pool must contain four processors and a minimum of 1 GB of RAM. Additionally, that computer must contain the device and the driver that you want to test. If the driver is the same on all the computers in the pool, the system creates a schedule to run against all test computers.

For tests that do not include a driver to test, such as hard disk drive tests, the Windows HCK scheduler constrains the tests that validate the device’s and driver’s rebalance, D3 state, and multiple processor groups functionality to run on the default test computer. You must manually configure this computer to have multiple processor groups. The default computer is the first test computer in the list. Test personnel must make sure that the first test computer in the list meets the minimum hardware requirements.

 

**Note**  
Except for para-virtualization drivers (as defined by Logo Program Requirement Policy-0020), you may not use any form of virtualization when you test physical devices and their associated drivers for server certification or signature. All virtualization products do not support the underlying functionality that is required to pass the tests that relate to multiple processor groups, device power management, device PCI functionality, and other tests.

 

## <a href="" id="bkmk-softwarerequirements"></a>Software Requirements


The following software is required to test an SCSI controller:

-   The drivers for the test controllers.

-   The latest Windows HCK filters or updates.

-   Windows symbol files. These are available from the [Symbol Files website](http://go.microsoft.com/fwlink/?LinkId=231439).

-   The current release of the Windows Driver Kit (WDK).

## <a href="" id="bkmk-configure"></a>Test Computer Configuration


There are three possible configurations for testing SCSI controllers:

-   If the test device is an add-in controller that supports RAID, use the [Add-in RAID controller configuration procedure](#bkmk-addin).

-   If the test device is an integrated controller that supports RAID, use the [Integrated RAID controller configuration procedure](#bkmk-integrated).

-   If the test device does not support RAID, use the [Non-RAID controller configuration procedure](#bkmk-nonraid).

Before you test an SCSI controller in any of the three usage scenarios, make sure that the test computer is in the ready state. If a test requires parameters to be set before it is run, a dialog box appears for that test. Review the specific test topic for more information.

Some Windows HCK tests require user intervention. When you run tests for a submission, it is a best practice to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting completion of an automated test.

### <a href="" id="bkmk-addin"></a>Add-in RAID controller test configuration

To configure the test computer to test an SCSI controller in an add-in RAID configuration, follow these steps:

1.  When the test computer is turned off, complete the following assembly steps:

    1.  Install a boot-capable controller (not the test device) and hard disk drive, if the test devices do not support boot.

    2.  Install one test controller (Controller 1).

    3.  Install a PCI-to-PCI bridge, unless any of the following conditions apply:

        -   The RAID controllers cannot fit into PCI bridge adapters. This may occur if the controllers are integrated controllers or if the controllers can only fit into specially designed slots.

        -   The RAID controller is designed and sold only for systems that cannot accept full height PCI-to-PCI bridge adapters, such as blade servers.

        -   You can put one of the RAID controllers into a PCI bus slot that is already behind a PCI bridge.

    4.  Install a second, duplicate test controller (Controller 2) into the PCI-to-PCI bridge card (or in the PCI bridge if the bridge card is not required).

    5.  Attach the disks to the test devices according to the following table:

        <table>
        <colgroup>
        <col width="33%" />
        <col width="33%" />
        <col width="33%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th>Controller type</th>
        <th>Controller 1</th>
        <th>Controller 2</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td><p>SCSI RAID</p></td>
        <td><p>One SCSI JBOD</p></td>
        <td><p>One SCSI JBOD</p></td>
        </tr>
        </tbody>
        </table>

         

    6.  Attach an optical drive to the system, if one is not already attached.

2.  Turn on the test computer.

3.  Set the system BIOS to support the S3 state.

4.  Create one 60-GB RAID array on Controller 1 and two 60-GB RAID arrays on Controller 2. The RAID array on Controller 1 is RAID Array 1, and the RAID arrays on Controller 2 are RAID Array 2 and RAID Array 3.

5.  Configure the RAID arrays according to the following table:

    <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>RAID levels that the test device supports</th>
    <th>RAID level for RAID Array 1</th>
    <th>RAID level for RAID Array 2</th>
    <th>RAID level for RAID Array 3</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>0 only</p></td>
    <td><p>0</p></td>
    <td><p>0</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="even">
    <td><p>1 only</p></td>
    <td><p>1</p></td>
    <td><p>1</p></td>
    <td><p>1</p></td>
    </tr>
    <tr class="odd">
    <td><p>5 only</p></td>
    <td><p>5</p></td>
    <td><p>5</p></td>
    <td><p>5</p></td>
    </tr>
    <tr class="even">
    <td><p>0 and 1 only</p></td>
    <td><p>1</p></td>
    <td><p>9</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="odd">
    <td><p>0 and 5 only</p></td>
    <td><p>5</p></td>
    <td><p>9</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="even">
    <td><p>1 and 5 only</p></td>
    <td><p>5</p></td>
    <td><p>1</p></td>
    <td><p>1</p></td>
    </tr>
    <tr class="odd">
    <td><p>0, 1, and 10</p></td>
    <td><p>10</p></td>
    <td><p>1</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="even">
    <td><p>0, 1, and 5</p></td>
    <td><p>5</p></td>
    <td><p>1</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="odd">
    <td><p>0, 1, 10, and 5</p></td>
    <td><p>5</p></td>
    <td><p>10</p></td>
    <td><p>0</p></td>
    </tr>
    </tbody>
    </table>

     

6.  Turn on the test computer, install the appropriate Windows operating system on disk 1 by using a newly created NTFS partition that has at least 36 GB of disk space, and then configure the computer for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller. If the test controller is not bootable, install a separate hard disk drive on a bootable controller.

7.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

8.  Start Windows on the test computer.

9.  Create three 4-GB partitions on RAID Array 2.

10. If you are testing by using a client operating system, create a 4-GB NTFS spanned volume that uses unallocated space on RAID Array 1, RAID Array 2, and RAID Array 3, as the following diagram shows.

    ![add-in raid array configuration diagram (client)](images/hck-win8-ata-raid-config-16-1.png)

    If you are testing by using a server operating system, do the following:

    1.  Create a software RAID 1 mirror from one of the NTFS partitions on RAID Array 2 to the unallocated space on RAID Array 1

    2.  Create a 4-GB NTFS software RAID 5 array that uses unallocated space on RAID Array 1, RAID Array 2, and RAID Array 3, as the following diagram shows.

        ![add-in raid array configuration diagram (server)](images/hck-win8-ata-raid-config-16-2.png)

11. To set the system page file and enable crashdump, follow these steps:

    1.  Click the **Start** button, right-click **My Computer**, and then click **Properties.**

    2.  Click the **General** tab, and then note the amount of RAM that the computer contains.

    3.  Click the **Advanced** tab (or click **Advanced system settings** in the left pane for Windows Vista, Windows 7, Windows 8, Windows Server 2008, Windows Server 2008 R2 or Windows Server® 2012), and then, in the **Performance** area, click **Settings**.

        **Note**  
        If you are prompted to enter administrative credentials or allow the action, enter the credentials or allow the action.

         

    4.  Click the **Advanced** tab, and then, in the **Virtual Memory** area, click **Change**.

    5.  Select **Custom Size**, and then enter a number in the **Initial size (MB)** box that is larger than the size of RAM that you noted in step b.

    6.  In the **Maximum size (MB)** text box, enter a maximum size value that is larger than the initial size that you entered in the **Initial size (MB)** box. (The maximum size is typically 1.5 to 2 times the initial size.)

    7.  Click **Set**, and then click **OK** two times.

    8.  Click **OK**, and then restart the computer to update the page file size.

12. Verify that the storage array is accessible from the test computer.

13. Copy the Windows symbol files to %SystemDrive%\\Symbols.

14. Install the Windows HCK client application on the test computer.

15. Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

### <a href="" id="bkmk-integrated"></a>Integrated RAID controller test configuration

To configure the test computer to test an SCSI controller in an integrated RAID configuration, follow these steps:

1.  When the test computer is turned off, complete the following assembly steps:

    1.  Install a boot-capable controller (not the test device) and hard disk drive, if the test devices do not support boot.

    2.  Attach the disks to the integrated test controller (Controller 1) according to the following table:

        <table>
        <colgroup>
        <col width="50%" />
        <col width="50%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th>Controller type</th>
        <th>Controller 1</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td><p>SCSI RAID</p></td>
        <td><p>One SCSI JBOD or three SCSI hard disk drives, and one SCSI optical drive (if supported)</p></td>
        </tr>
        </tbody>
        </table>

         

    3.  Attach an optical drive to the system, if one is not already attached.

2.  Turn on the test computer.

3.  Set the system BIOS to support the S3 state.

4.  Create two 60-GB RAID arrays on Controller 1.

    If the controller does not support a configuration that includes two arrays, use a non-RAID disk instead of Array 2 for these procedures. For SCSI, create a third 60-GB RAID array (using any supported RAID level).

    The RAID arrays on Controller 1 are RAID Array 1 and RAID Array 2.

5.  Configure the RAID arrays according to the following table:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>RAID levels that the test device supports</th>
    <th>RAID level for RAID Array 1</th>
    <th>RAID level for RAID Array 2</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>0 only</p></td>
    <td><p>0</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="even">
    <td><p>1 only</p></td>
    <td><p>1</p></td>
    <td><p>1</p></td>
    </tr>
    <tr class="odd">
    <td><p>5 only</p></td>
    <td><p>5</p></td>
    <td><p>5 or Non-RAID disk</p></td>
    </tr>
    <tr class="even">
    <td><p>0 and 1 only</p></td>
    <td><p>1</p></td>
    <td><p>0</p></td>
    </tr>
    <tr class="odd">
    <td><p>0 and 5 only</p></td>
    <td><p>5</p></td>
    <td><p>0 or Non-RAID disk</p></td>
    </tr>
    <tr class="even">
    <td><p>1 and 5 only</p></td>
    <td><p>5</p></td>
    <td><p>1or Non-RAID disk</p></td>
    </tr>
    <tr class="odd">
    <td><p>0, 1, and 10</p></td>
    <td><p>10</p></td>
    <td><p>1 or Non-RAID disk</p></td>
    </tr>
    <tr class="even">
    <td><p>0, 1, and 5</p></td>
    <td><p>5</p></td>
    <td><p>0 or Non-RAID disk</p></td>
    </tr>
    <tr class="odd">
    <td><p>0, 1, 10, and 5</p></td>
    <td><p>5</p></td>
    <td><p>10 or Non-RAID disk</p></td>
    </tr>
    </tbody>
    </table>

     

6.  Install the appropriate Windows operating system, and then configure the computer for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller.Windows HCK Studio and Windows HCK Controller. If the test controller is not bootable, install Windows to a separate hard disk drive on a bootable controller.

7.  If it is necessary, install any drivers that a manufacturer supplies that the devices in the test system require.

8.  Start Windows on the test computer.

9.  Use the Windows Disk Management utility to configure all of the disks to be dynamic.

10. Create three 4-GB NTFS partitions on RAID Array 2.

11. If you are testing by using a client operating system, create a 4-GB NTFS spanned volume that uses unallocated space on RAID Array 1, RAID Array 2, and Array 3 as the following diagram shows.

    ![integrated raid array configuration diagram (clien](images/hck-win8-integrated-raid-config-client-1-6.png)

    If you are testing by using a server operating system:

    1.  Create a software RAID 1 mirror from one of the NTFS partitions on RAID Array 1 to the unallocated space on RAID Array 2, as the following diagram shows.

    2.  Create a software NTFS RAID 5 array that uses unallocated space on RAID Array 1, RAID Array 2, and RAID Array 3, as the following diagram shows.

        ![integrated raid array configuration diagram (serve](images/hck-win8-integrated-raid-config-server-1-6.png)

12. To set the system page file and enable crashdump, follow these steps:

    1.  Click the **Start** button, right-click **My Computer**, and then click **Properties.**

    2.  Click the **General** tab, and then note the amount of RAM that the computer contains.

    3.  Click the **Advanced** tab (or click **Advanced system settings** in the left pane for Windows Vista, Windows 7, Windows 8, Windows Server 2008, Windows Server 2008 R2 or Windows Server® 2012), and then, in the **Performance** area, click **Settings**.

        **Note**  
        If you are prompted to enter administrative credentials or allow the action, enter the credentials or allow the action.

         

    4.  Click the **Advanced** tab, and then, in the **Virtual Memory** area, click **Change**.

    5.  Select **Custom Size**, and then enter a number in the **Initial size (MB)** box that is larger than the size of RAM that you noted in step b.

    6.  In the **Maximum size (MB)** text box, enter a maximum size value that is larger than the initial size that you entered in the **Initial size (MB)** box. (The maximum size is typically 1.5 to 2 times the initial size.)

    7.  Click **Set**, and then click **OK** two times.

    8.  Click **OK**, and then restart the computer to update the page file size.

13. Verify that the storage array is accessible from the test computer.

14. Copy the Windows symbol files to %SystemDrive%\\Symbols.

15. Install the Windows HCK client application on the test computer.

16. Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

### <a href="" id="bkmk-nonraid"></a>Non-RAID controller test configuration

To configure the test computer to test an SCSI controller in a non-RAID configuration, follow these steps:

1.  When the test computer is turned off, complete the following assembly steps:

    1.  Install a boot-capable controller (not the test device) and hard disk drive if the test devices do not support boot.

    2.  Install the test device (Controller 1).

    3.  Install a PCI-to-PCI bridge, unless any of the following conditions apply:

        -   The RAID controllers cannot fit into PCI bridge adapters. This may occur if the controllers are integrated controllers or if the controllers can only fit into specially designed slots.

        -   The RAID controller is designed and sold only for systems that cannot accept full height PCI-to-PCI bridge adapters, such as blade servers.

        -   You can put one of the RAID controllers into a PCI bus slot that is already behind a PCI bridge.

    4.  Install a second, duplicate test controller (Controller 2) in the PCI-to-PCI bridge card (or in the PCI bridge if the bridge card is not required).

    5.  Attach the disks to the test devices according to the following table.

        <table>
        <colgroup>
        <col width="33%" />
        <col width="33%" />
        <col width="33%" />
        </colgroup>
        <thead>
        <tr class="header">
        <th>Controller type</th>
        <th>Controller 1</th>
        <th>Controller 2</th>
        </tr>
        </thead>
        <tbody>
        <tr class="odd">
        <td><p>SCSI add-in controllers</p></td>
        <td><p>SCSI HDD (Disk 1)</p>
        <p>SCSI optical drive</p>
        <p>SCSI tape drive</p>
        <p>SCSI removable media drive</p></td>
        <td><p>SCSI HDD (Disk 2)</p>
        <p>SCSI optical drive</p></td>
        </tr>
        <tr class="even">
        <td><p>SCSI integrated controllers</p>
        <div class="alert">
        <strong>Note</strong>  
        <p>See the SCSI add-in controllers configuration diagram below.</p>
        </div>
        <div>
         
        </div></td>
        <td><p>SCSI HDD (Disk 1)</p>
        <p>SCSI optical drive</p>
        <p>SCSI tape drive</p>
        <p>SCSI removable media drive</p>
        <p>SCSI HDD (Disk 2)</p></td>
        <td><p>N/A</p></td>
        </tr>
        </tbody>
        </table>

         

        For SCSI add-in controllers, configure the hardware as described in the following diagram:

        ![diagram of an add-in scsi assembly](images/hck-win8-non-raid-config-add-in-scsi.png)

        For SCSI integrated controllers, configure the hardware as described in the following diagram:

        ![diagram of an integrated scsi assembly](images/hck-win8-non-raid-config-integrated-scsi.png)

    6.  Attach an optical drive to the system, if one is not already attached.

2.  Turn on the test computer.

3.  Set the system BIOS to support the S3 state.

4.  Install the appropriate Windows operating system, and then configure the computer for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller.

5.  If you have to install the manufacturer-supplied device driver on the test computer, do this now.

6.  Create three 4-GB partitions on Disk 2.

7.  Use the following procedure to set the system page file and enable crashdump:

    1.  Click the **Start** button, right-click **My Computer**, and then click **Properties.**

    2.  Click the **General** tab, and then note the amount of RAM that the computer contains.

    3.  Click the **Advanced** tab (or click **Advanced system settings** in the left pane for Windows Vista, Windows 7, Windows 8, Windows Server 2008, Windows Server 2008 R2 or Windows Server® 2012), and then, in the **Performance** area, click **Settings**.

        **Note**  
        If you are prompted to enter administrative credentials or allow the action, enter the credentials or allow the action.

         

    4.  Click the **Advanced** tab, and then, in the **Virtual Memory** area, click **Change**.

    5.  Select **Custom Size**, and then enter a number in the **Initial size (MB)** box that is larger than the size of RAM that you noted in step b.

    6.  In the **Maximum size (MB)** text box, enter a maximum size value that is larger than the initial size that you entered in the **Initial size (MB)** box. (The maximum size is typically 1.5 to 2 times the initial size.)

    7.  Click **Set**, and then click **OK** two times.

    8.  Click **OK**, and then restart the computer to update the page file size.

8.  Verify that the storage array is accessible from the test computer.

9.  Copy the Windows symbol files to %SystemDrive%\\Symbols.

10. Install the Windows HCK client application on the test computer.

11. Use Windows HCK Studio to create a computer pool, and then move the test computer to that pool.

**Warning**  
When testing storage devices, we strongly recommend that you complete all Device Fundamentals tests before starting storage tests. Storage tests will reconfigure your test device, leaving the device in a state unsuitable to support Device Fundamentals tests. The following configurations provide steps to create volume on the storage test device. This is important to complete the Device Fundamental part of testing (DevFund).

 

 

 






