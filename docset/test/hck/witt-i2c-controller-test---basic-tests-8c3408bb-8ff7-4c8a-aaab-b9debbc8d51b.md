---
author: joshbax-msft
title: WITT I2C Controller Test - Basic Tests
description: WITT I2C Controller Test - Basic Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: de7a642b-a9ba-4a70-91fb-661125010779
---

# WITT I2C Controller Test - Basic Tests


The Windows Inter-Integrated Circuit (I²C) Testing Tool (WITT) basic controller tests verify Windows Hardware Certification Kit (Windows HCK)Windows® Simple Peripheral Bus (SPB) compliance and read/write operations. The following tests are included:

-   [Basic\_Write\_Test](#baswrite)

-   [Basic\_Seq\_Test](#basseq)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.I2C.HCKTestability Device.BusController.I2C.SPBRead Device.BusController.I2C.SPBSequenceIOCTL Device.BusController.I2C.SPBWrite</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Basic</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="baswrite"></a>Basic\_Write\_Test


The controller supports write to standard, fast and fast plus I²C devices, with proper start and stop bus conditions before and after I/O.

The controller must support write data packet size from 1 to 4K bytes; in this test, data integrity is verified. The Read Simple Peripheral Bus (SPB) request is completed by using the SPBRequestComplete DDI.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C.SPBWrite</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="basseq"></a>Basic\_Seq\_Test


The controller must support a basic write-read sequence with a restart condition in the middle, and a start/stop condition at the start and end of the sequence.

If the controller supports complex sequence (Write-Write-Read-Read-Write-Read), it should have a restart condition between each I/O. If the controller does not support a complex sequence, a warning displays. In the latter case, the controller must fail the complex sequence request by using Status\_Not\_Supported.

The controller must support a delay parameter in sequence input entry and a buffer list parameter for input and output.

Data integrity and sequences are verified for these sequences.

The controller must support write data packet size from 1 to 4K bytes; in this test, data integrity is verified. The Sequence SPB request is completed by using the SPBRequestComplete DDI.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C.SPBSequence</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;5 minutes</p></td>
</tr>
<tr class="even">
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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WITT%20I2C%20Controller%20Test%20-%20Basic%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





