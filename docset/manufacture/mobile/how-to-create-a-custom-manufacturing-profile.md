---
Description: 'You can add manufacturing profiles to your device by using a package.'
MS-HAID: 'p\_phManuRetail.how\_to\_create\_a\_custom\_manufacturing\_profile'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Create a custom manufacturing profile package
---

# Create a custom manufacturing profile package


You can add manufacturing profiles to your device by using a package. For more info on creating packages, see [Creating packages](https://msdn.microsoft.com/library/dn756642) . In some cases, you may need to create a custom profile. For example, perhaps you want to fine tune what Microsoft services are running for performance or functionality reasons or perhaps you want to have more than one manufacturing profile. When creating new custom profiles, you should start by copying the provided default profile and customizing it to suit your needs.

For example, if you wanted to create a new custom profile for factory testing that is a copy of the default profile but also starts your factory test service, it may look like this:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
        Owner="Contoso"
        Component="MfgMode"
        SubComponent="ManufacturingModeServices"
        ReleaseType="Production"
        OwnerType="OEM">

    <Macros>
      <Macro Id="MfgMode" Value="$(hklm.control)\ManufacturingMode" />
      <Macro Id="CustomProfileServices" Value="$(MfgMode)\CustomProfile\Services" />
    </Macros>

    <Components>
        <OSComponent>
         <!-- Overrides copied from default profile -->
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\*">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000003" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\AccountProvSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>              
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\adss">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\AudioSrv">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\BFE">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\BrokerInfrastructure">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\cellusermodeinterconnect">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\DcomLaunch">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\DHCP">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\Fusion">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\KeepWifiOnSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000003" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\LaunchAppSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\MPSSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\NETACT">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\nsi">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\Power">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\ProfSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\RpcEptMapper">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\RpcSs">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\SamSs">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\SecMgr">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\SirepSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000004" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\SystemEventsBroker">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\TestSirepSvc">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
         <!-- Custom overrides for OEM services -->
          <RegKeys>
            <RegKey KeyName="$(CustomProfileServices)\OEMFactoryTestService">
              <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
            </RegKey>
          </RegKeys>
        </OSComponent>
    </Components>
</Package>
```

You can then create the package by using pkggen.exe (included with the Windows Driver Kit):

``` syntax
pkggen.exe example.pkg.xml /config:pkggen.cfg.xml
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Create%20a%20custom%20manufacturing%20profile%20package%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



