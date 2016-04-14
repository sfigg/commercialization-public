---
author: kpacquer
Description: 'This function supplies a boot mode and optional profile name to the firmware to use on subsequent boots.'
MS-HAID: 'p\_phManuRetail.efi\_boot\_mode\_mgmt\_protocol\_setbootmodeinfo'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'EFI\_BOOT\_MODE\_MGMT\_PROTOCOL.SetBootModeInfo'
---

# EFI\_BOOT\_MODE\_MGMT\_PROTOCOL.SetBootModeInfo


This function supplies a boot mode and optional profile name to the firmware to use on subsequent boots.

``` syntax
typedef EFI_STATUS
(EFIAPI *EFI_SET_BOOT_MODE_INFO)(
    IN  struct _EFI_BOOT_MODE_MGMT_PROTOCOL *This,
    IN EFI_OS_BOOT_MODE                    *BootMode,
    IN UINT32                           *ProfileNameElements OPTIONAL,
    IN CHAR16                              *ProfileName OPTIONAL
    );
```

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


<span id="This"></span><span id="this"></span><span id="THIS"></span>*This*  
\[in\] A pointer to the **EFI\_BOOT\_MODE\_MGMT\_PROTOCOL** instance.

<span id="BootMode"></span><span id="bootmode"></span><span id="BOOTMODE"></span>*BootMode*  
\[in\] A pointer to the enumeration that holds the boot mode of the device.

<span id="ProfileNameElements"></span><span id="profilenameelements"></span><span id="PROFILENAMEELEMENTS"></span>*ProfileNameElements*  
\[in\] A pointer to a UINT32 value of the number of characters in the profile name to set.

<span id="ProfileName"></span><span id="profilename"></span><span id="PROFILENAME"></span>*ProfileName*  
\[in\] A pointer to the name of the boot mode profile to set.

## <span id="Return_values"></span><span id="return_values"></span><span id="RETURN_VALUES"></span>Return values


Returns one of the following status codes:

| Return code            | Description                                                      |
|------------------------|------------------------------------------------------------------|
| EFI\_SUCCESS           | Success                                                          |
| EFI\_NOT\_FOUND        | The boot mode data was not found.                                |
| EFI\_VOLUME\_CORRUPTED | A required storage partition is not initialized or is corrupted. |
| EFI\_INVALID\_PARAM    | An invalid parameter was passed to the function.                 |
| EFI\_BAD\_BUFFER\_SIZE | The ProfileName name string is too long.                         |

 

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** User generated

## <span id="related_topics"></span>Related topics


[Boot mode management UEFI protocol](boot-mode-management-uefi-protocol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20EFI_BOOT_MODE_MGMT_PROTOCOL.SetBootModeInfo%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




