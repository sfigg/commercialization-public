---
Description: 'Provides information about the type of line system.'
MS-HAID: 'p\_phManuRetail.mfgphone\_linesystemtype'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'MFGPHONE\_LINESYSTEMTYPE enumeration'
---

# MFGPHONE\_LINESYSTEMTYPE enumeration


Provides information about the type of line system.

**MFGPHONE\_LINESYSTEMTYPE** is for phone manufacturers and can only be called in Manufacturing Mode.

Syntax
------

```ManagedCPlusPlus
typedef enum _MFGPHONE_LINESYSTEMTYPE { 
  MFGPHONE_LINESYSTEMTYPE_UNKNOWN   = 0,
  MFGPHONE_LINESYSTEMTYPE_GSM       = 1,
  MFGPHONE_LINESYSTEMTYPE_CDMA      = 2,
  MFGPHONE_LINESYSTEMTYPE_IMS       = 3
} MFGPHONE_LINESYSTEMTYPE;
```

Constants
---------

<span id="MFGPHONE_LINESYSTEMTYPE_UNKNOWN_"></span><span id="mfgphone_linesystemtype_unknown_"></span>**MFGPHONE\_LINESYSTEMTYPE\_UNKNOWN**   
The line system type is unknown.

<span id="MFGPHONE_LINESYSTEMTYPE_GSM"></span><span id="mfgphone_linesystemtype_gsm"></span>**MFGPHONE\_LINESYSTEMTYPE\_GSM**  
The type of line system is GSM.

<span id="MFGPHONE_LINESYSTEMTYPE_CDMA"></span><span id="mfgphone_linesystemtype_cdma"></span>**MFGPHONE\_LINESYSTEMTYPE\_CDMA**  
The type of line system is CDMA.

<span id="MFGPHONE_LINESYSTEMTYPE_IMS"></span><span id="mfgphone_linesystemtype_ims"></span>**MFGPHONE\_LINESYSTEMTYPE\_IMS**  
The type of line system is IMS.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20MFGPHONE_LINESYSTEMTYPE%20enumeration%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



