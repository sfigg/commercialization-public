---
author: joshbax-msft
title: Distributed Scan Management(MANUAL)
description: Distributed Scan Management(MANUAL)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0ec3b1fb-3fd8-4057-843a-eb304a6c9981
---

# Distributed Scan Management(MANUAL)


This manual test measures the Distributed Scan Management protocols.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.DistributedScanManagement.DistributedScanManagement</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

To run this test, use the following instructions:

1.  Setup a scan server by using the following instructions: [Overview of Scan Management](http://go.microsoft.com/fwlink/p/?LinkId=232665)

2.  Create post-scan processes and execute the following:

    1.  Send the scan to a valid e-mail address.

    2.  Send scan to SharePoint

    3.  Send scan to file share

3.  If the scanner supports file name/path change

    1.  Change file name at device

    2.  Change file path at device

    3.  Change file name when PSP doesn't allow it

    4.  Change file path when PSP doesn't allow it

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

 

 






