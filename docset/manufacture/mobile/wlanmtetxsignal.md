---
author: kpacquer
Description: WlanMTETxSignal
MS-HAID: 'p\_phManuRetail.wlanmtetxsignal'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: WlanMTETxSignal
---

# WlanMTETxSignal


Requests the driver to transmit a signal at the specified band and channel.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
DWORD WlanMTETxSignal(
    __in    HANDLE      hAdapter,
    __in    BOOLEAN     bEnable,
    __in    BOOLEAN     bOpenLoop,
    __in    DOT11_BAND  Dot11Band,
    __in    ULONG       uChannel,
    __in    LONG        SetPowerLevel,
    __out   LONG        *pADCPowerLevel
);
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


<span id="hAdapter"></span><span id="hadapter"></span><span id="HADAPTER"></span>*hAdapter*  
\[in\] The handle to the Wi-Fi adapter, obtained by calling [WlanMTEOpenHandle](wlanmteopenhandle.md).

<span id="bEnable"></span><span id="benable"></span><span id="BENABLE"></span>*bEnable*  
\[in\] If a value is set, the transmission is enabled. Otherwise, transmission at the specified band and channel is disabled.

<span id="bOpenLoop"></span><span id="bopenloop"></span><span id="BOPENLOOP"></span>*bOpenLoop*  
\[in\] When set to **True**, the driver must use an open loop power control and return the signal value in the *pADCPowerLevel* parameter. If this parameter is set and the hardware does not support open loop power control, an **ERROR\_NOT\_SUPPORTED** exception is returned.

<span id="Dot11Band"></span><span id="dot11band"></span><span id="DOT11BAND"></span>*Dot11Band*  
\[in\] The band on which the signal is to be detected. The values of the *Dot11Band* parameter are defined by the DOT11\_BAND enum, shown below:

``` syntax
typedef enum DOT11_BAND {
        dot11_band_2p4g = 1,
        dot11_band_4p9g,
        dot11_band_5g
    } DOT11_BAND, * PDOT11_BAND;
```

<span id="uChannel"></span><span id="uchannel"></span><span id="UCHANNEL"></span>*uChannel*  
\[in\] The channel on which the signal is to be transmitted. The channel range depends on the band and supported PHY types.

<span id="SetPowerLevel"></span><span id="setpowerlevel"></span><span id="SETPOWERLEVEL"></span>*SetPowerLevel*  
\[in\] The power level of the transmitted signal, in dBm.

<span id="pADCPowerLevel"></span><span id="padcpowerlevel"></span><span id="PADCPOWERLEVEL"></span>*pADCPowerLevel*  
\[out, optional\] The current signal level detected at the antenna, returned as a RAW value. The interpretation of this value is implemented by the IHV. This return parameter is valid if *bOpenLoop* is **True** and the hardware supports it.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


If the function succeeds, the return value is ERROR\_SUCCESS.

If the function fails, the return value is one of the system error codes. The following table lists one of the error codes that may be returned.

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
<td align="left"><p>Returned when the <em>Dot11Band</em> or <em>uChannel</em> parameter is NULL, or if <em>bOpenLoop</em> is present but <em>pADCPowerLevel</em> is NULL.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ERROR_INVALID_HANDLE</p></td>
<td align="left"><p>Returned if the adapter handle specified by the <em>hAdapter</em> parameter is invalid.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ERROR_OUTOFMEMORY</p></td>
<td align="left"><p>Returned when sufficient memory to perform the operation cannot be allocated.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** wifimte.w

## <span id="related_topics"></span>Related topics


[Wi-Fi manufacturing API](wi-fi-manufacturing-api.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20WlanMTETxSignal%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




