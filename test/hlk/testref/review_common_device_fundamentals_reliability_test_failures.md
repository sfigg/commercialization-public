---
title: Review common Device Fundamentals Reliability test failures
Description: Review common Device Fundamentals Reliability test failures
ms.assetid: cadbd3bf-0fc4-4d26-adf1-348f3e58d488
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Review common Device Fundamentals Reliability test failures

This topic describes common test failures that you can encounter when you run Windows Hardware Lab Kit (Windows HLK) Device Fundamentals Reliability tests.

<mark type="bullet_intro">In this topic:</b>

-   <xref local="failed_but_te_shows_pass">The test is marked as failed in HLK Studio, but the te.wtl log shows only pass results</b>

-   <xref local="unexpected_reboot">The test failed because an unexpected reboot occurred during testing</b>

-   <xref local="statuschecktask">Device Status Check task fails during setup</b>

-   <xref local="timeout">Device Path Exerciser fails with “Test thread exceeded timeout limit. Terminating thread error” error</b>

-   <xref local="irp_mn_remove_device">Surprise Remove test fails with “Failed to receive IRP\_MN\_REMOVE\_DEVICE after receiving IRP\_MN\_SURPRISE\_REMOVAL” error message</b>

-   <xref local="simpleio">SimpleIO plugins log failures</b>

-   <xref local="iohangs">Testing I/O on a particular device permanently hangs, and eventually causes the test to fail because of a timeout</b>

-   <xref local="sleep">Tests do not resume from sleep</b>

-   <xref local="nonet">WirelessPlugin: ConnectToTestProfile() - Failed to connect to test profile. Reason string: "The specific network is not available." error message</b>

-   <xref local="gpssensor">WDTFSensorsPlugin: Open() - GPS Sensor did not go to ready state</b>

-   <xref local="number_of_devices_changed">Test log message: Number of devices found after reboot (1) is not the same as before the reboot (2); please review logs to find the missing device(s)</b>

## The test is marked as failed in HLK Studio, but the te.wtl log shows only pass results

If test is marked as failed in HLK Studio, but the te.wtl log shows only pass results, you can obtain the error that caused the failure by executing the following steps:

1.  Right click on the red **Run Test** icon
2.  Select **Error**

A dialog box will appear that contains a description of the error that occurred.

## The test failed because an unexpected reboot occurred during testing

If the error text states that an unexpected reboot occurred, this likely means that the device caused the operating system to reboot unexpectedly (BSOD). To diagnose this failure, attach a debugger or configure the test machine to automatically generate full memory dumps, and investigate the bug check. To get started with kernel debugging of test failures, see <xref rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b>.

## Device Status Check task fails during setup

Device Status Check tasks often fail because the device is not properly set up with media or a connection before testing starts. For information regarding how to properly configure a device for testing, see <xref rid="p_hlk_test.devicefundamentals_reliability_testing_prerequisites">Device.Fundamentals Reliability Testing Prerequisites</b>.

The Device Status Check task is included in the setup phase of every Device Fundamentals Reliability test job. It runs a tool to verify that the device under test (DUT) is in working condition. If it fails, a log is created that indicates the problem with the device.

For example, for Bluetooth devices, you might get the following error:

<inline_code devlang="cpp">PerformIO(Example ) Failed : Streaming error capturing audio HRESULT=0x8445001F Count 1</inline_code>

This error message can indicate that, prior to testing, you must connect to the Bluetooth device by using the Audio Control panel.

In the following example, the test device reports problem code **A - CM\_PROB\_FAILED\_START** status. It should report problem code **0** (no problem).

