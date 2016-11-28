---
title: General Testing Guidelines
description: This topic provides general guidelines for testing a Windows Precision Touchpad device, using the Windows Hardware Lab Kit (HLK) for Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F6AA763C-48EC-4FC9-8528-8E112D4CF3A6
---

# General Testing Guidelines


This topic provides general guidelines for testing a Windows Precision Touchpad device, using the Windows Hardware Lab Kit (HLK) for Windows 10.

## Testing Guidelines


-   Unless otherwise specified, the device should always have AC power when performing HLK tests.

-   Unless otherwise specified, all tests should be run with "Test Signing Mode" set to ON. To do this, perform the following steps:

    1. Open a **Command Prompt** window as an Administrator.

    2. Enter this command: **bcdedit -set testsigning on**

    3. Restart the computer.

-   Unless otherwise specified, use 7mm diameter contacts for tests requiring use of the PT3 ([Precision Touch Testing Tool](touchscreen-hardware-requirements-and-vendor-information.md)).

-   Unless otherwise specified, all numbers in error messages which report distance or location are in himetric units (0.01mm).

-   The grids in the PTLogo visualization help align vertices (for tests like [Linearity](linearity.md)) and graph distances. The distance from one line to the next 200 himetric units (in other words, is 2mm).

-   Unless otherwise specified, multiple contacts should maintain a minimum separation distance: For all alignments, contacts should be at least 8mm apart, edge to edge during test.

-   Regarding the GetThqaBlob test, note the following:

    o Path to *GetThqaBlob.exe*: C:\\Program Files (x86)\\Windows Kits\\10\\Hardware Lab Kit\\Tests\\x86\\digitizer\\Win8Touch.

    o File location management: All necessary files are copied to test machines when the HLK client is installed.

-   Due to the nature of customization drivers, it is likely that they will cause test failures for devices during compatibility tests. The HLK tests are intended to test hardware capabilities, and the filter driver may interrupt the expected data flow to the tests.

    If you want to ship your devices with customization, then you should include the customization components during testing. But you must make sure that these custom behaviors can be disabled during testing, if they would otherwise block the device from passing certification.

## PTLogo Interface


-   To manually pass an iteration (where applicable), press “P” on the keyboard.

-   To manually fail an iteration (where applicable), press “F” on the keyboard.

-   To manually restart the test (where applicable), press “R” on the keyboard.

-   To manually fail the test (where applicable), press “T” on the keyboard.

-   To manually advance to the next iteration (where applicable), press “N” on the keyboard.

-   To exit PTLogo, press “E” on the keyboard.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20General%20Testing%20Guidelines%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




