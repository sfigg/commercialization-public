---
author: kpacquer
Description: 'Provides information about a particular SIM-based phone line.'
MS-HAID: 'p\_phManuRetail.mfgphone\_simlinedetail'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'MFGPHONE\_SIMLINEDETAIL structure'
---

# MFGPHONE\_SIMLINEDETAIL structure


Provides information about a particular SIM-based phone line. This **struct** is retrieved via the [**MfgPhoneGetSimLineDetail**](mfgphonegetsimlinedetail.md) function.

**MFGPHONE\_SIMLINEDETAIL** iis for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
typedef struct _MFGPHONE_SIMLINEDETAIL {
  UINT                       SimSlot;
  MFGPHONE_SIMSTATE          SimState;
  MFGPHONE_REGISTRATIONSTATE RegistrationState;
  WCHAR  [64]                NetworkName;
  MFGPHONE_LINESYSTEMTYPE    LineSystemType;
  UINT                       SignalStrength;
  MFGPHONE_CALLSTATUS        CallStatus;
} MFGPHONE_SIMLINEDETAIL, *PMFGPHONE_SIMLINEDETAIL;
```

Members
-------

**SimSlot**  
The SIM-based phone line to which the details in this struct pertain.

**SimState**  
An **enum** specifying the current state of the SIM-based phone line.

**RegistrationState**  
An **enum** specifying the current registration state of the phone line.

**NetworkName**  
WCHAR containing the name of the network.

**LineSystemType**  
An **enum** specifying the line system type of the phone line.

**SignalStrength**  
Unsigned Integer containing the signal strength of the phone line.

**CallStatus**  
An **enum** specifying the call status of the phone line.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MFGPHONE_SIMLINEDETAIL%20structure%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



