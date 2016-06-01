---
author: joshbax-msft
title: Secure Digital Test (LOGO)
description: Secure Digital Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a94bc125-0f78-44ec-8d42-d6980d9419d1
---

# Secure Digital Test (LOGO)


This test is designed to test Secure Digital (SD) host controllers. This test loads a test driver, sdhct.sys, that enables it to access the SD host controller hardware directly.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.SdioController.ComplyWithIndustrySpec Device.BusController.SdioController.WdfKmdfDriver</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Secure Digital Host Controller Testing Prerequisites](secure-digital-host-controller-testing-prerequisites.md).

Be sure to use high speed media if your host controller supports high speed. You should use the best quality media available to ensure accurate results.

The test has several manual steps that require you to insert and remove the SD card from the controller at various stages of the test in order to accurately validate all the necessary conditions. The instructions in the command window for the test are very explicit and will explain what steps are needed to be taken in order to accurately test the device.

To run this test:

1.  Begin the test.

2.  Allow the machine 5 minutes to load the test driver and restart.

3.  Go to the test machine and follow the on-screen instructions to insert and remove the SD card.

**Warning**  
To run the test manually, you must manually insert and remove SD cards. This activity will occur after the test has restarted the machine the first time.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

If you insert and remove the SD card in the wrong order as specified by the output of the command window, the test may fail as it expects the card to be in certain configurations. If this occurs, reschedule the test and retry while following the steps closely.

In some cases the SDHCT.sys driver has bug checked during testing, this can occur for various reasons, but is usually mitigated by running the test a couple of times.

Failures in the test have more information about what occurred and what was being tested in the resulting logs. These are available for analysis and should be looked at first when a failure is encountered.

## More information


The SD Bus Host Controller software enables you to verify the correct operation of an SD controller on a Windows platform that has a logo. Correct operation includes exercising and verifying the following functionality:

-   Device.BusController.SdioController.ComplyWithIndustrySpec

-   Device Insertion/Removal

-   Wake on Device Insertion/Removal

-   SD Memory I/O

-   SD Performance

-   Host Controller Power Control

-   Error Handling

The test interacts with the test driver to validate each of these areas. For several of the cases, the user will be required to insert and remove the SD card in response to the prompt in the command window. The test will print clearly in the log which test case is being tested and what the results are for that result. This helps to analyze what is being tested and any failures encountered.

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
<td><p>sdhct.exe</p></td>
<td><p>Run all the test cases for all the slots of the host controller.</p></td>
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
<td><p>sdhct.exe</p></td>
<td><p>The command-line options for the test are listed below.</p></td>
</tr>
<tr class="even">
<td><p>/s<em>#</em></p></td>
<td><p>The SDHC slot number.</p>
<p>Default value: All slots</p></td>
</tr>
<tr class="odd">
<td><p>/t<em>#</em></p></td>
<td><p>The test group to run.</p>
<p>Default value: All test groups</p>
<p>You can specify the following values:</p>
<ul>
<li><p>t1: PCI/host controller configuration tests</p></li>
<li><p>t2: SD device insert/remove detection tests</p></li>
<li><p>t3: SD memory I/O tests</p></li>
<li><p>t4: SD performance tests</p></li>
<li><p>t5: SD error handling tests</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

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
<td><p>sdcht.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\sdhct\</p></td>
</tr>
<tr class="even">
<td><p>sdhct.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\sdhct\</p></td>
</tr>
<tr class="odd">
<td><p>sdhct.sys</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\sdhct\</p></td>
</tr>
<tr class="even">
<td><p>sdhct.inf</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\sdhct\</p></td>
</tr>
<tr class="odd">
<td><p>sdhct.cat</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk\sdhct\</p></td>
</tr>
<tr class="even">
<td><p>devcon.exe</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\IDW\</p></td>
</tr>
</tbody>
</table>

 

 

 






