---
title: Troubleshooting Device.Graphics Testing
Description: Troubleshooting Device.Graphics Testing
ms.assetid: dc485fbe-7e9e-4400-909a-e4cba9e2d383
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Graphics Testing

## 

To troubleshoot issues that occur with Device.Graphic tests, follow these steps:

1.  Review <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

2.  Review one of the following topics, depending on the type of graphic device that you want to test:

    -   <xref rid="p_hlk_test.display_monitor_testing_prerequisites">Display Monitor Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.graphic_adapter_or_chipset_testing_prerequisites">Graphic Adapter or Chipset Testing Prerequisites</b>

3.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

## Specific information about DXVA testing

The DXVA tests require the following:

-   **Supplemental Content for Windows HLK Tests for DXVA and HMFT Multimedia Tests**: Download and install the Supplemental Content for Windows HLK Tests for DXVA and HMFT Multimedia Tests from the MSDN® website at <xref hlink="http://msdn.microsoft.com/en-us/windows/hardware/hh852358">http://msdn.microsoft.com/en-us/windows/hardware/hh852358</b>.

    <note type="important">
    Before running the DXVA tests on x86 or amd64 systems, you must install the Windows 8 Professional SKU and then install Windows Anytime Upgrade for Media Center, otherwise the MPEG2 tests will fail.

    

## Common errors

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
<th>Solution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ERROR&gt;&gt; Failed to find input source file.</p></td>
<td><p>Content not available to client machine.</p></td>
<td><p>Ensure that the <strong>ContentSource</strong> parameter points to the correct location of the source content at run time.</p></td>
</tr>
</tbody>
</table>

<seealso> <xref rid="p_hlk_test.device_graphics_tests">Device.Graphics Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



