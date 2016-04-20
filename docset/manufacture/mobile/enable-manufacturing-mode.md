---
author: kpacquer
Description: 'If you want to test Manufacturing Mode, you can enable it by using ffutool.exe or by using a BCD setting.'
MS-HAID: 'p\_phManuRetail.enable\_manufacturing\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Enable or Disable Manufacturing Mode
---

# Enable or Disable Manufacturing Mode


If you want to test Manufacturing Mode, you can enable it by using ffutool.exe or by using a BCD setting.

**Note**  The recommended way to support manufacturing mode on shipping devices is to have the firmware support the Boot mode management UEFI protocol. For more info on this protocol, see [Boot mode management UEFI protocol](boot-mode-management-uefi-protocol.md).

 

## <span id="enable_or_disable_manufacturing_mode_with_ffutool.exe"></span><span id="ENABLE_OR_DISABLE_MANUFACTURING_MODE_WITH_FFUTOOL.EXE"></span>Enable or disable Manufacturing Mode with ffutool.exe


If the device supports the boot mode UEFI protocol, you can enable or disable Manufacturing Mode with ffutool.exe by using the **setBootMode** parameter. The syntax is as follows:

``` syntax
ffutool.exe -setBootMode <boot mode> <profile name>
```

-   *boot mode* -- an integer that corresponds to the boot mode documented in [EFI\_BOOT\_MODE\_INFO enumeration](efi-boot-mode-info-enumeration.md).
-   *profile name* -- the name of the manufacturing profile to enable. This is required when the boot mode is set to 1 and is ignored when the boot mode is set to 0.

The following example enables Manufacturing Mode and uses a manufacturing profile named CustomProfile:

``` syntax
ffutool.exe -setBootMode 1 CustomProfile
```

The following example disables Manufacturing Mode, allowing the operating system to boot normally:

``` syntax
ffutool.exe -setBootMode 0
```

## <span id="Enable_Manufacturing_Mode_with_a_BCD_setting"></span><span id="enable_manufacturing_mode_with_a_bcd_setting"></span><span id="ENABLE_MANUFACTURING_MODE_WITH_A_BCD_SETTING"></span>Enable Manufacturing Mode with a BCD setting


You can use the MfgMode BCD setting to test Manufacturing Mode with your custom manufacturing profiles. MfgMode is a string value that is set to the name of your custom manufacturing profile.

For example, you can start the device in Manufacturing Mode using the default manufacturing profile by running the following command on the device:

``` syntax
bcdedit.exe /set {default} mfgmode "default"
```

Or, you could start the device in Manufacturing Mode using a custom manufacturing profile named, CustomProfile, by doing the following:

``` syntax
bcdedit.exe /set {default} mfgmode "CustomProfile"
```

You can also enable it on an offline device that is plugged in and is in USB mass storage mode. For example:

``` syntax
bcdedit.exe /store "D:\EFIESP\efi\Microsoft\Boot\BCD" /set {default} mfgmode "default"
```

**Note**  If you're using an older version of bcdedit.exe, you might have to use **custom:22000140** instead of **mfgmode** as the BCD setting name.

 

## <span id="Create_a_Manufacturing_Mode_BCD_package"></span><span id="create_a_manufacturing_mode_bcd_package"></span><span id="CREATE_A_MANUFACTURING_MODE_BCD_PACKAGE"></span>Create a Manufacturing Mode BCD package


You can create a package that creates the MfgMode BCD entry and sets it to your custom manufacturing profile. To do this, you must first create an XML file that references the BCD entry:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<BootConfigurationDatabase xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns="http://schemas.microsoft.com/phone/2011/10/BootConfiguration">
  <Objects>

    <!-- Global Settings Group -->
    <Object SaveKeyToRegistry="false">
      <FriendlyName>Windows Loader</FriendlyName>
      <Elements>

        <Element>
          <DataType>
            <WellKnownType>Manufacturing Mode</WellKnownType>
          </DataType>
          <ValueType>
            <StringValue>Default</StringValue>
          </ValueType>
        </Element>

      </Elements>
    </Object>

  </Objects>
</BootConfigurationDatabase>
```

After that is created, you can reference it in a package XML file:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
        Owner="Contoso"
        Component="MfgMode"
        SubComponent="ManufacturingModeBcd"
        ReleaseType="Production"
        Partition="EFIESP"
        OwnerType="OEM">

    <Components>
        <BCDStore Source=".\exampleBcd.bcd.xml"/>
    </Components>
</Package>
```

**Note**  There is a Partition attribute defining that these BCD entries need to apply to the EFIESP partition. This should be updated to be the partition where the BCD store for your device resides. If this is different from the partition where the main operating system resides, other operations such as adding files and registry keys to the main operating system partition cannot be done from the same package.

 

To create the package, you can use pkggen.exe (included with the Windows Driver Kit):

``` syntax
pkggen.exe exampleBcd.pkg.xml /config:pkggen.cfg.xml
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Enable%20or%20Disable%20Manufacturing%20Mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



