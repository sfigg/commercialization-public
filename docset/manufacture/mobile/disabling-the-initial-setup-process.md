---
author: kpacquer
Description: Disabling the initial setup process
ms.assetid: e0aa36a7-5524-42de-855d-1a9b7e03e250
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Disabling the initial setup process
---

# Disabling the initial setup process


To disable the device's initial setup process (also sometimes called the *out-of-box experience* or *OOBE*) in a Test, Health, or Production image that is used during manufacturing, include the SKIPOOBE imaging feature in the OEMnput.xml file that is used to build the image.

The SKIPOOBE feature sets the **OobeHeadless** registry value (a REG\_DWORD value under the HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Shell\\OOBE entry) to 1. Alternatively, you can configure this registry value directly in one of your own packages. The following example demonstrates a package XML file that sets this registry value.

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<Package xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:xsd="http://www.w3.org/2001/XMLSchema"
  Owner="Contoso"
  Component="Shell"
  SubComponent="DisableOOBE"
  OwnerType="OEM"
  ReleaseType="Production" xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00">

  <Macros>
    <Macro Id="hklm.shell" Value="$(hklm.microsoft)\Shell"/>
  </Macros>

  <Components>
    <OSComponent>
      <RegKeys>
        <RegKey KeyName="$(hklm.shell)\OOBE">
          <RegValue Name="OobeHeadless" Type="REG_DWORD" Value="00000001" />
        </RegKey>
      </RegKeys>
    </OSComponent>
  </Components>
</Package>
```

## <span id="related_topics"></span>Related topics


[Specifying files and registry entries in a package project file](https://msdn.microsoft.com/library/dn789219)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Disabling%20the%20initial%20setup%20process%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




