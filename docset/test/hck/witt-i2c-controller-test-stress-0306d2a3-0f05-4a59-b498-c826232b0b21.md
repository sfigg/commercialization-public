---
author: joshbax-msft
title: WITT I2C Controller Test-Stress
description: WITT I2C Controller Test-Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 09d98d6f-b5db-4f56-8c5d-3d1c56a3f0d2
---

# WITT I2C Controller Test-Stress


The Windows Inter-Integrated Circuit (I²C) Testing Tool (WITT) stress controller test verifies Windows Hardware Certification Kit (Windows HCK)Windows® Simple Peripheral Bus (SPB) compliance and reliability.

The stress test performs one-hour Stres testing on standard, fast and fast plus I²C devices, random operations/cancellations, random data and random device response (clocking stretching and NACK). Data transfer failure is expected and is ignored by the test during the time that test is checking for driver stabilities under stress.

The controller must function after one hour of stress testing. Basic write/read I/O runs at the end of the stress test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.I2C.CancellationOfIO Device.BusController.I2C.HCKTestability Device.BusController.I2C.LockUnlockIOCTL Device.BusController.I2C.NACK Device.BusController.I2C.SPBRead Device.BusController.I2C.SPBSequenceIOCTL Device.BusController.I2C.SPBWrite Device.BusController.I2C.Stress</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~65 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the tests


Before you run the test, complete the test setup as described in the test requirements [WITT I2C Testing Prerequisites](witt-i2c-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## Related topics


[Device.BusController Testing](devicebuscontroller-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WITT%20I2C%20Controller%20Test-Stress%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





