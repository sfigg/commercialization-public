---
author: joshbax-msft
title: WIA Error Handler Test
description: WIA Error Handler Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fd4f0401-5a39-455c-ac10-2d5013f7e9d4
---

# WIA Error Handler Test


This automated test is run by an automated Windows® Driver Kit (WDK) tool that is used for testing the behavior of Windows Image Acquisition (WIA) drivers that are related to the WIA error handler.

This tool verifies that a driver does not cause applications or the WIA service to crash when the driver sends a message to an error handler or receives a message to its error handler. It also guarantees a consistent experience for the user.

**Note**  
WIA 2.0 is a requirement for the test to pass in Windows 7 and Windows Server 2008. WIA 2.0 is not a requirement for Windows Vista™.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.Base.errorHandling</p>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

In addition, before running this test, the Wdk\\ConfigureScanner dimension must be added to the computer pool. To do add the dimension to the computer pool, complete the following steps:

1.  From the Windows Certification Test Kit Studio, open the Job Monitor.

2.  Select the computer pool that contains the test computer that the test scanner is attached to.

3.  Right-click the computer pool to open the properties page, and then select the **MCU Policy** tab.

4.  From the available dimension list select **Wdk\\ConfigureScanner**. Add it to the machine pool and then click **Ok**.

In addition, if your device supports automatic document feeding, this test requires the following:

-   Enough paper in the feeder (usually about 50 pages).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

The test executable supports verbose logging. Use the /verboselog:1 command-line option when running the test to enable verbose logging. Detailed logging is recorded in a WTT log file.

WIA tests may fail if you do not use the WIA friendly name, To resolve this, follow these steps:

1.  Restart the Windows HCK client and wait for it to log in.

2.  Close the Device Console.

3.  Re-open the submission.

This will ensure that the gatherer data is in-sync and that the friendly name is populated.

If the steps above do not work, please work with your driver developer to make sure that the INF is referencing the driver correctly.

**Warning**  
This tool performs error handler tests during data transfers. Therefore, data transfers must work correctly for this test to pass. Errors related to data transfer will be logged in the same format as used by the Data Transfer WDK tool.

 

## More information


The WIA Data Transfer tool runs either from the WDK or from the command line. It logs results to the console and to a WTT log file, and can be configured to log at two different levels of verbosity. By default, it runs all test cases but test can be run individually as well.

To set up this tool manually, follow these steps:

1.  Install the WIA device to be tested.

2.  Register WiaTestLog.dll using RegSvr32.

3.  Run the WiaTransfer Tool from a command prompt.

 

 






