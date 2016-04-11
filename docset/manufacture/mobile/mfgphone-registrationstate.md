---
Description: 'Provides information about the state of the phone line? call?.'
MS-HAID: 'p\_phManuRetail.mfgphone\_registrationstate'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'MFGPHONE\_REGISTRATIONSTATE enumeration'
---

# MFGPHONE\_REGISTRATIONSTATE enumeration


Provides information about the state of the phone line? call?

**MFGPHONE\_REGISTRATIONSTATE** is for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
typedef enum _MFGPHONE_REGISTRATIONSTATE { 
  MFGPHONE_REGISTRATIONSTATE_UNKNOWN           = 0,
  MFGPHONE_REGISTRATIONSTATE_NOSIGNAL          = 1,
      MFGPHONE_REGISTRATIONSTATE_UNREGISTERED  = 2,
  MFGPHONE_REGISTRATIONSTATE_REGISTERING       = 3,
  MFGPHONE_REGISTRATIONSTATE_REGISTERED        = 4,
  MFGPHONE_REGISTRATIONSTATE_DENIED            = 5
} MFGPHONE_REGISTRATIONSTATE;
```

Constants
---------

<span id="MFGPHONE_REGISTRATIONSTATE_UNKNOWN"></span><span id="mfgphone_registrationstate_unknown"></span>**MFGPHONE\_REGISTRATIONSTATE\_UNKNOWN**  
The registration state is not known.

<span id="MFGPHONE_REGISTRATIONSTATE_NOSIGNAL"></span><span id="mfgphone_registrationstate_nosignal"></span>**MFGPHONE\_REGISTRATIONSTATE\_NOSIGNAL**  
There is no signal to detect the registration state.

<span id="____MFGPHONE_REGISTRATIONSTATE_UNREGISTERED"></span><span id="____mfgphone_registrationstate_unregistered"></span> **MFGPHONE\_REGISTRATIONSTATE\_UNREGISTERED**  
The registration state is unregistered.

<span id="MFGPHONE_REGISTRATIONSTATE_REGISTERING"></span><span id="mfgphone_registrationstate_registering"></span>**MFGPHONE\_REGISTRATIONSTATE\_REGISTERING**  
The registration state is registering.

<span id="MFGPHONE_REGISTRATIONSTATE_REGISTERED"></span><span id="mfgphone_registrationstate_registered"></span>**MFGPHONE\_REGISTRATIONSTATE\_REGISTERED**  
The registration state is registered.

<span id="MFGPHONE_REGISTRATIONSTATE_DENIED"></span><span id="mfgphone_registrationstate_denied"></span>**MFGPHONE\_REGISTRATIONSTATE\_DENIED**  
The registration state is denied.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MFGPHONE_REGISTRATIONSTATE%20enumeration%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



