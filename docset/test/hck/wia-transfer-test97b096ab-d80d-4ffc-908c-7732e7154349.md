---
author: joshbax-msft
title: WIA Transfer Test
description: WIA Transfer Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7ddeb096-681b-4671-99ec-2c09374cad87
---

# WIA Transfer Test


This manual test is initiated by the Windows® Image Acquisition (WIA) Data Transfer tool, which is an automated Windows Driver Kit tool for testing the behavior of WIA minidrivers that are related to data transfer.

The test tool verifies that a driver does not cause applications or the WIA service to crash or hang during data transfer. It also verifies that the correct behavior is implemented by the driver for different configurations, sequences of actions, and errors that may occur during transfer. This tool ensures that there is no ambiguity in the driver's behavior in these scenarios. This improves compatibility between all WIA drivers and WIA applications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.Base.dataTransfer</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

Before running this test the Wdk\\ConfigureScanner dimension must be added to the computer pool. To do add the dimension to the computer pool, complete the following steps:

1.  From the Windows Certification Test Kit Studio, open the Job Monitor.

2.  Select the computer pool containing the test computer that the test scanner is attached to.

3.  Right-click the computer pool to open the properties page, and then select the **MCU Policy** tab.

4.  From the available dimension list select **Wdk\\ConfigureScanner**, add it to the machine pool and then click **Ok**.

In addition, if your device supports automatic document feeding, this test requires the following:

-   Enough paper in the feeder (usually about 50 pages).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

For test failures, search for the term “+sev” in the log.

The test executable supports verbose logging. Use the /verboselog:1 command-line option when running the test to enable verbose logging. Detailed logging is recorded in a WTT log file.

## More information


The WIA Data Transfer tool runs either from the WDK or from the command line. It logs results to the console and to a WTT log file, and can be configured to log at two different levels of verbosity. By default, it runs all test cases but individual test cases can be specified as well.

WIA 2.0 is a requirement for the test to pass in Windows 7 and Windows 2008 R2. WIA 2.0 is not a requirement for Windows Vista

To set up this tool manually, follow these steps:

1.  Install the WIA device to be tested.

2.  Register WiaTestLog.dll using RegSvr32

3.  Run the WiaTransfer Tool from a command prompt.

**Note**  
WIA tests may fail if you do not use the WIA Friendly name. To resolve this, follow these steps:

 

1.  Restart the Windows HCK Client and wait for it to log in.

2.  Close the Device Console.

3.  Re-open the submission.

This will ensure that the gatherer data is in-sync and that the friendly name is populated.

If the steps above do not work, please work with your driver developer to make sure that the INF is referencing the driver correctly.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WIA%20Transfer%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