<example>
`WDTF_TARGETS          : INFO  : - Query("IsPhantom=False AND (DeviceID='USB\VID_0BDB&PID_1917&CDC_0D&MI_06\6&2A131B9E&1&0006')") WDTF_TARGETS          : INFO  : Target: F5321 gw Mobile Broadband Network Adapter USB\VID_0BDB&PID_1917&CDC_0D&MI_06\6&2A131B9E&1&0006  WDTF_TEST             : ERROR : Found a device that has a non-zero problem code or is phantom. Logging device info. WDTF_TEST             : INFO  : DeviceID:     USB\VID_0BDB&PID_1917&CDC_0D&MI_06\6&2A131B9E&1&0006 WDTF_TEST             : INFO  : DisplayName:  F5321 gw Mobile Broadband Network Adapter WDTF_TEST             : INFO  : Status:       Status Flags=0x1802400 (DN_HAS_PROBLEM DN_DISABLEABLE DN_NT_ENUMERATOR DN_NT_DRIVER) Problem Code=a (CM_PROB_FAILED_START) WDTF_TEST             : INFO  : IsPhantom:    False`
</example>
## Device Path Exerciser fails with “Test thread exceeded timeout limit. Terminating thread error” error

When the test logs the **Test thread exceeded timeout limit. Terminating thread error error** during a device path exerciser test, the test also logs the last operation that it performed. Driver developers must determine why the last logged operation would cause the test to hang. For example:

<example>
`WDTF_FUZZTEST : Test thread exceeded timeout limit. Terminating thread WDTF_FUZZTEST : Last logged operation: ZwDeviceIoControlFile, CtrlCode=0x2b0020, InBuf=0xfffffc00, 0 OutBuf=0xfffffc00, 0`
</example>
## Surprise Remove test fails with “Failed to receive IRP\_MN\_REMOVE\_DEVICE after receiving IRP\_MN\_SURPRISE\_REMOVAL” error message

The <xref rid="p_hlk_test.decf00f0-0eae-4768-b06b-85e9c0aaf7da">DF - PNP Surprise Remove Device Test</b> might fail with the following error message if the PnP manager does not send the **remove** IRP to the test device stack after it sends the **surprise remove** IRP:

<example>
`"Failed to receive IRP_MN_REMOVE_DEVICE after receiving IRP_MN_SURPRISE_REMOVAL. Ensure that there are no open handles or references to the test device (in user mode or in kernel mode) preventing IRP_MN_REMOVE_DEVICE from being sent. You may need to terminate any processes or services that may have open user mode handles to this device."`
</example>
The PnP manager does not send the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299560">IRP\_MN\_REMOVE\_DEVICE</b> request until all outstanding file handles to the device are closed. That is, the PnP manager does not send the **IRP\_MN\_REMOVE\_DEVICE** request until reference count of the PDO reaches zero. See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299561">Handling an IRP\_MN\_SURPRISE\_REMOVAL Request</b> for information on how to properly handle <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299562">IRP\_MN\_SURPRISE\_REMOVAL</b> request.

To help debug this test failure, you should determine how the reference count of the physical device object (PDO) changes. Identify the process that is changing the reference count and examine what the call stack looks like when the reference count is changed. The following steps can be used for debugging this failure:

1.  If you have not already done so, connect a kernel debugger to the test computer. See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=235504">Configuring a Computer for Driver Deployment, Testing, and Debugging</b>.

2.  Set a <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299564">ba (Break on Access)</b> breakpoint at the location where the reference count of the PDO of the test device is stored. See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299566">Processor Breakpoints (ba Breakpoints)</b> for more information about access breakpoints. In the following example, the kernel debugger **!devnode** command obtains information about the devnode for the USBvideo driver. The address of the PDO for this devnode is 0x849e9648.

    <example>
    `0: kd> !devnode 0 1 usbvideo Dumping IopRootDeviceNode (= 0x848fadd8) DevNode 0x849e9448 for PDO 0x849e9648   InstancePath is "USB\VID_045E&PID_076D&MI_00\7&1243e0b7&0&0000"   ServiceName is "usbvideo"   State = DeviceNodeStarted (0x308)   Previous State = DeviceNodeEnumerateCompletion (0x30d)`

    </example>
