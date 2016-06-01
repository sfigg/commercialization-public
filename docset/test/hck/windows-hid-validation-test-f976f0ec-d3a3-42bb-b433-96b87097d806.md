---
author: joshbax-msft
title: Windows Hid Validation Test
description: Windows Hid Validation Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dce7ed92-a0ce-4a18-b078-b9c9101e17d5
---

# Windows Hid Validation Test


This test verifies that Windows® Touch device firmware is human interface device (HID)-compliant and doesn't require additional driver installation.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Digitizer.Touch.DigitizerJitter Device.Digitizer.Touch.HIDCompliantFirmware</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~4 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Windows Touch Testing Prerequisites](windows-touch-testing-prerequisites.md).

## More information


**HIDvalidator.exe** checks your HID descriptor to ensure compliance with the HID specification. It ensures that all necessary usages are present, and catches invalid values. Thirty-four rules are validated. This tool produces an easy-to-read report.

### Rules

-   Rule 1: Touch-screen devices must support multiple touches.

-   Rule 2: Device must support at least 5 contacts.

-   Rule 3: Device must use parallel or hybrid packet reporting mode or single-finger hybrid reporting mode. When the device is connected through I2C, “single-finger hybrid” is required.

-   Rule 4: A usage item tag must be associated with any collection (such as a pen, touch screen, or finger).

-   Rule 5: The report descriptors for the touch device should use the finger (0x22) CL (Collection Logical) to group the data and control usages in the top-level collections.

-   Rule 6: Device must report generic X and generic Y.

-   Rule 7: The logical minimum and the logical maximum of the generic X must be specified correctly.

-   Rule 8: The logical minimum and the logical maximum of the generic Y location must be specified correctly.

-   Rule 9: The physical minimum and the physical maximum of the generic X location must be specified correctly.

-   Rule 10: The physical minimum and the physical maximum of the generic Y location must be specified correctly.

-   Rule 11: The minimum physical size of a digitizer must be at least 1 square inch (1 inch for generic X).

-   Rule 12: The minimum physical size of a digitizer must be at least 1 square inch (1 inch for generic Y).

-   Rule 13: The unit for the physical size of generic X must be inch or centimeter.

-   Rule 14: The unit for the physical size of generic Y must be inch or centimeter.

-   Rule 15: If the device supports z-axis detection, in-range must be supported as well.

-   Rule 16: Device that support the center value must also support the width and height usages. Devices should have a usage array of two X values and two Y values to report T and C.

-   Rule 17: Device must report “tip” switch.

-   Rule 18: Device must report scan time in the top-level collection, must have a minimum report length of 16 bits, must be less than or equal to 0x7fffffff, and must be at least 65,535.

-   Rule 19: Device must report actual count usage correctly in the top-level collection.

-   Rule 20: Device must support the contact identifier usage to specify the identifier of the current contact.

-   Rule 21: Device must implement the maximum count usage correctly in the top-level collection as a feature report, and not in any child collection.

-   Rule 22: The contact count maximum for a device must not exceed 250.

-   Rule 23: Device must implement the firmware key usage correctly with a length of 256 bytes on the user-defined usage page and in the top-level collection as a feature report.

-   Rule 24: The device configuration feature report must be in its own top-level collection and must include the multiple input configuration usages.

-   Rule 25: A logical range must be provided for all usages.

-   Rule 26: Supporting usages that belong to the usage page digitizer should be assigned to the digitizer (0x0D).

-   Rule 27: Supporting usages that belong to the usage page generic desktop should be assigned to the generic desktop (0x01).

-   Rule 28: All usages that are associated with the generic desktop usage page should be recognized.

-   Rule 29: All usages that are associated with the digitizer usage page should be recognized.

-   Rule 30: Usage should not be defined as 0 for any usage pages.

-   Rule 31: The physical range of the azimuth must be 0 to 360 degrees. The logical range must be large enough to deliver data that's accurate to at least 2 decimal places.

-   Rule 32: The units exponent of the azimuth usage must be accurate to at least 2 decimal places in degree, or it must be accurate to at least 4 decimal places in radians.

-   Rule 33: The units of the azimuth usage must be in degrees or radians.

-   Rule 34: The number of collections and end collections must match in the descriptor file. (Not available for real time.)

## Related topics


[Device.Digitizer Tests](devicedigitizer-tests.md)

 

 







