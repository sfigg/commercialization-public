---
author: joshbax-msft
title: Static Tools Logo Test
description: Static Tools Logo Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 04b310eb-1e61-49d3-a2cb-ff693e40ffec
---

# Static Tools Logo Test


This test performs static analysis that is designed to improve reliability of drivers using Static Driver Verifier \[SDV\] and the Code Analysis tool.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Server.StaticTools.SDVandPFD</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test,, you must create a Driver Verification Log (DVL) by performing the following steps.

1.  Run the Static Driver Verifier and the Code Analysis tool on the driver source code.

2.  Run a utility that generates the DVL file.

3.  Copy the DVL file from the computer that was used to create the DVL file to the test computer that is used when you run the Static Tools Logo Test.

For more information about creating a Driver Verification Log file to include with your submission, see [Creating a Driver Verification Log](http://go.microsoft.com/fwlink/?LinkId=248552).

**Note**  
The Static Tools Logo Test requires only the DVL file to show that Code Analysis and SDV have been run. The test does not require all rules to pass.

 

## Troubleshooting


## More information


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
<td><p><strong>TE.exe /inproc /enablewttlogging /appendwttlogging Devfund_DvlTest.dll /p:WDKClass=[WDKClass] /p:DeviceClass=[DeviceClass] /p:QueryDriverNames=[QueryDriverNames]</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>Devfund_DvlTest.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\OSBinRoot</p></td>
</tr>
<tr class="even">
<td><p>Microsoft.StaticToolsLogo.ObjectModel.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\OSBinRoot</p></td>
</tr>
<tr class="odd">
<td><p>TE.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\OSBinRoot</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Static%20Tools%20Logo%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




