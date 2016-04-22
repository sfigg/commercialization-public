---
author: kpacquer
Description: WlanMTEQuerySelfTestResult
ms.assetid: 7c728c46-7adb-4b1c-8b0e-85eb58ddd026
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: WlanMTEQuerySelfTestResult
---

# WlanMTEQuerySelfTestResult


Queries the driver for the results of a previously requested self-test.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
DWORD WlanMTEQuerySelfTestResult(
    __in                            HANDLE                              hAdapter,
    __in                            DOT11_MANUFACTURING_SELF_TEST_TYPE  eTestType,
    __in                            ULONG                               uTestID,
    __in                            PVOID                               pvContext,
    __out                           BOOLEAN                             *pbResult,
    __out                           ULONG                               *puPinFailedBitMask,
    __out                           ULONG                               *puBytesWrittenOut,
    __in                            ULONG                               uOutBufLen,
    __out_bcount_opt(uOutBufLen)    PUCHAR                              pucOutBuffer
);
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


<span id="hAdapter"></span><span id="hadapter"></span><span id="HADAPTER"></span>*hAdapter*  
\[in\] The handle to the Wi-Fi adapter, obtained by calling [WlanMTEOpenHandle](wlanmteopenhandle.md).

<span id="eTestType"></span><span id="etesttype"></span><span id="ETESTTYPE"></span>*eTestType*  
\[in\] The type of self-test requested. The values of *eTestType* are defined by the DOT11\_MANUFACTURING\_SELF\_TEST\_TYPE enumeration, shown below:

``` syntax
typedef enum DOT11_MANUFACTURING_SELF_TEST_TYPE {
        DOT11_MANUFACTURING_SELF_TEST_TYPE_INTERFACE = 1,
        DOT11_MANUFACTURING_SELF_TEST_TYPE_RF_INTERFACE,
        DOT11_MANUFACTURING_SELF_TEST_TYPE_BT_COEXISTENCE
    } DOT11_MANUFACTURING_SELF_TEST_TYPE, * PDOT11_MANUFACTURING_SELF_TEST_TYPE;
```

<span id="uTestID"></span><span id="utestid"></span><span id="UTESTID"></span>*uTestID*  
\[in\] The ID for the self-test requested.

<span id="pvContext"></span><span id="pvcontext"></span><span id="PVCONTEXT"></span>*pvContext*  
\[in\] The context that was specified in the original self-test request.

<span id="pbResult"></span><span id="pbresult"></span><span id="PBRESULT"></span>*pbResult*  
\[out\] The final result of the self-test. **True** if passed, **False** if failed.

<span id="puPinFailedBitMask"></span><span id="pupinfailedbitmask"></span><span id="PUPINFAILEDBITMASK"></span>*puPinFailedBitMask*  
\[out\] The bit mask for adapter pins that failed the test.

<span id="puBytesWrittenOut"></span><span id="pubyteswrittenout"></span><span id="PUBYTESWRITTENOUT"></span>*puBytesWrittenOut*  
\[out\] The number of bytes of optional data returned from the self-test results.

<span id="uOutBufLen"></span><span id="uoutbuflen"></span><span id="UOUTBUFLEN"></span>*uOutBufLen*  
\[in\] The length of the buffer for returning any additional information about the self-test.

<span id="pucOutBuffer"></span><span id="pucoutbuffer"></span><span id="PUCOUTBUFFER"></span>*pucOutBuffer*  
\[out\] The buffer of length *\*puBytesWrittenOut* that provides additional information about the self-test. The value of *\*puBytesWrittenOut* must be less than or equal to the value of *uOutBufLen*.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


The application must have received a **dot11\_manufacturing\_callback\_self\_test\_complete** callback prior to calling this command. It should also provide the same context value that was used in the original self-test request in order to the get the results for the appropriate self-test request.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


If the function succeeds, the return value is ERROR\_SUCCESS.

If the function fails, the return value is one of the system error codes. The following table lists the error codes that may be returned.

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
<td align="left"><p>Returned if the <em>pbResult</em>, <em>puPinFailedBitMask</em>, or <em>puBytesWrittenOut</em> parameter is NULL, or if the test type specified by the <em>eTestType</em> parameter is invalid.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ERROR_INVALID_HANDLE</p></td>
<td align="left"><p>Returned if the <em>hAdapter</em> handle is invalid.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ERROR_OUTOFMEMORY</p></td>
<td align="left"><p>Returned if sufficient memory to perform the operation could not be allocated.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** wifimte.w

## <span id="related_topics"></span>Related topics


[Wi-Fi manufacturing API](wi-fi-manufacturing-api.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20WlanMTEQuerySelfTestResult%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




