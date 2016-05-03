---
author: joshbax-msft
title: Storage Performance USB3
description: Storage Performance USB3
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 729c1d27-caeb-484d-8670-5b510a8c6ef8
---

# Storage Performance USB3


This test is a special variant of the Storage Performance CS test which verifies that a USB 3.0 storage device complies with the USB 3.0 Version 1.0 specification and that the device conforms to performance requirements. For more information about this test, see [Storage Performance CS](storage-performance-csbe2ca7a4-94b0-40cf-82cb-02d505ba4d7c.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Usb3.Compliance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Removable Storage Testing Prerequisites](removable-storage-testing-prerequisites.md). In addition, this test requires the following:

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md) or the troubleshooting steps in [Storage Performance CS](storage-performance-csbe2ca7a4-94b0-40cf-82cb-02d505ba4d7c.md).

## More Information


### Command usage

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>StorPerf.exe /DriveLetter [StorageDriveLetter] /DeviceTag USB3_BOT_Data</strong></p></td>
<td><p>Runs the USB testing on the specified drive. DeviceTag can also be USB3_UAS_DATA for UAS-capable drives.</p></td>
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
<td><p>/DriveNumber &lt;number&gt;</p></td>
<td><p>Physical drive number of device under test.</p>
<p>Example: /DriveNumber 0</p></td>
</tr>
<tr class="even">
<td><p>/DriveLetter &lt;letter&gt;</p></td>
<td><p>Drive letter of device under test.</p>
<p>Example: /DriveLetter C</p></td>
</tr>
<tr class="odd">
<td><p>/DeviceTag &lt;value&gt;</p></td>
<td><p>Identifies which TestcaseGroup or ComparisonGroup to select as the input from the configuration xml files. This parameter is case-sensitive and is used for indexing both the policy and comparison xml files.</p>
<p>Example: /DeviceTag CS_Boot</p></td>
</tr>
<tr class="even">
<td><p>/PolicyXML &lt;value&gt;</p></td>
<td><p>The policy xml file name. Defines all of the parameters for running the I/O workloads. If no option is given, the default file will be generated.</p>
<p>Example: /PolicyXML CSPolicy.xml</p></td>
</tr>
<tr class="odd">
<td><p>/Compare &lt;value&gt; &lt;value&gt;</p></td>
<td><p>The two xml files to compare. These must have been generated from a previous run of this test. The &quot;FinalTestCasesAggregated*.xml&quot; files should be used instead of the &quot;AllTestCasesAggregated*.xml&quot; files since there is no guarantee that the number of iteration is the same for each test case.</p>
<p>Example: /Compare FinalTestCasesAggregated_42f4.xml FinalTestCasesAggregated_a732.xml</p></td>
</tr>
<tr class="even">
<td><p>/CompareXML &lt;value&gt;</p></td>
<td><p>The comparison xml file name. Defines all of the parameters for running the comparison. If no option is given, the default file will be generated.</p>
<p>Example: /CompareXML CSCompare.xml</p></td>
</tr>
<tr class="odd">
<td><p>/PrintPolicy</p></td>
<td><p>Prints the policy table.</p></td>
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
<td><p>StorPerf.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>StorageAssessment.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\driverstest\storage\wdk\StorageAssessment\</p></td>
</tr>
<tr class="odd">
<td><p>StorageDevices.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\driverstest\storage\wdk\</p></td>
</tr>
<tr class="even">
<td><p>StorageParameters.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\driverstest\storage\wdk\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Storage%20Performance%20USB3%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




