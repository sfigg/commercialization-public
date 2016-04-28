---
author: joshbax-msft
title: Webcam Pressure Security Test
description: Webcam Pressure Security Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c29d716e-3dea-40b3-ba5e-6eef04dda27b
---

# Webcam Pressure Security Test


This test verifies that a webcam device and driver meet specifications. Some test cases check for correct error handling by the device and its driver. If the device or driver incorrectly handles these test cases, the computer might stop responding.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Streaming.Webcam.Base.AVStreamWDMAndInterfaceRequirements Device.Streaming.Webcam.Base.BasicPerf Device.Streaming.Webcam.Base.DirectShowAndMediaFoundation Device.Streaming.Webcam.Base.KSCategoryVideoCameraRegistration Device.Streaming.Webcam.Base.MultipleClientAppSupport Device.Streaming.Webcam.Base.ReportingCameraLocation Device.Streaming.Webcam.Base.SurpriseRemoval Device.Streaming.Webcam.Base.UsageIndicator Device.Streaming.Webcam.Base.WindowsCaputureInfrastructureCameraSupport Device.Streaming.Webcam.H264.H264Support Device.Streaming.Webcam.NonMSDriver.VideoInfoHeader2</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

## More information


This test is a quality assurance test for multimedia device drivers.

When the test starts, it automatically enumerates all devices with one of the following KSCATEGORY values, which are defined in the KSMEDIA.H header file in the Microsoft Windows Driver Kit (WDK):

-   KSCATEGORY\_CAPTURE

The test then enumerates the devices that are found in each category.

The following example shows a subset of the enumeration display, with the device Friendly Name preceding the internal device name.

``` syntax
Class KSCATEGORY_CAPTUREDevice #29 [TestCap Capture]: \\?\root#media#0000#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global
```

Most of the test cases are run against one or more selected devices. The first test case, 1.1 Enumerate devices, does not need a device, as it finds applicable devices. To open the **Device Selection** dialog box, on the **Options** menu, click **Select Devices** (or press Ctrl+D). You can select none, one, some, or all devices.

All selected test cases are run sequentially against the first device that is selected in the list (which is in order of enumeration). Then, the test cases run against the next device in list, and the next, until all test cases run against all devices.

The security test cases enumerate multimedia drivers and attempt to verify the driver's ability to survive being sent malformed and invalid data. Drivers that fail this testing will typically cause the computer to stop responding.

### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>WDKDeviceID</p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p>
<p>Example: \\?\root#media#0001#{65e8773d-8f56-11d0-a3b9-00a0c9223196}\global</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>PressureTest.exe</strong></p></td>
<td><p>The test enumerates the test devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>Starts the application and runs the test cases that are specified in the .profile file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>Specifies the Plug and Play (PnP) ID of the device to be tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>-l</strong></p></td>
<td><p>Enables the logging of test results.</p></td>
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
<td><p>PressureTest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\\multimediatest\AVCore\</p></td>
</tr>
<tr class="even">
<td><p>PressureWLK.pro</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\avcore\vidcap\</p></td>
</tr>
<tr class="odd">
<td><p>S98wtt.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\multimediatest\common\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Webcam%20Pressure%20Security%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




