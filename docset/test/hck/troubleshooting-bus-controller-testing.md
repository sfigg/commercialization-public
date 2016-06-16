---
author: joshbax-msft
title: Troubleshooting Bus Controller Testing
description: Troubleshooting Bus Controller Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5319ad2e-3467-46f3-ac0e-b6738f99dce5
---

# Troubleshooting Bus Controller Testing


To troubleshoot bus controller test issues, follow these steps:

1.  Review the following Windows Hardware Certification Kit (Windows HCK) topics:

    -   [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md)

    -   One of the following topics, depending on the type of bus controller that you are testing:

        -   [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md)

        -   [Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md)

        -   [Secure Digital Host Controller Testing Prerequisites](secure-digital-host-controller-testing-prerequisites.md)

        -   [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md)

        -   [WITT I2C Testing Prerequisites](witt-i2c-testing-prerequisites.md)

2.  Verify that you have installed the latest Windows HCK filters and kit updates. For more information, see [Windows Hardware Certification Kit Filters](windows-hardware-certification-kit-filters.md).

3.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

4.  If you cannot obtain a successful test result, contact [Windows HCK Support](windows-hck-support.md).

### <a href="" id="bluetooth"></a>Bluetooth controller test troubleshooting

The following table describes common issues that can occur during Bluetooth controller testing:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Issue</th>
<th>Resolution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Failures finding Bluetooth devices during an Bluetooth Inquiry command</p></td>
<td><p>This failure can happen when you run a test in a noisy environment. Rerunning the test usually fixes this error. You can also try to bring the radios closer together. Make sure that the radios have a clear line of sight. Turn off other radios that may be causing interference.</p></td>
</tr>
<tr class="even">
<td><p>Failures connecting Bluetooth devices during Bluetooth Inquiry commands</p></td>
<td><p>This failure occurs when the test times out before the devices could be reconnected. Rerunning the test usually fixes this error.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="witti2c"></a>WITT I²C controller test troubleshooting


The following table describes common issues that can occur during Windows Inter-Integrated Circuit (I²C) Testing Tool (WITT) controller testing:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Issue</th>
<th>Resolution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>All tests failed with error message <strong>WITT device test interface is not found</strong>.</p></td>
<td><p>Review [WITT I2C Testing Prerequisites](witt-i2c-testing-prerequisites.md). Make sure that the WITT test peripheral driver is installed, ACPI table modified with sample ASL and four instances of WITT Test Driver are found in Windows HCK Device Manager.</p></td>
</tr>
<tr class="even">
<td><p>WITT firmware needs to be updated. The WITT firmware binary (i2c9665a.iic) is released as part of. When you install a new Windows HCK package, you should update the WITT firmware.</p></td>
<td><p>See [WITT I2C Testing Prerequisites](witt-i2c-testing-prerequisites.md) for instructions on how to upgrade the WITT firmware.</p></td>
</tr>
<tr class="odd">
<td><p>WITT device is in a bad state. Typically, the green LED on a WITT device should be lit when there is no traffic, and should blink when there is traffic. Otherwise, the WITT or I²C controller might be in a bad state.</p></td>
<td><p>Unplug the WITTs USB cable to power-cycle the device. If the controller is still not working, reboot the testing system.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Device.BusController Testing](devicebuscontroller-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 







