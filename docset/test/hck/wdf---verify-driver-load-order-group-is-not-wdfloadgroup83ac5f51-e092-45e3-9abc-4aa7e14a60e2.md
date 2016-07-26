---
author: joshbax-msft
title: Wdf - Verify Driver Load Order Group is not WdfLoadGroup
description: Wdf - Verify Driver Load Order Group is not WdfLoadGroup
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3569a879-455f-4b24-bae3-dffbadc8800a
---

# Wdf - Verify Driver Load Order Group is not WdfLoadGroup


This test verifies that WdfLoadGroup is not the Load Order Group value for the device under test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.DriverFramework.AllDrivers.WDFLoadGroup</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows RT 8.1Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

## Troubleshooting


The KMDF driver cannot use **WdfLoadGroup** as the LoadOrderGroup for the driver service install. **WdfLoadGroup** id a reserved value and cannot be used by KMDF drivers. If WdfLoadGroup is used, the test will fail with the following error: **The Execute Task with Commandline cmd /c sc qc &lt;driversvc&gt; &gt; query.log & type query.log | findstr -sip WdfLoadGroup Failed with ExitCode 0**. For more information, see [Specifying Driver Load Order](http://msdn.microsoft.com/library/windows/hardware/ff552319.aspx).

For troubleshooting information, see [Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

 

 






