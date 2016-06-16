---
author: joshbax-msft
title: PrintTicket Test
description: PrintTicket Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e887a3bd-9b08-47fd-8e31-86aa972d1b97
---

# PrintTicket Test


This automated test exercises the unmanaged **PrintTicket** and **PrintCapabilties** APIs that are part of Windows Vista and newer version of Windows.

If you have the Windows Driver Kit (WDK) test suite at the command line, the test tool sequentially runs the test cases that the TestSuite.xml file mentions. For the WDK test suite, the test cases call all of the native **PrintTicket** and **PrintCapabilities** APIs sequentially by using valid input parameters and expect valid output.

You can use this test to evaluate:

-   A driver's implementation of the **PrintTicket** and **PrintCapabilities** COM callable interface: **IPrintTicketProvider**.

-   A driver plugin's implementation of the **PrintTicket** and **PrintCapabilities** COM callable interface: **IPrintOEMPrintTicketProvider**.

-   A legacy driver's **PrintTicket** and **PrintCapabilities** shim layer. You can test the **PrintTicket** and **PrintCapabilities** API calls for legacy printers that do not support the **IPrintTicketProvider** interface.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.printTicket</p>
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

**Warning**  
Any attempt to change the system default printer while the test is running might lead to inconsistent results.

 

 

 






