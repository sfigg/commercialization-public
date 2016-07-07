---
author: joshbax-msft
title: MTP Compliance Test - Requirements - Digital Camera
description: MTP Compliance Test - Requirements - Digital Camera
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4ac0e2dc-849e-4aed-b061-80a55a986e47
---

# MTP Compliance Test - Requirements - Digital Camera


This device test validates compliance with Picture Transfer Protocol (PTP) and Media Transfer Protocol (MTP).

This test makes sure that devices support specific requirements for digital cameras. This test is directed at digital camera devices that use MTP. This test validates compliance with defined protocols based on requirements that are documented in the Windows Certification Program.

**Note**  
This test does not cover the following items:

-   Digital rights management (DRM) validation

-   Devices that use proprietary (third-party) drivers that work with the Windows Portable Device (WPD) driver stack

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.DigitalCamera.MTP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

This test copies test content to the device for testing. If the device is read-only make sure the device has at least one file of each format type supported by the device.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

## More Information


This automated test requires a PTP or MTP-compatible device and provides Pass/Fail results for each requirement.

This test is divided into the following functional categories:

-   Device Capabilities tests

-   Operations tests

-   Device Properties

-   Object Property tests

Each functional category contains child test cases, which test the subcomponents that fall under the corresponding category.

The test validates that the device supports the following operations:

-   **OpenSession**

-   **CloseSession**

-   **GetDeviceInfo**

-   **GetStorageIDs**

-   **GetStorageInfo**

-   **GetNumObjects**

-   **GetObjectHandles**

-   **GetObjectInfo**

-   **GetObject**

-   **GetDevicePropDesc**

-   **GetDevicePropValue**

The test validates that the following formats are supported:

-   Association

-   EXIF/JPEG

All other supported operations, device properties, and object properties are considered optional, and therefore will be validated according to implementation details defined in the Picture Transfer Protocol (PTP) for Digital Still Photography Devices, Version 1.0 (PIMA15740) and Media Transfer Protocol (MTP), Revision 1.0.

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
<td><p><strong>te.exe /p:”BVT=TRUE” MtpTest.dll /select(@name='@CapabilitiesTests*') /p “DeviceProfile=MtpCamera.xml”</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

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
<td><p>Mtptest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
<tr class="even">
<td><p>MtpCamera.xml</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\mtp\</p></td>
</tr>
</tbody>
</table>

 

 

 