3.  Use the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299568">!devobj</b> command on the PDO to display information about the reference count (**RefCount**) of the PDO.

    <example>
    `0: kd> !devobj 0x849e9648 Device object (849e9648) is for:  0000004e \Driver\usbccgp DriverObject 8727e120 Current Irp 00000000 RefCount 0 Type 00000022 Flags 00003040 Dacl 82910320 DevExt 849e9700 DevObjExt 849e99e0 DevNode 849e9448  ExtensionFlags (0x00000800)  DOE_DEFAULT_SD_PRESENT Characteristics (0x00000180)  FILE_AUTOGENERATED_DEVICE_NAME, FILE_DEVICE_SECURE_OPEN AttachedDevice (Upper) 88310588 \Driver\usbvideo Device queue is not busy`

    </example>
4.  Examine the PDO device object by using the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299569">dt (Display Type)</b> kernel debugger command. The **ReferenceCount** shows the number of open handles for the device that are associated with the device object.

    <example>
    `0: kd> dt nt!_DEVICE_OBJECT 849e9648   …    +0x002 Size             : 0x398    +0x004 ReferenceCount   : 0n0    +0x008 DriverObject     : 0x8727e120 _DRIVER_OBJECT .. …`

    </example>
5.  If the reference count is greater than 0 before starting the test:

    -   Set a breakpoint where the PDO gets created.

    -   After the PDO is created, set the break on access (**ba**) breakpoint at the location where the reference count of the PDO is stored.

        For example, the following command sets a **ba (Break on Access)** breakpoint on the device object (0x849e9648). The breakpoint is set on write access to the **ReferenceCount** (+4 offset) with a size of 4 bytes (the size of **ReferenceCount**).

        <example>
        `0: kd> ba w 4 849e9648+4 `

        </example>
    -   If the reference count of the PDO is equal to 0 before starting the test, it is likely that running the test is what is causing the reference count of the PDO to be greater than zero at the time the test performs the surprise remove of the device. This usually indicates a handle leak. Run the PNP Surprise Remove Device test from a Command Prompt window or from Visual Studio to reproduce the failure and capture the information that is needed to troubleshoot the problem.

    >[!NOTE]
    If you set the <mark type="param">DoConcurrentIO</b> parameter to TRUE, the test opens hundreds of file handles to the PDO. We recommend that you set this parameter to FALSE when you reproduce this failure.

    
6.  When the break on access (**ba**) breakpoint occurs, you can use the **!thread** and <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299570">k (Display Stack Backtrace)</b> kernel debugger commands to debug the failure. Because the reference count can change multiple times during the course of running the test, as an option, you can use the <mark type="param">commandString</b> parameter of the **ba (Break on Access)** debugger command to get the information that you need on each change to the reference count, and still continue to test.

    For example, in the following break on access command, the <mark type="param">commandString</b> consists of a **!thread** command that will identify the process causing the reference count change, and the **.reload ; k 100** commands that will identify the call stack, a **!devobj** command to print the reference count on each change, and **g** command to continue after the breakpoint.

    <example>
    `0: kd> ba w 4 849e9648+4 "!thread; .thread /p /r; .reload; k 100; !devobj 849e9648; g"`

    </example>

*Example:*

In the following example, the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299571">CreateFile function</b> call from a thread that is running in **cscript.exe** causes an increment to the reference count. Capturing all the instances where the reference count is changed while running the test and analyzing these call stacks can help identify the handle leaks.

