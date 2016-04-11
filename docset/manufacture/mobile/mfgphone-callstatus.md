---
Description: 'Provides information about the status of the call.'
MS-HAID: 'p\_phManuRetail.mfgphone\_callstatus'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'MFGPHONE\_CALLSTATUS enumeration'
---

# MFGPHONE\_CALLSTATUS enumeration


Provides information about the status of the call.

**MFGPHONE\_CALLSTATUS** is for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
typedef enum _MFGPHONE_CALLSTATUS { 
  MFGPHONE_CALLSTATUS_UNKNOWN   = 0,
  MFGPHONE_CALLSTATUS_IDLE      = 1,
  MFGPHONE_CALLSTATUS_CALLING   = 2,
  MFGPHONE_CALLSTATUS_INCOMING  = 3,
  MFGPHONE_CALLSTATUS_ACTIVE    = 4
} MFGPHONE_CALLSTATUS;
```

Constants
---------

<span id="MFGPHONE_CALLSTATUS_UNKNOWN_"></span><span id="mfgphone_callstatus_unknown_"></span>**MFGPHONE\_CALLSTATUS\_UNKNOWN**   
The call status is unknown.

<span id="MFGPHONE_CALLSTATUS_IDLE"></span><span id="mfgphone_callstatus_idle"></span>**MFGPHONE\_CALLSTATUS\_IDLE**  
The call status is idle.

<span id="MFGPHONE_CALLSTATUS_CALLING"></span><span id="mfgphone_callstatus_calling"></span>**MFGPHONE\_CALLSTATUS\_CALLING**  
The call status is calling.

<span id="MFGPHONE_CALLSTATUS_INCOMING"></span><span id="mfgphone_callstatus_incoming"></span>**MFGPHONE\_CALLSTATUS\_INCOMING**  
The call status is incoming.

<span id="MFGPHONE_CALLSTATUS_ACTIVE"></span><span id="mfgphone_callstatus_active"></span>**MFGPHONE\_CALLSTATUS\_ACTIVE**  
The call status is active.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MFGPHONE_CALLSTATUS%20enumeration%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



