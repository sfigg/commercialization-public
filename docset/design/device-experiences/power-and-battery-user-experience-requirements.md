---
title: Power and battery user experience requirements
description: The checklist in this article contains requirements that the power supply and battery subsystem must meet to achieve a satisfactory overall user experience.
MS-HAID:
- 'cstandby.power\_and\_battery\_user\_experience\_requirements'
- 'p\_weg\_hardware.power\_and\_battery\_user\_experience\_requirements'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7ACC378F-C422-41E2-9622-60D770EB6FC8
---

# Power and battery user experience requirements


The checklist in this article contains requirements that the power supply and battery subsystem must meet to achieve a satisfactory overall user experience.

For each requirement in the checklist, the column marked "Applies to S3/S4" indicates whether the requirement applies to PCs that implement the traditional ACPI S3 and S4 power states. The column marked "Applies to CS" indicates whether the requirement applies to PCs that implement the modern standby power model, which is supported starting with Windows 8. Any exceptions to these requirements are noted.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Requirement</th>
<th>Applies to S3/S4</th>
<th>Applies to MS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Charging occurs when the platform is connected to a charger. This applies to all supported system power states.</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>On (ACPI S0) / Active</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>Sleep (ACPI S3)</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>Hibernate (ACPI S4)</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes (x86 only)</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>Shutdown (ACPI S5/G2)</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>Modern standby</li>
</ul></td>
<td><p>No</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p><strong>Windows can boot when a charger is connected.</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>The system can be immediately booted from Shutdown (ACPI S5/G2) by the end user pressing the power button immediately after the charger is connected.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>The system can be immediately booted regardless of battery charge level, battery/charger state, or whether the battery is present in a system that has a battery that can be removed by the end user.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>If the platform requires a minimum battery capacity to always boot, this reserve capacity must be completely managed by the platform and must not be exposed to Windows.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>• Under no circumstance should the system automatically boot from the Hibernate (ACPI S4) state or the Shutdown (ACPI S5) state.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes (Except for platforms that have Universal Serial Bus (USB) charging input only.)</p></td>
</tr>
<tr class="even">
<td><p><strong>Battery charging is autonomously managed by the hardware.</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>Charging the battery does not require code to run on the main CPUs in form of UEFI firmware, ACPI firmware, or a Windows device driver. The rate of charge may increase when Windows is booted and ACPI firmware is enumerated.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes (Except for platforms that have USB charging input only.)</p></td>
</tr>
<tr class="even">
<td><p><strong>Charging stops automatically when fully charged or when a fault occurs.</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>The system hardware must automatically stop charging the battery after the battery is fully charged or when a fault occurs with the battery pack.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>The system must not automatically power on the main CPUs when power is attached and the system is in a Shutdown (ACPI S5) state.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>The battery and charging subsystem must comply with all required regulatory standards for the region of sale for the final system.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p><strong>Real-Time Clock (RTC) backup</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>A battery backup solution is provided to power the RTC for a minimum of four weeks. This solution is implemented either by having a dedicated RTC backup battery, or by maintaining the required reserve level in the main system battery.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p><strong>Prevent system startup when battery is completely depleted (DC only).</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>System firmware prevents the system from booting Windows if the system battery is below the critical battery threshold (as specified by _BIX.DesignCapacityofLow) and the device is not connected to AC power or a battery charger.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>When a low-battery condition prevents Windows from booting, a visual notification must be displayed. This notification uses the &quot;Battery Discharged Completely&quot; glyph. This requirement is waived in cases in which the battery is so depleted that there is insufficient capacity to turn on the display.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p><strong>(Optional) Add an LED to indicate that power is present.</strong></p></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>The preferred location for this LED is on the power adapter or the power connector.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p></p>
<ul>
<li>The LED can optionally indicate charge status.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p></p>
<ul>
<li>The LED must not vary in light intensity or otherwise blink. Color changes are allowed to indicate status changes.</li>
</ul></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power%20and%20battery%20user%20experience%20requirements%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




