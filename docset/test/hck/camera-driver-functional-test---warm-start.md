---
author: joshbax-msft
title: Camera Driver Functional Test - Warm Start
description: Camera Driver Functional Test - Warm Start
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1b318d1d-ceac-4d0d-a463-6718c5b0f12f
---

# Camera Driver Functional Test - Warm Start


This test validates cameras functionality if the driver supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_WARMSTART, if it does not, you should skip this test.

**Note**  
This is an optional control. If the driver does not support a control, you should not implement a control handler just to return an error. If a control handler is registered, the test expects the control to be fully functional.

 

If the driver implements the control handler, the following checks are run based on the definition of the controls by the camera topics document. (Note: Implementation of extended controls such as photo mode also requires the implementation of other extended controls; see Requirements and the camera topics document for details.)

-   Verifies default values (if appropriate).

-   Validates that a property is advertised on correct pin or filter level.

-   Enumerates possible control values while pins are streaming and not streaming.

-   Determines end-to-end functionality.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Webcam.VideoCaptureAndCamera</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Camera%20Driver%20Functional%20Test%20-%20Warm%20Start%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




