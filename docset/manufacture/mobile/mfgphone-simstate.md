---
Description: 'Provides information about the state of the SIM.'
MS-HAID: 'p\_phManuRetail.mfgphone\_simstate'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'MFGPHONE\_SIMSTATE enumeration'
---

# MFGPHONE\_SIMSTATE enumeration


Provides information about the state of the SIM.

**MFGPHONE\_SIMSTATE** is for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
typedef enum _MFGPHONE_SIMSTATE { 
  MFGPHONE_SIMSTATE_UNKNOWN   = 0,
  MFGPHONE_SIMSTATE_NONE      = 1,
  MFGPHONE_SIMSTATE_ACTIVE    = 2,
  MFGPHONE_SIMSTATE_INVALID   = 3,
  MFGPHONE_SIMSTATE_LOCKED    = 4,
  MFGPHONE_SIMSTATE_DISABLED  = 5
} MFGPHONE_SIMSTATE;
```

Constants
---------

<span id="MFGPHONE_SIMSTATE_UNKNOWN"></span><span id="mfgphone_simstate_unknown"></span>**MFGPHONE\_SIMSTATE\_UNKNOWN**  
The SIM state is unknown.

<span id="MFGPHONE_SIMSTATE_NONE"></span><span id="mfgphone_simstate_none"></span>**MFGPHONE\_SIMSTATE\_NONE**  
The SIM state is none. There is no SIM.

<span id="MFGPHONE_SIMSTATE_ACTIVE"></span><span id="mfgphone_simstate_active"></span>**MFGPHONE\_SIMSTATE\_ACTIVE**  
The SIM state is active.

<span id="MFGPHONE_SIMSTATE_INVALID"></span><span id="mfgphone_simstate_invalid"></span>**MFGPHONE\_SIMSTATE\_INVALID**  
The SIM state is invalid.

<span id="MFGPHONE_SIMSTATE_LOCKED"></span><span id="mfgphone_simstate_locked"></span>**MFGPHONE\_SIMSTATE\_LOCKED**  
The SIM state is locked.

<span id="MFGPHONE_SIMSTATE_DISABLED"></span><span id="mfgphone_simstate_disabled"></span>**MFGPHONE\_SIMSTATE\_DISABLED**  
The SIM state is disabled.

Requirements
------------

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Header</p></td>
<td align="left">Mfgphone.h (include Mfgphone.h)</td>
</tr>
</tbody>
</table>

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MFGPHONE_SIMSTATE%20enumeration%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



