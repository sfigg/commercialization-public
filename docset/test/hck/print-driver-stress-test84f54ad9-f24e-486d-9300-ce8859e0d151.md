---
author: joshbax-msft
title: Print Driver Stress Test
description: Print Driver Stress Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0b175413-3203-4f99-9086-82f3252810a6
---

# Print Driver Stress Test


This automated test stresses the driver in several ways. You do not have to examine the output from this test.

**Note**  
You must run this test separately from the other printer tests.

 

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
<td><p>~150 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
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
This test does not require a printer to be physically attached to the test computer. You can run this test by using a null port. However, you must run this test in the Appverifier environment. You must enable the NT system debugger (NTSD).

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

This test fails if any of the following problems occur:

-   The test does not produce output.

-   The debugger breaks in.

-   The test produces incorrect output.

-   The log file indicates a failure.

The following are the log files for this test:

-   Printdrvstress.xml

-   PrintDrvStress\_DeviceLogger.xml

## More information


This test can generate lots of output. You can ignore and discard this output.

This test exercises several driver code paths on multiple threads. This test exercises both the rendering and configuration portion of the driver. This exercise creates a stress environment for the printer drivers. The tool often reveals bugs.

Typically, this test prints to a NULL port printer to avoid large quantities of physical output.

To run this test manually, run the following command at a command prompt:

`PrintDrvStress.exe /printer="&lt;printername&gt;” /timetorun=120`

This test uses the "Add NullPortMonitor and switch port" and "Restore port and delete NullPortMonitor" test jobs in the Windows HCK library to automatically run PrintDrvStress by using a null port and then to restore the printer port.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Print%20Driver%20Stress%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




