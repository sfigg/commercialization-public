---
author: joshbax-msft
title: Registry Validation
description: Registry Validation
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1395fa91-43b6-46d6-ae6c-c2225860ba68
---

# Registry Validation


This automated test verifies that display drivers create the correct registry entries.

This test validates the registry entries that a video card driver makes to ensure that they are complete and sensible. Correct entries in the registry are important for the performance and stability of the Microsoft Windows graphics stack.

During installation, video card drivers must create registry entries. The Graphics-0034 assertion lists the registry entries that this test verifies. The test verifies that the registry entries exist and that they contain information of the correct type.

Additionally, string registry entries must contain at least one character and must not contain the word "Microsoft."

Finally, the file version that is set on the display driver DLL file must conform to the standards that are described in the test assertions.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.AdapterBase.RegistryEntries</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

 

 






