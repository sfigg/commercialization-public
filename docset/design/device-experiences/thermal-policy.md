---
title: THERMAL\_POLICY
description: The THERMAL\_POLICY struct is used with the IOCTL\_THERMAL\_READ\_POLICY IO control code.
MS-HAID:
- 'cstandby.thermal\_policy'
- 'p\_weg\_hardware.thermal\_policy'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C26D5AE4-92A8-4FBA-A930-79DF4B9A4E0B
---

# THERMAL\_POLICY


The THERMAL\_POLICY struct is used with the [IOCTL\_THERMAL\_READ\_POLICY](p_WEG_hardware.ioctl_thermal_read_policy) IO control code. Policy drivers use IOCTL\_THERMAL\_READ\_POLICY to set the thermal policy for their associated thermal zone. If no thermal policy is specified, then the kernel uses the policies specified by the ACPI objects and methods declared under the thermal zone, as described in the ACPI specification.

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
<td><p><code>typedef struct _THERMAL_POLICY {</code></p>
<p><code>        ULONG            Version;   BOOLEAN          WaitForUpdate;</code></p>
<p><code>  BOOLEAN          Hibernate;</code></p>
<p><code> BOOLEAN          Critical;</code></p>
<p><code>  BOOLEAN          ThermalStandby;</code></p>
<p><code>  ULONG            ActivationReasons;</code></p>
<p><code> ULONG            PassiveLimit;</code></p>
<p><code> ULONG            ActiveLevel;</code></p>
<p><code>} THERMAL_POLICY, *PTHERMAL_POLICY;</code></p></td>
</tr>
</tbody>
</table>

 

## Members


**Version**

Specifies the version of the policy structure. The current version is THERMAL\_POLICY\_VERSION\_1.

**WaitForUpdate**

Specifies if the policy driver should complete the [IOCTL\_THERMAL\_READ\_POLICY](p_WEG_hardware.ioctl_thermal_read_policy) IOCTL immediately. If the state is up to date and WaitForUpdate is TRUE, the policy driver should pend the IOCTL in a cancellable state until one of its policy preferences has changed, at which point it should complete the IOCTL with the new preferences. If the state is not up to date or WaitForUpdate is FALSE, the policy driver should immediately complete the IOCTL with the new preferences.

**Hibernate**

The policy driver specifies TRUE to indicate that the system should hibernate to address a thermal condition. Once the thermal condition has been resolved, the policy driver should set this member to FALSE. If the system does not support hibernate or if hibernate is disabled, the system will shut down instead.

**Critical**

The policy driver specifies TRUE to indicate that the system should shut down to address a thermal condition.

**ThermalStandby**

The policy driver specifies TRUE to indicate that the system should enter standby to address a thermal condition. Once the thermal condition has been resolved, the policy driver should set this member to FALSE.

**ActivationReasons**

Specifies why the thermal zone is throttled.

-   0x00000000

    Indicates that the zone isn't throttled.

-   \#define TZ\_ACTIVATION\_REASON\_THERMAL 0x00000001

    Indicates that the zone is throttled for thermal reasons.

-   \#define TZ\_ACTIVATION\_REASON\_CURRENT 0x00000002

    Indicates that the zone is throttled because the system cannot deliver sufficient current.

**PassiveLimit**

Specifies the amount by which the thermal zone should be throttled. 100 represents unthrottled while 0 represents fully throttled.

**ActiveLevel**

Specifies the index (from 0 through 9) of the current set of active cooling devices that should be engaged. For example, setting an ActiveLevel of 4 would engage all devices in the thermal zone’s \_AL4 device list, as well as any higher-indexed device lists (\_AL5, etc.). Specifying 10 will disable all active cooling devices.

## Related topics


[THERMAL\_WAIT\_READ](p_WEG_hardware.thermal_wait_read)

[Thermal management in Windows](thermal-management-in-windows.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20THERMAL_POLICY%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





