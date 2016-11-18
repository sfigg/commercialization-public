---
title: MCSF to Windows Provisioning settings map
description: This topic lists the customizations available for Windows 10 Mobile.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4AF24AFD-942B-4AE1-98CC-10C725A79DFE
---

# MCSF to Windows Provisioning settings map


This topic lists the customizations available for Windows 10 Mobile.

**Important**  
-   This list is subject to change.
-   The **MCSF customization** column specifies the name of the customization that was available in Windows Phone 8.1 and are supported in Windows 10 Mobile using the [Managed Centralized Settings Framework (MCSF)](managed-centralized-settings-framework--mcsf-.md) to configure the customization. The corresponding MCSF topics for Windows 10 Mobile will be available in the next documentation release.
-   The **Windows Provisioning settings** column specifies the Windows provisioning setting(s) that you can use to configure the same customization (as in the MCSF column), but using the new [Windows provisioning XML](p_customize_converged.windows_provisioning_xml).

For example, if you are using MCSF to manage runtime configuration data, you can simply click on the "Managing runtime configuration data" topic link under the MCSF customization column to get more information about what you need to do to enable the customization. If you are using the Windows provisioning framework to configure the same customization, you'll need to set the `PersistVariantData`, `PostVariantCleanupDelay`, and `UnconditionalCleanupDelay` settings. The links in the Windows Provisioning settings column provide more information about the setting.

 

## Customizations for device management


