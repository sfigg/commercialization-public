---
author: joshbax-msft
title: WMV Playback DXVA Test
description: WMV Playback DXVA Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 73780c68-9174-4931-ac7f-a55b6cfc45d2
---

# WMV Playback DXVA Test


This test verifies DXVA decoding on the graphics adapter, and DXVA-HD quality on the graphics adapter.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.D3D11VideoDecoding</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

Before you run the test, download the [Supplemental Content for Windows HCK Tests for DXVA Multimedia Tests](http://go.microsoft.com/fwlink/p/?linkid=313180). You can use the content in the following ways:

1.  You can put the content on the Windows Hardware Certification Kit (Windows HCK) Server under the path **%DTMBIN%..\\Tests\\DXVAContent**, and use the default value for **ContentSource** when you schedule the tests. In this case, each test will copy over the input content that is required only for that single test, and then delete the content after the test has completed. This method is useful when you test machines that have less than 75GB free space available.

2.  You can put the content in a different location on the Windows HCK Server, or on a network share that is accessible to the client machines. In this case, when you schedule the tests you must update the value of **ContentSource** to point to the location that contains the copied files. This method has the same result as the previous option, but provides flexibility in where the input content is located.

3.  You can copy the content locally onto each client machine before you run the tests and update the value of **ContentSource** to be the local path on the machine. For example, if you use an external drive with letter **d:** and place the content in **d:\\DXVAContent**, when you schedule the test you must set **ContentSource** to **d:\\DXVAContent**. Note that this parameter is passed to all client machines against which the tests are scheduled, so you must make sure that the content exists in an identical path on all client machines.

    This method causes the test to use the locally cached content – the test does not copy each file for each test. This method requires at least 75GB free space on the client machine, but speeds up the test run because the content does not have to be copied for each test.

4.  Copy the content to each client machine before you run the tests and add the content path to the **%PATH%** environment variable. When you schedule the test, use the default value for **ContentSource** (the value is irrelevant in this case). You can use a combination of the third method and this method to make sure that **ContentSource** points to the content path for machines that use the third option.

    This method causes the tests to behave the same way as when using the third option because the content is not copied for each test; this method speeds up test run time and requires at least 75GB free space on the client machine. The advantage of this option is that the content does not have to exist in the same path on all client machines as long as the **%PATH%** environment variable is set correctly for each machine.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description/Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Content not available to client machine</p></td>
<td><p>ERROR&gt;&gt; Failed to find input source file …</p>
<p>Confirm that the <strong>ContentSource</strong> parameter is pointing to the location of the source content at run time.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p><strong>ContentSource</strong></p></td>
<td><p>The location of the DXVA and DXVAHD input source content files. Client machines must have access to this location)</p>
<p>Default value: <strong>[WTT\TestBinRoot]\..\DXVAContent</strong></p></td>
</tr>
</tbody>
</table>

 

## Related topics


[DXVA Tests](dxva-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WMV%20Playback%20DXVA%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





