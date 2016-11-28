---
title: Power and battery subsystem checklist
description: System designers can use the checklists included in this section to verify that their platform designs and system firmware follow the Windows guidelines for power and battery subsystem operation.
MS-HAID:
- 'cstandby.power\_and\_battery\_subsystem\_checklist'
- 'p\_weg\_hardware.power\_and\_battery\_subsystem\_checklist'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 89094E28-F72B-4817-80DC-C416F05A4FB9
---

# Power and battery subsystem checklist


System designers can use the checklists included in this section to verify that their platform designs and system firmware follow the Windows guidelines for power and battery subsystem operation. Each item in a checklist specifies whether the requirement applies to PCs that implement the traditional ACPI S3 and S4 power states, and/or to PCs that implement the modern standby power model.

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
<td><p>[Power and battery user experience requirements](power-and-battery-user-experience-requirements.md)</p></td>
<td><p>The checklist in this article contains requirements that the power supply and battery subsystem must meet to achieve a satisfactory overall user experience.</p></td>
</tr>
<tr class="even">
<td><p>[ACPI firmware implementation requirements](acpi-firmware-implementation-requirements.md)</p></td>
<td><p>The checklists in this article contain requirements that the ACPI platform firmware must meet to properly support the power and battery subsystem.</p></td>
</tr>
<tr class="odd">
<td><p>[Platform hardware implementation requirements](platform-hardware-implementation-requirements.md)</p></td>
<td><p>Windows supports two hardware topologies for the power and charging subsystem. For S3/S4-based systems, only embedded controller-based solutions are allowed. For modern standby systems, the system designer can choose between an embedded controller-based solution and an SPB-based solution. This topic describes the requirements for each of the two topologies. A system must comply with the requirements for the selected topology only.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power%20and%20battery%20subsystem%20checklist%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




