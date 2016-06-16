---
author: joshbax-msft
title: System - Embedded Signature Verification
description: System - Embedded Signature Verification
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dac8dae7-9894-409a-9177-fd8c5c86ec1c
---

# System - Embedded Signature Verification


This test uses SignTool.exe to verify that all the boot start type drivers on system are embed-signed.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SignedDrivers.BootDriverEmbeddedSignature</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

If you see an error saying that a “*&lt;Driver name&gt;* is not a signed driver”, you can use signtool.exe to get more information about the digital signature to better troubleshoot the issue. For example, you could run the following command to find out more about pci.sys: **signtool.exe verify /pa /v C:\\Windows\\system32\\drivers\\pci.sys**

## More information


### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EmbeddedSignature.exe</p></td>
<td><p><em>[&lt;testbinroot&gt;]</em>\</p></td>
</tr>
<tr class="even">
<td><p>Signtool.exe</p></td>
<td><p><em>[&lt;testbinroot&gt;]</em>\</p></td>
</tr>
</tbody>
</table>

 

 

 






