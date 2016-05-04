---
author: joshbax-msft
title: Test Server Configuration
description: Test Server Configuration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 727b148d-2057-4e84-a7c6-0c79cfab5e4b
---

# Test Server Configuration


Many of the tests in the Windows Hardware Certification Kit (Windows HCK) require a test system to restart (often more than one time) to complete a test run. The test description and the running instructions specify whether a test requires a system restart. Although these tests programmatically restart the test system, you must manually log on to the test system after each system restart so that the test run can resume. To avoid this requirement, enable certification functionality on the test system.

**In this section:**

-   [LoadGen SC LMS Workaround](loadgen-sc-lms-workaround.md)

### Test system configuration

This article assumes that you have already setup the network domain controller and installed the Windows HCK controller and Windows HCK Studio on a machine, and that the Windows HCK controller and Windows HCK Studio are on the network.

The Server test requires the following system configuration tasks to prepare the test system for server testing. The machines setup for the Server Stress test consists of:

-   One server under test" (SUT). This is the computer that you are certifying.

    **Warning**  
    The SUT computer name must be 15 characters or less.

     

-   One x64 client machine that will act as the Remote Test Host (MC). The master client system must be listed in the Windows Server Catalog. Please note the following restrictions for the MC, Stress Client (SC), and SUT:

    -   An MC, SC or SUT cannot be a domain controller for the test systems.

    -   An MC, SC or SUT cannot host HCK Studio.

    -   An MC, SC or SUT cannot be the HCK Controller for the systems that are used for testing.

-   Eight (8) x64 client machines that act as the SC systems. LoadGen supports up to 64 SC machines, but eight is usually sufficient.

-   Do not use "MC" or "SC" or "SUT" or any derivatives in the machine names, as this will cause the test to fail.

**Important**  
Because some systems might be set to shipping configuration, they might not have all their devices enabled or their drivers loaded. Before testing, make sure that all devices in the system are enabled and that all drivers related to those devices are loaded per the testing requirements.

 

### Storage and Operating System Installation

1.  All machines are connected to the network via gigabit or faster HUB or switch with high speed CAT6 or faster cables.

2.  Install Datacenter SKU operating system on the SUT.

3.  Install Standard Server SKU operating system on the MC and SC's.

4.  All machines have NTFS format on all disks.

5.  Format the hard disk drive to have at least one partition with 20 GB of free disk space after the operating system has been installed. This disk should be configured as Boot, Page File, Crash Dump.

6.  Install the optional BitLocker Drive Encryption component on the server if it is supported pre-installed by the OEM.

### Systems Settings for SUT, MC and SCs

1.  Join each machine to the same Domain using the domain user account you created and use dynamic IP addressing.

2.  Logon to each machine using the created domain user account.

3.  Use the following procedure to configure the power options on the SUT master client and the SC Clients:

    1.  Open **Control Panel** and click **Power Options**.

    2.  Click the **Change plan settings** link next to the active plan.

    3.  Click the **Change advanced power settings** link on the next page to open the **Power Options** dialog.

    4.  Expand **Hard disk** tree and change **Turn off hard disk after** setting to “Never” (0 minutes).

    5.  Expand **Display** tree and change **Turn off display after** setting to “Never” (0 minutes).

    6.  From the **Turn off monitor** list, select **Never**.

    7.  From the **Turn off hard disks** list, select **Never (0)**.

    8.  If there is a **System standby** list, select **Never**.

    9.  If there is a **System hibernates** list, select **Never**.

    10. If there is a **Hibernation** tab, clear the **Enable hibernation** check box.

4.  Each machine (MC, SC, SUT) will need at least one gigabit Network Interface Card (NIC) to connect to the network. If a machine has more than one NIC, make sure they are also connected to the HUB.

5.  IPv4 and IPv6 must both be enabled on the system being tested, the master client, and all clients connected to the system.

**Warning**  
A network interface adapter that is not connected to a network generates an error, causing the test to fail. Note that network adapters that are used for iSCSI connectivity to storage do not need to be connected to client systems.

 

### Begin server testing

1.  Setup an HCK environment as described in the [Windows HCK Getting Started](windows-hck-getting-started.md).

2.  In **Step 2: Install HCK Client on Test Computer(s)**, add each computer (MC, SC, and SUT) to your HCK environment.

3.  Apply the LMS workaround as described in [LoadGen SC LMS Workaround](loadgen-sc-lms-workaround.md).

4.  In **Step 6: Select & Run Tests**, run **LoadGen Server Stress - Run First - Set Machine Policies Test**.

    **Important**  
    You must run this test to set the correct machine policy settings on all devices.

     

5.  When **Step 3** completes, select and run other tests as appropriate.

6.  When all tests pass, run **LoadGen Server Stress - Run Last - Reset Machine Policies Test** to reset the machines.

## Related topics


[System.Server Testing](systemserver-testing.md)

 

 







