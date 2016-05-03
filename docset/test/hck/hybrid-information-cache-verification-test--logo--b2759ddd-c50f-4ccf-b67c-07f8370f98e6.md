---
author: joshbax-msft
title: Hybrid Information Cache Verification Test (LOGO)
description: Hybrid Information Cache Verification Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3452f23d-f5f7-4b9e-b3cb-309f9758225d
---

# Hybrid Information Cache Verification Test (LOGO)


This test checks commands and I/O that will move data to or from the cache will actually perform what is expected. Hinted I/O should pin data into the cache.

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
<td><p>~240 minutes</p></td>
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

Hybridflt.sys must be installed for this test to work properly.

## More information


The test should automatically turn the hybrid information on before checking the logs if it was not on already.

In general, the test will first create the baseline by doing the following:

1.  Turn off the cache.

2.  Turn on the cache.

3.  Create a baseline for random reads off the rotational media.

4.  Pin in data to the cache.

5.  Create a baseline for random reads off the cache

6.  Compare the two baselines to make sure they look reasonable

If this setup point fails, the test results are meaningless. It indicates that there were unexpected cache misses during the random reads off what is expected to be cache.

The test will do the following:

-   Do an operation on a region

-   Do a random read test on that region

-   Compare the results to the baselines

-   If the result is similar to the expected baseline, the test case will pass, else it will fail.

The test cleans the cache before test cases by turning the cache on and off.

You can use the Command Syntax section to execute a specific test case.

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
<td><p>Verbosity</p></td>
<td><p>The logging level for the test where 0 is least verbose and 4 is most verbose. You should leave this at its default value unless you need to troubleshoot individual test cases.</p>
<p>Default value: 1</p></td>
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
<td><p><strong>Hybriddrive.exe –drive &lt;disk #&gt; -scenario location</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
<tr class="even">
<td><p><strong>-Drive &lt;disk#&gt;</strong></p></td>
<td><p>The drive to be tested on. The behavior of boot drives or drives with a file system is not defined.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Verbosity</strong></p></td>
<td><p>The logging level for this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>-?</strong></p></td>
<td><p>Displays help.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-Scenario location</strong></p></td>
<td><p>The scenario to run.</p></td>
</tr>
<tr class="even">
<td><p><strong>-case #</strong></p></td>
<td><p>The test case to run.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Hybrid%20Information%20Cache%20Verification%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