<example>
`THREAD 87eb3d40  Cid 1094.1490  Teb: 7f5a8000 Win32Thread: 82da2210 RUNNING on processor 3 Not impersonating DeviceMap                 a71b3228 Owning Process            88199cc0       Image:         cscript.exe Attached Process          N/A            Image:         N/A Wait Start TickCount      1232688        Ticks: 0 Context Switch Count      18             IdealProcessor: 2              UserTime                  00:00:00.000 KernelTime                00:00:00.000 Win32 Start Address ntdll!TppWorkerThread (0x7710704d) Stack Init a6ebfde0 Current a6ebfa6c Base a6ec0000 Limit a6ebd000 Call 0 Priority 9 BasePriority 8 UnusualBoost 0 ForegroundBoost 0 IoPriority 2 PagePriority 5 ChildEBP RetAddr  Args to Child               a6ebfa50 814a73fe f81771f8 814a72e5 8281000e nt!IopCheckDeviceAndDriver+0x61 (FPO: [Non-Fpo]) (CONV: stdcall) [d:\w8rtm\minkernel\ntos\io\iomgr\parse.c @ 182] a6ebfb70 8149fb76 849e9648 848f9200 87164008 nt!IopParseDevice+0x11d (FPO: [Non-Fpo]) (CONV: stdcall) [d:\w8rtm\minkernel\ntos\io\iomgr\parse.c @ 1634] … … 0236f874 7710689d ffffffff 77195ae2 00000000 ntdll!__RtlUserThreadStart+0x4a (FPO: [SEH]) (CONV: stdcall) [d:\w8rtm\minkernel\ntdll\rtlstrt.c @ 1021] 0236f884 00000000 7710704d 0031c540 00000000 ntdll!_RtlUserThreadStart+0x1c (FPO: [Non-Fpo]) (CONV: stdcall) [d:\w8rtm\minkernel\ntdll\rtlstrt.c @ 939]  Implicit thread is now 87eb3d40 Connected to Windows 8 9200 x86 compatible target at (Wed Sep 19 21:04:27.601 2012 (UTC - 7:00)), ptr64 FALSE Loading Kernel Symbols ............................................................... ................................................................ ............... Loading User Symbols ................................................................ ........................... Loading unloaded module list ..................... ChildEBP RetAddr   a6ebfa50 814a73fe nt!IopCheckDeviceAndDriver+0x61 [d:\w8rtm\minkernel\ntos\io\iomgr\parse.c @ 182] a6ebfb70 8149fb76 nt!IopParseDevice+0x11d [d:\w8rtm\minkernel\ntos\io\iomgr\parse.c @ 1634] … … 0236f2d4 6970274e KERNELBASE!CreateFileW+0x61 [d:\w8rtm\minkernel\kernelbase\fileopcr.c @ 1194] 0236f31c 6b6ce0e1 deviceaccess!CDeviceBroker::OpenDeviceFromInterfacePath+0x178 [d:\w8rtm\base\devices\broker\dll\broker.cpp @ 177] 0236f34c 6b6cc5c0 MFCORE!CDevProxy::CreateKsFilter+0x46 [d:\w8rtm\avcore\mf\core\transforms\devproxy\devproxy.cpp @ 2263] … … 0236f874 7710689d ntdll!__RtlUserThreadStart+0x4a [d:\w8rtm\minkernel\ntdll\rtlstrt.c @ 1021] 0236f884 00000000 ntdll!_RtlUserThreadStart+0x1c [d:\w8rtm\minkernel\ntdll\rtlstrt.c @ 939]  Device object (849e9648) is for:  0000004e \Driver\usbccgp DriverObject 8727e120 Current Irp 00000000 RefCount 1 Type 00000022 Flags 00003040 Dacl 82910320 DevExt 849e9700 DevObjExt 849e99e0 DevNode 849e9448  ExtensionFlags (0x00000800)  DOE_DEFAULT_SD_PRESENT Characteristics (0x00000180)  FILE_AUTOGENERATED_DEVICE_NAME, FILE_DEVICE_SECURE_OPEN AttachedDevice (Upper) 88310588 \Driver\usbvideo Device queue is not busy.`
</example>
## SimpleIO plugins log failures

Device Fundamentals Reliability tests use <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299469">Provided WDTF Simple I/O plug-ins</b> to test I/O on devices. SimpleIO plugins are WDTF extensions that test generic device-specific I/O functionality. If a WDTF plug-in exists for the type of device that is being tested, then the test uses <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299599">IWDTFSimpleIOStressAction2 interface</b> to test I/O on the device.

