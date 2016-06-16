---
author: joshbax-msft
title: CSRT Validation for ARM
description: CSRT Validation for ARM
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 98aa24a4-5434-48af-9da8-b86b5dbd5cab
---

# CSRT Validation for ARM


This test is used to dynamically generate a fake CSRT table, put it on the acpitabl.dat, and let the system load it to see whether winloader can handle it well. The test will:

1.  Use csrttool to generate random valid and invalid CSRT tables and put it in the apcitabl.dat.

2.  Restart the system to read the CSRT table from the ACPITablecache.

3.  If it generate a valid CSRT table, after reboot the read CSRT table is the same.

    If it generate an invalid CSRT table, after reboot the bad CSRT table should not be in the ACPI Cache.

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
<td><p>Basic Certification</p></td>
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

This test validates whether the CSRT table for the ARM platform is valid.

Some possible reasons why this test could fail:

-   The checksum is not correct.

-   The resource type is not valid. The log file tells you which part of the CSRT table is not valid.

 

 






