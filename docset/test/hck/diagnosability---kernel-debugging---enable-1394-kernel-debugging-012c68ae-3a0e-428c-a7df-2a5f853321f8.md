---
author: joshbax-msft
title: Diagnosability - Kernel Debugging - Enable 1394 kernel debugging
description: Diagnosability - Kernel Debugging - Enable 1394 kernel debugging
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d241762b-bf2b-4513-835f-c06555209238
---

# Diagnosability - Kernel Debugging - Enable 1394 kernel debugging


This optional test is not required for certification. This test is provided to help troubleshoot certain test failures. When you debug test failures, you can use this optional test to enable 1394 Windows Kernel debugging.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Reliability.Discretional System.Fundamentals.Reliability.Discretional</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Optional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


See [Setting Up Kernel-Mode Debugging over a 1394 Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302285) for device and system configuration requirements to enable 1394 kernel debugging.

## Troubleshooting


See the **Troubleshooting Tips for Debugging over a 1394 cable** section of [Setting Up Kernel-Mode Debugging over a 1394 Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=302285) for troubleshooting assistance.

## More information


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
<td><p><strong>ChannelNumber</strong></p></td>
<td><p>Specifies the 1394 channel to use for kernel debugging.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Diagnosability - Kernel Debugging Tests](diagnosability---kernel-debugging-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Diagnosability%20-%20Kernel%20Debugging%20-%20Enable%201394%20kernel%20debugging%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