Errors that are logged by WDTF SimpleIO plugins use the WDTF\_SIMPLE\_IO tag in the TestTextLog.log file (see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299600">WDTF Object Name tags</b>. The error message always identifies the device under test and the specific reason for failure.

*Example:*

In this example, the Wireless SimpleIO plug-in logged a failure that I/O failures occurred during the test of an 802.11n USB Wireless LAN Card device. Specifically, the SimpleIO plugin pinged the gateway address by using an <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299601">IcmpSendEcho function</b>, which returned an error 11010. This error translates to **Error due to lack of resources**.

<example>
`WDTF_SIMPLE_IO            : ERROR :  - PerformIO(802.11n USB Wireless LAN Card USB\VID_XXXX&PID_XXXX\X&XXXXXXX&X&X ) Failed : WirelessPlugin: TestPingGateway() - IcmpSendEcho() call failed several times. The error reported is for the last failure instance Win32=11010 - Error due to lack of resources.`
</example>
## Testing I/O on a particular device permanently hangs, and eventually causes the test to fail because of a timeout

Device Fundamentals Reliability tests are scenario based tests and combine I/O testing with PNP & power test scenarios. The tests typically will test I/O for two minutes before and after a scenario. For instance, the <xref rid="p_hlk_test.93eaf322-1d61-4a65-81a2-7da7129cf3cd">DF - Sleep with IO Before and After</b> test does the following:

<example>
`For each sleep state supported on the system (CS, S1, S2, S3, S4)  Test I/O on devices with I/O plugins in parallel (one thread per device) for 2 minutes  Enter sleep state & exit after 2 minutes  Next`
</example>
The test ends up testing I/O on devices several times (one time for each sleep state) when it runs. See <xref rid="p_hlk_test.review_log_files_troubleshooting_device_fundamentals_reliability_tests">Review Log Files</b> for information about how to see this in the log files.

One of the common failures when testing I/O is that testing I/O on a particular device can permanently hang. This results in the test to eventually fail after a test timeout period (which is typically hours). See <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> for information about how to identify failures caused by timeout. 

>[!NOTE]
Windows HLK will terminate the hung process after the timeout period. Instead of waiting for the test to eventually fail because of a permanent hang, we recommend that you investigate the hang while the hung process is still running on the system. See the **Test Hangs** section of the <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> topic for information about how to troubleshoot test hangs.


Depending on how many devices the I/O is being tested on, the hung device can be identified as follows:

1.  If the number of devices the test is testing I/O on is one, you will see no progress in the command window for more than ten minutes. The last log entry in the command window will have a **WDTF\_SIMPLE\_IO** or **WDTF\_SIMPLEIO\_STRESS** tag, and it will identify the hung device. See <xref rid="p_hlk_test.review_log_files_troubleshooting_device_fundamentals_reliability_tests">Review Log Files</b> for more information about how to read the test log files.

2.  If the number of devices on which the test is testing I/O is greater than one, you will see a constant repetition of *PerformIO(&lt;Device Name&gt;) Count …* messages for longer than ten minutes in the command window. The test tries to stop testing I/O on one device at a time after two minutes of testing I/O on them. If the stop operation is successful for a particular device, you should see a “Stop” message followed by a “Close” message for the device in the logs. If the “Stop” message is seen, but the corresponding “Close” message is not seen for a device, then it implies that testing I/O to this device is hung.

<mark type="bullet_intro">Example:</b>

In the following case, the mobile broadband device is the problem device because there is a “Stop” message, but there is no corresponding “Close” message. On the other hand, the I2C HID Device has both a “Stop” message and a “Close” message, which implies that the test was able to stop I/O on the device without any problems. The test never had a chance to stop testing I/O on the Microsoft Basic Render Driver and Microsoft ACPI-Compliant System devices; therefore, “PerformIO” messages are continuously seen for these devices.

<example>
`WDTF_SIMPLEIO_STRESS      : INFO  :  - Stop(I2C HID Device ACPI\STMQ7017\2&DABA3FF&3 ) WDTF_SIMPLE_IO            : INFO  :  - Close(I2C HID Device ACPI\STMQ7017\2&DABA3FF&3 ) WDTF_SIMPLEIO_STRESS      : INFO  :  - Stop(XYZ Mobile Broadband Device USB\VEN_XXX&PID_XXX\X&XXXXXX&X&X) WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft Basic Render Driver ROOT\BASICRENDER\0000 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft ACPI-Compliant System ACPI_HAL\PNP0C08\0 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft Basic Render Driver ROOT\BASICRENDER\0000 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft ACPI-Compliant System ACPI_HAL\PNP0C08\0 ) Count 119 … … WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft Basic Render Driver ROOT\BASICRENDER\0000 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft ACPI-Compliant System ACPI_HAL\PNP0C08\0 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft Basic Render Driver ROOT\BASICRENDER\0000 ) Count 119 WDTF_SIMPLE_IO            : INFO  :  - PerformIO(Microsoft ACPI-Compliant System ACPI_HAL\PNP0C08\0 ) Count 119 … …`
</example>
The next step is to inspect the stack traces of the threads in the test process to determine why testing I/O to the mobile broadband device is hung. You will find that one of the threads in the test process is used to specifically test I/O on the mobile broadband device. See <xref local="stacktrx" rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b> for additional troubleshooting information.

## Tests do not resume from sleep

Device Fundamentals Reliability tests rely on system wake timers to wake up the test system from sleep states during power management testing. Faulty wake timers can prevent the test system from automatically waking up during the test runs. If you the test system is not automatically waking up from sleep, you might need to contact your BIOS vendor to have them release a BIOS fix to address the wake timer issues, or run tests on a different system where the wake timers work as expected.

The system can also permanently hang during power up or power down because of driver bugs. In this case, you should re-run the test by using the test system connected to a kernel debugger, and debug the system hang from the kernel debugger.

See <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299467">Setting Up Kernel-Mode Debugging Manually</b> for information about how to setup a kernel debugger. See <xref local="clientunre" rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b> for general guidance on how to troubleshoot system hangs during Windows HLK test runs.

## WirelessPlugin: ConnectToTestProfile() - Failed to connect to test profile. Reason string: "The specific network is not available." error message

Device Fundamentals tests will fail with this error message if correct values for Wpa2PskAesSsid and Wpa2PskPassword parameters are not supplied to the test at test schedule time. The tests require you to provide connection information (SSID and password) of a test wireless network if one of the devices under test is a WiFi adapter. See parameters section of the failing test's documentation page for more information about these test parameters.

## WDTFSensorsPlugin: Open() - GPS Sensor did not go to ready state

Device Fundamentals Reliability tests require systems with a GPS sensor to be tested in an environment where there is a strong GPS signal (in order for the tests to be able to test I/O on the GPS sensor device). This error indicates that the GPS sensor on the test system cannot get a GPS fix. Please consider running the tests in a location where the test system can get a strong GPS signal.

## Test log message: Number of devices found after reboot (1) is not the same as before the reboot (2); please review logs to find the missing device(s)

This message indicates that one of the devices did not come back after reboot. To investigate this failure, generate and analyze the verbose Setupapi logs for Reinstall, Restart, and Reboot tests by executing the following steps:

1.  To generate verbose setupapi logs, set the registry key **KEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Setup!LogLevel** to **0x2000ffff**
2.  Repro the issue and then review the Setupapi logs at %windir%\\inf\\setupapi\*
3.  To root cause device install issues, see <xref hlink="http://download.microsoft.com/download/d/9/4/d94c614b-9417-41b8-93a1-369cc3b620a3/Setupapilog.doc">Troubleshooting by Using the Setupapi.log File</b>

If the log contains an error stating that the device was missing or did not start, run !pnptriage from the debugger and review the output. For more information on debugging test failures, see <xref rid="p_hlk_test.use_kernel_debugging_to_debug_device_fundamentals_reliability_test_failures">Use kernel debugging to debug Device Fundamentals Reliability test failures</b>.

<seealso> <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> </seealso>



