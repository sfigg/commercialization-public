---
author: joshbax-msft
title: Verify HAL Extension serviceable
description: Verify HAL Extension serviceable
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 918a18b0-928a-4d38-adc9-d3a8bb08fc1a
---

# Verify HAL Extension serviceable


This test verifies whether a HAL extension that is serviceable will go through the CSRT resource group using a Vendor ID and Device ID to generate an expected PNPID (for example ACPI\\MSFT\_1124). It then goes through all of the devices found to see whether there is a PNPID match.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.HALExtension.HAL System.Fundamentals.HAL.IfCSRTPresent</p>
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

This test validates whether a HAL extension is serviceable by ensuring a valid PNP ID is assigned.

You can try the following if the test fails:

-   Ensure that the HAL extension loaded correctly.

-   Ensure that the HAL extension has a valid PNP ID.

-   Ensure that the HCL extension driver has a valid hardware ID.

-   Check the log file for more information on why the HAL extension is not serviceable.

 

 






