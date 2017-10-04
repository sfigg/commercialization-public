---
title: Power button forced shutdown
description: Specifies the type of system shutdown that occurs when the system power button is pressed if the power button action is set to Shut Down.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2FDF2D94-9910-4756-9804-9CAFF1573A6A
---

# Power button forced shutdown


Specifies the type of system shutdown that occurs when the system power button is pressed if the [power button action](power-button-and-lid-settings-power-button-action.md) is set to Shut Down.

**Warning**  If you enable this setting and a user presses the power button to shut down the system, any open documents might not be saved and data loss could occur.

 

## <span id="Aliases_and_setting_visibility"></span><span id="aliases_and_setting_visibility"></span><span id="ALIASES_AND_SETTING_VISIBILITY"></span>Aliases and setting visibility


-   **Windows Provisioning:** `ForcedShutdown `

-   **PowerCfg:** `SHUTDOWN `

-   **GUID:** 833a6b62-dfa4-46d1-82f8-e09e34d029d6

-   **Hidden setting:** Yes

## <span id="Values"></span><span id="values"></span><span id="VALUES"></span>Values


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Index</th>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0</p></td>
<td><p>Off</p></td>
<td><p>A normal system shutdown will occur.</p></td>
</tr>
<tr class="even">
<td><p>1</p></td>
<td><p>On</p></td>
<td><p>A forced system shutdown will occur.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Applies_to"></span><span id="applies_to"></span><span id="APPLIES_TO"></span>Applies to


Available in Windows 7 and later versions of Windows.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_customize_converged\p_customize_converged%5D:%20Power%20button%20forced%20shutdown%20%20RELEASE:%20%2810/4/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




