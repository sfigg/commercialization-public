---
author: joshbax-msft
title: iSCSI Boot Firmware Table Test (LOGO)
description: iSCSI Boot Firmware Table Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2395e06c-f9ad-4369-8c1d-bff74f4201ea
---

# iSCSI Boot Firmware Table Test (LOGO)


This test verifies that the iSCSI Boot Firmware table is available and is valid.

The iSCSI Boot Firmware Table (iBFT) is a block of information residing in memory that contains different entries that are required by the iSCSI boot process.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Iscsi.iSCSIBootComponent.FwTable</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [iSCSI Boot Component Testing Prerequisites](iscsi-boot-component-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see: [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


iSCSI Boot Firmware Table test (iBFTest) consists of two binaries. A user-mode binary (ibftestwrap.exe) and a kernel-mode binary (ibftest.sys). Both binaries are required for the test to run successfully.

1.  ibftestwrap.exe loads ibftest.sys into kernel mode.

2.  ibftest.sys checks if iBFT exists in memory.

3.  If iBFT exists in memory, ibftest.sys will get a copy of the table.

4.  ibftest.sys validates the table and returns results to ibftestwrap.exe.

5.  ibftestwrap.exe in turn provides a friendly log.

6.  The log contains either the table if it is available and valid or a detailed error information if the table is unavailable or invalid.

iBFTest ensures that the iBFT is present and available to the operating system for a consistent flow of the boot process. It also validates the various entries within the table and ensures that the table is intact. It ensures that all the information is compliant with the specification

To run the test, do the following:

1.  Copy iBFTest binaries: (Or make sure iBFTest is available within HCK Studio)

    1.  Copy ibftestwrap.exe to test working directory.

    2.  Copy ibftest.sys to test working directory.

2.  Run ibftestwrap.exe

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ibftest.exe</strong></p></td>
<td></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type `/h`

 

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
<td><p>Ibftest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
<tr class="even">
<td><p>Ibftest.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
<tr class="odd">
<td><p>Ibftestwrap.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\DriversTest\storage\wdk\ibftest\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20iSCSI%20Boot%20Firmware%20Table%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




