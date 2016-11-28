---
title: THERMAL\_WAIT\_READ structure
description: The THERMAL\_WAIT\_READ struct is used as the input buffer by the IOCTL\_THERMAL\_READ\_TEMPERATURE IOCTL control code.
MS-HAID:
- 'cstandby.thermal\_wait\_read'
- 'p\_weg\_hardware.thermal\_wait\_read'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4EB9199A-BD40-4599-A6F3-F3E03ED1DFB0
---

# THERMAL\_WAIT\_READ structure


The **THERMAL\_WAIT\_READ** struct is used as the input buffer by the [IOCTL\_THERMAL\_READ\_TEMPERATURE](p_WEG_hardware.ioctl_thermal_read_temperature) IOCTL control code.

## Syntax


<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>C++</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><code>typedef struct _THERMAL_WAIT_READ {   </code></p>
<p><code>       ULONG Timeout;</code></p>
<p><code> ULONG LowTemperature;</code></p>
<p><code> ULONG HighTemperature;</code></p>
<p><code>} THERMAL_WAIT_READ, *PTHERMAL_WAIT_READ;</code></p></td>
</tr>
</tbody>
</table>

 

## Members


**Timeout**

The time to wait before returning temperature data, in milliseconds. 0 indicates the temperature should be read immediately, with no wait. -1 indicates the read should not time out.

**LowTemperature**

The lower threshold for returning the new temperature given in tenths degrees Kelvin. As soon as the temperature drops below the low temperature threshold, the driver should complete the IOCTL. If the temperature is already below the low temperature, the IOCTL should be completed immediately.

**HighTemperature**

The upper threshold for returning the new temperature given in tenths degrees Kelvin. As soon as the temperature rises above the high temperature threshold, the driver should complete the IOCTL. If the temperature is already above the high temperature, the IOCTL should be completed immediately.

## Related topics


[Thermal Management in Windows](p_WEG_hardware.thermal_management_in_windows)

[Thermal Management Datatypes](p_WEG_hardware.thermal_management_datatypes)

[Thermal Management IOCTLs](p_WEG_hardware.thermal_management_ioctls)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20THERMAL_WAIT_READ%20structure%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





