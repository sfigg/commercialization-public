---
title: BitLocker CSP
description: BitLocker CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# BitLocker CSP


> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The BitLocker configuration service provider (CSP) is used by the enterprise to manage encryption of PCs and devices. The CSP was added in the next major update of Windows 10.

> [!Note]  
> Settings are only read at the time encryption is started. Encryption is not restarted with settings changes.

The following diagram shows the AppLocker configuration service provider in tree format.

![bitlocker csp](images/provisioning-csp-bitlocker.png)

<a href="" id="--device-vendor-msft-bitlocker"></a>**./Device/Vendor/MSFT/BitLocker**  
<p style="margin-left: 20px">Defines the root node for the BitLocker configuration service provider.  

<a href="" id="requiredeviceencryption"></a>**RequireDeviceEncryption**  
<p style="margin-left: 20px">This setting maps to Policy CSP [Security/RequireDeviceEncryption](policy-configuration-service-provider#security-requiredeviceencryption) policy. The last write wins if RequireDeviceEncryption is set in both Policy CSP and BitLocker CSP.</p>

<a href="" id="requirestoragecardencryption"></a>**RequireStorageCardEncryption**  
<p style="margin-left: 20px">TBD.</p>

<a href="" id="encryptionmethodbydrivetype"></a>**EncryptionMethodByDriveType**  
<p style="margin-left: 20px">Allows you to set the default encrytion method for each of the different drive type. This setting is a direct mapping to the Bitlocker Group Policy "Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later)".</p>

<p style="margin-left: 20px">This setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.</p>

<p style="margin-left: 20px">If you enable this setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script.</p>

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="systemdrivesrequirestartupauthentication"></a>**SystemDrivesRequireStartupAuthentication**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Require additional authentication at startup".</p>

<p style="margin-left: 20px">This setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). This setting is applied when you turn on BitLocker.</p>

> [!Note]  
> Only one of the additional authentication options can be required at startup, otherwise an error occurs.

<p style="margin-left: 20px">On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 4-digit to 20-digit personal identification number (PIN), or both.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, users can configure only basic options on computers with a TPM.</p>

> [!Note]  
> If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool manage-bde instead of the BitLocker Drive Encryption setup wizard.

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="systemdrivesminimumpinlength"></a>**SystemDrivesMinimumPINLength**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Configure minimum PIN length for startup".</p>

<p style="margin-left: 20px">This setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. This setting is applied when you turn on BitLocker. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits.</p>

<p style="margin-left: 20px">If you enable this setting, you can require a minimum number of digits to be used when setting the startup PIN.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, users can configure a startup PIN of any length between 4 and 20 digits.</p>

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="systemdrivesrecoverymessage"></a>**SystemDrivesRecoveryMessage**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Configure pre-boot recovery message and URL".</p>

<p style="margin-left: 20px">This setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked.
</p>

> [!Note]  
> Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="systemdrivesrecoveryoptions"></a>**SystemDrivesRecoveryOptions**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Choose how BitLocker-protected operating system drives can be recovered".</p>

<p style="margin-left: 20px">This setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. This setting is applied when you turn on BitLocker.</p>

<p style="margin-left: 20px">If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives.</p>

<p style="margin-left: 20px">If this setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.</p>

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="fixeddrivesrecoveryoptions"></a>**FixedDrivesRecoveryOptions**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Choose how BitLocker-protected fixed drives can be recovered".</p>

<p style="margin-left: 20px">This setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This setting is applied when you turn on BitLocker.</p>

<p style="margin-left: 20px">If you enable this setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives.</p>

<p style="margin-left: 20px">If this setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.</p>

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="fixeddrivesrequireencryption"></a>**FixedDrivesRequireEncryption**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Deny write access to fixed drives not protected by BitLocker".</p>

<p style="margin-left: 20px">This setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.</p>

<p style="margin-left: 20px">If you enable this setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, all fixed data drives on the computer will be mounted with read and write access.</p>

<p style="margin-left: 20px">Data type is string. Supported operations are Add, Get, Replace, and Delete.</p>

<a href="" id="removabledrivesrequireencryption"></a>**RemovableDrivesRequireEncryption**  
<p style="margin-left: 20px">This setting is a direct mapping to the Bitlocker Group Policy "Deny write access to removable drives not protected by BitLocker".</p>

<p style="margin-left: 20px">This setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive.</p>

<p style="margin-left: 20px">If you enable this setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.</p>

<p style="margin-left: 20px">If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" setting.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, all removable data drives on the computer will be mounted with read and write access.</p>

> [!Note]  
> This setting can be overridden by the settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" setting is enabled this setting will be ignored.