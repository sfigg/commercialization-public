---
author: joshbax-msft
title: Print Driver Devmode Corruptor Test
description: Print Driver Devmode Corruptor Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 28d20d80-c5aa-4864-97c5-10c48aabd1e8
---

# Print Driver Devmode Corruptor Test


This automated test uses good and bad DEVMODE structures to make sure that the driver gracefully handles bad data. This test is not meant to have output evaluated.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.applicationVerifier</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~240 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

**Note**  
This test must be run from an AppVerifier environment that has NTSD debugging enabled. The test uses the following Windows HCK library test jobs to run this test with a null port and then automatically restore the printer port:

-   Add NullPortMonitor and switch port

-   Restore port and delete NullPortMonitor

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

Failure of this test can be identified if the debugger breaks in, UI is displayed in the spooler process, the test halts for any reason or the log file indicates a failure.

The following are the log files for this test:

-   DevmodeCorrupt.xml

-   DevModeCorruptor\_DeviceLogger.xml

## More information


The primary way for applications and users to specify print job settings to the print subsystem is by using the DEVMODE structure. The print subsystem treats the DEVMODE structure as untrusted because the DEVMODE structure originates from outside the print subsystem. The printer drivers often access this data structure as well.

This test does not require a printer to be physically attached to the test computer. The test may be run with a null port.

The Print Driver Devmode Corruptor test tool exercises fault injection in the driver-related code paths in the print subsystem to make sure that the driver is robust enough to handle corrupted DEVMODE structures.

This test can generate large quantities of output. You can ignore and discard this output. You can also make sure that this test prints to a NULL port printer to avoid the physical output.

You can run this test manually by typing the following command at a command prompt:

`DevModeCorruptW.exe /printer="&lt;printername&gt;” /stress /Logfile=DevmodeCorrupt.xml /timetorun=4`

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Print%20Driver%20Devmode%20Corruptor%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




