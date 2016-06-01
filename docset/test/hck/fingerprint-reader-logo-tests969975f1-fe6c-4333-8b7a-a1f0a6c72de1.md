---
author: joshbax-msft
title: Fingerprint Reader Logo Tests
description: Fingerprint Reader Logo Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 792e8c35-01f3-4989-a12a-25c7a57cd66a
---

# Fingerprint Reader Logo Tests


This test verifies the fingerprint reader for certification.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.FingerPrintReader.Base Device.Input.FingerPrintReader.BaseLegacy Device.Input.FingerPrintReader.Extensions Device.Input.FingerPrintReader.ManagementApps Device.Input.FingerPrintReader.ManagementAppsLegacy Device.Input.FingerPrintReader.SensorEngineDB Device.Input.FingerPrintReader.SensorEngineDBLegacy Device.Input.FingerPrintReader.WBDI Device.Input.FingerPrintReader.WBDILegacy</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Fingerprint Reader Testing Prerequisites](fingerprint-reader-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

## More information


This test includes the following:

-   Sensor engine adapter test cases

-   Sensor adapter test cases

-   Storage adapter test cases

-   Sequence test cases

-   WBDI driver test cases

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
<td><p>WorkingDir</p></td>
<td><p>The folder location of the fingerprint reader tests.</p></td>
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
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Biotest.exe -config EngineTestConfig.xml -log EngineAdapterLog.xml</strong></p></td>
<td><p>Runs the engine adapter tests.</p></td>
</tr>
<tr class="even">
<td><p><strong>Biotest.exe -config SensorTestConfig.xml -log SensorAdapterLog.xml</strong></p></td>
<td><p>Runs the sensor adapter tests.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Biotest.exe -config StorageTestConfig.xml -log StorageAdapterLog.xml</strong></p></td>
<td><p>Runs the storage adapter tests.</p></td>
</tr>
<tr class="even">
<td><p><strong>te.exe WinBioSequenceTests.dll</strong></p></td>
<td><p>Runs the sequence tests.</p></td>
</tr>
<tr class="odd">
<td><p><strong>WBDIDriverTest.exe</strong></p></td>
<td><p>Runs the WBDI driver tests.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**

 

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
<td><p>BioTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="even">
<td><p>EngineTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="odd">
<td><p>EngineTestConfig.xml</p></td>
<td><p><em>&lt;[WorkingDir]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="even">
<td><p>SensorTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="odd">
<td><p>SensorTestConfig.xml</p></td>
<td><p><em>&lt;[WorkingDir]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="even">
<td><p>StorageTest.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="odd">
<td><p>StorageTestConfig.xml</p></td>
<td><p><em>&lt;[WorkingDir]&gt;</em>\WLK\AdapterTestSuite\</p></td>
</tr>
<tr class="even">
<td><p>TE.Common.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86</p></td>
</tr>
<tr class="odd">
<td><p>TE.DataDrivenTestSource.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86</p></td>
</tr>
<tr class="even">
<td><p>TE.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86</p></td>
</tr>
<tr class="odd">
<td><p>TE.Loaders.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="even">
<td><p>TE.ProcessHost.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="odd">
<td><p>Te.TestModes.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Common.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="odd">
<td><p>Wex.Communication.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="even">
<td><p>Wex.Logger.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\Testing\Runtimes\TAEF\x86\</p></td>
</tr>
<tr class="odd">
<td><p>WBDIDriverTest.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\WBDI\</p></td>
</tr>
<tr class="even">
<td><p>WinBioSequenceTests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\WLK\sequencetests\</p></td>
</tr>
</tbody>
</table>

 

 

 






