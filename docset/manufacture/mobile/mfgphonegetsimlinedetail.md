---
author: kpacquer
Description: 'Retrieves a struct that contains the current details for a given SIM-based phone line.'
MS-HAID: 'p\_phManuRetail.mfgphonegetsimlinedetail'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: MfgPhoneGetSimLineDetail function
---

# MfgPhoneGetSimLineDetail function


Retrieves a struct that contains the current details for a given SIM-based phone line.

**MfgPhoneGetSimLineDetail** is for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
HRESULT APIENTRY MfgPhoneGetSimLineDetail(
  _In_  UINT                     SimSlot,
  _Out_ PMFGPHONE_SIMLINEDETAIL  SimLineDetail,
  _In_  ULONG                    SimLineDetailSize,
  _Out_ PULONG                   RequiredSize
);
```

Parameters
----------

*SimSlot* \[in\]  
Specifies the SIM-based phone line.

*SimLineDetail* \[out\]  
Pointer to a [**MFGPHONE\_SIMLINEDETAIL**](mfgphone-simlinedetail.md) struct that contains the current details for the SIM-based phone line specified by *SimSlot*.

*SimLineDetailSize* \[in\]  
Specifies the size of the **SimLineDetail** parameter.

*RequiredSize* \[out\]  
Specifies the required size for the **SimLineDetail** parameter.

Return value
------------

S\_OK is returned upon success and an error code is returned otherwise.

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
<tr class="even">
<td align="left"><p>DLL</p></td>
<td align="left">MFGPHONE.DLL</td>
</tr>
</tbody>
</table>

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MfgPhoneGetSimLineDetail%20function%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



