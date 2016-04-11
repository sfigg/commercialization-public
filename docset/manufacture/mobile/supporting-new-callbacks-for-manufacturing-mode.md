---
Description: Supporting new callbacks for manufacturing mode
MS-HAID: 'p\_phManuRetail.supporting\_new\_callbacks\_for\_manufacturing\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Supporting new callbacks for manufacturing mode
---

# Supporting new callbacks for manufacturing mode


When running in manufacturing mode, Wi-Fi miniport drivers must add support for the following new callback.

## <span id="NDIS_STATUS_DOT11_MANUFACTURING_CALLBACK"></span><span id="ndis_status_dot11_manufacturing_callback"></span>NDIS\_STATUS\_DOT11\_MANUFACTURING\_CALLBACK


The **NDIS\_STATUS\_DOT11\_MANUFACTURING\_CALLBACK** callback is used to indicate completion status for certain requests. The data structure used for this callback is defined here.

``` syntax
typedef enum _DOT11_MANUFACTURING_CALLBACK_TYPE {
    dot11_manufacturing_callback_unknown = 0,
    dot11_manufacturing_callback_self_test_complete = 1,
    dot11_manufacturing_callback_sleep_complete = 2,
    dot11_manufacturing_callback_IHV_start = 0x80000000,
    dot11_manufacturing_callback_IHV_end = 0xffffffff
} DOT11_MANUFACTURING_CALLBACK_TYPE, * PDOT11_MANUFACTURING_CALLBACK_TYPE;

typedef struct DOT11_MANUFACTURING_CALLBACK_PARAMETERS {
#define DOT11_MANUFACTURING_CALLBACK_REVISION_1  1
    NDIS_OBJECT_HEADER                Header;
    DOT11_MANUFACTURING_CALLBACK_TYPE dot11ManufacturingCallbackType;
    ULONG                             uStatus;
    PVOID                             pvContext;
} DOT11_MANUFACTURING_CALLBACK_PARAMETERS, * PDOT11_MANUFACTURING_CALLBACK_PARAMETERS;
```

<span id="dot11_manufacturing_callback_self_test_complete"></span><span id="DOT11_MANUFACTURING_CALLBACK_SELF_TEST_COMPLETE"></span>**dot11\_manufacturing\_callback\_self\_test\_complete**  
**dot11\_manufacturing\_callback\_self\_test\_complete** is called by the driver when a requested self-test is completed by the driver. This callback must return the context for self-test request as well as the self-test result. The driver then calls the **OID\_DOT11\_MANUFACTURING\_TEST** OID with the **dot11\_manufacturing\_test\_self\_query\_result** command to obtain the detailed result of the test.

<span id="dot11_manufacturing_callback_sleep_complete"></span><span id="DOT11_MANUFACTURING_CALLBACK_SLEEP_COMPLETE"></span>**dot11\_manufacturing\_callback\_sleep\_complete**  
**dot11\_manufacturing\_callback\_sleep\_complete** is called when a requested sleep command is executed by the driver. This callback must return the context for the sleep request as well as the status, whether success or failure. This callback is also called by the driver when the application sends a request to wake the driver from a sleep state.

## <span id="related_topics"></span>Related topics


[Adding Wi-Fi manufacturing test support to the OID interface](adding-wi-fi-manufacturing-test-support-to-the-oid-interface.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Supporting%20new%20callbacks%20for%20manufacturing%20mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




