---
title: PrintTicket Test
Description: PrintTicket Test
ms.assetid: e2312247-b001-4ffa-83c4-a4c92f5f47b2
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# PrintTicket Test

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/e2312247-b001-4ffa-83c4-a4c92f5f47b2">http://msdn.microsoft.com/en-us/library/windows/hardware/e2312247-b001-4ffa-83c4-a4c92f5f47b2</b>


</conditional_block>

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
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Imaging.Printer.Base.printTicket</li>
<li>Device.Imaging.3DPrinter.Base.PrintTicket</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_server"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>2</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_imaging_additional_documentation">Device.Imaging additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.printer_testing_prerequisites">Printer Testing Prerequisites</b>.

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_deviceimaging_testing">Troubleshooting Device.Imaging Testing</b>.

<note type="warning">
Any attempt to change the system default printer while the test is running might lead to inconsistent results.


## More information

## Parameters

| Parameter name                                   | Parameter description                    |
|--------------------------------------------------|------------------------------------------|
| <mark type="bullet_intro">LLU\_LAU</b>           | Logical Local User.                      |
| <mark type="bullet_intro">LLU\_NetAccessOnly</b> | Logical Local User: Network Access only. |
| <mark type="bullet_intro">TestExecutableName</b> | Test Executable name.                    |
| <mark type="bullet_intro">WDKPrinterName</b>     | Printer name.                            |





