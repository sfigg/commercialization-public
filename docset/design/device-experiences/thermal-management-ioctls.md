---
title: Thermal Management IOCTLs
description: This topic discusses the input/output controls (IOCTLs) that are used for Thermal Management in Windows.
MS-HAID:
- 'cstandby.thermal\_management\_ioctls'
- 'p\_weg\_hardware.thermal\_management\_ioctls'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0B767145-1132-467C-8077-AF913844D7DD
---

# Thermal Management IOCTLs


This topic discusses the input/output controls (IOCTLs) that are used for Thermal Management in Windows.

Driver implementers need to implement responses to the following input/output (I/O) control codes.

## In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[IOCTL_THERMAL_READ_POLICY](p_WEG_hardware.ioctl_thermal_read_policy)</p></td>
<td><p>The [IOCTL_THERMAL_READ_POLICY](p_WEG_hardware.ioctl_thermal_read_policy) I/O control request is sent by the kernel to a thermal zone’s policy driver to read the drivers' preferred policy.</p></td>
</tr>
<tr class="even">
<td><p>[IOCTL_THERMAL_READ_TEMPERATURE](p_WEG_hardware.ioctl_thermal_read_temperature)</p></td>
<td><p>The [IOCTL_THERMAL_READ_TEMPERATURE](p_WEG_hardware.ioctl_thermal_read_temperature) I/O control request is sent by the ACPI driver to a temperature sensor driver. Upon receiving this request, the driver might be required to provide the temperature of the thermal zone.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Thermal%20Management%20IOCTLs%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




