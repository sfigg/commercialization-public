---
author: joshbax-msft
title: Driver Robustness Test
description: Driver Robustness Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 98bac4cd-0068-49ef-8923-38a708f8dc20
---

# Driver Robustness Test


This automated test validates the robustness of a scanner driver’s implementation of its exported functions (IStiUSD and IWiaMiniDrv interfaces) by attacking it, stressing and generally trying to expose weaknesses, memory leaks, and so on.

**Note**  
This is not a mandatory test for certification.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.Base.errorHandling</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

In addition, the Wdk\\ConfigureScanner dimension must be added to the computer pool before running this test.

To add the scanner dimension to the computer pool:

1.  From the Windows Hardware Certification Kit (Windows HCK) Studio, open **Job Monitor**.

2.  Select the computer pool containing the test computer that the test device is attached to.

3.  Right click and open the properties page, and then select MCU Policy tab.

4.  From the **Available dimension** list select **Wdk\\ConfigureScanner**, add it to the machine pool, and click **Ok**.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

 

 






