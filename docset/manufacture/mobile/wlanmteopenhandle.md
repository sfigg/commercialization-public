---
Description: WlanMTEOpenHandle
MS-HAID: 'p\_phManuRetail.wlanmteopenhandle'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: WlanMTEOpenHandle
---

# WlanMTEOpenHandle


Opens a handle on the driver based on the interface GUID specified and returns the handle to the caller.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
DWORD WlanMTEOpenHandle(
    __in    GUID    *pAdapterGuid,
    __out   HANDLE  *phAdapter
);
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


<span id="pAdapterGuid"></span><span id="padapterguid"></span><span id="PADAPTERGUID"></span>*pAdapterGuid*  
\[in\] A pointer to the GUID identifying the Wi-Fi adapter on which the handle is to be opened.

<span id="phAdapter"></span><span id="phadapter"></span><span id="PHADAPTER"></span>*phAdapter*  
\[out\] A pointer to the Wi-Fi handle, if it was opened successfully.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


If the function succeeds, the return value is ERROR\_SUCCESS.

If the function fails one of the system error codes is returned. The following table lists the error codes that may be returned.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Error code</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>ERROR_INVALID_PARAMETER</p></td>
<td align="left"><p>Returned if the <em>pAdapterGuid</em> or <em>phAdapter</em> parameters are NULL.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ERROR_INVALID_STATE</p></td>
<td align="left"><p>Returned if the current DOT11 operation mode cannot be retrieved.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


The list of Wi-Fi interface GUIDs can be obtained by calling [WlanMTEEnumAdapters](wlanmteenumadapters.md).

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** wifimte.w

## <span id="related_topics"></span>Related topics


[Wi-Fi manufacturing API](wi-fi-manufacturing-api.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20WlanMTEOpenHandle%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




