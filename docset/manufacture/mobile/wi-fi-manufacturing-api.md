---
author: kpacquer
Description: 'Wi-Fi manufacturing API'
MS-HAID: 'p\_phManuRetail.wi\_fi\_manufacturing\_api'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Wi-Fi manufacturing API'
---

# Wi-Fi manufacturing API


As part of the manufacturing process, you must run tests to ensure that the components are integrated, functioning, and calibrated properly, and that they meet all regulatory requirements.

The API members documented in this section are interfaces defined for IHVs to use to write tests applications for the Wi-Fi chipset. This API set requires that the Wi-Fi driver conform to the driver OID specification.

This test API must only be used in manufacturing mode. For more info, see [Determine if MMOS is running](determine-if-mmos-is-running.md).

## <span id="In_this_section"></span><span id="in_this_section"></span><span id="IN_THIS_SECTION"></span>In this section


The following interfaces are defined for this API.

<span id="WlanMTEEnumAdapters"></span><span id="wlanmteenumadapters"></span><span id="WLANMTEENUMADAPTERS"></span>[WlanMTEEnumAdapters](wlanmteenumadapters.md)  
Returns the list of the adapters that are recognized by the Wi-Fi stack.

<span id="WlanMTEOpenHandle"></span><span id="wlanmteopenhandle"></span><span id="WLANMTEOPENHANDLE"></span>[WlanMTEOpenHandle](wlanmteopenhandle.md)  
Opens a handle to the driver based on the interface GUID specified and returns the handle to the caller.

<span id="WlanMTECloseHandle"></span><span id="wlanmteclosehandle"></span><span id="WLANMTECLOSEHANDLE"></span>[WlanMTECloseHandle](wlanmteclosehandle.md)  
Closes a handle to the driver previously opened by [WlanMTEOpenHandle](wlanmteopenhandle.md).

<span id="WlanMTERegisterCallbackHandler"></span><span id="wlanmteregistercallbackhandler"></span><span id="WLANMTEREGISTERCALLBACKHANDLER"></span>[WlanMTERegisterCallbackHandler](wlanmteregistercallbackhandler.md)  
Registers a handler that will be called whenever the driver invokes a callback for a manufacturing functionality event.

<span id="WlanMTEDeRegisterCallbackHandler"></span><span id="wlanmtederegistercallbackhandler"></span><span id="WLANMTEDEREGISTERCALLBACKHANDLER"></span>[WlanMTEDeRegisterCallbackHandler](wlanmtederegistercallbackhandler.md)  
Unregisters a callback handler so that it will no longer be called when a manufacturing-related functionality event occurs.

<span id="WlanMTEGetVendorInfo"></span><span id="wlanmtegetvendorinfo"></span><span id="WLANMTEGETVENDORINFO"></span>[WlanMTEGetVendorInfo](wlanmtegetvendorinfo.md)  
Requests vendor-specific information, such as the vendor ID and vendor description.

<span id="WlanMTEResetAdapter"></span><span id="wlanmteresetadapter"></span><span id="WLANMTERESETADAPTER"></span>[WlanMTEResetAdapter](wlanmteresetadapter.md)  
Resets the Wi-Fi adapter.

<span id="WlanMTEQueryMacAddress"></span><span id="wlanmtequerymacaddress"></span><span id="WLANMTEQUERYMACADDRESS"></span>[WlanMTEQueryMacAddress](wlanmtequerymacaddress.md)  
Queries the MAC address of the Wi-Fi adapter.

<span id="WlanMTEQueryPhyTypes"></span><span id="wlanmtequeryphytypes"></span><span id="WLANMTEQUERYPHYTYPES"></span>[WlanMTEQueryPhyTypes](wlanmtequeryphytypes.md)  
Queries the list of 802.11 PHY types configured on the adapter.

<span id="WlanMTEStartSelfTest"></span><span id="wlanmtestartselftest"></span><span id="WLANMTESTARTSELFTEST"></span>[WlanMTEStartSelfTest](wlanmtestartselftest.md)  
Starts a preconfigured set of self-tests.

<span id="WlanMTEQuerySelfTestResult"></span><span id="wlanmtequeryselftestresult"></span><span id="WLANMTEQUERYSELFTESTRESULT"></span>[WlanMTEQuerySelfTestResult](wlanmtequeryselftestresult.md)  
Queries the driver for the results of a previously requested self-test.

<span id="WlanMTERxSignal"></span><span id="wlanmterxsignal"></span><span id="WLANMTERXSIGNAL"></span>[WlanMTERxSignal](wlanmterxsignal.md)  
Queries information about the received signal at a specific band and channel.

<span id="WlanMTETxSignal"></span><span id="wlanmtetxsignal"></span><span id="WLANMTETXSIGNAL"></span>[WlanMTETxSignal](wlanmtetxsignal.md)  
Requests the driver to transmit a signal at the specified band and channel.

<span id="WlanMTEQueryADC"></span><span id="wlanmtequeryadc"></span><span id="WLANMTEQUERYADC"></span>[WlanMTEQueryADC](wlanmtequeryadc.md)  
Requests the value of the transmitted signal when performed over an open loop.

<span id="WlanMTESetData"></span><span id="wlanmtesetdata"></span><span id="WLANMTESETDATA"></span>[WlanMTESetData](wlanmtesetdata.md)  
Requests that the driver write data to a specified location and offset from that location.

<span id="WlanMTEQueryData"></span><span id="wlanmtequerydata"></span><span id="WLANMTEQUERYDATA"></span>[WlanMTEQueryData](wlanmtequerydata.md)  
Queries the driver for data at a specific location and offset from that location.

<span id="WlanMTESleep"></span><span id="wlanmtesleep"></span><span id="WLANMTESLEEP"></span>[WlanMTESleep](wlanmtesleep.md)  
Requests that the driver to go to sleep either for a specified time interval or indefinitely until an awake request is sent.

<span id="WlanMTEAwake"></span><span id="wlanmteawake"></span><span id="WLANMTEAWAKE"></span>[WlanMTEAwake](wlanmteawake.md)  
Requests that the driver wake up from its current sleep state.

## <span id="related_topics"></span>Related topics


[Adding Wi-Fi manufacturing test support to the OID interface](adding-wi-fi-manufacturing-test-support-to-the-oid-interface.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Wi-Fi%20manufacturing%20API%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




