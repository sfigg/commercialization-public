---
title: IOCTL\_THERMAL\_READ\_TEMPERATURE
description: The IOCTL\_THERMAL\_READ\_TEMPERATURE input/output (I/O) control request is sent by the ACPI driver to a temperature sensor driver. Upon receiving this request, the driver might be required to provide the temperature of the thermal zone.
MS-HAID:
- 'cstandby.ioctl\_thermal\_read\_temperature'
- 'p\_weg\_hardware.ioctl\_thermal\_read\_temperature'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6FB6C103-A531-4CF6-92C6-3E6917BA9129
---

# IOCTL\_THERMAL\_READ\_TEMPERATURE


The IOCTL\_THERMAL\_READ\_TEMPERATURE input/output (I/O) control request is sent by the ACPI driver to a temperature sensor driver. Upon receiving this request, the driver might be required to provide the temperature of the thermal zone.

## <a href="" id="input-parameters-"></a>Input Parameters


To retrieve the input buffer, call [**WdfRequestRetrieveInputBuffer**](https://msdn.microsoft.com/library/windows/hardware/ff550014). The input buffer contains a [THERMAL\_WAIT\_READ](p_WEG_hardware.thermal_wait_read) structure. The Timeout member indicates when to return to the thermal zone's temperature after which the request will expire. If the received **Timeout** value is -1, the request never expires.

## Output Parameters


To retrieve the output buffer, call [**WdfRequestRetrieveOutputBuffer**](https://msdn.microsoft.com/library/windows/hardware/ff550018). The Buffer parameter points to a **ULONG**. Set the value to the thermal zone temperature, in tenths degree Kelvin.

## I/O Status


Complete the request by calling [**WdfRequestCompleteWithInformation**](https://msdn.microsoft.com/library/windows/hardware/ff549948) and set Status to STATUS\_SUCCESS if the request is successful. Otherwise, an appropriate NTSTATUS error condition. The driver can pass the bytes returned to sizeof(ULONG) in the Information parameter. Related topics Thermal management in Windows

## Related topics


[IOCTL\_THERMAL\_READ\_POLICY](p_WEG_hardware.ioctl_thermal_read_policy)

[Thermal management in Windows](p_WEG_hardware.thermal_management_in_windows)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20IOCTL_THERMAL_READ_TEMPERATURE%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





