---
title: Test Server Configuration
description: Test Server Configuration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 90a0a9f2-2923-4321-a22c-86c7e5fe1b48
---

# Test Server Configuration


### <span id="Test_system_configuration"></span><span id="test_system_configuration"></span><span id="TEST_SYSTEM_CONFIGURATION"></span>Test system configuration

This article assumes that you have already setup the network domain controller and installed the Windows HLK controller and Windows HLK Studio on a machine, and that the Windows HLK controller and Windows HLK Studio are on the network.

The Server test requires the following system configuration tasks to prepare the test system for server testing. The machines setup for the Server Stress test consists of:

-   One server under test" (SUT). This is the computer that you are certifying.

    **Warning**  
    The SUT computer name must be 15 characters or less.

     

-   One x64 client machine that will act as the Remote Test Host (MC). The master client system must be listed in the Windows Server Catalog. Please note the following restrictions for the MC, Stress Client (SC), and SUT:

    -   An MC, SC or SUT cannot be a domain controller for the test systems.

    -   An MC, SC or SUT cannot host HLK Studio.

    -   An MC, SC or SUT cannot be the HLK Controller for the systems that are used for testing.

-   Eight (8) x64 client machines that act as the SC systems. LoadGen supports up to 64 SC machines, but eight is usually sufficient.

-   Do not use "MC" or "SC" or "SUT" or any derivatives in the machine names, as this will cause the test to fail.

**Important**  
Because some systems might be set to shipping configuration, they might not have all their devices enabled or their drivers loaded. Before testing, make sure that all devices in the system are enabled and that all drivers related to those devices are loaded per the testing requirements.

 

### <span id="Storage_and_Operating_System_Installation"></span><span id="storage_and_operating_system_installation"></span><span id="STORAGE_AND_OPERATING_SYSTEM_INSTALLATION"></span>Storage and Operating System Installation

1.  All machines are connected to the network via gigabit or faster HUB or switch with high speed CAT6 or faster cables.

2.  Install Datacenter SKU operating system on the SUT.

3.  Install Standard Server SKU operating system on the MC and SC's.

4.  All machines have NTFS format on all disks.

5.  Format the hard disk drive to have at least one partition with 20 GB of free disk space after the operating system has been installed. This disk should be configured as Boot, Page File, Crash Dump.

6.  Install the optional BitLocker Drive Encryption component on the server if it is supported pre-installed by the OEM.

### <span id="Systems_Settings_for_SUT__MC_and_SCs"></span><span id="systems_settings_for_sut__mc_and_scs"></span><span id="SYSTEMS_SETTINGS_FOR_SUT__MC_AND_SCS"></span>Systems Settings for SUT, MC and SCs

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

 

### <span id="Begin_server_testing"></span><span id="begin_server_testing"></span><span id="BEGIN_SERVER_TESTING"></span>Begin server testing

1.  Setup an HLK environment as described in the [Windows HLK Getting Started](p_sxs_hlk.windows_hlk_getting_started).

2.  In **Step 2: Install HLK Client on Test Computer(s)**, add each computer (MC, SC, and SUT) to your HLK environment.

3.  In **Step 6: Select & Run Tests**, run **LoadGen Server Stress - Run First - Set Machine Policies Test**.

    **Important**  
    You must run this test to set the correct machine policy settings on all devices.

     

4.  When **Step 3** completes, select and run other tests as appropriate.

5.  When all tests pass, run **LoadGen Server Stress - Run Last - Reset Machine Policies Test** to reset the machines.

## <span id="related_topics"></span>Related topics


[System.Server Testing](system-server-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Test%20Server%20Configuration%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





