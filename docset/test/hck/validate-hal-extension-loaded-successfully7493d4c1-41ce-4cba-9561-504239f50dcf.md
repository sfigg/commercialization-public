---
author: joshbax-msft
title: Validate HAL Extension loaded successfully
description: Validate HAL Extension loaded successfully
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0461d8f8-714d-48c4-9788-616d179586d1
---

# Validate HAL Extension loaded successfully


This test verifies whether a HAL extension that should have been loaded did not load.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.HALExtension.HAL Device.DevFund.HALExtension.HALSignatureAttributes System.Fundamentals.HAL.IfCSRTPresent</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows RT 8.1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

You can try the following if the test fails:

-   Ensure that the HAL extension is digitally signed correctly. The HAL extension requires a special EKU signing certificate.

-   Ensure that the CSRT table has a valid resource descriptor for the HAL extension.

-   Ensure that the following registry location has a valid HAL extension entry: **HKLM\\SYSTEM\\CurrentControlSet\\Control\\OSExtensionDatabase**

-   Check the log file for more information on why the HAL extension could not be loaded.

 

 






