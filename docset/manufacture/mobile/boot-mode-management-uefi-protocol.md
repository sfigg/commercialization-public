---
author: kpacquer
Description: 'The boot mode management protocol is used to determine which boot mode the operating system should use when it starts.'
MS-HAID: 'p\_phManuRetail.boot\_mode\_management\_uefi\_protocol'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Boot mode management UEFI protocol
---

# Boot mode management UEFI protocol


The boot mode management protocol is used to determine which boot mode the operating system should use when it starts.

## <span id="EFI_BOOT_MODE_MGMT_PROTOCOL"></span><span id="efi_boot_mode_mgmt_protocol"></span>EFI\_BOOT\_MODE\_MGMT\_PROTOCOL


This section provides a detailed description of the **EFI\_BOOT\_MODE\_MGMT\_PROTOCOL**.

**GUID**

``` syntax
#define EFI_BOOT_MODE_MGMT_PROTOCOL_GUID \
   { 0xBE464946, 0x9787, 0x4FEB, { 0xBD, 0x71, 0x14, 0xC1, 0xC5, 0x2D, 0x69, 0xD1 } }
```

**Revision number**

``` syntax
#define EFI_BOOT_MODE_MGMT_PROTOCOL_REVISION 0x00010000
```

**Protocol interface structure**

``` syntax
typedef struct _EFI_BOOT_MODE_MGMT_PROTOCOL {
    UINT32                 Revision;
    EFI_SET_BOOT_MODE_INFO SetBootModeInfo;
    EFI_GET_BOOT_MODE_INFO GetBootModeInfo;
} EFI_BOOT_MODE_MGMT_PROTOCOL;
```

**Members**

<span id="Revision"></span><span id="revision"></span><span id="REVISION"></span>**Revision**  
The revision to which the **EFI\_BOOT\_MODE\_MGMT\_PROTOCOL** adheres. All future revisions must be backward compatible. If a future version is not backward compatible, a different GUID must be used.

<span id="GetBootModeInfo"></span><span id="getbootmodeinfo"></span><span id="GETBOOTMODEINFO"></span>**GetBootModeInfo**  
Determines the boot mode which the operating system should use when it starts. See [EFI\_BOOT\_MODE\_MGMT\_PROTOCOL.GetBootModeInfo](efi-boot-mode-mgmt-protocol-getbootmodeinfo.md)

<span id="SetBootModeInfo"></span><span id="setbootmodeinfo"></span><span id="SETBOOTMODEINFO"></span>**SetBootModeInfo**  
Specifies the boot mode the operating system should use when it starts, including an optional profile name. See [EFI\_BOOT\_MODE\_MGMT\_PROTOCOL.SetBootModeInfo](efi-boot-mode-mgmt-protocol-setbootmodeinfo.md)

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


**Header:** User generated

## <span id="related_topics"></span>Related topics


[Manufacturing Mode](manufacturing-mode.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Boot%20mode%20management%20UEFI%20protocol%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




