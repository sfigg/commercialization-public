---
title: Customize the Country and Operator Settings Asset
description: Customize the COSA database of mobile operator profiles
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Customize the Country and Operator Settings AssetCustomize the taskbar


In Windows 10, version 1703, we added the Country and Operator Settings Asset (COSA) database of Mobile Operator profiles. It is included in Windows 10 as a provisioning package. When a SIM is inserted in a COSA-enabled Windows-based device, the provisioning framework attempts to establish a cellular connection by searching for the matching profile and APN in COSA.  

> [!Note]  
> This feature is only supported in Windows 10, version 1703 for desktop editions (Home, Pro, Enterprise, and Education)

> [!Important]  
> Microsoft is collecting the following telemetry data related to the COSA:
> - •	AfterMarketProfile – Published when an OEM package adds a new profile.  Data includes the profile ID (typically a GUID) as well as the targeting info for the profile (such as MCC, MNC, SPN, and so on).
> - •	ProfileReplaced – Published when the OEM package replaces a COSA profile.  Data is the profile ID.
> - •	ProfileSuppressedByAfterMarketProfile – Published when an OEM package contains a profile that matches when a COSA profile also matches.  The telemetry data contains the Profile ID.

COSA can be extended with OEM-generated provisioning packages during desktop imaging. This enables OEMs to replace or extend existing COSA profiles, as well as introduce new ones.  For example, you can add a profile for a mobile virtual network operator (MVNO) not currently in COSA, or a new partner for Data Marketplace. You can also replace or disable an existing profile.  

It is recommended that your organization submit any MO profile changes made to extend COSA to Microsoft. To learn more, see [APN database submission](https://msdn.microsoft.com/en-us/windows/hardware/drivers/mobilebroadband/apn-database-submission).

## To add a new profile

You can add a new profile that is not yet included in the COSA database using the following steps.

1. Create an answer file or edit an existing answer file that contains the new profiles. Here is an example:

  
2. Create a provisioning package that includes the answer file. For more information, see [To build a provisioning package](https://msdn.microsoft.com/en-us/library/windows/hardware/dn916115(v=vs.85).aspx#to_build_a_provisioning_package).

3. Place your provisioning packages (PPKG) in the following location: %WINDIR%\Provisioning\COSA\OEM.

4. Perform necessary tests for validation.  

## To replace an existing profile  

1. Create an answer file or edit an existing answer file that contains the profiles using the Replace operator. Here is an example:

  ``` syntax
  <Replace Name="MobileCarrier1 (Replaced)">
          <TargetRefs>
            <TargetRef Id="aaaaaaaa-d95d-4833-8f13-605691a20fb3" />
          </TargetRefs>
         <Settings>
            <Connections>
              <Cellular>
                <Connection ConnectionName="MobileCarrier1 (Replaced)_i0$(__MVID)@WAP">
                  <PurposeGroups>{3e5545d2-1137-4dc8-a198-33f1c657515f}</PurposeGroups>
                  <AlwaysOn>1</AlwaysOn>
                  <FriendlyName>Broadband</FriendlyName>
                 <AccessPointName>broadband</AccessPointName>
                  <IPType>IPv4v6</IPType>
                </Connection>
                <Connection ConnectionName="MobileCarrier1 (Replaced)_i1$(__MVID)@WAP">
                  <PurposeGroups>{3e5545d2-1137-4dc8-a198-33f1c657515f}</PurposeGroups>
                  <AlwaysOn>1</AlwaysOn>
                  <FriendlyName>Newphone</FriendlyName>
                  <AccessPointName>newgenphone</AccessPointName>
                  <IPType>IPv4v6</IPType>
                </Connection>
                <Connection ConnectionName="MobileCarrier1 (Replaced)_i2$(__MVID)@WAP">
                  <PurposeGroups>{95522B2B-A6D1-4E40-960B-05E6D3F962AB}</PurposeGroups>
                  <AlwaysOn>0</AlwaysOn>
                  <FriendlyName>Purchasing</FriendlyName>
                  <AccessPointName>Some_name_here</AccessPointName>
                  <IPType>IPv4v6</IPType>
                </Connection>
             </Cellular>
            </Connections>
            <Cellular>
              <PerSimSettings>
               <SettingsForSim SimIccid="$(__ICCID)">
                 <AccountExperienceURL>https://some_URL_here>
                 <AppID>
                  AppID_here
                 </AppID>
                </SettingsForSim>
              </PerSimSettings>
            </Cellular>
         </Settings>
        </Replace>
   ```

> [!Note]  
> The TargetRef ID used by the Replace operator should be the profile GUID used by COSA.

2. Create a provisioning package that includes the answer file. For more information, see [To build a provisioning package](https://msdn.microsoft.com/en-us/library/windows/hardware/dn916115(v=vs.85).aspx#to_build_a_provisioning_package).

3. Place your provisioning packages (PPKG) in the following location: %WINDIR%\Provisioning\COSA\OEM.

4. Perform necessary tests for validation.  

## To remove an existing profile  

1. Create an answer file or edit an existing answer file that contains the profiles using the Replace operator. Here is an example:  

  ``` syntax
        <Replace Name="MobileCarrier2 (Removed)">
          <TargetRefs>
            <TargetRef Id="bbbbbbbb-aafd-46f3-88b1-014d2bdf879f" />
          </TargetRefs>
        </Replace>
  ```

2. Create a provisioning package that includes the answer file. For more information, see [To build a provisioning package](https://msdn.microsoft.com/en-us/library/windows/hardware/dn916115(v=vs.85).aspx#to_build_a_provisioning_package).

3. Place your provisioning packages (PPKG) in the following location: %WINDIR%\Provisioning\COSA\OEM.

4. Perform necessary tests for validation.  

> [!Note]
> The settings included in a Replace element are applied instead of the original COSA settings.  If no settings are specified, the operation becomes a Removal.
