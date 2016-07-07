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

 

 







