---
author: joshbax-msft
title: Photo Print Test
description: Photo Print Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6efbd7d6-aed6-40e6-8e38-6796393b234b
---

# Photo Print Test


This automated test prints landscape- and portrait-oriented photographs to exercise printer functionality.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.rendering</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

This test fails if any of the following problems occur:

-   The test does not produce output.

-   The debugger breaks in.

-   The test produces incorrect output.

-   The log file indicates a failure.

The following are the log files for this test:

-   Photoprinttest.xml

-   Photoprinttest\_devicelogger.xml

## More information


This test prints five images in both portrait and landscape orientation in addition to the summary page, for a total of 11 pages. You must verify that all the pages are printed, that the picture is correctly rotated, and that the picture fills the page. If the printer prints the bitmap in the same orientation twice, or the bitmap does not stretch to fit the page, the printer has failed the test.

The printer prints the following images:

-   The cover page: Portrait

-   Flower: Portrait and landscape

-   Two children: Portrait and landscape

-   Cow: Portrait and landscape

-   City image: Portrait and landscape

-   Standing rock: Portrait and landscape

PrintSpy is a tool that automatically executes debugger commands when there is an Application Verifier break. The debugger commands depend on the stop code.

Currently, PrintSpy is enabled for the following tests:

-   Document Properties test (ANSI and Unicode)

-   Photo Print test

-   Print Driver Device Capabilities test

-   Print Driver DevMode Corruptor test

-   Print Driver Stress test

-   Printable Area test

-   Printer Port Monitor MIB Verification test

-   PrintTicket test

-   WSDMon Printer Verification test

PrintSpy generates XML logs under %SystemDrive%\\Printspy on the client computer. To view the files, open the XML files in the PrintSpy directory on the client computer. After the test completes, the XML logs from %SystemDrive%\\PrintSpy are copied to the DTM controller. To view the logs, open DTM Studio, right-click the test, and then select **Browse Job Logs**.

PrintSpy generates the following two logs:

-   PrintSpy\_\[TestName\].xml

-   PrintSpy\_spoolsv\_dbg.xml

If the log has only one line that starts with "PrintSpy was unable to continue", no AppVerif breaks were hit.

If the log contains tables, the tables show the stop code or stop codes that PrintSpy hit. The tables also show the commands that PrintSpy executed on the debugger.

**Note**  
If you are not sure whether the test is running, press Enter in the PrintSpy or debugger window. This causes PrintSpy to execute the last debugger command. If PrintSpy executes a debugger command, the test has stopped. Review the PrintSpy logs and perform additional debugging. If PrintSpy does not execute a debugger command, the test is still running.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Photo%20Print%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




