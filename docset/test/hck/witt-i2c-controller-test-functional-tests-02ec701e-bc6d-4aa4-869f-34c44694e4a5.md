---
author: joshbax-msft
title: WITT I2C Controller Test-Functional Tests
description: WITT I2C Controller Test-Functional Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c4bd13e4-38f8-44a2-9603-f99003104b3e
---

# WITT I2C Controller Test-Functional Tests


The Windows Inter-Integrated Circuit (I²C) Testing Tool (WITT) functional controller tests verify Windows Hardware Certification Kit (Windows HCK)Windows® Simple Peripheral Bus (SPB) compliance and functionality. The following test cases are included:

-   [Clock\_Stretch\_Test](#clock)

-   [Device\_Nack\_Test](#nack)

-   [Device\_Lock\_Unlock\_Test](#unlock)

-   [Cancel\_Read\_Test](#cancelread)

-   [Cancel\_Write\_Test](#cancelwrite)

-   [Cancel\_Seq\_Test](#cancelseq)

-   [Multiple\_Targets\_Test](#multtargets)

-   [Bus\_Recovery\_Test](#busrecovery)

-   [Power\_Transition\_Test](#powertrans)

-   [Perf\_Read\_Test](#perfread)

-   [Perf\_Write\_Test](#perfwrite)

-   [Perf\_Seq\_Test](#perfseq)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.I2C.CancellationOfIO Device.BusController.I2C.ClockStretching Device.BusController.I2C.HCKTestability Device.BusController.I2C.IdlePowerManagement Device.BusController.I2C.LockUnlockIOCTL Device.BusController.I2C.NACK Device.BusController.I2C.SPBRead Device.BusController.I2C.SPBSequenceIOCTL Device.BusController.I2C.SPBWrite</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
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
<td><p>Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="clock"></a>Clock\_Stretch\_Test


The controller must tolerate up to 10ms random I/O clock stretching for read, write and sequence operations.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C.ClockStretching</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="nack"></a>Device\_Nack\_Test


Controller can handle the following cases:

-   Device NACK the write operation and still function afterwards

-   Device NACK for a write-read sequence.

-   Perform subsequent I/O after device NACK.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C.NACK</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="unlock"></a>Device\_Lock\_Unlock\_Test


In this test, Lock and Unlock requests are completed by using SPBRequestComplete DDI. Restart condition between each I/O inside Lock-Unlock stop/start is allowed, but displays a warning message. Start and Stop before lock, and stop after lock are tested. Stop condition after Unlock request is tested.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. LockUnlockIOCTL</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="cancelread"></a>Cancel\_Read\_Test


The controller must support cancellation of an on-going read operation. The cancelled request is completed by using SPBRequestComplete DDI. The controller must function after the cancellation.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. CancellationOfIO</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="cancelwrite"></a>Cancel\_Write\_Test


The controller must support cancellation of an on-going write operation. The cancelled request is completed by using SPBRequestComplete DDI. The controller must function after the cancellation.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. CancellationOfIO</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="cancelseq"></a>Cancel\_Seq\_Test


The controller must support cancellation of an on-going sequence operation. The cancelled request is completed by using SPBRequestComplete DDI. The controller must function after the cancellation.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. CancellationOfIO</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="multtargets"></a>Multiple\_Targets\_Test


This test case tests Lock, unlock and I/O on multiple targets, and verifies the expected sequences.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. CancellationOfIO</p>
<p>Device.BusController.I2C. Read</p>
<p>Device.BusController.I2C. Write</p>
<p>Device.BusController.I2C. Sequence</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;3 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="busrecovery"></a>Bus\_Recovery\_Test


This test case makes sure that the driver correctly implements the request watch dog timer and keeps communicating with the peripheral device after it is reset.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. Stress</p>
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

 

## <a href="" id="powertrans"></a>Power\_Transition\_Test


This test verifies that the controller driver manages idle power in the following ways:

-   D3 state is not too forceful, to avoid a zero idle timeout problem.

-   Controller goes to D3 if there is no traffic for long time.

### Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C. IdlePowerManagement</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;3 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="perfread"></a>Perf\_Read\_Test


This test confirms that the controller can achieve 250kbps on a fast I²C target that receives data from WITT in PERF test mode (packet size 4096).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirement(s)</strong></p></td>
<td><p>Device.BusController.I2C.SPBRead</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>System on Chip (SoC) reference platforms: Windows RT (ARM-based)Windows 8 (x64)Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Run time</strong></p></td>
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="perfwrite"></a>Perf\_Write\_Test


This test confirms that the controller can achieve 250kbps on a fast I²C target that transmits to WITT in PERF mode (packet size 4096).

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
<td><p>~&lt;1 minute</p></td>
</tr>
<tr class="even">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="perfseq"></a>Perf\_Seq\_Test


This test confirms that the controller can achieve 250kbps on a fast I²C target, of sequence operations to and from WITT in PERF mode (packet size 4096).

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
<td><p>~&lt;1 minute</p></td>
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

 

 







