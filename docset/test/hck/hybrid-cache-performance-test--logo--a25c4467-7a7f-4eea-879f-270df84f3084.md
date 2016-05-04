---
author: joshbax-msft
title: Hybrid Cache Performance Test (LOGO)
description: Hybrid Cache Performance Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bc17e0e8-1153-43e4-8707-91b4f17984eb
---

# Hybrid Cache Performance Test (LOGO)


This test validates the performance of the cache by doing the following scenarios:

-   Sequential Read

-   Random Read (Queue Depth=1)

-   Random Read (Queue Depth=8)

-   Random Write (Queue Depth=1)

-   Random Write (Queue Depth=8)

-   Sequential Write

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Sata.HybridInformation.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


This test does the following:

1.  Disables the cache.

2.  Enables the cache. This effectively should clear out the entire cache.

3.  Pin in data starting at offset 0 for a length of 4 GB with priority. This pin will be with reads. Additionally, after every GB the test waits until the hybrid log pages have stopped changing in a certain time frame. This is to allow the device to sync data into the cache so that the entire range gets pinned into the drive.

4.  Changes the priority of all future I/O to the drive to not have any priority.

5.  Start the speed test.

 

 






