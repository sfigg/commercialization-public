---
Description: 'There may be cases where you want a service to be normally disabled but automatically run when the device is in Manufacturing Mode.'
MS-HAID: 'p\_phManuRetail.how\_to\_define\_a\_service\_that\_only\_runs\_in\_manufacturing\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Define a service that only runs in Manufacturing Mode
---

# Define a service that only runs in Manufacturing Mode


There may be cases where you want a service to be normally disabled but automatically run when the device is in Manufacturing Mode. For example, your factory test suite would probably run in this configuration. You would set your service start type to Disabled and then add a manufacturing profile override that makes your service auto-start when using the appropriate manufacturing mode profile.

Here's an example manufacturing profile:

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
        Owner="Contoso"
        Component="MfgMode"
        SubComponent="FactoryTest"
        ReleaseType="Production"
        OwnerType="OEM">

    <Macros>
      <Macro Id="MfgMode" Value="$(hklm.control)\ManufacturingMode" />
      <Macro Id="CustomProfileServices" Value="$(MfgMode)\CustomProfile\Services" />
    </Macros>

    <Components>
      <!-- Definition for the service -->
      <Service
        Name="FactoryService"
        Start="Disabled"
        Type="Win32OwnProcess"
        ErrorControl="Ignore"
        DisplayName="OEMFactoryTestService"
        Description="A Sample OEM Factory Test Service">

        <Executable Source="$(BINARY_ROOT)\bin\factory\oem_factory_test_service.exe" />

        <!-- Failure actions should reset once per day, for security reasons -->
        <FailureActions ResetPeriod="86400">
          <Action Type="RestartService" Delay="1000"/>
          <Action Type="RestartService" Delay="1000"/>
          <Action Type="RestartService" Delay="1000"/>
          <!-- if it fails to start three times, services should just stop -->
          <Action Type="None" Delay="0"/>
        </FailureActions>

        <RequiredCapabilities>
          <!-- Needed to access and create RPC endpoints -->
          <RequiredCapability CapId="ID_CAP_INTEROPSERVICES" />
        </RequiredCapabilities>

      </Service>

      <OSComponent>
        <!-- Set the factory test service to auto-start when the device is in Manufacturing Mode -->
        <RegKeys>
          <RegKey KeyName="$(CustomProfileServices)\OEMFactoryTestService">
            <RegValue Name="Start" Type="REG_DWORD" Value="00000002" />
          </RegKey>
        </RegKeys>
      </OSComponent>

    </Components>
</Package>
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Define%20a%20service%20that%20only%20runs%20in%20Manufacturing%20Mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



