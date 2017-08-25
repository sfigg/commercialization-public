---
title: MachinePoolCrashDumpCopyBackSetting Enumeration
description: MachinePoolCrashDumpCopyBackSetting Enumeration
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9D6ED30E-4DAA-4870-BCB6-E4F597DAD375
---

# MachinePoolCrashDumpCopyBackSetting Enumeration


Represents the crash dump type setting for a [MachinePool](machinepool-class.md).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public enum MachinePoolCrashDumpCopyBackSetting`

## <span id="Members"></span><span id="members"></span><span id="MEMBERS"></span>Members


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Member Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Unknown</strong></p></td>
<td><p>The setting is non-uniform across the machine pool. This requires the user to explicitly choose a setting.</p></td>
</tr>
<tr class="even">
<td><p><strong>Disable</strong></p></td>
<td><p>Crash dump copy back is disabled.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Full</strong></p></td>
<td><p>Machines in the pool will write out and copy back a full crash dump.</p></td>
</tr>
<tr class="even">
<td><p><strong>Kernel</strong></p></td>
<td><p>Machines in the pool will write out and copy back only the kernel crash dump.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Mini</strong></p></td>
<td><p>Machines in the pool will write out and copy back only the mini dump.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20MachinePoolCrashDumpCopyBackSetting%20Enumeration%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




