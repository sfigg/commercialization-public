---
Description: 'Defines the possible boot modes that the operating system can use when it starts.'
MS-HAID: 'p\_phManuRetail.efi\_boot\_mode\_info\_enumeration'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'EFI\_BOOT\_MODE\_INFO enumeration'
---

# EFI\_BOOT\_MODE\_INFO enumeration


Defines the possible boot modes that the operating system can use when it starts.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


``` syntax
typedef enum _EFI_OS_BOOT_MODE {
    EfiOsBootModeFullOs = 0,
    EfiOsBootModeManufacturingOs = 1
    EfiOsBootModeMax
} EFI_OS_BOOT_MODE, *PEFI_OS_BOOT_MODE;
```

## <span id="Constants"></span><span id="constants"></span><span id="CONSTANTS"></span>Constants


<span id="EfiOsBootModeFullOs"></span><span id="efiosbootmodefullos"></span><span id="EFIOSBOOTMODEFULLOS"></span>**EfiOsBootModeFullOs**  
The device should boot normally into the operating system.

<span id="EfiOsBootModeManufacturingOs"></span><span id="efiosbootmodemanufacturingos"></span><span id="EFIOSBOOTMODEMANUFACTURINGOS"></span>**EfiOsBootModeManufacturingOs**  
The device is in manufacturing mode.

## <span id="related_topics"></span>Related topics


[Boot mode management UEFI protocol](https://msdn.microsoft.com/library/windows/hardware/dn925274)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20EFI_BOOT_MODE_INFO%20enumeration%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




