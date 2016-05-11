---
title: Appendix
description: The appendix for the Windows Touchscreen Validation Guide, provides information about common HID-specific error messages.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DCBA1BB7-B6C2-46EC-9383-140DC95BFAD5
---

# Appendix


The appendix for the Windows Touchscreen Validation Guide, provides information about common HID-specific error messages.

Here's a table of the HID-specific error messages related to the Windows Touchscreen device tests.

| HID error \# | Description                      |
|--------------|----------------------------------|
| 1            | Invalid X bit size.              |
| 2            | Invalid Y bit size.              |
| 3            | Invalid packet transition.       |
| 5            | Invalid X, Y.                    |
| 6            | Invalid width or height.         |
| 8            | Invalid contact ID.              |
| 14           | No data in frame.                |
| 16           | Invalid \# of contacts in frame. |
| 17           | More than max contacts in frame. |
| 18           | Sampling rate out of range.      |
| 21           | Invalid actual count.            |
| 22           | Invalid confidence.              |

 

This section provides information to help explain the error messages a bit further.

**HID error \#1**

The bit count for Tx/Cx is outside the range \[1,32\]. Only checked if C is present.

**HID error \#2**

The bit count for Ty/Cy is outside the range \[1,32\]. Only checked if C is present.

**HID error \#3**

This can present itself with any of the following error messages:

-   Last move location different.
    The coordinates of the "*tip switch clear*" report for a given contact are not the same as the coordinates of the "*last tip switch set*" report.
-   Missing tip-on.
    The first report didn't have the tip switch set, or there were two packets in a row without the tip switch set.
-   Missing tip.
    A contact present in the previously reported frame, with the tip switch set, was not found in the current frame.

**HID error \#5**

This can present itself with any of the following error messages:

-   (Invalid T)
    With C, Width, or Height present, Tx and/or Ty were not present or not within their logical range.
-   (Invalid C)
    With T, Width, or Height present, Cx and/or Cy were not present or not within their logical range.
-   (Invalid T/C combo)
    T was not contained within bounding box formed by C, Width, and Height.

**HID error \#6**

This can present itself with any of the following error messages:

-   ""
    Width and/or height found to be present, and either one was not present, or one/both were outside their logical range.
-   (0)
    Width and/or height found to be present, but the logical value for one/both had a value of zero (0).

**HID error \#8**

This can present itself with any of the following error messages:

-   (Not present)
    The device does not support the *ContactID* usage in its descriptor.
-   (Dupe in frame)
    A contact ID was duplicated in a single frame (sometimes caused by an incomplete frame being reported).

**HID error \#14**

There were no contacts in the frame and the physical button is not down. This would imply that the physical button was up, but the physical button was not previously reported as being up.

**HID error \#16**

The number of contacts in the frame did not match the reported *Actual Count*.

**HID error \#17**

The number of contacts in the frame exceeded the maximum number of contacts that the device supports per *MAX COUNT*.

**HID error \#18**

The sampling rate was not in the allowed range for the number of contacts reported.

**HID error \#21**

The device does not support the *Actual Count* usage in its descriptor.

**HID error \#22**

The confidence switch was not set (and the test was not the confidence test).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Appendix%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




