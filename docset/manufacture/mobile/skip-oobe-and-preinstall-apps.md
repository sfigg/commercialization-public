---
Description: 'When you boot into Manufacturing Mode, can you skip OOBE and preinstall apps to run your manufacturing tests.'
MS-HAID: 'p\_phManuRetail.skip\_oobe\_and\_preinstall\_apps'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Create a full operating system manufacturing profile
---

# Create a full operating system manufacturing profile


When you boot into Manufacturing Mode, can you skip OOBE and preinstall apps to run your manufacturing tests. Skipping OOBE can speed up manufacturing time.

To set this up, you add the apps that should be installed with the manufacturing profile. For more info about manufacturing profiles, see [Manufacturing Mode](manufacturing-mode.md).

## <span id="Add_apps_to_a_custom_manufacturing_profile"></span><span id="add_apps_to_a_custom_manufacturing_profile"></span><span id="ADD_APPS_TO_A_CUSTOM_MANUFACTURING_PROFILE"></span>Add apps to a custom manufacturing profile


In a manufacturing mode profile, you must create a new registry key that lists the apps that should be installed with the manufacturing profile:

``` syntax
HKEY_LOCAL_MACHINE\System\ControlSet001\Control\ManufacturingMode\<Profile Name>\Apps\OobeInstall
```

Under the OOBEInstall registry key, you must create registry key (with REG\_DWORD type) for each app. The name of the registry key must match the filename of the app package.

For example, to add the Settings app to the manufacturing profile, you would add a registry key named **systemsettings**.

Here are some things to consider when adding apps to a manufacturing profile:

-   The manufacturing profile must not disable any Windows services.
-   The value of the registry key is reserved. Only the registry key name is used.
-   The app can be a first or second party app, but the app package must be a part of the image.
-   The \* wildcard can be used in the name of the app.
-   If you want the normal OOBE experience (with all apps installed), create a single registry key with the name of **\***.

### <span id="Find_the_name_of_the_app"></span><span id="find_the_name_of_the_app"></span><span id="FIND_THE_NAME_OF_THE_APP"></span>Find the name of the app

The name of the registry key must match the filename of the app package. You can get a list of the apps that are on the device by running the following command on the device's drive root:

``` syntax
dir /S MPAP_*.provxml
```

This command returns a list of files, similar to the following:

``` syntax
MPAP_systemsettings_001.provxml
```

The part of the filename after **MPAP\_** and before **\_0xx.provxml** is what you should use for the registry key name.

## <span id="Add_the_registry_keys_to_your_custom_manufacturing_profile_package"></span><span id="add_the_registry_keys_to_your_custom_manufacturing_profile_package"></span><span id="ADD_THE_REGISTRY_KEYS_TO_YOUR_CUSTOM_MANUFACTURING_PROFILE_PACKAGE"></span>Add the registry keys to your custom manufacturing profile package


You add the registry keys to your custom manufacturing profile package like you would with any other package. For more info about packaging, see [Creating Phone Packages](https://msdn.microsoft.com/library/dn756642).

``` syntax
<?xml version="1.0" encoding="utf-8"?>
<Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
        Owner="Contoso"
        Component="MfgMode"
        SubComponent="Manufacturing.FactoryTestSample"
        ReleaseType="Production"
        OwnerType="OEM">

    <Macros>
      <Macro Id="MfgMode" Value="$(hklm.control)\ManufacturingMode" />
      <Macro Id="CustomProfile" Value="$(MfgMode)\CustomProfile" />
    </Macros>

    <Components>
        <OSComponent>
          <RegKeys>
            <RegKey KeyName="$(CustomProfile)\"/>
            <RegKey KeyName="$(CustomProfile)\Services"/>
            <RegKey KeyName="$(CustomProfile)\Apps"/>
            <RegKey KeyName="$(CustomProfile)\Apps\OobeInstall">
                <RegValue Name="FactoryTestOEMSample" Value="0" Type="REG_DWORD"/>
                <RegValue Name="systemsettings" Value="0" Type="REG_DWORD"/>
             </RegKey>
          </RegKeys>
        </OSComponent>
    </Components>
</Package>
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Create%20a%20full%20operating%20system%20manufacturing%20profile%20%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