MCSF customization
Windows Provisioning settings
[Enabling runtime configuration](enabling-runtime-configuration.md)
[Multivariant/Enable](https://msdn.microsoft.com/library/windows/hardware/mt297507)
[AutoDataConfig/Enable](https://msdn.microsoft.com/library/windows/hardware/mt297504)
[Managing runtime configuration data](managing-runtime-configuration-data.md)
[Multivariant/PersistVariantData](https://msdn.microsoft.com/library/windows/hardware/mt297508)
[Multivariant/PostVariantCleanupDelay](https://msdn.microsoft.com/library/windows/hardware/mt297509)
[Multivariant/UnconditionalCleanupDelay](https://msdn.microsoft.com/library/windows/hardware/mt297510)
[Override the default CountryTable.xml](override-the-default-countrytablexml.md)
[Multivariant/OverrideDefaultCountryLookup](https://msdn.microsoft.com/library/windows/hardware/mt168509)
[Setting the UICC slot for branding configuration](setting-the-uicc-slot-for-branding-configuration.md)
[Multivariant/BrandingSlot](https://msdn.microsoft.com/library/windows/hardware/mt297754)
 

## Customizations for hardware components


MCSF customization
Windows Provisioning settings
[Buttons: Enabling the Start button to wake the phone](enabling-the-start-button-to-wake-the-phone.md)
[Input/Keyboard/EnabledOnIdleButtons/EnableStartOnIdle](https://msdn.microsoft.com/library/windows/hardware/mt131458)
[Camera: Improved user experience for phones without a HW camera button](improved-user-experience-for-phones-without-a-hw-camera-button.md)
[Photos/OEM/HWCameraShutterButtonNotPresent](https://msdn.microsoft.com/library/windows/hardware/mt593146)
[Display: Building images for FWVGA panels with static software buttons](building-images-for-fwvga-panels-with-static-software-buttons.md)
[Graphics/D3D/DisplayResolutionOverride/DisplayPanelOverrideWidth](https://msdn.microsoft.com/library/windows/hardware/mt297751)
[Graphics/D3D/DisplayResolutionOverride/DisplayPanelOverrideHeight](https://msdn.microsoft.com/library/windows/hardware/mt297750)
[Graphics/D3D/DisplayResolutionOverride/TouchPanelOverrideWidth](https://msdn.microsoft.com/library/windows/hardware/mt297753)
[Graphics/D3D/DisplayResolutionOverride/TouchPanelOverrideHeight](https://msdn.microsoft.com/library/windows/hardware/mt297752)
[Shell/NavigationBar/Color](https://msdn.microsoft.com/library/windows/hardware/mt297756)
[Input/Touch/CapButtons/Area0](https://msdn.microsoft.com/library/windows/hardware/mt138360)
[Input/Touch/CapButtons/Area1](https://msdn.microsoft.com/library/windows/hardware/mt138362)
[Input/Touch/CapButtons/Area2](https://msdn.microsoft.com/library/windows/hardware/mt138363)
[Input/Touch/CapButtons/ButtonAreaTotal](https://msdn.microsoft.com/library/windows/hardware/mt138364)
[Input/Touch/CapButtons/ButtonCount](https://msdn.microsoft.com/library/windows/hardware/mt138365)
[Input/Touch/CapButtons/Name0](https://msdn.microsoft.com/library/windows/hardware/mt138366)
[Input/Touch/CapButtons/Name1](https://msdn.microsoft.com/library/windows/hardware/mt138367)
[Input/Touch/CapButtons/Name2](https://msdn.microsoft.com/library/windows/hardware/mt138368)
[Input/Touch/CapButtons/VibrateDuration](https://msdn.microsoft.com/library/windows/hardware/mt138369)
[Input/Touch/CapButtons/VibrateIntensity](https://msdn.microsoft.com/library/windows/hardware/mt138370)
[Input/Touch/CapButtons/VibrateSupport](https://msdn.microsoft.com/library/windows/hardware/mt138371)
[Input/Touch/CapButtons/VKey0](https://msdn.microsoft.com/library/windows/hardware/mt138372)
[Input/Touch/CapButtons/VKey1](https://msdn.microsoft.com/library/windows/hardware/mt138373)
[Input/Touch/CapButtons/VKey2](https://msdn.microsoft.com/library/windows/hardware/mt138374)
[Display: Building images with user-managed software buttons](building-images-with-user-managed-software-buttons.md)
[Input/Touch/CapButtons/Area0](https://msdn.microsoft.com/library/windows/hardware/mt138360)
[Input/Touch/CapButtons/Area1](https://msdn.microsoft.com/library/windows/hardware/mt138362)
[Input/Touch/CapButtons/Area2](https://msdn.microsoft.com/library/windows/hardware/mt138363)
[Input/Touch/CapButtons/ButtonAreaTotal](https://msdn.microsoft.com/library/windows/hardware/mt138364)
[Input/Touch/CapButtons/ButtonCount](https://msdn.microsoft.com/library/windows/hardware/mt138365)
[Input/Touch/CapButtons/Name0](https://msdn.microsoft.com/library/windows/hardware/mt138366)
[Input/Touch/CapButtons/Name1](https://msdn.microsoft.com/library/windows/hardware/mt138367)
[Input/Touch/CapButtons/Name2](https://msdn.microsoft.com/library/windows/hardware/mt138368)
[Input/Touch/CapButtons/VibrateDuration](https://msdn.microsoft.com/library/windows/hardware/mt138369)
[Input/Touch/CapButtons/VibrateIntensity](https://msdn.microsoft.com/library/windows/hardware/mt138370)
[Input/Touch/CapButtons/VibrateSupport](https://msdn.microsoft.com/library/windows/hardware/mt138371)
[Input/Touch/CapButtons/VKey0](https://msdn.microsoft.com/library/windows/hardware/mt138372)
[Input/Touch/CapButtons/VKey1](https://msdn.microsoft.com/library/windows/hardware/mt138373)
[Input/Touch/CapButtons/VKey2](https://msdn.microsoft.com/library/windows/hardware/mt138374)
[Shell/NavigationBar/Color](https://msdn.microsoft.com/library/windows/hardware/mt297756)
[Shell/NavigationBar/BurnInProtectionBlackReplacementColor](https://msdn.microsoft.com/library/windows/hardware/mt269360)
[Shell/NavigationBar/BurnInProtectionMaskSwitchingInterval](https://msdn.microsoft.com/library/windows/hardware/mt269362)
[Shell/NavigationBar/BurnInProtectionMode](https://msdn.microsoft.com/library/windows/hardware/mt269363)
[Shell/NavigationBar/BurnInProtectionTimerTimeout](https://msdn.microsoft.com/library/windows/hardware/mt269361)
[Shell/NavigationBar/DoubleTapOff](https://msdn.microsoft.com/library/windows/hardware/mt269364)
[Shell/NavigationBar/UserEducationHintDisable](https://msdn.microsoft.com/library/windows/hardware/mt269366)
Display: Changing the display frame update rate to 30 frames per second
This customization is not supported in Windows 10 Mobile.
[Networking: Configuring the MTU data size](configuring-the-mtu-data-size.md)
[CellCore/PerDevice/External/ImageOnly/MTU/MTUDataSize](https://msdn.microsoft.com/library/windows/hardware/mt147448)
[CellCore/PerDevice/External/ImageOnly/MTU/RoamingMTUDataSize](https://msdn.microsoft.com/library/windows/hardware/mt147450)
[Sensors: Auto brightness](auto-brightness.md)
[AutoBrightness/DimBrightness](https://msdn.microsoft.com/library/windows/hardware/mt147024)
[AutoBrightness/ABSRangeMilliLuxMapping](https://msdn.microsoft.com/library/windows/hardware/mt147023)
[AutoBrightness/ABSPercentIntensityMapping](https://msdn.microsoft.com/library/windows/hardware/mt147022)
[AutoBrightness/TransitionDelay](https://msdn.microsoft.com/library/windows/hardware/mt147025)
[Storage: Enabling the packed commands feature for eMMC](enabling-the-packed-commands-feature-for-emmc.md)
[Storage/SdBus/MainOS/PackedCommandEnable](https://msdn.microsoft.com/library/windows/hardware/mt147524)
[Storage: Enabling the UHS-1 feature for SD cards](enabling-the-uhs-1-feature-for-sd-cards.md)
[Storage/SdBus/MainOS/DisableUhsSupport](https://msdn.microsoft.com/library/windows/hardware/mt147523)
[Storage: Enabling the HS200 feature for eMMC](enabling-the-hs200-feature-for-emmc.md)
[Storage/SdBus/MainOS/DisableHS200Support](https://msdn.microsoft.com/library/windows/hardware/mt147522)
[Touch: Defining capacitive button behavior](defining-capacitive-button-behavior.md)
[Input/Touch/CapButtons/Area0](https://msdn.microsoft.com/library/windows/hardware/mt138360)
[Input/Touch/CapButtons/Area1](https://msdn.microsoft.com/library/windows/hardware/mt138362)
[Input/Touch/CapButtons/Area2](https://msdn.microsoft.com/library/windows/hardware/mt138363)
[Input/Touch/CapButtons/ButtonAreaTotal](https://msdn.microsoft.com/library/windows/hardware/mt138364)
[Input/Touch/CapButtons/ButtonCount](https://msdn.microsoft.com/library/windows/hardware/mt138365)
[Input/Touch/CapButtons/Name0](https://msdn.microsoft.com/library/windows/hardware/mt138366)
[Input/Touch/CapButtons/Name1](https://msdn.microsoft.com/library/windows/hardware/mt138367)
[Input/Touch/CapButtons/Name2](https://msdn.microsoft.com/library/windows/hardware/mt138368)
[Input/Touch/CapButtons/VibrateDuration](https://msdn.microsoft.com/library/windows/hardware/mt138369)
[Input/Touch/CapButtons/VibrateIntensity](https://msdn.microsoft.com/library/windows/hardware/mt138370)
[Input/Touch/CapButtons/VibrateSupport](https://msdn.microsoft.com/library/windows/hardware/mt138371)
[Input/Touch/CapButtons/VKey0](https://msdn.microsoft.com/library/windows/hardware/mt138372)
[Input/Touch/CapButtons/VKey1](https://msdn.microsoft.com/library/windows/hardware/mt138373)
[Input/Touch/CapButtons/VKey2](https://msdn.microsoft.com/library/windows/hardware/mt138374)
[Touch: Describing the physical width and height of the display](describing-the-physical-width-and-height-of-the-display.md)
[Input/Touch/DisplayProperties/DisplayHeight](https://msdn.microsoft.com/library/windows/hardware/mt502643)
[Input/Touch/DisplayProperties/DisplayWidth](https://msdn.microsoft.com/library/windows/hardware/mt502644)
[Touch: Specifying the repeat rate for touch samples during touch-and-hold presses](specifying-the-repeat-rate-for-touch-samples-during-touch-and-hold-presses.md)
[Input/Touch/AutoRepeat/RepeatInterval](https://msdn.microsoft.com/library/windows/hardware/mt131461)
[Wi-Fi: Removing cellular functionality on the mobile device](removing-cellular-functionality-on-the-mobile-device.md)
See the MCSF topic and customize using an OEMInput.xml file.

 

## Customizations for applications and Microsoft components


MCSF customization
Windows Provisioning settings
[Active phone cover settings](active-phone-cover-settings.md)
[Shell/SmartCover/AUMID](https://msdn.microsoft.com/library/windows/hardware/mt168433)
[Shell/SmartCover/AutoUnlock](https://msdn.microsoft.com/library/windows/hardware/mt168434)
[Customize the SIM toolkit](https://msdn.microsoft.com/library/windows/hardware/mt629102)
[CellCore/PerDevice/UTK/UIDefaultDuration](https://msdn.microsoft.com/library/windows/hardware/mt629104)
[CellCore/PerDevice/UTK/UIGetInputDuration](https://msdn.microsoft.com/library/windows/hardware/mt629105)
[CellCore/PerIMSI/\_\_IMSI/UTK/UIDefaultDuration](https://msdn.microsoft.com/library/windows/hardware/mt629107)
[CellCore/PerIMSI/\_\_IMSI/UTK/UIGetInputDuration](https://msdn.microsoft.com/library/windows/hardware/mt629108)
[Enhanced apps experience for medium and large screens](enhanced-apps-experience-for-medium-and-large-screens.md)
[ScreenSize/UserPreferenceWidth](https://msdn.microsoft.com/library/windows/hardware/mt168427)
[Phone call/SMS filter applications](phone-callsms-filter-applications.md)
[Phone/PhoneSmsFilter/AppId](https://msdn.microsoft.com/library/windows/hardware/mt168512)
[Include required Microsoft components to the image](include-required-microsoft-components-to-the-image.md)
See the MCSF topic and customize using an OEMInput.xml file.

[Preload an app with a dependency](https://msdn.microsoft.com/library/windows/hardware/mt691485)
See the MCSF topic and customize using an OEMInput.xml file.

[Remove optional Microsoft components from the image](remove-optional-microsoft-components-from-the-image.md)
See the MCSF topic and customize using an OEMInput.xml file.

 

## Customizations for boot, initial setup, and shutdown


MCSF customization
Windows Provisioning settings
[Configure the timezone confirmation page during setup](configure-the-timezone-confirmation-page-during-setup.md)
[SetupWizard/EnableNITZTimeDateConfirmation](https://msdn.microsoft.com/library/windows/hardware/mt168429)
[Configuring a boot screen to display in the final boot screen slot](configuring-a-boot-screen-to-display-in-the-final-boot-screen-slot.md)
Use MCSF to configure this customization.
[Configuring boot battery charging behavior](configuring-boot-battery-charging-behavior.md)
[ChargeSettings/ChargingBootThreshold](https://msdn.microsoft.com/library/windows/hardware/mt168414)
[ChargeSettings/PowerOffChargingEnabled](https://msdn.microsoft.com/library/windows/hardware/mt168415)
[Configuring OEM and mobile operator boot screens](configuring-oem-and-mobile-operator-boot-screens.md)
See the MCSF topic for more information about this customization.
[Configuring the duration of the first boot screen](configuring-the-duration-of-the-first-boot-screen.md)
[BootDisplaySettings/BootUXLogoTransitionTime](https://msdn.microsoft.com/library/windows/hardware/mt168405)
[Custom shutdown screen](custom-shutdown-screen.md)
Use MCSF to configure this customization.
Delay app preinstall
Not supported in Windows 10 Mobile.
[Language selection during initial setup](language-selection-during-initial-setup.md)
[SetupWizard/ShowLanguageSelectionScreenInSetup](https://msdn.microsoft.com/library/windows/hardware/mt168431)
[Partner account configuration during setup](partner-account-configuration-during-setup.md)
See the MCSF topic for additional guidance and to learn about using resource-only DLLs for localized strings.

[SetupWizard/PartnerSetupAppID](https://msdn.microsoft.com/library/windows/hardware/mt633800)
[SetupWizard/PartnerSetupAppParameters](https://msdn.microsoft.com/library/windows/hardware/mt633802)
[SetupWizard/PartnerSetupAppNetworkPrompt](https://msdn.microsoft.com/library/windows/hardware/mt633801)
[SetupWizard/PartnerSetupAppPartnerName](https://msdn.microsoft.com/library/windows/hardware/mt633803)
[SetupWizard/PartnerSetupAppTaskName](https://msdn.microsoft.com/library/windows/hardware/mt633804)
[SetupWizard/PartnerSetupAppTOCTaskName](https://msdn.microsoft.com/library/windows/hardware/mt633805)
[Screen background color during initial setup](screen-background-color-during-initial-setup.md)
Not supported in Windows 10 Mobile.
[Set the default country/region when SIM PIN is on](https://msdn.microsoft.com/library/windows/hardware/mt613526)
[Multivariant/IccidToRegionOverride](https://msdn.microsoft.com/library/windows/hardware/mt613527)
[Multivariant/IccidToRegionTablePath](https://msdn.microsoft.com/library/windows/hardware/mt613528)
 

## Customizations for browser


MCSF customization
Windows Provisioning settings
[Custom HTTP headers for Microsoft Edge](custom-http-headers-for-internet-explorer.md)
[InternetExplorer/CustomHTTPHeaders1](https://msdn.microsoft.com/library/windows/hardware/mt138376)
[InternetExplorer/CustomHTTPHeaders2](https://msdn.microsoft.com/library/windows/hardware/mt138384)
[InternetExplorer/CustomHTTPHeaders3](https://msdn.microsoft.com/library/windows/hardware/mt138385)
[InternetExplorer/CustomHTTPHeaders4](https://msdn.microsoft.com/library/windows/hardware/mt138386)
[InternetExplorer/CustomHTTPHeaders5](https://msdn.microsoft.com/library/windows/hardware/mt138387)
[InternetExplorer/CustomHTTPHeaders6](https://msdn.microsoft.com/library/windows/hardware/mt138388)
[InternetExplorer/CustomHTTPHeaders7](https://msdn.microsoft.com/library/windows/hardware/mt138389)
[InternetExplorer/CustomHTTPHeaders8](https://msdn.microsoft.com/library/windows/hardware/mt138390)
[InternetExplorer/CustomHTTPHeaders9](https://msdn.microsoft.com/library/windows/hardware/mt138391)
[InternetExplorer/CustomHTTPHeaders10](https://msdn.microsoft.com/library/windows/hardware/mt1383760)
[InternetExplorer/CustomHTTPHeaders11](https://msdn.microsoft.com/library/windows/hardware/mt1383761)
[InternetExplorer/CustomHTTPHeaders12](https://msdn.microsoft.com/library/windows/hardware/mt1383762)
[InternetExplorer/CustomHTTPHeaders13](https://msdn.microsoft.com/library/windows/hardware/mt1383763)
[InternetExplorer/CustomHTTPHeaders14](https://msdn.microsoft.com/library/windows/hardware/mt1383764)
[InternetExplorer/CustomHTTPHeaders15](https://msdn.microsoft.com/library/windows/hardware/mt1383765)
[InternetExplorer/CustomHTTPHeaders16](https://msdn.microsoft.com/library/windows/hardware/mt1383766)
[Custom user agent string for Microsoft Edge](custom-user-agent-string-for-internet-explorer.md)
[InternetExplorer/CustomUserAgentString](https://msdn.microsoft.com/library/windows/hardware/mt168424)
Preloaded Favorites list for Microsoft Edge

Use the Windows provisioning setting to configure this customization.

[Browser/Favorites](https://msdn.microsoft.com/library/windows/hardware/mt593145)
[WAP browser support](wap-browser-support.md)
Use MCSF to configure this customization.
[Welcome home page for Microsoft Edge](welcome-home-page-for-internet-explorer.md)
[InternetExplorer/FirstRunURL](https://msdn.microsoft.com/library/windows/hardware/mt168425)
[WinInet ReceiveTimeOut duration](wininet-receivetimeout-duration.md)
[WinInet/InternetSettings/WinInetReceiveTimeOut](https://msdn.microsoft.com/library/windows/hardware/mt147355)
 

## Customizations for connectivity


MCSF customization
Windows Provisioning settings
[Authentication for Wi-Fi hotspot settings](authentication-for-wi-fi-hotspot-settings.md)
[WiFi/Config/HijackedIgnoreList](https://msdn.microsoft.com/library/windows/hardware/mt168436)
[Cellular data connection icon](cellular-data-connection-icon.md)
[Shell/SystemTray/DataConnectionStrings](https://msdn.microsoft.com/library/windows/hardware/mt147495)
[Shell/SystemTray/DataConnectionStrings/EVDODEFAULT](https://msdn.microsoft.com/library/windows/hardware/mt147495_evdodefault)
[Shell/SystemTray/DataConnectionStrings/EVDOREV0](https://msdn.microsoft.com/library/windows/hardware/mt147495_evdorev0)
[Shell/SystemTray/DataConnectionStrings/EVDOREVA](https://msdn.microsoft.com/library/windows/hardware/mt147495_evdoreva)
[Shell/SystemTray/DataConnectionStrings/EVDOREVB](https://msdn.microsoft.com/library/windows/hardware/mt147495_evdorevb)
[Shell/SystemTray/DataConnectionStrings/GSMDEFAULT](https://msdn.microsoft.com/library/windows/hardware/mt147495_gsmdefault)
[Shell/SystemTray/DataConnectionStrings/GSMEDGE](https://msdn.microsoft.com/library/windows/hardware/mt147495_gsmedge)
[Shell/SystemTray/DataConnectionStrings/GSMGPRS](https://msdn.microsoft.com/library/windows/hardware/mt147495_gsmgprs)
[Shell/SystemTray/DataConnectionStrings/GSMGSM](https://msdn.microsoft.com/library/windows/hardware/mt147495_gsmgsm)
[Shell/SystemTray/DataConnectionStrings/LTEDEFAULT](https://msdn.microsoft.com/library/windows/hardware/mt147495_ltedefault)
[Shell/SystemTray/DataConnectionStrings/LTEFDD](https://msdn.microsoft.com/library/windows/hardware/mt147495_ltefdd)
[Shell/SystemTray/DataConnectionStrings/LTETDD](https://msdn.microsoft.com/library/windows/hardware/mt147495_ltetdd)
[Shell/SystemTray/DataConnectionStrings/TDSCDMADCHSPAPLUS](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmadchspaplus)
[Shell/SystemTray/DataConnectionStrings/TDSCDMADEFAULT](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmadefault)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSDPA](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmahsdpa)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSPAPLUS](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmahspaplus)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSUPA](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmahsupa)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAUMTS](https://msdn.microsoft.com/library/windows/hardware/mt147495_tdscdmaumts)
[Shell/SystemTray/DataConnectionStrings/UMTSDCHSPAPLUS](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtsdchspaplus)
[Shell/SystemTray/DataConnectionStrings/UMTSDEFAULT](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtsdefault)
[Shell/SystemTray/DataConnectionStrings/UMTSHSDPA](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtshsdpa)
[Shell/SystemTray/DataConnectionStrings/UMTSHSPAPLUS](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtshspaplus)
[Shell/SystemTray/DataConnectionStrings/UMTSHSPAPLUS64QAM](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtshspaplus64qam)
[Shell/SystemTray/DataConnectionStrings/UMTSHSUPA](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtshsupa)
[Shell/SystemTray/DataConnectionStrings/UMTSUMTS](https://msdn.microsoft.com/library/windows/hardware/mt147495_umtsumts)
[Configure C+G dual SIM settings](configure-c-g-dual-sim-settings.md)
[CellCore/PerDevice/General/CardAllowList](https://msdn.microsoft.com/library/windows/hardware/mt157053) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardAllowList](https://msdn.microsoft.com/library/windows/hardware/mt138312) (per IMSI)
[CellCore/PerDevice/General/CardBlockList](https://msdn.microsoft.com/library/windows/hardware/mt157054) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardBlockList](https://msdn.microsoft.com/library/windows/hardware/mt138313) (per IMSI)
[CellCore/perIMSI/\_\_IMSI/General/SuggestDataRoamingARD](https://msdn.microsoft.com/library/windows/hardware/mt652134) (per IMSI)
[CellCore/PerDevice/General/CardLock](https://msdn.microsoft.com/library/windows/hardware/mt157055) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardLock](https://msdn.microsoft.com/library/windows/hardware/mt138314) (per IMSI)
[AutomaticTime/PreferredSlot](https://msdn.microsoft.com/library/windows/hardware/mt157031)
[DeviceInfo/Variant/RoamingSupportPhoneNumber](https://msdn.microsoft.com/library/windows/hardware/mt138343)
[CellCore/PerDevice/CellUX/ShowManualAvoidance](https://msdn.microsoft.com/library/windows/hardware/mt157049) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/ShowManualAvoidance](https://msdn.microsoft.com/library/windows/hardware/mt138310) (per IMSI)
[CellCore/PerDevice/CellUX/CGDual/RestrictToGlobalMode](https://msdn.microsoft.com/library/windows/hardware/mt157051)
[CellCore/PerDevice/CellUX/UIX/SIM1ToUIM1](https://msdn.microsoft.com/library/windows/hardware/mt157069) (per device)
[CellCore/PerDevice/General/DefaultSlotAffinity](https://msdn.microsoft.com/library/windows/hardware/mt157056) (per device)
[CellCore/PerDevice/General/Slot2DisableAppsList](https://msdn.microsoft.com/library/windows/hardware/mt157063) (per device)
[CellCore/PerDevice/General/SuggestGlobalModeARD](https://msdn.microsoft.com/library/windows/hardware/mt157065) (per device)
[CellCore/PerDevice/General/SuggestGlobalModeTimeout](https://msdn.microsoft.com/library/windows/hardware/mt157066) (per device)
[CellCore/PerDevice/General/SuggestDataRoamingARD](p_icd_settings.cellcore_perdevice_general_suggestdataroamingard) (per device)
[CellCore/PerDevice/CellUX/SuppressDePersoUI](https://msdn.microsoft.com/library/windows/hardware/mt269570) (per device)
[Cortana phone number](cortana-phone-number.md)
[Bluetooth/BTAGService/CortanaPhoneNumber](https://msdn.microsoft.com/library/windows/hardware/mt269569)
[Custom percentages for signal strength bars](custom-percentages-for-signal-strength-bars.md)
Use MCSF to configure this customization.
[Data transfer indicator](data-transfer-indicator.md)
[Shell/SystemTray/DataActivity/DataActivityIcon](https://msdn.microsoft.com/library/windows/hardware/mt147494)
[Disable Cell Broadcast](disable-cell-broadcast.md)
OEMs may disable Cell Broadcast through an NV item setting in the modem rather than in the OS.
[Ignore NITZ information from LTE networks](ignore-nitz-information-from-lte-networks.md)
[CellCore/PerDevice/General/NitzFiltering](https://msdn.microsoft.com/library/windows/hardware/mt147029) (per device)
[CellCore/perIMSI/\_\_IMSI/General/NitzFiltering](https://msdn.microsoft.com/library/windows/hardware/mt147034) (per IMSI)
[LTE attach: GUID for user configured internet APN](lte-attach-guid-for-user-configured-internet-apn.md)
[CellCore/PerDevice/CellUX/LTEAttachGuid](https://msdn.microsoft.com/library/windows/hardware/mt157048) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/LTEAttachGuid](https://msdn.microsoft.com/library/windows/hardware/mt138309) (per IMSI)
[LTE attach: Mapping OEMConnectionId values to modem profiles](lte-attach-mapping-oemconnectionid-values-to-modem-profiles.md)
[CellCore/PerDevice/CellData/ModemProfiles/LTEAttachGuids](p_icd_settings.cellcore_perdevice_celldata_modemprofiles_lteattachguids)
[Maximum number of PDP contexts](maximum-number-of-pdp-contexts.md)
[CellCore/PerDevice/CellData/MaxNumberOfPDPContexts](https://msdn.microsoft.com/library/windows/hardware/mt157033) (per device)
[CellCore/perIMSI/\_\_IMSI/CellData/MaxNumberOfPDPContexts](https://msdn.microsoft.com/library/windows/hardware/mt157071) (per IMSI)
[Network Time Protocol support](network-time-protocol-support.md)
[AutomaticTime/NTPEnabled](https://msdn.microsoft.com/library/windows/hardware/mt157027)
[AutomaticTime/NTPRegularSyncInterval](https://msdn.microsoft.com/library/windows/hardware/mt157028)
[AutomaticTime/NTPRetryInterval](https://msdn.microsoft.com/library/windows/hardware/mt157029)
[AutomaticTime/NTPServer](https://msdn.microsoft.com/library/windows/hardware/mt157030)
[Preferred data provider list](preferred-data-provider-list.md)
[CellCore/PerDevice/General/PreferredDataProviderList](https://msdn.microsoft.com/library/windows/hardware/mt147030)
[Preferred system types for phone connectivity](preferred-system-types-for-phone-connectivity.md)
[CellCore/PerDevice/General/ExcludedSystemTypesPerOperator](https://msdn.microsoft.com/library/windows/hardware/mt157058)
[CellCore/PerDevice/General/OperatorListForExcludedSystemTypes](https://msdn.microsoft.com/library/windows/hardware/mt157061)
[CellCore/PerDevice/General/OperatorPreferredForFasterRadio](https://msdn.microsoft.com/library/windows/hardware/mt157062)
[CellCore/PerDevice/General/Slot2ExcludedSystemTypes](https://msdn.microsoft.com/library/windows/hardware/mt157064)
[Roaming filter](roaming-filter.md)
Use MCSF to configure this customization.
[Threshold for automatic time update](threshold-for-automatic-time-update.md)
[AutomaticTime/NetworkTimeUpdateThreshold](https://msdn.microsoft.com/library/windows/hardware/mt147440)
 

## Customizations for desktop experiences


| MCSF customization                                                       | Windows Provisioning settings                                                    |
|--------------------------------------------------------------------------|----------------------------------------------------------------------------------|
| [Control Panel device icon](control-panel-device-icon.md)               | Not available in Windows provisioning. Use MCSF to configure this customization. |
| [Phone image in the phone app](phone-image-in-the-windows-phone-app.md) | Not available in Windows provisioning. Use MCSF to configure this customization. |

 

## Customizations for email


| MCSF customization                                               | Windows Provisioning settings             |
|------------------------------------------------------------------|-------------------------------------------|
| Escape special characters in attachment file names               | Not supported in Windows 10 Mobile.       |
| [Light or dark theme in email](light-or-dark-theme-in-email.md) | Use MCSF to configure this customization. |
| Warning before sending an email with no subject                  | Not supported in Windows 10 Mobile.       |

 

## Customizations for maps


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>MCSF customization</th>
<th>Windows Provisioning settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>[Map data on an SD card and map preload](map-data-on-an-sd-card-and-map-preload.md)</td>
<td>[Maps/UseExternalStorage](https://msdn.microsoft.com/library/windows/hardware/mt203641)</td>
</tr>
<tr class="even">
<td>[Maps for phones shipped in China](maps-for-phones-shipped-in-china.md)</td>
<td><p>The MCSF <code>ChinaVariant</code> setting is not available in Windows provisioning. We recommend that you use the [Maps/ChinaVariantWin10](https://msdn.microsoft.com/library/windows/hardware/mt203640) Windows provisioning setting instead.</p></td>
</tr>
<tr class="odd">
<td>[Preloaded map data in the user store](preloaded-map-data-in-the-user-store.md)</td>
<td>[OtherAssets/MapData](https://msdn.microsoft.com/library/windows/hardware/mt653886)</td>
</tr>
<tr class="even">
<td>[Temporary map data cache size](temporary-map-data-cache-size.md)</td>
<td>[Maps/UseSmallerCache](https://msdn.microsoft.com/library/windows/hardware/mt203642)</td>
</tr>
</tbody>
</table>

 

## Customizations for phone calls


MCSF customization
Windows Provisioning settings
[Adjust the call duration information for CDMA calls](adjust-the-call-duration-information-for-cdma-calls.md)
[Phone/PhoneSettings/AdjustCDMACallTime](https://msdn.microsoft.com/library/windows/hardware/mt147463)
[Always display the dialed phone number](always-display-the-dialed-phone-number.md)
[Phone/PhoneSettings/DisplayNumberAsDialed](https://msdn.microsoft.com/library/windows/hardware/mt595931)
[Branding for phone calls](branding-for-phone-calls.md)
[Phone/BrandingInformation/BrandingFlags](https://msdn.microsoft.com/library/windows/hardware/mt227424)
[Caller ID matching](caller-id-matching.md)
[Phone/PhoneSettings/CallIDMatch](https://msdn.microsoft.com/library/windows/hardware/mt147464)
[Cause codes](cause-codes.md)
Phone/CauseCodeRegistrationTable

The Windows provisioning setting may not work so we recommend using MCSF to configure this customization.

[Configure message waiting indicator notifications](configure-message-waiting-indicator-notifications.md)
[Phone/PerSimSettings/\_\_IMSI/IgnoreMWINotifications](https://msdn.microsoft.com/library/windows/hardware/mt502648)
[Dial string overrides when roaming](dial-string-overrides-when-roaming.md)
[Phone/PerSimSettings/\_\_IMSI/RoamingNumberOverrides](https://msdn.microsoft.com/library/windows/hardware/mt595930)
[Dialer codes for supplementary services](dialer-codes-for-supplementary-services.md)
Use MCSF to configure this customization.
[Dialer codes to launch diagnostic applications](dialer-codes-to-launch-diagnostic-applications.md)
[Phone/PartnerAppSupport/PartnerAppTaskUri](https://msdn.microsoft.com/library/windows/hardware/mt269573)
[Phone/PartnerAppSupport/PartnerAppProvisioningFilePath](https://msdn.microsoft.com/library/windows/hardware/mt269572)
[Phone/PartnerAppSupport/PartnerImmediateDialStrings](https://msdn.microsoft.com/library/windows/hardware/mt269574)
[Phone/PartnerAppSupport/PartnerNonImmediateDialStrings](https://msdn.microsoft.com/library/windows/hardware/mt269575)
[Disable link to contact card in active call screen](disable-link-to-contact-card-in-active-call-screen.md)
[Phone/PhoneShellUI/EnableSoftwareProximitySensorMitigation](https://msdn.microsoft.com/library/windows/hardware/mt147472)
[Disable video upgrade Store navigation](disable-video-upgrade-store-navigation.md)
[Phone/PhoneSettings/DisableVideoUpgradeStoreNavigation](https://msdn.microsoft.com/library/windows/hardware/mt147466)
[Disable voicemail phone number display](disable-voicemail-phone-number-display.md)
[Phone/PhoneSettings/DisableVoicemailPhoneNumberDisplay](https://msdn.microsoft.com/library/windows/hardware/mt147467)
[Dismiss the last USSD waiting dialog](dismiss-the-last-ussd-waiting-dialog.md)
[Phone/PerSimSettings/\_\_IMSI/AutoDismissUssdWaitingDialog](https://msdn.microsoft.com/library/windows/hardware/mt147461)
[DTMF tones](dtmf-tones.md)
[CellCore/PerDevice/General/DTMFOnTime](https://msdn.microsoft.com/library/windows/hardware/mt270246)
[CellCore/PerDevice/General/DTMFOffTime](https://msdn.microsoft.com/library/windows/hardware/mt270245)
[Emergency phone numbers](emergency-phone-numbers.md)
The emergency phone numbers are implemented by the modem vendor. See the documentation provided by the modem vendor for more information.

[Enable IMS services](enable-ims-services.md)
[CellCore/perIMSI/\_\_IMSI/VoLTE/IMSServices](https://msdn.microsoft.com/library/windows/hardware/mt138321)
[CellCore/perIMSI/\_\_IMSI/VoLTE/IMSOMADMServices](https://msdn.microsoft.com/library/windows/hardware/mt138320)
[Enable RCS](https://msdn.microsoft.com/library/windows/hardware/mt667951)
[CellCore/PerDevice/RCS/SystemEnabled](p_icd_settings.cellcore_perdevice_rcs_systemenabled)
[CellCore/PerDevice/RCS/UserEnabled](p_icd_settings.cellcore_perdevice_rcs_userenabled)
[CellCore/PerIMSI/\_\_IMSI/RCS/UseSingleRegistration](p_icd_settings.cellcore_perimsi___imsi_rcs_usesingleregistration)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/ShowRcsEnabled](https://msdn.microsoft.com/library/windows/hardware/mt584189)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsEnabled](https://msdn.microsoft.com/library/windows/hardware/mt584186)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsSendReadReceipt](https://msdn.microsoft.com/library/windows/hardware/mt584188)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsFileTransferAutoAccept](https://msdn.microsoft.com/library/windows/hardware/mt584187)
[Enable long DTMF tones](enable-long-dtmf-tones.md)
[Phone/PhoneSettings/ContinuousDTMFEnabled](https://msdn.microsoft.com/library/windows/hardware/mt502650)
[Maximum number of participants in a VoLTE conference call](maximum-number-of-participants-in-a-volte-conference-call.md)
[Phone/PhoneSettings/ConferenceCallMaximumPartyCount](https://msdn.microsoft.com/library/windows/hardware/mt147465)
[Network-controlled caller ID settings](network-controlled-caller-id-settings.md)
[Phone/PerSimSettings/\_\_IMSI/ShowCallerIdNetworkDefaultSetting](https://msdn.microsoft.com/library/windows/hardware/mt138398)
[Phone/PerSimSettings/\_\_IMSI/DefaultCallerIdSetting](https://msdn.microsoft.com/library/windows/hardware/mt138396)
[Supplementary services exclusions](supplementary-services-exclusions.md)
[Phone/PerSimSettings/\_\_IMSI/IgnoreUssdExclusions](https://msdn.microsoft.com/library/windows/hardware/mt138397)
[Phone/PerSimSettings/\_\_IMSI/UssdExclusionList](https://msdn.microsoft.com/library/windows/hardware/mt138399)
[Use OK for USSD dialogs](use-ok-for-ussd-dialogs.md)
[Phone/PhoneSettings/UseOKForUssdDialogs](https://msdn.microsoft.com/library/windows/hardware/mt147468)
[Use voice domain for emergency call branding](use-voice-domain-for-emergency-call-branding.md)
[Phone/PhoneSettings/UseVoiceDomainForEmergencyCallBranding](https://msdn.microsoft.com/library/windows/hardware/mt147469)
[Visual voicemail](visual-voicemail.md)
Use MCSF to configure this customization.
[Voice over LTE call indication](voice-over-lte-call-indication.md)
[Phone/PhoneSettings/VoLTEAudioQualityString](https://msdn.microsoft.com/library/windows/hardware/mt147470)
[Voicemail SMS intercept](voicemail-sms-intercept.md)
[Messaging/GlobalSettings/VoicemailIntercept/SyncSender](https://msdn.microsoft.com/library/windows/hardware/mt270251)
[Messaging/GlobalSettings/VoicemailIntercept/SyncPrefix](https://msdn.microsoft.com/library/windows/hardware/mt270250)
 

## Customizations for photos, music, and videos


MCSF customization
Windows Provisioning settings
[Adding OEM lens apps as options for the default camera](adding-oem-lens-apps-as-options-for-the-default-camera.md)
[Photos/LensApps](https://msdn.microsoft.com/library/windows/hardware/mt627755)
[Audio volume limitation](audio-volume-limitation.md)
[VolumeLimit/EnableVolumeLimit](https://msdn.microsoft.com/library/windows/hardware/mt130874)
[VolumeLimit/VolumeLimit](https://msdn.microsoft.com/library/windows/hardware/mt130875)
Camera quick bar
This customization is deprecated in Windows 10 Mobile. OEMs can no longer choose which buttons are displayed in the camera UI.

[Configuring OEM lens apps to launch above the lock screen](configuring-oem-lens-apps-to-launch-above-the-lock-screen.md)
[Photos/LensApps](https://msdn.microsoft.com/library/windows/hardware/mt627755)
[Maximum enumerable photo size](maximum-enumerable-photo-size.md)
[Camera/MaximumEnumerablePhotoSize](https://msdn.microsoft.com/library/windows/hardware/mt168411)
[Reset the audio volume limitation and warning](reset-the-audio-volume-limitation-and-warning.md)
Use MCSF to configure this customization.
Set an OEM lens as the default out-of-box camera
This customization is not supported in Windows 10 Mobile.
[Settings for capture mode, burst support, and burst storage duration](settings-for-capture-mode-burst-support-and-burst-storage-duration.md)
[Photos/OEM/BurstSupported](https://msdn.microsoft.com/library/windows/hardware/mt130858)
[Photos/OEM/CaptureMode](https://msdn.microsoft.com/library/windows/hardware/mt130859)
[Photos/OEM/DefaultBurstStorageDuration](https://msdn.microsoft.com/library/windows/hardware/mt130860)
 

## Customizations for retail mode


See the *Windows 10 User Experience WEG* for information about the customizations for retail mode.

## Customizations for search


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>MCSF customization</th>
<th>Windows Provisioning settings</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Default search provider</p>
<p>Use the Windows provisioning setting to configure this customization.</p></td>
<td>[Browser/SearchProviders/Default](https://msdn.microsoft.com/library/windows/hardware/mt622732)</td>
</tr>
<tr class="even">
<td><p>Additional search providers</p>
<p>Use the Windows provisioning setting to configure this customization.</p></td>
<td>[Browser/SearchProviders/SearchProviderList](https://msdn.microsoft.com/library/windows/hardware/mt622733)</td>
</tr>
</tbody>
</table>

 

## Customizations for Settings


MCSF customization
Windows Provisioning settings
Complementary color for dual SIM differentiation
This content is not yet available.
Themes and accent colors
This content is not yet available.
[Warning about light theme for AMOLED and OLED screens](warning-about-light-theme-for-amoled-and-oled-screens.md)
[Theme/OLEDWarning](https://msdn.microsoft.com/library/windows/hardware/mt147351)
[Additional alarms](additional-alarms.md)
Use MCSF to configure this customization.
[Additional notification sounds](additional-notification-sounds.md)
Use MCSF to configure this customization.
[Additional ringtones](additional-ringtones.md)
Use MCSF to configure this customization.
[Call drop and call waiting sounds](call-drop-and-call-waiting-sounds.md)
[EventSounds/DefaultCallDropSound](https://msdn.microsoft.com/library/windows/hardware/mt227412)
[EventSounds/DefaultCallWaitingSound](https://msdn.microsoft.com/library/windows/hardware/mt227413)
[Camera shutter sound](camera-shutter-sound.md)
[Camera/ShutterSoundUI](https://msdn.microsoft.com/library/windows/hardware/mt168412)
[Ringtone store application](ringtone-store-application.md)
[EventSounds/GetMoreRingtonesLink](https://msdn.microsoft.com/library/windows/hardware/mt147039)
[Additional lock screen backgrounds](additional-lock-screen-backgrounds.md)
Use MCSF to configure this customization.
[Lock screen notifications](lock-screen-notifications.md)
[LockScreen/LockNotificationAppID](https://msdn.microsoft.com/library/windows/hardware/mt138392)
[LockScreen/LockNotificationAppTile](https://msdn.microsoft.com/library/windows/hardware/mt138393)
[Screen timeout for AMOLED and OLED displays](screen-time-out-for-amoled-and-oled-displays.md)
[LockScreen/ScreenTimeOut](https://msdn.microsoft.com/library/windows/hardware/mt131463)
Partner email accounts
This content is not yet available.
Preconfigured account settings
This content is not yet available.
Third-party social networks
This customization is no longer supported in Windows 10 Mobile.

Users will need to download and install the Facebook app or other social providers in order to see their contacts.

[Configure Quick actions](configure-quick-settings.md)
This customization is not supported through an MCSF or Windows provisioning setting. It must be set directly using a registry key.
[Change Wi-Fi to WLAN](change-wi-fi-to-wlan.md)
[WiFi/FirstBoot/WiFiToWLAN](https://msdn.microsoft.com/library/windows/hardware/mt203662)
[Enable static IP](enable-static-ip.md)
[WiFi/Config/EnableStaticIP](https://msdn.microsoft.com/library/windows/hardware/mt427794)
[Limited connectivity status](limited-connectivity-status.md)
[WiFi/Config/PublishLimitedConnectivity](https://msdn.microsoft.com/library/windows/hardware/mt427796)
[Wi-Fi always on, always connected](wi-fi-always-on-always-connected.md)
[ConnectivityProfiles/WiFiSense/Config/AlwaysOnAlwaysConnected](https://msdn.microsoft.com/library/windows/hardware/mt219708)
[ConnectivityProfiles/WiFiSense/FirstBoot/LowPowerSupported](https://msdn.microsoft.com/library/windows/hardware/mt219717)
[Wi-Fi icon and notifications](wi-fi-icon-and-notifications.md)
[ConnectivityProfiles/WiFiSense/Config/ScanInterval](https://msdn.microsoft.com/library/windows/hardware/mt227408)
[ConnectivityProfiles/WiFiSense/Config/SignalStrengthBar](https://msdn.microsoft.com/library/windows/hardware/mt227409)
[ConnectivityProfiles/WiFiSense/Config/SignalStrengthDelta](https://msdn.microsoft.com/library/windows/hardware/mt227410)
[Wi-Fi Sense](wi-fi-sense.md)
[WiFi/FirstBoot/AutoConnectAllowed](https://msdn.microsoft.com/library/windows/hardware/mt147527)
[WiFi/FirstBoot/DefaultAutoConnectState](https://msdn.microsoft.com/library/windows/hardware/mt147528)
[WiFi/FirstBoot/DefaultWiFiSharingState](https://msdn.microsoft.com/library/windows/hardware/mt147529)
[Add a suffix to the mobile operator name](add-a-suffix-to-the-mobile-operator-name.md)
[CellCore/PerDevice/General/NetworkSuffix](https://msdn.microsoft.com/library/windows/hardware/mt157060) (per device)
[CellCore/PerIMSI/\_\_IMSI/General/NetworkSuffix](https://msdn.microsoft.com/library/windows/hardware/mt138316) (per IMSI)
[Additional Internet APN settings](additional-internet-apn-settings.md)
[CellCore/PerDevice/CellUX/HideAPN](https://msdn.microsoft.com/library/windows/hardware/mt157039) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideAPN](https://msdn.microsoft.com/library/windows/hardware/mt138298) (per IMSI)
[CellCore/PerDevice/CellUX/HideAPNIPType](https://msdn.microsoft.com/library/windows/hardware/mt157039iptype) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideAPNIPType](https://msdn.microsoft.com/library/windows/hardware/mt138298iptype) (per IMSI)
[CellCore/PerDevice/CellUX/APNIPTypeIfHidden](https://msdn.microsoft.com/library/windows/hardware/mt157035) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/APNIPTypeIfHidden](https://msdn.microsoft.com/library/windows/hardware/mt157073) (per IMSI)
[Background cellular data restriction](background-cellular-data-restriction.md)
[DataSense/DataSaverMode](https://msdn.microsoft.com/library/windows/hardware/mt130844)
[Cellular data fallback when in limited Wi-Fi connectivity](cellular-data-fallback-when-in-limited-wi-fi-connectivity.md)
[CellCore/PerDevice/CellData/CellularFailOver](https://msdn.microsoft.com/library/windows/hardware/mt502641)
[Cellular settings for phones](cellular-settings-for-phones.md)
[CellCore/PerDevice/CellUX/HideModeSelection](https://msdn.microsoft.com/library/windows/hardware/mt157044) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideModeSelection](https://msdn.microsoft.com/library/windows/hardware/mt138305) (per IMSI)
[CellCore/PerDevice/CellUX/Hide3GPPNetworks](https://msdn.microsoft.com/library/windows/hardware/mt157038) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPPNetworks](https://msdn.microsoft.com/library/windows/hardware/mt157076) (per IMSI)
[CellCore/PerDevice/CellUX/Hide3GPP2Selection](https://msdn.microsoft.com/library/windows/hardware/mt157037) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPP2Selection](https://msdn.microsoft.com/library/windows/hardware/mt157075) (per IMSI)
[Change SIM to SIM/UIM](change-sim-to-simuim.md)
[CellCore/PerDevice/UIX/SIMToSIMUIM](https://msdn.microsoft.com/library/windows/hardware/mt147455)
[Change the default SIM name to match the SPN or operator name](change-the-default-sim-name-to-match-the-spn-or-operator-name.md)
[CellCore/PerIMSI/\_\_IMSI\_General/Critical/MultivariantProvisionedSPN](https://msdn.microsoft.com/library/windows/hardware/mt158257)
[Connection speed option](connection-speed-option.md)
[CellCore/PerDevice/CellUX/HideHighestSpeed](https://msdn.microsoft.com/library/windows/hardware/mt157041)
[CellCore/PerDevice/CellUX/HideHighestSpeed2G](https://msdn.microsoft.com/library/windows/hardware/mt1570412g)
[CellCore/PerDevice/CellUX/HideHighestSpeed3GOnly](https://msdn.microsoft.com/library/windows/hardware/mt1570413gonly)
[CellCore/PerDevice/CellUX/HideHighestSpeed4G](https://msdn.microsoft.com/library/windows/hardware/mt1570414g)
[CellCore/PerDevice/CellUX/HideHighestSpeed4GOnly](https://msdn.microsoft.com/library/windows/hardware/mt1570414gonly)
[CellCore/PerDevice/CellUX/HighestSpeed2G](https://msdn.microsoft.com/library/windows/hardware/mt157045)
[CellCore/PerDevice/CellUX/HighestSpeed3G](https://msdn.microsoft.com/library/windows/hardware/mt157046)
[CellCore/PerDevice/CellUX/HighestSpeed3GOnly](https://msdn.microsoft.com/library/windows/hardware/mt157046only)
[CellCore/PerDevice/CellUX/HighestSpeed3GPreferred](https://msdn.microsoft.com/library/windows/hardware/mt157046preferred)
[CellCore/PerDevice/CellUX/HighestSpeed4G](https://msdn.microsoft.com/library/windows/hardware/mt157047)
[CellCore/PerDevice/CellUX/HighestSpeed4GOnly](https://msdn.microsoft.com/library/windows/hardware/mt157047only)
[CellCore/PerDevice/CellUX/HighestSpeedTitle](https://msdn.microsoft.com/library/windows/hardware/mt627746)
[CellCore/PerDevice/CellUX/ShowHighestSpeed3GPreferred](https://msdn.microsoft.com/library/windows/hardware/mt627747)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed](https://msdn.microsoft.com/library/windows/hardware/mt138302)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed2G](https://msdn.microsoft.com/library/windows/hardware/mt1383022g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed3GOnly](https://msdn.microsoft.com/library/windows/hardware/mt1383023gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed4G](https://msdn.microsoft.com/library/windows/hardware/mt1383024g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed4GOnly](https://msdn.microsoft.com/library/windows/hardware/mt1383024gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed2G](https://msdn.microsoft.com/library/windows/hardware/mt138306)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed3G](https://msdn.microsoft.com/library/windows/hardware/mt138307)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed3GOnly](https://msdn.microsoft.com/library/windows/hardware/mt1383023gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed3GPreferred](https://msdn.microsoft.com/library/windows/hardware/mt138307preferred)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed4G](https://msdn.microsoft.com/library/windows/hardware/mt138308)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed4GOnly](https://msdn.microsoft.com/library/windows/hardware/mt138308only)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeedTitle](https://msdn.microsoft.com/library/windows/hardware/mt627753)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowHighestSpeed3GPreferred](https://msdn.microsoft.com/library/windows/hardware/mt627754)
[Default highest connection speed](default-highest-connection-speed.md)
[CellCore/PerDevice/General/ExcludedSystemTypesByDefault](https://msdn.microsoft.com/library/windows/hardware/mt157057)
[CellCore/PerIMSI/\_\_IMSI/General/ExcludedSystemTypesByDefault](https://msdn.microsoft.com/library/windows/hardware/mt138315)
[Default roaming option](default-roaming-option.md)
[Connections/General/DataRoam](https://msdn.microsoft.com/library/windows/hardware/mt147037)
[Extended error messages for reject codes](extended-error-messages-for-reject-codes.md)
[CellCore/PerDevice/CellUX/ShowExtendedRejectCodes](https://msdn.microsoft.com/library/windows/hardware/mt158244)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowExtendedRejectCodes](https://msdn.microsoft.com/library/windows/hardware/mt158255)
[Hide CDMA mode selection](hide-cdma-mode-selection.md)
[CellCore/PerDevice/CellUX/Hide3GPP2ModeSelection](https://msdn.microsoft.com/library/windows/hardware/mt157036)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPP2ModeSelection](https://msdn.microsoft.com/library/windows/hardware/mt157074)
[Manual network selection timeout](manual-network-selection-timeout.md)
[CellCore/PerDevice/General/ManualNetworkSelectionTimeout](https://msdn.microsoft.com/library/windows/hardware/mt157059)
[Permanent automatic mode](permanent-automatic-mode.md)
[CellCore/PerDevice/General/AvoidStayingInManualSelection](https://msdn.microsoft.com/library/windows/hardware/mt157052) (per device)
[CellCore/PerIMSI/\_\_IMSI/General/AvoidStayingInManualSelection](https://msdn.microsoft.com/library/windows/hardware/mt138311) (per IMSI)
[Remove the trailing MSISDN digits on a SIM card](remove-the-trailing-msisdn-digits-on-a-sim-card.md)
[CellCore/PerIMSI/\_\_IMSI/General/Critical/SimNameWithoutMSISDNEnabled](https://msdn.microsoft.com/library/windows/hardware/mt158259)
[Settings for IMS services](settings-for-ims-services.md)
[CellCore/PerDevice/CellUX/Critical/ShowVoLTEToggle](https://msdn.microsoft.com/library/windows/hardware/mt227400)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/ShowVoLTEToggle](https://msdn.microsoft.com/library/windows/hardware/mt227400)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchIMS](https://msdn.microsoft.com/library/windows/hardware/mt227403)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchSMSOverIMS](https://msdn.microsoft.com/library/windows/hardware/mt227404)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchVoiceOverIMS](https://msdn.microsoft.com/library/windows/hardware/mt227405)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleDescription](https://msdn.microsoft.com/library/windows/hardware/mt227406)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleTitle](https://msdn.microsoft.com/library/windows/hardware/mt227407)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/ShowVoLTERoaming](https://msdn.microsoft.com/library/windows/hardware/mt652120)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingOnDescription](https://msdn.microsoft.com/library/windows/hardware/mt652124)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingOffDescription](https://msdn.microsoft.com/library/windows/hardware/mt652123)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingTitle](https://msdn.microsoft.com/library/windows/hardware/mt652126)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTESectionTitle](https://msdn.microsoft.com/library/windows/hardware/mt652127)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTESettingDisableDuringCall](https://msdn.microsoft.com/library/windows/hardware/mt652128)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/WFCSettingDisableDuringCall](https://msdn.microsoft.com/library/windows/hardware/mt652130)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleSettingDisableDuringCall](https://msdn.microsoft.com/library/windows/hardware/mt652129)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingSettingDisableDuringCall](https://msdn.microsoft.com/library/windows/hardware/mt652125)
[View Internet APN](view-internet-apn.md)
[CellCore/PerDevice/CellUX/ShowViewAPN](https://msdn.microsoft.com/library/windows/hardware/mt270244) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowViewAPN](https://msdn.microsoft.com/library/windows/hardware/mt270247) (per IMSI)
[Wi-Fi calling errors](https://msdn.microsoft.com/library/windows/hardware/mt651724)
[CellCore/PerDevice/CellUX/ShowWifiCallingError](https://msdn.microsoft.com/library/windows/hardware/mt652119) (per device)
[CellCore/PerDevice/CellUX/ShowSpecificWifiCallingError](https://msdn.microsoft.com/library/windows/hardware/mt652118) (per device)
[CellCore/PerDevice/CellUX/GenericWifiCallingErrorMessage](https://msdn.microsoft.com/library/windows/hardware/mt652117) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowWifiCallingError](https://msdn.microsoft.com/library/windows/hardware/mt652133) (per IMSI)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowSpecificWifiCallingError](https://msdn.microsoft.com/library/windows/hardware/mt652132) (per IMSI)
[Cellcore/PerIMSI/\_\_IMSI/CellUX/GenericWifiCallingErrorMessage](https://msdn.microsoft.com/library/windows/hardware/mt652131) (per IMSI)
[Kid's Corner default theme and accent color](kids-corner-default-theme-and-accent-color.md)
[KidsCorner/DefaultThemeBackground](https://msdn.microsoft.com/library/windows/hardware/mt130855)
[KidsCorner/DefaultThemeAccentColor](https://msdn.microsoft.com/library/windows/hardware/mt130854)
[Brightness tuning](brightness-tuning.md)
[Brightness/LowBrightnessValue](https://msdn.microsoft.com/library/windows/hardware/mt168409)
[Brightness/MediumBrightnessValue](https://msdn.microsoft.com/library/windows/hardware/mt168410)
[Brightness/HighBrightnessValue](https://msdn.microsoft.com/library/windows/hardware/mt168408)
[Hide the auto brightness setting](hide-the-auto-brightness-setting.md)
[Brightness/HideAutoBrightness](https://msdn.microsoft.com/library/windows/hardware/mt168407)
[Disabling NITZ or daylight saving time](disabling-nitz-or-daylight-saving-time.md)
[AutomaticTime/EnableAutomaticTime](https://msdn.microsoft.com/library/windows/hardware/mt502640)
[AutomaticTime/DisableDaylightSavingsTime](https://msdn.microsoft.com/library/windows/hardware/mt147438)
[Time zone priority list](time-zone-priority-list.md)

This customization is no longer necessary beginning in Windows 10 Mobile.

[AutomaticTime/TimeZonePriority1](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority2](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority3](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority4](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority5](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority6](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority7](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority8](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority9](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority10](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority11](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority12](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority13](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority14](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[AutomaticTime/TimeZonePriority15](https://msdn.microsoft.com/library/windows/hardware/mt158226)
[Disabling text correction and suggestions](disabling-text-correction-and-suggestions.md)
[TextInput/Intelligence/DisablePredictions](https://msdn.microsoft.com/library/windows/hardware/mt146870)
[Hardware keyboard character repeats hold time and delay](hardware-keyboard-character-repeats-hold-time-and-delay.md)
[TextInput/HardwareKeyboard/AutoRepeatInitialDelay](https://msdn.microsoft.com/library/windows/hardware/mt146867)
[TextInput/HardwareKeyboard/KeyRepeatRate](https://msdn.microsoft.com/library/windows/hardware/mt146868)
[Pre-enabled keyboard](pre-enabled-keyboard.md)
[TextInput/PreEnabledKeyboard](https://msdn.microsoft.com/library/windows/hardware/mt147349)
[Text correction and suggestions](text-correction-and-suggestions.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Phone languages](phone-languages.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Default list of countries/regions](https://msdn.microsoft.com/library/windows/hardware/mt637405)
[Globalization/ExcludedNations](https://msdn.microsoft.com/library/windows/hardware/mt588499)
[Regional format](regional-format.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Speech languages](speech-languages.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Telecoil and TTY support for accessibility](telecoil-and-tty-support-for-accessibility.md)
Telecoil: [TextInput/ShowInControlPanel](https://msdn.microsoft.com/library/windows/hardware/mt147349)
Telecoil: [EaseOfAccessCPL/Telecoil/Enabled](https://msdn.microsoft.com/library/windows/hardware/mt130847)
TTY: [EaseOfAccessCPL/TTY/ShowInControlPanel](https://msdn.microsoft.com/library/windows/hardware/mt130852)
TTY: [EaseOfAccessCPL/TTY/CompactMode](https://msdn.microsoft.com/library/windows/hardware/mt130850)
TTY: [EaseOfAccessCPL/TTY/Mode](https://msdn.microsoft.com/library/windows/hardware/mt130851)
[Auto scan for phone updates](auto-scan-for-phone-updates.md)
[DeviceUpdate/DisplayCheckForUpdates](https://msdn.microsoft.com/library/windows/hardware/mt168418)
[Block using SD card for updates](block-using-sd-card-for-updates.md)
[DeviceUpdate/BlockUsingSDCard](https://msdn.microsoft.com/library/windows/hardware/mt168417)
[Enable SD card override](enable-sd-card-override.md)
[DeviceUpdate/EnableSDCardOverride](https://msdn.microsoft.com/library/windows/hardware/mt168419)
[Phone metadata in DeviceTargetingInfo](phone-metadata-in-devicetargetinginfo.md)
[DeviceInfo/Static/PhoneManufacturer](https://msdn.microsoft.com/library/windows/hardware/mt138328)
[DeviceInfo/Static/PhoneROMVersion](https://msdn.microsoft.com/library/windows/hardware/mt138332)
[DeviceInfo/Static/PhoneHardwareRevision](https://msdn.microsoft.com/library/windows/hardware/mt138326)
[DeviceInfo/Static/PhoneSOCVersion](https://msdn.microsoft.com/library/windows/hardware/mt138334)
[DeviceInfo/Static/PhoneFirmwareRevision](https://msdn.microsoft.com/library/windows/hardware/mt138325)
[DeviceInfo/Static/PhoneRadioHardwareRevision](https://msdn.microsoft.com/library/windows/hardware/mt138329)
[DeviceInfo/Static/PhoneRadioSoftwareRevision](https://msdn.microsoft.com/library/windows/hardware/mt138330)
[DeviceInfo/Static/PhoneBootLoaderVersion](https://msdn.microsoft.com/library/windows/hardware/mt138324)
[DeviceInfo/Static/PhoneROMLanguage](https://msdn.microsoft.com/library/windows/hardware/mt138331)
[DeviceInfo/Static/PhoneHardwareVariant](https://msdn.microsoft.com/library/windows/hardware/mt138327)
[DeviceInfo/Static/PhoneManufacturerDisplayName](https://msdn.microsoft.com/library/windows/hardware/mt138328displayname)
[DeviceInfo/Variant/PhoneMobileOperatorName](https://msdn.microsoft.com/library/windows/hardware/mt138338)
[DeviceInfo/Variant/PhoneManufacturerModelName](https://msdn.microsoft.com/library/windows/hardware/mt138336)
[DeviceInfo/Variant/PhoneMobileOperatorDisplayName](https://msdn.microsoft.com/library/windows/hardware/mt138337)
[DeviceInfo/Variant/PhoneSupportPhoneNumber](https://msdn.microsoft.com/library/windows/hardware/mt138342)
[DeviceInfo/Variant/PhoneSupportLink](https://msdn.microsoft.com/library/windows/hardware/mt138341)
[DeviceInfo/Variant/PhoneOEMSupportLink](https://msdn.microsoft.com/library/windows/hardware/mt138340)
[DeviceInfo/Variant/PhoneModelName](https://msdn.microsoft.com/library/windows/hardware/mt138339)
[DeviceInfo/Variant/RoamingSupportPhoneNumber](https://msdn.microsoft.com/library/windows/hardware/mt138343)
[Showing the FM radio](showing-the-fm-radio.md)
[FmRadio/NotPresent](https://msdn.microsoft.com/library/windows/hardware/mt147041)
[FM radio frequency band](fm-radio-frequency-band.md)
[FmRadio/RadioRegion](https://msdn.microsoft.com/library/windows/hardware/mt147042)
[Default value for browser data saver](default-value-for-browser-data-saver.md)
[InternetExplorer/DataSaving/BrowserDataSaver](https://msdn.microsoft.com/library/windows/hardware/mt502646)
[Show pictures automatically when browsing](show-pictures-automatically-when-browsing.md)
[InternetExplorer/DataSaving/ShowPicturesAutomatically](https://msdn.microsoft.com/library/windows/hardware/mt502647)
[CMAS Required Monthly Test](cmas-required-monthly-test.md)
Use MCSF to configure this customization.
[Disable editing of the SMS center number](disable-editing-of-the-sms-center-number.md)
Use MCSF to configure this customization.
[Display CMAS message order](display-cmas-message-order.md)
[Messaging/GlobalSettings/DisplayCmasLifo](https://msdn.microsoft.com/library/windows/hardware/mt131471)
[Emergency notifications](emergency-notifications.md)
Use MCSF to configure this customization.
[Extract phone numbers in strings](extract-phone-numbers-in-strings.md)
[Messsaging/GlobalSettings/ExtractPhoneNumbersInStrings](https://msdn.microsoft.com/library/windows/hardware/mt131472)
[International assisted dialing for SMS](international-assisted-dialing-for-sms.md)
Use MCSF to configure this customization.
[MMS APN settings](mms-apn-settings.md)
[CellCore/PerDevice/CellUX/HideMMSAPN](https://msdn.microsoft.com/library/windows/hardware/mt158241) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideMMSAPN](https://msdn.microsoft.com/library/windows/hardware/mt158252) (per IMSI)
[CellCore/PerDevice/CellUX/HideMMSAPNIPType](https://msdn.microsoft.com/library/windows/hardware/mt158241iptype) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideMMSAPNIPType](https://msdn.microsoft.com/library/windows/hardware/mt158252iptype) (per IMSI)
[CellCore/PerDevice/CellUX/MMSAPNIPTypeIfHidden](https://msdn.microsoft.com/library/windows/hardware/mt158243) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/MMSAPNIPTypeIfHidden](https://msdn.microsoft.com/library/windows/hardware/mt158254) (per IMSI)
[MMS automatic download](mms-automatic-download.md)
[Messaging/PerSimSettings/\_\_ICCID/AutomaticallyDownload/ShowAutomaticallyDownloadMMSToggle](https://msdn.microsoft.com/library/windows/hardware/mt158278)
[Messaging/PerSimSettings/\_\_ICCID/AutomaticallyDownload/AutomaticallyDownload](https://msdn.microsoft.com/library/windows/hardware/mt158277)
[MMS data options](p_phcustomization.mms_data_options)
Use MCSF to configure this customization.
[MMS delivery confirmation](mms-delivery-confirmation.md)
[Messaging/PerSimSettings/\_\_ICCID/RequestDeliveryReport/RequestDeliveryReportIsSupported](https://msdn.microsoft.com/library/windows/hardware/mt158281)
[Messaging/PerSimSettings/\_\_ICCID/RequestDeliveryReport/RequestDeliveryReport](https://msdn.microsoft.com/library/windows/hardware/mt158280)
[MMS for group messages](mms-for-group-messages.md)
Use MCSF to configure this customization.
[MMS receipt acknowledgement](mms-receipt-acknowledgement.md)
[Messaging/PerSimSettings/\_\_ICCID/AllowSendingDeliveryReport/AllowSendingDeliveryReportIsSupported](https://msdn.microsoft.com/library/windows/hardware/mt299049)
[Messaging/PerSimSettings/\_\_ICCID/AllowSendingDeliveryReport/AllowSendingDeliveryReport](https://msdn.microsoft.com/library/windows/hardware/mt299048)
[SMS delivery confirmation](sms-delivery-confirmation.md)
Use MCSF to configure this customization.
[Contact management on the SIM](contact-management-on-the-sim.md)
[People/SIMContactManagement/EnableSIMAddressBookAndExport](https://msdn.microsoft.com/library/windows/hardware/mt146539)
[Disable wait for phonebook ready signal from the modem](disable-wait-for-phonebook-ready-signal-from-the-modem.md)
[People/SIMContactManagement/CheckFDNStateAfterPhonebookReady](https://msdn.microsoft.com/library/windows/hardware/mt146538)
[Hide contacts without phone numbers](hide-contacts-without-phone-numbers.md)
[People/ContactsFilteringSettings/HideContactsWithoutPhoneNumbers](https://msdn.microsoft.com/library/windows/hardware/mt146534)
[Sort order for contacts](sort-order-for-contacts.md)
[People/SortAndDisplaySettings/SortBy](https://msdn.microsoft.com/library/windows/hardware/mt146543)
[People/SortAndDisplaySettings/DisplayBy](https://msdn.microsoft.com/library/windows/hardware/mt146541)
[Sort order for contacts override](sort-order-for-contacts-override.md)
[People/SortAndDisplaySettings/OEMOverridesSortDisplay](https://msdn.microsoft.com/library/windows/hardware/mt146542)
[Assistance for dialing international phone numbers](assistance-for-dialing-international-phone-numbers.md)
[Phone/PhoneSettings/AssistedDialSetting](https://msdn.microsoft.com/library/windows/hardware/mt502649)
[Call forwarding](call-forwarding.md)
[Phone/PhoneSettings/HideCallForwarding](https://msdn.microsoft.com/library/windows/hardware/mt502651)
[Conditional call forwarding](conditional-call-forwarding.md)
[Shell/SystemTray/ConditionalCallForwarding/ConditionalCallForwardingIcon](https://msdn.microsoft.com/library/windows/hardware/mt502655)
[Hide the SIM security settings option](hide-the-sim-security-settings-option.md)
[Phone/PhoneSettings/HideSIMSecurityUI](https://msdn.microsoft.com/library/windows/hardware/mt502652)
[Long tones](long-tones.md)
[Phone/PhoneSettings/ShowLongTones](https://msdn.microsoft.com/library/windows/hardware/mt502653)
[Overriding the voicemail number on the UICC](overriding-the-voicemail-number-on-the-uicc.md)
[Phone/PerSimSettings/\_\_IMSI/Critical/SimOverrideVoicemailNumber](https://msdn.microsoft.com/library/windows/hardware/mt299053)
[Video over LTE](video-over-lte.md)
[Phone/PerSimSettings/\_\_IMSI/ShowVideoCallingSwitch](https://msdn.microsoft.com/library/windows/hardware/mt227429)
[Phone/PerSimSettings/\_\_IMSI/DefaultEnableVideoCalling](https://msdn.microsoft.com/library/windows/hardware/mt227428)
[Phone/PerSimSettings/\_\_IMSI/DefaultEnableVideoCapability](https://msdn.microsoft.com/library/windows/hardware/mt652135)
[Phone/PerSimSettings/\_\_IMSI/ShowVideoCapabilitySwitch](https://msdn.microsoft.com/library/windows/hardware/mt652136)
[Phone/PerSimSettings/\_\_IMSI/AllowVideoConferencing](https://msdn.microsoft.com/library/windows/hardware/mt227427)
[Phone/PerSimSettings/\_\_IMSI/SupressVideoCallingChargesDialog](https://msdn.microsoft.com/library/windows/hardware/mt227430)
[Phone/PhoneSettingsVideoTransitionTimeout](https://msdn.microsoft.com/library/windows/hardware/mt227435)
[Phone/PhoneSettings/VideoCallingLabel](https://msdn.microsoft.com/library/windows/hardware/mt227434)
[Phone/PhoneSettings/VideoCallingDescription](https://msdn.microsoft.com/library/windows/hardware/mt227433)
[Phone/PhoneSettings/LowVideoQualityTimeout](https://msdn.microsoft.com/library/windows/hardware/mt227432)
[Phone/Phonesettings/ConferenceCallMaximumPartyCount](https://msdn.microsoft.com/library/windows/hardware/mt147465)
[Voicemail number for CDMA phones](voicemail-number-for-cdma-phones.md)
[Phone/PerSimSettings/\_\_IMSI/Critical/MOSimFallbackVoicemailNumber](https://msdn.microsoft.com/library/windows/hardware/mt299052)
[Wi-Fi calling operator name](https://msdn.microsoft.com/library/windows/hardware/mt628526)
[Phone/PerSimSettings/\_\_IMSI/WiFiCallingOperatorName](https://msdn.microsoft.com/library/windows/hardware/mt227431)
[Enable the incompatible charger notification](enable-the-incompatible-charger-notification.md)
[WeakCharger/NotifyOnWeakCharger](https://msdn.microsoft.com/library/windows/hardware/mt346403)
[Enable the data connection prompt](enable-the-data-connection-prompt.md)
[USBData/PromptForDataConnection](https://msdn.microsoft.com/library/windows/hardware/mt146872)
[Hide the weak charger notification option UI](hide-the-weak-charger-notification-option-ui.md)
[WeakCharger/HideWeakChargerNotifyOptionUI](https://msdn.microsoft.com/library/windows/hardware/mt346402)
[CTA app install prompts](cta-app-install-prompts.md)
[Zune/Settings/RequireExtendedCapabilityPrompts](https://msdn.microsoft.com/library/windows/hardware/mt168439)
[Windows Store for China](windows-phone-store-for-china.md)
[DeviceInfo/Static/PhoneROMLanguage](https://msdn.microsoft.com/library/windows/hardware/mt138331)
[Display location icon](display-location-icon.md)
[Shell/SystemTray/LocationIcon](https://msdn.microsoft.com/library/windows/hardware/mt502657)
 

## Customizations for SMS and MMS


MCSF customization
Windows Provisioning settings
[Add encoding extension tables for SMS](add-encoding-extension-tables-for-sms.md)
Follow the MCSF customization to fully configure this customization, which requires a CodePageDLL asset.

[Automatic send retry and resize settings for MMS messages](automatic-send-retry-and-resize-settings-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/MaxRetryCount](https://msdn.microsoft.com/library/windows/hardware/mt299050)
`RetrySize` is not available in the Windows provisioning framework. Use MCSF to configure this setting.
[Automatically retry downloading MMS messages](automatically-retry-downloading-mms-messages.md)
Use MCSF to configure this customization.
[Content location in the multimedia message service center (MMSC)](content-location-in-the-multimedia-message-service-center--mmsc-.md)
[Messaging/PerSimSettings/\_\_ICCID/DefaultContentLocationUrl](https://msdn.microsoft.com/library/windows/hardware/mt131476)
[Delay for resend attempts](delay-for-resend-attempts.md)
These settings are managed by the modem. For more information, contact the SoC vendor.
[Disable the EMS long messages feature](disable-the-ems-long-messages-feature.md)
[CellCore/PerDevice/SMS/SmsPageLimit](https://msdn.microsoft.com/library/windows/hardware/mt147453) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsPageLimit](https://msdn.microsoft.com/library/windows/hardware/mt147457) (per-IMSI)
[Expiration time for SMS messages](expiration-time-for-sms-messages.md)
[CellCore/PerDevice/SMS/MessageExpirySeconds](https://msdn.microsoft.com/library/windows/hardware/mt157067) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/MessageExpirySeconds](https://msdn.microsoft.com/library/windows/hardware/mt138317) (per-IMSI)
[Full error messages for SMS and MMS](full-error-messages-for-sms-and-mms.md)
[Messaging/PerSimSettings/\_\_ICCID/ErrorCodeEnabled](https://msdn.microsoft.com/library/windows/hardware/mt131477)
[IMS retry](ims-retry.md)
Use MCSF to configure this customization.
[IMSI authentication](imsi-authentication.md)
[Messaging/PerSimSettings/\_\_ICCID/ImsiAuthenticationToken](https://msdn.microsoft.com/library/windows/hardware/mt131478)
[Maximum length for SMS messages](maximum-length-for-sms-messages.md)
[CellCore/PerDevice/SMS/SmsFragmentLimit](https://msdn.microsoft.com/library/windows/hardware/mt157068) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsFragmentLimit](https://msdn.microsoft.com/library/windows/hardware/mt138318) (per-IMSI)
[CellCore/PerDevice/SMS/SmsPageLimit](https://msdn.microsoft.com/library/windows/hardware/mt147453) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsPageLimit](https://msdn.microsoft.com/library/windows/hardware/mt147457) (per-IMSI)
[Maximum number of attachments for MMS messages](maximum-number-of-attachments-for-mms-messages.md)
Use MCSF to configure this customization.
[Maximum number of recipients for SMS and MMS](maximum-number-of-recipients-for-sms-and-mms.md)
Use MCSF to configure this customization.
[Permanent SMS message failures](permanent-sms-message-failures.md)
Use MCSF to configure this customization.
[Ports that accept cellular broadcast messages](ports-that-accept-cellular-broadcast-messages.md)
Use MCSF to configure this customization.
[Proxy authorization for MMS](proxy-authorization-for-mms.md)
Use MCSF to configure this customization.
[Select multiple recipients for SMS and MMS messages](select-multiple-recipients-for-sms-and-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/AllowSelectAllContacts](https://msdn.microsoft.com/library/windows/hardware/mt131475)
[Sending SMS messages to SMTP addresses](sending-sms-messages-to-smtp-addresses.md)
Use MCSF to configure this customization.
[Server for MMS acknowledgement messages](server-for-mms-acknowledgement-messages.md)
Use MCSF to configure this customization.
[SMS encoding](sms-encoding.md)
[CellCore/PerDevice/SMS/Encodings/GSM7BitEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158246) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/GSM7BitEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158264) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/GSM8BitEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158247) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/GSM8BitEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158265) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/UseASCII](https://msdn.microsoft.com/library/windows/hardware/mt158250) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/UseASCII](https://msdn.microsoft.com/library/windows/hardware/mt158268) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/UseKeyboardLanguage](https://msdn.microsoft.com/library/windows/hardware/mt158251) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/UseKeyboardLanguage](https://msdn.microsoft.com/library/windows/hardware/mt158269) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/SendUDHNLSS](https://msdn.microsoft.com/library/windows/hardware/mt158249) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/SendUDHNLSS](https://msdn.microsoft.com/library/windows/hardware/mt158267) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/OctetEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158248) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/OctetEncodingPage](https://msdn.microsoft.com/library/windows/hardware/mt158266) (per IMSI)
[SMS intercept deny list](sms-intercept-deny-list.md)
Use MCSF to configure this customization.
[SMS intercept ports](sms-intercept-ports.md)
Use MCSF to configure this customization.
[Support HTTP cache-control no-transform for MMS](support-http-cache-control-no-transform-for-mms.md)
Use MCSF to configure this customization.
[Supported protocols for service indication messages](supported-protocols-for-service-indication-messages.md)
Use MCSF to configure this customization.
[Switch from SMS to MMS for long messages](switch-from-sms-to-mms-for-long-messages.md)
Use MCSF to configure this customization.
[Truncated content handling for WAP push notification](truncated-content-handling-for-wap-push-notification.md)
[Messaging/PerSimSettings/\_\_ICCID/WapPushTechnology](https://msdn.microsoft.com/library/windows/hardware/mt131481)
[Use insert-address-token or local raw address](use-insert-address-token-or-local-raw-address.md)
Use MCSF to configure this customization.
[Use UTF-8 for MMS messages with unspecified character encoding](use-utf-8-for-mms-messages-with-unspecified-character-encoding.md)
Use MCSF to configure this customization.
[User agent profile for MMS messages](user-agent-profile-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/UAProf](https://msdn.microsoft.com/library/windows/hardware/mt138394)
[Messaging/PerSimSettings/\_\_ICCID/UAProfToken](https://msdn.microsoft.com/library/windows/hardware/mt138394token)
[User agent string for MMS messages](user-agent-string-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/UserAgentString](https://msdn.microsoft.com/library/windows/hardware/mt131480)
[User alert for service indication messages](user-alert-for-service-indication-messages.md)
Use MCSF to configure this customization.
[Video attachments in MMS](video-attachments-in-mms.md)
[Messaging/PerSimSettings/\_\_ICCID/TargetVideoFormat](https://msdn.microsoft.com/library/windows/hardware/mt131479)
 

## Customizations for Start


MCSF customization
Windows Provisioning settings
[Start layout for Windows 10 mobile editions](p_customize_converged.start_layout_for_windows_10_mobile_editions)
[Start layout for Windows 10 mobile editions](p_customize_converged.start_layout_for_windows_10_mobile_editions)
[Store live tile](store-live-tile.md)
[StoreMoOemGroup/OemMoCustomizedIsLiveTileEnabled](https://msdn.microsoft.com/library/windows/hardware/mt146863)
[StoreMoOemGroup/OemMoLiveTileOptInToCellularAfterStoreLaunch](https://msdn.microsoft.com/library/windows/hardware/mt146864)
 

## Customizations for specific mobile operators


MCSF customization
Windows Provisioning settings
Configure ERI for domestic and international
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmMBB0](https://msdn.microsoft.com/library/windows/hardware/mt483706)
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmMBB1](https://msdn.microsoft.com/library/windows/hardware/mt483707)
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmWmRil](https://msdn.microsoft.com/library/windows/hardware/mt483708)
[CellCore/PerDevice/External/ImageOnly/ERI/DataFileNameWmRil](https://msdn.microsoft.com/library/windows/hardware/mt483709)
[CellCore/PerDevice/External/ImageOnly/ERI/EnabledWmRil](https://msdn.microsoft.com/library/windows/hardware/mt483710)
[CellCore/PerDevice/External/ImageOnly/ERI/ERIDataFileNameMBB0](https://msdn.microsoft.com/library/windows/hardware/mt483711)
[CellCore/PerDevice/External/ImageOnly/ERI/ERIDataFileNameMBB1](https://msdn.microsoft.com/library/windows/hardware/mt483712)
[CellCore/PerDevice/External/ImageOnly/ERI/ERISprintIntlRoamDataFileNameMBB0](https://msdn.microsoft.com/library/windows/hardware/mt483713)
[CellCore/PerDevice/External/ImageOnly/ERI/ERISprintIntlRoamDataFileNameMBB1](https://msdn.microsoft.com/library/windows/hardware/mt483714)
[CellCore/PerDevice/External/ImageOnly/ERI/SprintInternationalERIValuesWmRil](https://msdn.microsoft.com/library/windows/hardware/mt483715)
Enable GBA authorization for MMS over Wi-Fi
[Messaging/PerSimSettings/\_\_ICCID/MmsGbaAuthenticationEnabled](https://msdn.microsoft.com/library/windows/hardware/mt483733)
Enable multipart SMS with multipart tags in SMS
[CellCore/PerDevice/SMS/SprintFragmentInfoInBody](https://msdn.microsoft.com/library/windows/hardware/mt483716) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/SprintFragmentInfoInBody](https://msdn.microsoft.com/library/windows/hardware/mt483717) (per IMSI)
Hotspot plug-in probe URL and path
[WiFi/HotSpotPlugin/ATT/GetPath](https://msdn.microsoft.com/library/windows/hardware/mt432961)
[WiFi/HotSpotPlugin/ATT/GetURL](https://msdn.microsoft.com/library/windows/hardware/mt432962)
Roaming text
[CellCore/PerDevice/CellUX/IsATTSpecific](https://msdn.microsoft.com/library/windows/hardware/mt422902) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/IsATTSpecific](https://msdn.microsoft.com/library/windows/hardware/mt422903) (per IMSI)
Settings for cloud messaging
[Messaging/GlobalSettings/MOCloudMessageCarrierSetting](https://msdn.microsoft.com/library/windows/hardware/mt422956)
[Messaging/GlobalSettings/MOCloudMessageDisplayLabel](https://msdn.microsoft.com/library/windows/hardware/mt432957)
[Messaging/GlobalSettings/MOCloudMessageEnabled](https://msdn.microsoft.com/library/windows/hardware/mt432958)
Accept unauthenticated WAP message triggers from a server
[DeviceManagement/Policies/OMADM/AcceptUnauthenticatedTriggers](https://msdn.microsoft.com/library/windows/hardware/mt484183)
 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phCustomization\p_phCustomization%5D:%20MCSF%20to%20Windows%20Provisioning%20settings%20map%20%20RELEASE:%20%289/7/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




