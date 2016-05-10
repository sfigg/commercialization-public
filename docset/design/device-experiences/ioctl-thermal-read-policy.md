---
title: IOCTL\_THERMAL\_READ\_POLICY
description: The IOCTL\_THERMAL\_READ\_POLICY input/output (I/O) control request is sent by the kernel to a thermal zone’s policy driver to read the drivers' preferred policy.
MS-HAID:
- 'cstandby.ioctl\_thermal\_read\_policy'
- 'p\_weg\_hardware.ioctl\_thermal\_read\_policy'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 47A5C5E5-B874-4050-AC43-D8CB5619E5D5
---

# IOCTL\_THERMAL\_READ\_POLICY


The IOCTL\_THERMAL\_READ\_POLICY input/output (I/O) control request is sent by the kernel to a thermal zone’s policy driver to read the drivers' preferred policy.

## <a href="" id="input-parameters-"></a>Input Parameters


To retrieve the input buffer, call [**WdfRequestRetrieveInputBuffer**](https://msdn.microsoft.com/library/windows/hardware/ff550014). The input buffer contains a [THERMAL\_POLICY](thermal-wait-read.md) struct that specifies the current policy that the kernel has for the thermal zone.

## Output Parameters


To retrieve the output buffer, call [**WdfRequestRetrieveOutputBuffer**](https://msdn.microsoft.com/library/windows/hardware/ff550018). The *Buffer* parameter points to a [THERMAL\_POLICY](thermal-wait-read.md) structure. Set the THERMAL\_POLICY's members to your policy driver's preferred thermal policy.

## I/O Status


Complete the request by calling [**WdfRequestCompleteWithInformation**](https://msdn.microsoft.com/library/windows/hardware/ff549948) and set Status to STATUS\_SUCCESS if the request is successful. Otherwise, an appropriate NTSTATUS error condition. The driver can pass the bytes returned to `sizeof(ULONG)` in the **Information** parameter.

## Related topics


[IOCTL\_THERMAL\_READ\_TEMPERATURE](ioctl-thermal-read-temperature.md)

[Thermal management in Windows](thermal-management-in-windows.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20IOCTL_THERMAL_READ_POLICY%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





