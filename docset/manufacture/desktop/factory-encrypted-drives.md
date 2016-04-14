---
Description: Factory Encrypted Drives
MS-HAID: 'p\_adk\_online.factory\_encrypted\_drives'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Factory Encrypted Drives
---

# Factory Encrypted Drives


You can install Windows on factory-encrypted drives, also known as encrypted hard disk drives (eHDD). A *factory-encrypted drive* is a drive that is capable of full-disk encryption.

By default, when you install Windows on a factory-encrypted drive, Windows automatically encrypts the drive by using Trusted Computing Group (TCG) and IEEE 1667 transport encryption standards.

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


To install Windows onto a factory-encrypted drive, use the following:

1.  Firmware: UEFI version 2.3.1 that has been configured to use the EFI storage security protocol.

2.  Hardware: a hard disk drive that is capable of using TCG and IEEE 1667 transport encryption standards.

## <span id="Using_other_encryption_standards"></span><span id="using_other_encryption_standards"></span><span id="USING_OTHER_ENCRYPTION_STANDARDS"></span>Using other encryption standards


To use another encryption standard on your drive, you must first disable the automatic drive provisioning that Windows provides. To do this on a new installation, set the Microsoft-Windows-EnhancedStorage-Adm/TCGSecurityActivationDisabled Unattend setting to **true**. For more information, see the [Unattended Windows Setup Reference](https://msdn.microsoft.com/library/windows/hardware/dn923277).

## <span id="related_topics"></span>Related topics


[Hard Drives and Partitions](hard-drives-and-partitions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Factory%20Encrypted%20Drives%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




