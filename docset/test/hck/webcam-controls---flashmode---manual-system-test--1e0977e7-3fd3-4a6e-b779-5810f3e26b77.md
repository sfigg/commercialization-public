---
author: joshbax-msft
title: Webcam Controls - FlashMode - Manual System Test
description: Webcam Controls - FlashMode - Manual System Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a532cdbc-496e-45d4-9505-70a6dca68ba0
---

# Webcam Controls - FlashMode - Manual System Test


These set of tests validate cameras functionality if driver supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_FLASHMODE, otherwise they should skip. Note this is an optional control.

If driver does not want to support a control they should not implement a control handler just to return an error. If control handler is registered test will expect control to be fully functional.

If camera Supports Extended control KSPROPERTY\_CAMERACONTROL\_EXTENDED\_FLASHMODE it will validate On, off, and auto for the photo modes supported.

First the test will prompt user to move camera to a dark enough area where auto flash should also be active. Then it will randomly set the flash control to Auto, on, and off, once the setting has been committed to the driver test will call take photo command. Then test will prompt user whether camera flashed during the take photo. If flash is set to on or auto then driver should always flash, if flash is off then camera should never flash.

Second the test will prompt user to move camera to a light enough area where auto flash never flash. Then test will randomly set the flash control to Auto, on, and off, once the setting has been committed to the driver test will call take photo command. Then test will prompt user whether camera flashed during the take photo. If flash is set to on then driver should always flash, if flash is auto or off then camera should never flash.

Last if camera supports KSPROPERTY\_CAMERACONTROL\_EXTENDED\_PHOTOMODE test will set the device into photo sequence with Flash on and Single Flash or off. Test will prompt user if camera flashed on photo sequence operation. Note there should only be one flashed frame.

Note Driver should report MF\_CAPTURE\_METADATA\_PHOTO\_FRAME\_FLASH on samples on which camera flashed, note only one frame should have this for photo sequence if Single flash is set.

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
<td><p>~30 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md) and [Webcam Testing Prerequisites](webcam-testing-prerequisites.md).

If the driver implements KSPROPERTY\_CAMERACONTROL\_EXTENDED\_FLASHMODE, you need a room where lighting levels can be adjusted.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [Troubleshooting Device.Streaming Testing](troubleshooting-devicestreaming-testing.md).

## Related topics


[System.Client Tests](systemclient-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Webcam%20Controls%20-%20FlashMode%20-%20Manual%20System%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





