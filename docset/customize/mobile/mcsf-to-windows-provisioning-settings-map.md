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
[Multivariant/Enable](p_icd_settings.multivariant_enable)
[AutoDataConfig/Enable](p_icd_settings.autodataconfig_enable)
[Managing runtime configuration data](managing-runtime-configuration-data.md)
[Multivariant/PersistVariantData](p_icd_settings.multivariant_persistvariantdata)
[Multivariant/PostVariantCleanupDelay](p_icd_settings.multivariant_postvariantcleanupdelay)
[Multivariant/UnconditionalCleanupDelay](p_icd_settings.multivariant_unconditionalcleanupdelay)
[Override the default CountryTable.xml](override-the-default-countrytablexml.md)
[Multivariant/OverrideDefaultCountryLookup](p_icd_settings.multivariant_overridedefaultcountrylookup)
[Setting the UICC slot for branding configuration](setting-the-uicc-slot-for-branding-configuration.md)
[Multivariant/BrandingSlot](p_icd_settings.multivariant_brandingslot)
 

## Customizations for hardware components


MCSF customization
Windows Provisioning settings
[Buttons: Enabling the Start button to wake the phone](enabling-the-start-button-to-wake-the-phone.md)
[Input/Keyboard/EnabledOnIdleButtons/EnableStartOnIdle](p_icd_settings.input_keyboard_enabledonidlebuttons_enablestartonidle)
[Camera: Improved user experience for phones without a HW camera button](improved-user-experience-for-phones-without-a-hw-camera-button.md)
[Photos/OEM/HWCameraShutterButtonNotPresent](p_icd_settings.photos_oem_hwcamerashutterbuttonnotpresent)
[Display: Building images for FWVGA panels with static software buttons](building-images-for-fwvga-panels-with-static-software-buttons.md)
[Graphics/D3D/DisplayResolutionOverride/DisplayPanelOverrideWidth](p_icd_settings.graphics_d3d_displayresolutionoverride_displaypaneloverridewidth)
[Graphics/D3D/DisplayResolutionOverride/DisplayPanelOverrideHeight](p_icd_settings.graphics_d3d_displayresolutionoverride_displaypaneloverrideheight)
[Graphics/D3D/DisplayResolutionOverride/TouchPanelOverrideWidth](p_icd_settings.graphics_d3d_displayresolutionoverride_touchpaneloverridewidth)
[Graphics/D3D/DisplayResolutionOverride/TouchPanelOverrideHeight](p_icd_settings.graphics_d3d_displayresolutionoverride_touchpaneloverrideheight)
[Shell/NavigationBar/Color](p_icd_settings.shell_navigationbar_color)
[Input/Touch/CapButtons/Area0](p_icd_settings.input_touch_capbuttons_area0)
[Input/Touch/CapButtons/Area1](p_icd_settings.input_touch_capbuttons_area1)
[Input/Touch/CapButtons/Area2](p_icd_settings.input_touch_capbuttons_area2)
[Input/Touch/CapButtons/ButtonAreaTotal](p_icd_settings.input_touch_capbuttons_buttonareatotal)
[Input/Touch/CapButtons/ButtonCount](p_icd_settings.input_touch_capbuttons_buttoncount)
[Input/Touch/CapButtons/Name0](p_icd_settings.input_touch_capbuttons_name0)
[Input/Touch/CapButtons/Name1](p_icd_settings.input_touch_capbuttons_name1)
[Input/Touch/CapButtons/Name2](p_icd_settings.input_touch_capbuttons_name2)
[Input/Touch/CapButtons/VibrateDuration](p_icd_settings.input_touch_capbuttons_vibrateduration)
[Input/Touch/CapButtons/VibrateIntensity](p_icd_settings.input_touch_capbuttons_vibrateintensity)
[Input/Touch/CapButtons/VibrateSupport](p_icd_settings.input_touch_capbuttons_vibratesupport)
[Input/Touch/CapButtons/VKey0](p_icd_settings.input_touch_capbuttons_vkey0)
[Input/Touch/CapButtons/VKey1](p_icd_settings.input_touch_capbuttons_vkey1)
[Input/Touch/CapButtons/VKey2](p_icd_settings.input_touch_capbuttons_vkey2)
[Display: Building images with user-managed software buttons](building-images-with-user-managed-software-buttons.md)
[Input/Touch/CapButtons/Area0](p_icd_settings.input_touch_capbuttons_area0)
[Input/Touch/CapButtons/Area1](p_icd_settings.input_touch_capbuttons_area1)
[Input/Touch/CapButtons/Area2](p_icd_settings.input_touch_capbuttons_area2)
[Input/Touch/CapButtons/ButtonAreaTotal](p_icd_settings.input_touch_capbuttons_buttonareatotal)
[Input/Touch/CapButtons/ButtonCount](p_icd_settings.input_touch_capbuttons_buttoncount)
[Input/Touch/CapButtons/Name0](p_icd_settings.input_touch_capbuttons_name0)
[Input/Touch/CapButtons/Name1](p_icd_settings.input_touch_capbuttons_name1)
[Input/Touch/CapButtons/Name2](p_icd_settings.input_touch_capbuttons_name2)
[Input/Touch/CapButtons/VibrateDuration](p_icd_settings.input_touch_capbuttons_vibrateduration)
[Input/Touch/CapButtons/VibrateIntensity](p_icd_settings.input_touch_capbuttons_vibrateintensity)
[Input/Touch/CapButtons/VibrateSupport](p_icd_settings.input_touch_capbuttons_vibratesupport)
[Input/Touch/CapButtons/VKey0](p_icd_settings.input_touch_capbuttons_vkey0)
[Input/Touch/CapButtons/VKey1](p_icd_settings.input_touch_capbuttons_vkey1)
[Input/Touch/CapButtons/VKey2](p_icd_settings.input_touch_capbuttons_vkey2)
[Shell/NavigationBar/Color](p_icd_settings.shell_navigationbar_color)
[Shell/NavigationBar/BurnInProtectionBlackReplacementColor](p_icd_settings.shell_navigationbar_burninprotectionblackreplacementcolor)
[Shell/NavigationBar/BurnInProtectionMaskSwitchingInterval](p_icd_settings.shell_navigationbar_burninprotectionmaskswitchinginterval)
[Shell/NavigationBar/BurnInProtectionMode](p_icd_settings.shell_navigationbar_burninprotectionmode)
[Shell/NavigationBar/BurnInProtectionTimerTimeout](p_icd_settings.shell_navigationbar_burninprotectionidletimertimeout)
[Shell/NavigationBar/DoubleTapOff](p_icd_settings.shell_navigationbar_doubletapoff)
[Shell/NavigationBar/UserEducationHintDisable](p_icd_settings.shell_navigationbar_usereducationhintdisable)
Display: Changing the display frame update rate to 30 frames per second
This customization is not supported in Windows 10 Mobile.
[Networking: Configuring the MTU data size](configuring-the-mtu-data-size.md)
[CellCore/PerDevice/External/ImageOnly/MTU/MTUDataSize](p_icd_settings.cellcore_perdevice_external_imageonly_mtu_mtudatasize)
[CellCore/PerDevice/External/ImageOnly/MTU/RoamingMTUDataSize](p_icd_settings.cellcore_perdevice_external_imageonly_mtu_roamingmtudatasize)
[Sensors: Auto brightness](auto-brightness.md)
[AutoBrightness/DimBrightness](p_icd_settings.autobrightness_dimbrightness)
[AutoBrightness/ABSRangeMilliLuxMapping](p_icd_settings.autobrightness_absrangemilliluxmapping)
[AutoBrightness/ABSPercentIntensityMapping](p_icd_settings.autobrightness_abspercentintensitymapping)
[AutoBrightness/TransitionDelay](p_icd_settings.autobrightness_transitiondelay)
[Storage: Enabling the packed commands feature for eMMC](enabling-the-packed-commands-feature-for-emmc.md)
[Storage/SdBus/MainOS/PackedCommandEnable](p_icd_settings.storage_sdbus_mainos_packedcommandenable)
[Storage: Enabling the UHS-1 feature for SD cards](enabling-the-uhs-1-feature-for-sd-cards.md)
[Storage/SdBus/MainOS/DisableUhsSupport](p_icd_settings.storage_sdbus_mainos_disableuhssupport)
[Storage: Enabling the HS200 feature for eMMC](enabling-the-hs200-feature-for-emmc.md)
[Storage/SdBus/MainOS/DisableHS200Support](p_icd_settings.storage_sdbus_mainos_disablehs200support)
[Touch: Defining capacitive button behavior](defining-capacitive-button-behavior.md)
[Input/Touch/CapButtons/Area0](p_icd_settings.input_touch_capbuttons_area0)
[Input/Touch/CapButtons/Area1](p_icd_settings.input_touch_capbuttons_area1)
[Input/Touch/CapButtons/Area2](p_icd_settings.input_touch_capbuttons_area2)
[Input/Touch/CapButtons/ButtonAreaTotal](p_icd_settings.input_touch_capbuttons_buttonareatotal)
[Input/Touch/CapButtons/ButtonCount](p_icd_settings.input_touch_capbuttons_buttoncount)
[Input/Touch/CapButtons/Name0](p_icd_settings.input_touch_capbuttons_name0)
[Input/Touch/CapButtons/Name1](p_icd_settings.input_touch_capbuttons_name1)
[Input/Touch/CapButtons/Name2](p_icd_settings.input_touch_capbuttons_name2)
[Input/Touch/CapButtons/VibrateDuration](p_icd_settings.input_touch_capbuttons_vibrateduration)
[Input/Touch/CapButtons/VibrateIntensity](p_icd_settings.input_touch_capbuttons_vibrateintensity)
[Input/Touch/CapButtons/VibrateSupport](p_icd_settings.input_touch_capbuttons_vibratesupport)
[Input/Touch/CapButtons/VKey0](p_icd_settings.input_touch_capbuttons_vkey0)
[Input/Touch/CapButtons/VKey1](p_icd_settings.input_touch_capbuttons_vkey1)
[Input/Touch/CapButtons/VKey2](p_icd_settings.input_touch_capbuttons_vkey2)
[Touch: Describing the physical width and height of the display](describing-the-physical-width-and-height-of-the-display.md)
[Input/Touch/DisplayProperties/DisplayHeight](p_icd_settings.input_touch_displayproperties_displayheight)
[Input/Touch/DisplayProperties/DisplayWidth](p_icd_settings.input_touch_displayproperties_displaywidth)
[Touch: Specifying the repeat rate for touch samples during touch-and-hold presses](specifying-the-repeat-rate-for-touch-samples-during-touch-and-hold-presses.md)
[Input/Touch/AutoRepeat/RepeatInterval](p_icd_settings.input_touch_autorepeat_repeatinterval)
[Wi-Fi: Removing cellular functionality on the mobile device](removing-cellular-functionality-on-the-mobile-device.md)
See the MCSF topic and customize using an OEMInput.xml file.

 

## Customizations for applications and Microsoft components


MCSF customization
Windows Provisioning settings
[Active phone cover settings](active-phone-cover-settings.md)
[Shell/SmartCover/AUMID](p_icd_settings.shell_smartcover_aumid)
[Shell/SmartCover/AutoUnlock](p_icd_settings.shell_smartcover_autounlock)
[Customize the SIM toolkit](p_phcustomization.customize_the_sim_toolkit)
[CellCore/PerDevice/UTK/UIDefaultDuration](p_icd_settings.cellcore_perdevice_utk_uidefaultduration)
[CellCore/PerDevice/UTK/UIGetInputDuration](p_icd_settings.cellcore_perdevice_utk_uigetinputduration)
[CellCore/PerIMSI/\_\_IMSI/UTK/UIDefaultDuration](p_icd_settings.cellcore_perimsi___imsi_utk_uidefaultduration)
[CellCore/PerIMSI/\_\_IMSI/UTK/UIGetInputDuration](p_icd_settings.cellcore_perimsi___imsi_utk_uigetinputduration)
[Enhanced apps experience for medium and large screens](enhanced-apps-experience-for-medium-and-large-screens.md)
[ScreenSize/UserPreferenceWidth](p_icd_settings.screensize_userpreferencewidth)
[Phone call/SMS filter applications](phone-callsms-filter-applications.md)
[Phone/PhoneSmsFilter/AppId](p_icd_settings.phone_phonesmsfilter_appid)
[Include required Microsoft components to the image](include-required-microsoft-components-to-the-image.md)
See the MCSF topic and customize using an OEMInput.xml file.

[Preload an app with a dependency](p_phcustomization.preload_an_app_with_a_dependency)
See the MCSF topic and customize using an OEMInput.xml file.

[Remove optional Microsoft components from the image](remove-optional-microsoft-components-from-the-image.md)
See the MCSF topic and customize using an OEMInput.xml file.

 

## Customizations for boot, initial setup, and shutdown


MCSF customization
Windows Provisioning settings
[Configure the timezone confirmation page during setup](configure-the-timezone-confirmation-page-during-setup.md)
[SetupWizard/EnableNITZTimeDateConfirmation](p_icd_settings.setupwizard_enablenitztimedateconfirmation)
[Configuring a boot screen to display in the final boot screen slot](configuring-a-boot-screen-to-display-in-the-final-boot-screen-slot.md)
Use MCSF to configure this customization.
[Configuring boot battery charging behavior](configuring-boot-battery-charging-behavior.md)
[ChargeSettings/ChargingBootThreshold](p_icd_settings.chargesettings_chargingbootthreshold)
[ChargeSettings/PowerOffChargingEnabled](p_icd_settings.chargesettings_poweroffchargingenabled)
[Configuring OEM and mobile operator boot screens](configuring-oem-and-mobile-operator-boot-screens.md)
See the MCSF topic for more information about this customization.
[Configuring the duration of the first boot screen](configuring-the-duration-of-the-first-boot-screen.md)
[BootDisplaySettings/BootUXLogoTransitionTime](p_icd_settings.bootdisplaysettings_bootuxlogotransitiontime)
[Custom shutdown screen](custom-shutdown-screen.md)
Use MCSF to configure this customization.
Delay app preinstall
Not supported in Windows 10 Mobile.
[Language selection during initial setup](language-selection-during-initial-setup.md)
[SetupWizard/ShowLanguageSelectionScreenInSetup](p_icd_settings.setupwizard_showlanguageselectionscreeninsetup)
[Partner account configuration during setup](partner-account-configuration-during-setup.md)
See the MCSF topic for additional guidance and to learn about using resource-only DLLs for localized strings.

[SetupWizard/PartnerSetupAppID](p_icd_settings.setupwizard_partnersetupappid)
[SetupWizard/PartnerSetupAppParameters](p_icd_settings.setupwizard_partnersetupappparameters)
[SetupWizard/PartnerSetupAppNetworkPrompt](p_icd_settings.setupwizard_partnersetupappnetworkprompt)
[SetupWizard/PartnerSetupAppPartnerName](p_icd_settings.setupwizard_partnersetupapppartnername)
[SetupWizard/PartnerSetupAppTaskName](p_icd_settings.setupwizard_partnersetupapptaskname)
[SetupWizard/PartnerSetupAppTOCTaskName](p_icd_settings.setupwizard_partnersetupapptoctaskname)
[Screen background color during initial setup](screen-background-color-during-initial-setup.md)
Not supported in Windows 10 Mobile.
[Set the default country/region when SIM PIN is on](p_phcustomization.specifying_the_iccid_strings_and_region)
[Multivariant/IccidToRegionOverride](p_icd_settings.multivariant_iccidtoregionoverride)
[Multivariant/IccidToRegionTablePath](p_icd_settings.multivariant_iccidtoregiontablepath)
 

## Customizations for browser


MCSF customization
Windows Provisioning settings
[Custom HTTP headers for Microsoft Edge](custom-http-headers-for-internet-explorer.md)
[InternetExplorer/CustomHTTPHeaders1](p_icd_settings.internetexplorer_customhttpheaders1)
[InternetExplorer/CustomHTTPHeaders2](p_icd_settings.internetexplorer_customhttpheaders2)
[InternetExplorer/CustomHTTPHeaders3](p_icd_settings.internetexplorer_customhttpheaders3)
[InternetExplorer/CustomHTTPHeaders4](p_icd_settings.internetexplorer_customhttpheaders4)
[InternetExplorer/CustomHTTPHeaders5](p_icd_settings.internetexplorer_customhttpheaders5)
[InternetExplorer/CustomHTTPHeaders6](p_icd_settings.internetexplorer_customhttpheaders6)
[InternetExplorer/CustomHTTPHeaders7](p_icd_settings.internetexplorer_customhttpheaders7)
[InternetExplorer/CustomHTTPHeaders8](p_icd_settings.internetexplorer_customhttpheaders8)
[InternetExplorer/CustomHTTPHeaders9](p_icd_settings.internetexplorer_customhttpheaders9)
[InternetExplorer/CustomHTTPHeaders10](p_icd_settings.internetexplorer_customhttpheaders10)
[InternetExplorer/CustomHTTPHeaders11](p_icd_settings.internetexplorer_customhttpheaders11)
[InternetExplorer/CustomHTTPHeaders12](p_icd_settings.internetexplorer_customhttpheaders12)
[InternetExplorer/CustomHTTPHeaders13](p_icd_settings.internetexplorer_customhttpheaders13)
[InternetExplorer/CustomHTTPHeaders14](p_icd_settings.internetexplorer_customhttpheaders14)
[InternetExplorer/CustomHTTPHeaders15](p_icd_settings.internetexplorer_customhttpheaders15)
[InternetExplorer/CustomHTTPHeaders16](p_icd_settings.internetexplorer_customhttpheaders16)
[Custom user agent string for Microsoft Edge](custom-user-agent-string-for-internet-explorer.md)
[InternetExplorer/CustomUserAgentString](p_icd_settings.internetexplorer_customuseragentstring)
Preloaded Favorites list for Microsoft Edge

Use the Windows provisioning setting to configure this customization.

[Browser/Favorites](p_icd_settings.browser_favorites)
[WAP browser support](wap-browser-support.md)
Use MCSF to configure this customization.
[Welcome home page for Microsoft Edge](welcome-home-page-for-internet-explorer.md)
[InternetExplorer/FirstRunURL](p_icd_settings.internetexplorer_firstrunurl)
[WinInet ReceiveTimeOut duration](wininet-receivetimeout-duration.md)
[WinInet/InternetSettings/WinInetReceiveTimeOut](p_icd_settings.wininet_internetsettings_wininetreceivetimeout)
 

## Customizations for connectivity


MCSF customization
Windows Provisioning settings
[Authentication for Wi-Fi hotspot settings](authentication-for-wi-fi-hotspot-settings.md)
[WiFi/Config/HijackedIgnoreList](p_icd_settings.wifi_config_hijackedignorelist)
[Cellular data connection icon](cellular-data-connection-icon.md)
[Shell/SystemTray/DataConnectionStrings](p_icd_settings.shell_systemtray_dataconnectionstrings)
[Shell/SystemTray/DataConnectionStrings/EVDODEFAULT](p_icd_settings.shell_systemtray_dataconnectionstrings_evdodefault)
[Shell/SystemTray/DataConnectionStrings/EVDOREV0](p_icd_settings.shell_systemtray_dataconnectionstrings_evdorev0)
[Shell/SystemTray/DataConnectionStrings/EVDOREVA](p_icd_settings.shell_systemtray_dataconnectionstrings_evdoreva)
[Shell/SystemTray/DataConnectionStrings/EVDOREVB](p_icd_settings.shell_systemtray_dataconnectionstrings_evdorevb)
[Shell/SystemTray/DataConnectionStrings/GSMDEFAULT](p_icd_settings.shell_systemtray_dataconnectionstrings_gsmdefault)
[Shell/SystemTray/DataConnectionStrings/GSMEDGE](p_icd_settings.shell_systemtray_dataconnectionstrings_gsmedge)
[Shell/SystemTray/DataConnectionStrings/GSMGPRS](p_icd_settings.shell_systemtray_dataconnectionstrings_gsmgprs)
[Shell/SystemTray/DataConnectionStrings/GSMGSM](p_icd_settings.shell_systemtray_dataconnectionstrings_gsmgsm)
[Shell/SystemTray/DataConnectionStrings/LTEDEFAULT](p_icd_settings.shell_systemtray_dataconnectionstrings_ltedefault)
[Shell/SystemTray/DataConnectionStrings/LTEFDD](p_icd_settings.shell_systemtray_dataconnectionstrings_ltefdd)
[Shell/SystemTray/DataConnectionStrings/LTETDD](p_icd_settings.shell_systemtray_dataconnectionstrings_ltetdd)
[Shell/SystemTray/DataConnectionStrings/TDSCDMADCHSPAPLUS](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmadchspaplus)
[Shell/SystemTray/DataConnectionStrings/TDSCDMADEFAULT](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmadefault)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSDPA](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmahsdpa)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSPAPLUS](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmahspaplus)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAHSUPA](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmahsupa)
[Shell/SystemTray/DataConnectionStrings/TDSCDMAUMTS](p_icd_settings.shell_systemtray_dataconnectionstrings_tdscdmaumts)
[Shell/SystemTray/DataConnectionStrings/UMTSDCHSPAPLUS](p_icd_settings.shell_systemtray_dataconnectionstrings_umtsdchspaplus)
[Shell/SystemTray/DataConnectionStrings/UMTSDEFAULT](p_icd_settings.shell_systemtray_dataconnectionstrings_umtsdefault)
[Shell/SystemTray/DataConnectionStrings/UMTSHSDPA](p_icd_settings.shell_systemtray_dataconnectionstrings_umtshsdpa)
[Shell/SystemTray/DataConnectionStrings/UMTSHSPAPLUS](p_icd_settings.shell_systemtray_dataconnectionstrings_umtshspaplus)
[Shell/SystemTray/DataConnectionStrings/UMTSHSPAPLUS64QAM](p_icd_settings.shell_systemtray_dataconnectionstrings_umtshspaplus64qam)
[Shell/SystemTray/DataConnectionStrings/UMTSHSUPA](p_icd_settings.shell_systemtray_dataconnectionstrings_umtshsupa)
[Shell/SystemTray/DataConnectionStrings/UMTSUMTS](p_icd_settings.shell_systemtray_dataconnectionstrings_umtsumts)
[Configure C+G dual SIM settings](configure-c-g-dual-sim-settings.md)
[CellCore/PerDevice/General/CardAllowList](p_icd_settings.cellcore_perdevice_general_cardallowlist) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardAllowList](p_icd_settings.cellcore_perimsi___imsi_general_cardallowlist) (per IMSI)
[CellCore/PerDevice/General/CardBlockList](p_icd_settings.cellcore_perdevice_general_cardblocklist) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardBlockList](p_icd_settings.cellcore_perimsi___imsi_general_cardblocklist) (per IMSI)
[CellCore/perIMSI/\_\_IMSI/General/SuggestDataRoamingARD](p_icd_settings.cellcore_perimsi___imsi_general_suggestdataroamingard) (per IMSI)
[CellCore/PerDevice/General/CardLock](p_icd_settings.cellcore_perdevice_general_cardlock) (per device)
[CellCore/perIMSI/\_\_IMSI/General/CardLock](p_icd_settings.cellcore_perimsi___imsi_general_cardlock) (per IMSI)
[AutomaticTime/PreferredSlot](p_icd_settings.automatictime_preferredslot)
[DeviceInfo/Variant/RoamingSupportPhoneNumber](p_icd_settings.deviceinfo_variant_roamingsupportphonenumber)
[CellCore/PerDevice/CellUX/ShowManualAvoidance](p_icd_settings.cellcore_perdevice_cellux_showmanualavoidance) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/ShowManualAvoidance](p_icd_settings.cellcore_perimsi___imsi_cellux_showmanualavoidance) (per IMSI)
[CellCore/PerDevice/CellUX/CGDual/RestrictToGlobalMode](p_icd_settings.cellcore_perdevice_cgdual_restricttoglobalmode)
[CellCore/PerDevice/CellUX/UIX/SIM1ToUIM1](p_icd_settings.cellcore_perdevice_uix_sim1touim1) (per device)
[CellCore/PerDevice/General/DefaultSlotAffinity](p_icd_settings.cellcore_perdevice_general_defaultslotaffinity) (per device)
[CellCore/PerDevice/General/Slot2DisableAppsList](p_icd_settings.cellcore_perdevice_general_slot2disableappslist) (per device)
[CellCore/PerDevice/General/SuggestGlobalModeARD](p_icd_settings.cellcore_perdevice_general_suggestglobalmodeard) (per device)
[CellCore/PerDevice/General/SuggestGlobalModeTimeout](p_icd_settings.cellcore_perdevice_general_suggestglobalmodetimeout) (per device)
[CellCore/PerDevice/General/SuggestDataRoamingARD](p_icd_settings.cellcore_perdevice_general_suggestdataroamingard) (per device)
[CellCore/PerDevice/CellUX/SuppressDePersoUI](p_icd_settings.cellcore_perdevice_cellux_suppressdepersoui) (per device)
[Cortana phone number](cortana-phone-number.md)
[Bluetooth/BTAGService/CortanaPhoneNumber](p_icd_settings.bluetooth_btagservice_cortanaphonenumber)
[Custom percentages for signal strength bars](custom-percentages-for-signal-strength-bars.md)
Use MCSF to configure this customization.
[Data transfer indicator](data-transfer-indicator.md)
[Shell/SystemTray/DataActivity/DataActivityIcon](p_icd_settings.shell_systemtray_dataactivity_dataactivityicon)
[Disable Cell Broadcast](disable-cell-broadcast.md)
OEMs may disable Cell Broadcast through an NV item setting in the modem rather than in the OS.
[Ignore NITZ information from LTE networks](ignore-nitz-information-from-lte-networks.md)
[CellCore/PerDevice/General/NitzFiltering](p_icd_settings.cellcore_perdevice_general_nitzfiltering) (per device)
[CellCore/perIMSI/\_\_IMSI/General/NitzFiltering](p_icd_settings.cellcore_perimsi___imsi_general_nitzfiltering) (per IMSI)
[LTE attach: GUID for user configured internet APN](lte-attach-guid-for-user-configured-internet-apn.md)
[CellCore/PerDevice/CellUX/LTEAttachGuid](p_icd_settings.cellcore_perdevice_cellux_lteattachguid) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/LTEAttachGuid](p_icd_settings.cellcore_perimsi___imsi_cellux_lteattachguid) (per IMSI)
[LTE attach: Mapping OEMConnectionId values to modem profiles](lte-attach-mapping-oemconnectionid-values-to-modem-profiles.md)
[CellCore/PerDevice/CellData/ModemProfiles/LTEAttachGuids](p_icd_settings.cellcore_perdevice_celldata_modemprofiles_lteattachguids)
[Maximum number of PDP contexts](maximum-number-of-pdp-contexts.md)
[CellCore/PerDevice/CellData/MaxNumberOfPDPContexts](p_icd_settings.cellcore_perdevice_celldata_maxnumberofpdpcontexts) (per device)
[CellCore/perIMSI/\_\_IMSI/CellData/MaxNumberOfPDPContexts](p_icd_settings.cellcore_perimsi___imsi_celldata_maxnumberofpdpcontexts) (per IMSI)
[Network Time Protocol support](network-time-protocol-support.md)
[AutomaticTime/NTPEnabled](p_icd_settings.automatictime_ntpenabled)
[AutomaticTime/NTPRegularSyncInterval](p_icd_settings.automatictime_ntpregularsyncinterval)
[AutomaticTime/NTPRetryInterval](p_icd_settings.automatictime_ntpretryinterval)
[AutomaticTime/NTPServer](p_icd_settings.automatictime_ntpservers)
[Preferred data provider list](preferred-data-provider-list.md)
[CellCore/PerDevice/General/PreferredDataProviderList](p_icd_settings.cellcore_perdevice_general_preferreddataproviderlist)
[Preferred system types for phone connectivity](preferred-system-types-for-phone-connectivity.md)
[CellCore/PerDevice/General/ExcludedSystemTypesPerOperator](p_icd_settings.cellcore_perdevice_general_excludedsystemtypesperoperator)
[CellCore/PerDevice/General/OperatorListForExcludedSystemTypes](p_icd_settings.cellcore_perdevice_general_operatorlistforexcludedsystemtypes)
[CellCore/PerDevice/General/OperatorPreferredForFasterRadio](p_icd_settings.cellcore_perdevice_general_operatorpreferredforfasterradio)
[CellCore/PerDevice/General/Slot2ExcludedSystemTypes](p_icd_settings.cellcore_perdevice_general_slot2excludedsystemtypes)
[Roaming filter](roaming-filter.md)
Use MCSF to configure this customization.
[Threshold for automatic time update](threshold-for-automatic-time-update.md)
[AutomaticTime/NetworkTimeUpdateThreshold](p_icd_settings.automatictime_networktimeupdatethreshold)
 

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
<td>[Maps/UseExternalStorage](p_icd_settings.maps_useexternalstorage)</td>
</tr>
<tr class="even">
<td>[Maps for phones shipped in China](maps-for-phones-shipped-in-china.md)</td>
<td><p>The MCSF <code>ChinaVariant</code> setting is not available in Windows provisioning. We recommend that you use the [Maps/ChinaVariantWin10](p_icd_settings.maps_chinavariantwin10) Windows provisioning setting instead.</p></td>
</tr>
<tr class="odd">
<td>[Preloaded map data in the user store](preloaded-map-data-in-the-user-store.md)</td>
<td>[OtherAssets/MapData](p_icd_settings.otherassets_mapdata)</td>
</tr>
<tr class="even">
<td>[Temporary map data cache size](temporary-map-data-cache-size.md)</td>
<td>[Maps/UseSmallerCache](p_icd_settings.maps_usesmallercache)</td>
</tr>
</tbody>
</table>

 

## Customizations for phone calls


MCSF customization
Windows Provisioning settings
[Adjust the call duration information for CDMA calls](adjust-the-call-duration-information-for-cdma-calls.md)
[Phone/PhoneSettings/AdjustCDMACallTime](p_icd_settings.phone_phonesettings_adjustcdmacalltime)
[Always display the dialed phone number](always-display-the-dialed-phone-number.md)
[Phone/PhoneSettings/DisplayNumberAsDialed](p_icd_settings.phone_phonesettings_displaynumberasdialed)
[Branding for phone calls](branding-for-phone-calls.md)
[Phone/BrandingInformation/BrandingFlags](p_icd_settings.phone_brandinginformation_brandingflags)
[Caller ID matching](caller-id-matching.md)
[Phone/PhoneSettings/CallIDMatch](p_icd_settings.phone_phonesettings_callidmatch)
[Cause codes](cause-codes.md)
Phone/CauseCodeRegistrationTable

The Windows provisioning setting may not work so we recommend using MCSF to configure this customization.

[Configure message waiting indicator notifications](configure-message-waiting-indicator-notifications.md)
[Phone/PerSimSettings/\_\_IMSI/IgnoreMWINotifications](p_icd_settings.phone_persimsettings___imsi_ignoremwinotifications)
[Dial string overrides when roaming](dial-string-overrides-when-roaming.md)
[Phone/PerSimSettings/\_\_IMSI/RoamingNumberOverrides](p_icd_settings.phone_persimsettings___imsi_roamingnumberoverrides)
[Dialer codes for supplementary services](dialer-codes-for-supplementary-services.md)
Use MCSF to configure this customization.
[Dialer codes to launch diagnostic applications](dialer-codes-to-launch-diagnostic-applications.md)
[Phone/PartnerAppSupport/PartnerAppTaskUri](p_icd_settings.phone_partnerappsupport_partnerapptaskuri)
[Phone/PartnerAppSupport/PartnerAppProvisioningFilePath](p_icd_settings.phone_partnerappsupport_partnerappprovisioningfilepath)
[Phone/PartnerAppSupport/PartnerImmediateDialStrings](p_icd_settings.phone_partnerappsupport_partnerimmediatedialstrings)
[Phone/PartnerAppSupport/PartnerNonImmediateDialStrings](p_icd_settings.phone_partnerappsupport_partnernonimmediatedialstrings)
[Disable link to contact card in active call screen](disable-link-to-contact-card-in-active-call-screen.md)
[Phone/PhoneShellUI/EnableSoftwareProximitySensorMitigation](p_icd_settings.phone_phoneshellui_enablesoftwareproximitysensormitigation)
[Disable video upgrade Store navigation](disable-video-upgrade-store-navigation.md)
[Phone/PhoneSettings/DisableVideoUpgradeStoreNavigation](p_icd_settings.phone_phonesettings_disablevideoupgradestorenavigation)
[Disable voicemail phone number display](disable-voicemail-phone-number-display.md)
[Phone/PhoneSettings/DisableVoicemailPhoneNumberDisplay](p_icd_settings.phone_phonesettings_disablevoicemailphonenumberdisplay)
[Dismiss the last USSD waiting dialog](dismiss-the-last-ussd-waiting-dialog.md)
[Phone/PerSimSettings/\_\_IMSI/AutoDismissUssdWaitingDialog](p_icd_settings.phone_persimsettings___imsi_autodismissussdwaitingdialog)
[DTMF tones](dtmf-tones.md)
[CellCore/PerDevice/General/DTMFOnTime](p_icd_settings.cellcore_perdevice_general_dtmfontime)
[CellCore/PerDevice/General/DTMFOffTime](p_icd_settings.cellcore_perdevice_general_dtmfofftime)
[Emergency phone numbers](emergency-phone-numbers.md)
The emergency phone numbers are implemented by the modem vendor. See the documentation provided by the modem vendor for more information.

[Enable IMS services](enable-ims-services.md)
[CellCore/perIMSI/\_\_IMSI/VoLTE/IMSServices](p_icd_settings.cellcore_perimsi___imsi_volte_imsservices)
[CellCore/perIMSI/\_\_IMSI/VoLTE/IMSOMADMServices](p_icd_settings.cellcore_perimsi___imsi_volte_imsomadmservices)
[Enable RCS](p_phcustomization.enable_rcs)
[CellCore/PerDevice/RCS/SystemEnabled](p_icd_settings.cellcore_perdevice_rcs_systemenabled)
[CellCore/PerDevice/RCS/UserEnabled](p_icd_settings.cellcore_perdevice_rcs_userenabled)
[CellCore/PerIMSI/\_\_IMSI/RCS/UseSingleRegistration](p_icd_settings.cellcore_perimsi___imsi_rcs_usesingleregistration)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/ShowRcsEnabled](p_icd_settings.messaging_persimsettings___iccid_rcsoptions_showrcsenabled)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsEnabled](p_icd_settings.messaging_persimsettings___iccid_rcsoptions_rcsenabled)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsSendReadReceipt](p_icd_settings.messaging_persimsettings___iccid_rcsoptions_rcssendreadreceipt)
[Messaging/PerSimSettings/\_\_ICCID/RcsOptions/RcsFileTransferAutoAccept](p_icd_settings.messaging_persimsettings___iccid_rcsoptions_rcsfiletransferautoaccept)
[Enable long DTMF tones](enable-long-dtmf-tones.md)
[Phone/PhoneSettings/ContinuousDTMFEnabled](p_icd_settings.phone_phonesettings_continuousdtmfenabled)
[Maximum number of participants in a VoLTE conference call](maximum-number-of-participants-in-a-volte-conference-call.md)
[Phone/PhoneSettings/ConferenceCallMaximumPartyCount](p_icd_settings.phone_phonesettings_conferencecallmaximumpartycount)
[Network-controlled caller ID settings](network-controlled-caller-id-settings.md)
[Phone/PerSimSettings/\_\_IMSI/ShowCallerIdNetworkDefaultSetting](p_icd_settings.phone_persimsettings___imsi_showcalleridnetworkdefaultsetting)
[Phone/PerSimSettings/\_\_IMSI/DefaultCallerIdSetting](p_icd_settings.phone_persimsettings___imsi_defaultcalleridsetting)
[Supplementary services exclusions](supplementary-services-exclusions.md)
[Phone/PerSimSettings/\_\_IMSI/IgnoreUssdExclusions](p_icd_settings.phone_persimsettings___imsi_ignoreussdexclusions)
[Phone/PerSimSettings/\_\_IMSI/UssdExclusionList](p_icd_settings.phone_persimsettings___imsi_ussdexclusionlist)
[Use OK for USSD dialogs](use-ok-for-ussd-dialogs.md)
[Phone/PhoneSettings/UseOKForUssdDialogs](p_icd_settings.phone_phonesettings_useokforussddialogs)
[Use voice domain for emergency call branding](use-voice-domain-for-emergency-call-branding.md)
[Phone/PhoneSettings/UseVoiceDomainForEmergencyCallBranding](p_icd_settings.phone_phonesettings_usevoicedomainforemergencycallbranding)
[Visual voicemail](visual-voicemail.md)
Use MCSF to configure this customization.
[Voice over LTE call indication](voice-over-lte-call-indication.md)
[Phone/PhoneSettings/VoLTEAudioQualityString](p_icd_settings.phone_phonesettings_volteaudioqualitystring)
[Voicemail SMS intercept](voicemail-sms-intercept.md)
[Messaging/GlobalSettings/VoicemailIntercept/SyncSender](p_icd_settings.messaging_globalsettings_voicemailintercept_syncsender)
[Messaging/GlobalSettings/VoicemailIntercept/SyncPrefix](p_icd_settings.messaging_globalsettings_voicemailintercept_syncprefix)
 

## Customizations for photos, music, and videos


MCSF customization
Windows Provisioning settings
[Adding OEM lens apps as options for the default camera](adding-oem-lens-apps-as-options-for-the-default-camera.md)
[Photos/LensApps](p_icd_settings.photos_lensapps)
[Audio volume limitation](audio-volume-limitation.md)
[VolumeLimit/EnableVolumeLimit](p_icd_settings.volumelimit_enablevolumelimit)
[VolumeLimit/VolumeLimit](p_icd_settings.volumelimit_volumelimit)
Camera quick bar
This customization is deprecated in Windows 10 Mobile. OEMs can no longer choose which buttons are displayed in the camera UI.

[Configuring OEM lens apps to launch above the lock screen](configuring-oem-lens-apps-to-launch-above-the-lock-screen.md)
[Photos/LensApps](p_icd_settings.photos_lensapps)
[Maximum enumerable photo size](maximum-enumerable-photo-size.md)
[Camera/MaximumEnumerablePhotoSize](p_icd_settings.camera_maximumenumerablephotosize)
[Reset the audio volume limitation and warning](reset-the-audio-volume-limitation-and-warning.md)
Use MCSF to configure this customization.
Set an OEM lens as the default out-of-box camera
This customization is not supported in Windows 10 Mobile.
[Settings for capture mode, burst support, and burst storage duration](settings-for-capture-mode-burst-support-and-burst-storage-duration.md)
[Photos/OEM/BurstSupported](p_icd_settings.photos_oem_burstsupported)
[Photos/OEM/CaptureMode](p_icd_settings.photos_oem_capturemode)
[Photos/OEM/DefaultBurstStorageDuration](p_icd_settings.photos_oem_defaultburststorageduration)
 

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
<td>[Browser/SearchProviders/Default](p_icd_settings.browser_searchproviders_default)</td>
</tr>
<tr class="even">
<td><p>Additional search providers</p>
<p>Use the Windows provisioning setting to configure this customization.</p></td>
<td>[Browser/SearchProviders/SearchProviderList](p_icd_settings.browser_searchproviders_searchproviderlist)</td>
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
[Theme/OLEDWarning](p_icd_settings.theme_oledwarning)
[Additional alarms](additional-alarms.md)
Use MCSF to configure this customization.
[Additional notification sounds](additional-notification-sounds.md)
Use MCSF to configure this customization.
[Additional ringtones](additional-ringtones.md)
Use MCSF to configure this customization.
[Call drop and call waiting sounds](call-drop-and-call-waiting-sounds.md)
[EventSounds/DefaultCallDropSound](p_icd_settings.eventsounds_defaultcalldropsound)
[EventSounds/DefaultCallWaitingSound](p_icd_settings.eventsounds_defaultcallwaitingsound)
[Camera shutter sound](camera-shutter-sound.md)
[Camera/ShutterSoundUI](p_icd_settings.camera_shuttersoundui)
[Ringtone store application](ringtone-store-application.md)
[EventSounds/GetMoreRingtonesLink](p_icd_settings.eventsounds_getmoreringtoneslink)
[Additional lock screen backgrounds](additional-lock-screen-backgrounds.md)
Use MCSF to configure this customization.
[Lock screen notifications](lock-screen-notifications.md)
[LockScreen/LockNotificationAppID](p_icd_settings.lockscreen_locknotificationappid)
[LockScreen/LockNotificationAppTile](p_icd_settings.lockscreen_locknotificationapptile)
[Screen timeout for AMOLED and OLED displays](screen-time-out-for-amoled-and-oled-displays.md)
[LockScreen/ScreenTimeOut](p_icd_settings.lockscreen_screentimeout)
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
[WiFi/FirstBoot/WiFiToWLAN](p_icd_settings.wifi_firstboot_wifitowlan)
[Enable static IP](enable-static-ip.md)
[WiFi/Config/EnableStaticIP](p_icd_settings.wifi_config_enablestaticip)
[Limited connectivity status](limited-connectivity-status.md)
[WiFi/Config/PublishLimitedConnectivity](p_icd_settings.wifi_config_publishlimitedconnectivity)
[Wi-Fi always on, always connected](wi-fi-always-on-always-connected.md)
[ConnectivityProfiles/WiFiSense/Config/AlwaysOnAlwaysConnected](p_icd_settings.connectivityprofiles_wifisense_config_alwaysonalwaysconnected)
[ConnectivityProfiles/WiFiSense/FirstBoot/LowPowerSupported](p_icd_settings.connectivityprofiles_wifisense_firstboot_lowpowersupported)
[Wi-Fi icon and notifications](wi-fi-icon-and-notifications.md)
[ConnectivityProfiles/WiFiSense/Config/ScanInterval](p_icd_settings.connectivityprofiles_wifisense_config_scaninterval)
[ConnectivityProfiles/WiFiSense/Config/SignalStrengthBar](p_icd_settings.connectivityprofiles_wifisense_config_signalstrengthbar)
[ConnectivityProfiles/WiFiSense/Config/SignalStrengthDelta](p_icd_settings.connectivityprofiles_wifisense_config_signalstrengthdelta)
[Wi-Fi Sense](wi-fi-sense.md)
[WiFi/FirstBoot/AutoConnectAllowed](p_icd_settings.wifi_firstboot_autoconnectallowed)
[WiFi/FirstBoot/DefaultAutoConnectState](p_icd_settings.wifi_firstboot_defaultautoconnectstate)
[WiFi/FirstBoot/DefaultWiFiSharingState](p_icd_settings.wifi_firstboot_defaultwifisharingstate)
[Add a suffix to the mobile operator name](add-a-suffix-to-the-mobile-operator-name.md)
[CellCore/PerDevice/General/NetworkSuffix](p_icd_settings.cellcore_perdevice_general_networksuffix) (per device)
[CellCore/PerIMSI/\_\_IMSI/General/NetworkSuffix](p_icd_settings.cellcore_perimsi___imsi_general_networksuffix) (per IMSI)
[Additional Internet APN settings](additional-internet-apn-settings.md)
[CellCore/PerDevice/CellUX/HideAPN](p_icd_settings.cellcore_perdevice_cellux_hideapn) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideAPN](p_icd_settings.cellcore_perimsi___imsi_cellux_hideapn) (per IMSI)
[CellCore/PerDevice/CellUX/HideAPNIPType](p_icd_settings.cellcore_perdevice_cellux_hideapniptype) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideAPNIPType](p_icd_settings.cellcore_perimsi___imsi_cellux_hideapniptype) (per IMSI)
[CellCore/PerDevice/CellUX/APNIPTypeIfHidden](p_icd_settings.cellcore_perdevice_cellux_apniptypeifhidden) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/APNIPTypeIfHidden](p_icd_settings.cellcore_perimsi___imsi_cellux_apniptypeifhidden) (per IMSI)
[Background cellular data restriction](background-cellular-data-restriction.md)
[DataSense/DataSaverMode](p_icd_settings.datasense_datasavermode)
[Cellular data fallback when in limited Wi-Fi connectivity](cellular-data-fallback-when-in-limited-wi-fi-connectivity.md)
[CellCore/PerDevice/CellData/CellularFailOver](p_icd_settings.cellcore_perdevice_celldata_cellularfailover)
[Cellular settings for phones](cellular-settings-for-phones.md)
[CellCore/PerDevice/CellUX/HideModeSelection](p_icd_settings.cellcore_perdevice_cellux_hidemodeselection) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideModeSelection](p_icd_settings.cellcore_perimsi___imsi_cellux_hidemodeselection) (per IMSI)
[CellCore/PerDevice/CellUX/Hide3GPPNetworks](p_icd_settings.cellcore_perdevice_cellux_hide3gppnetworks) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPPNetworks](p_icd_settings.cellcore_perimsi___imsi_cellux_hide3gppnetworks) (per IMSI)
[CellCore/PerDevice/CellUX/Hide3GPP2Selection](p_icd_settings.cellcore_perdevice_cellux_hide3gpp2selection) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPP2Selection](p_icd_settings.cellcore_perimsi___imsi_cellux_hide3gpp2selection) (per IMSI)
[Change SIM to SIM/UIM](change-sim-to-simuim.md)
[CellCore/PerDevice/UIX/SIMToSIMUIM](p_icd_settings.cellcore_perdevice_uix_simtosimuim)
[Change the default SIM name to match the SPN or operator name](change-the-default-sim-name-to-match-the-spn-or-operator-name.md)
[CellCore/PerIMSI/\_\_IMSI\_General/Critical/MultivariantProvisionedSPN](p_icd_settings.cellcore_perimsi___imsi_general_critical_multivariantprovisionedspn)
[Connection speed option](connection-speed-option.md)
[CellCore/PerDevice/CellUX/HideHighestSpeed](p_icd_settings.cellcore_perdevice_cellux_hidehighestspeed)
[CellCore/PerDevice/CellUX/HideHighestSpeed2G](p_icd_settings.cellcore_perdevice_cellux_hidehighestspeed2g)
[CellCore/PerDevice/CellUX/HideHighestSpeed3GOnly](p_icd_settings.cellcore_perdevice_cellux_hidehighestspeed3gonly)
[CellCore/PerDevice/CellUX/HideHighestSpeed4G](p_icd_settings.cellcore_perdevice_cellux_hidehighestspeed4g)
[CellCore/PerDevice/CellUX/HideHighestSpeed4GOnly](p_icd_settings.cellcore_perdevice_cellux_hidehighestspeed4gonly)
[CellCore/PerDevice/CellUX/HighestSpeed2G](p_icd_settings.cellcore_perdevice_cellux_highestspeed2g)
[CellCore/PerDevice/CellUX/HighestSpeed3G](p_icd_settings.cellcore_perdevice_cellux_highestspeed3g)
[CellCore/PerDevice/CellUX/HighestSpeed3GOnly](p_icd_settings.cellcore_perdevice_cellux_highestspeed3gonly)
[CellCore/PerDevice/CellUX/HighestSpeed3GPreferred](p_icd_settings.cellcore_perdevice_cellux_highestspeed3gpreferred)
[CellCore/PerDevice/CellUX/HighestSpeed4G](p_icd_settings.cellcore_perdevice_cellux_highestspeed4g)
[CellCore/PerDevice/CellUX/HighestSpeed4GOnly](p_icd_settings.cellcore_perdevice_cellux_highestspeed4gonly)
[CellCore/PerDevice/CellUX/HighestSpeedTitle](p_icd_settings.cellcore_perdevice_cellux_highestspeedtitle)
[CellCore/PerDevice/CellUX/ShowHighestSpeed3GPreferred](p_icd_settings.cellcore_perdevice_cellux_showhighestspeed3gpreferred)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed2G](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed2g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed3GOnly](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed3gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed4G](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed4g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed4GOnly](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed4gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed2G](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeed2g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed3G](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeed3g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideHighestSpeed3GOnly](p_icd_settings.cellcore_perimsi___imsi_cellux_hidehighestspeed3gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed3GPreferred](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeed3gpreferred)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed4G](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeed4g)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeed4GOnly](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeed4gonly)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HighestSpeedTitle](p_icd_settings.cellcore_perimsi___imsi_cellux_highestspeedtitle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowHighestSpeed3GPreferred](p_icd_settings.cellcore_perimsi___imsi_cellux_showhighestspeed3gpreferred)
[Default highest connection speed](default-highest-connection-speed.md)
[CellCore/PerDevice/General/ExcludedSystemTypesByDefault](p_icd_settings.cellcore_perdevice_general_excludedsystemtypesbydefault)
[CellCore/PerIMSI/\_\_IMSI/General/ExcludedSystemTypesByDefault](p_icd_settings.cellcore_perimsi___imsi_general_excludedsystemtypesbydefault)
[Default roaming option](default-roaming-option.md)
[Connections/General/DataRoam](p_icd_settings.connections_general_dataroam)
[Extended error messages for reject codes](extended-error-messages-for-reject-codes.md)
[CellCore/PerDevice/CellUX/ShowExtendedRejectCodes](p_icd_settings.cellcore_perdevice_cellux_showextendedrejectcodes)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowExtendedRejectCodes](p_icd_settings.cellcore_perimsi___imsi_cellux_showextendedrejectcodes)
[Hide CDMA mode selection](hide-cdma-mode-selection.md)
[CellCore/PerDevice/CellUX/Hide3GPP2ModeSelection](p_icd_settings.cellcore_perdevice_cellux_hide3gpp2modeselection)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Hide3GPP2ModeSelection](p_icd_settings.cellcore_perimsi___imsi_cellux_hide3gpp2modeselection)
[Manual network selection timeout](manual-network-selection-timeout.md)
[CellCore/PerDevice/General/ManualNetworkSelectionTimeout](p_icd_settings.cellcore_perdevice_general_manualnetworkselectiontimeout)
[Permanent automatic mode](permanent-automatic-mode.md)
[CellCore/PerDevice/General/AvoidStayingInManualSelection](p_icd_settings.cellcore_perdevice_general_avoidstayinginmanualselection) (per device)
[CellCore/PerIMSI/\_\_IMSI/General/AvoidStayingInManualSelection](p_icd_settings.cellcore_perimsi___imsi_general_avoidstayinginmanualselection) (per IMSI)
[Remove the trailing MSISDN digits on a SIM card](remove-the-trailing-msisdn-digits-on-a-sim-card.md)
[CellCore/PerIMSI/\_\_IMSI/General/Critical/SimNameWithoutMSISDNEnabled](p_icd_settings.cellcore_perimsi___imsi_general_critical_simnamewithoutmsisdnenabled)
[Settings for IMS services](settings-for-ims-services.md)
[CellCore/PerDevice/CellUX/Critical/ShowVoLTEToggle](p_icd_settings.cellcore_perdevice_cellux_critical_showvoltetoggle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/ShowVoLTEToggle](p_icd_settings.cellcore_perdevice_cellux_critical_showvoltetoggle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchIMS](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_switchims)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchSMSOverIMS](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_switchsmsoverims)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/SwitchVoiceOverIMS](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_switchvoiceoverims)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleDescription](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_voltetoggledescription)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleTitle](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_voltetoggletitle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/ShowVoLTERoaming](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_showvolteroaming)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingOnDescription](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_volteroamingondescription)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingOffDescription](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_volteroamingoffdescription)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingTitle](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_volteroamingtitle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTESectionTitle](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_voltesectiontitle)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTESettingDisableDuringCall](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_voltesettingdisableduringcall)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/WFCSettingDisableDuringCall](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_wfcsettingdisableduringcall)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTEToggleSettingDisableDuringCall](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_voltetogglesettingdisableduringcall)
[CellCore/PerIMSI/\_\_IMSI/CellUX/Critical/VoLTERoamingSettingDisableDuringCall](p_icd_settings.cellcore_perimsi___imsi_cellux_critical_volteroamingsettingdisableduringcall)
[View Internet APN](view-internet-apn.md)
[CellCore/PerDevice/CellUX/ShowViewAPN](p_icd_settings.cellcore_perdevice_cellux_showviewapn) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowViewAPN](p_icd_settings.cellcore_perimsi___imsi_cellux_showviewapn) (per IMSI)
[Wi-Fi calling errors](p_phcustomization.wi-fi_calling_errors)
[CellCore/PerDevice/CellUX/ShowWifiCallingError](p_icd_settings.cellcore_perdevice_cellux_showwificallingerror) (per device)
[CellCore/PerDevice/CellUX/ShowSpecificWifiCallingError](p_icd_settings.cellcore_perdevice_cellux_showspecificwificallingerror) (per device)
[CellCore/PerDevice/CellUX/GenericWifiCallingErrorMessage](p_icd_settings.cellcore_perdevice_cellux_genericwificallingerrormessage) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowWifiCallingError](p_icd_settings.cellcore_perimsi___imsi_cellux_showwificallingerror) (per IMSI)
[CellCore/PerIMSI/\_\_IMSI/CellUX/ShowSpecificWifiCallingError](p_icd_settings.cellcore_perimsi___imsi_cellux_showspecificwificallingerror) (per IMSI)
[Cellcore/PerIMSI/\_\_IMSI/CellUX/GenericWifiCallingErrorMessage](p_icd_settings.cellcore_perimsi___imsi_cellux_genericwificallingerrormessage) (per IMSI)
[Kid's Corner default theme and accent color](kids-corner-default-theme-and-accent-color.md)
[KidsCorner/DefaultThemeBackground](p_icd_settings.kidscorner_defaultthemebackground)
[KidsCorner/DefaultThemeAccentColor](p_icd_settings.kidscorner_defaultthemeaccentcolor)
[Brightness tuning](brightness-tuning.md)
[Brightness/LowBrightnessValue](p_icd_settings.brightness_lowbrightnessvalue)
[Brightness/MediumBrightnessValue](p_icd_settings.brightness_mediumbrightnessvalue)
[Brightness/HighBrightnessValue](p_icd_settings.brightness_highbrightnessvalue)
[Hide the auto brightness setting](hide-the-auto-brightness-setting.md)
[Brightness/HideAutoBrightness](p_icd_settings.brightness_hideautobrightness)
[Disabling NITZ or daylight saving time](disabling-nitz-or-daylight-saving-time.md)
[AutomaticTime/EnableAutomaticTime](p_icd_settings.automatictime_enableautomatictime)
[AutomaticTime/DisableDaylightSavingsTime](p_icd_settings.automatictime_disabledaylightsavingstime)
[Time zone priority list](time-zone-priority-list.md)

This customization is no longer necessary beginning in Windows 10 Mobile.

[AutomaticTime/TimeZonePriority1](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority2](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority3](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority4](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority5](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority6](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority7](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority8](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority9](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority10](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority11](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority12](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority13](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority14](p_icd_settings.automatictime_timezonepriority1)
[AutomaticTime/TimeZonePriority15](p_icd_settings.automatictime_timezonepriority1)
[Disabling text correction and suggestions](disabling-text-correction-and-suggestions.md)
[TextInput/Intelligence/DisablePredictions](p_icd_settings.textinput_intelligence_disablepredictions)
[Hardware keyboard character repeats hold time and delay](hardware-keyboard-character-repeats-hold-time-and-delay.md)
[TextInput/HardwareKeyboard/AutoRepeatInitialDelay](p_icd_settings.textinput_hardwarekeyboard_autorepeatinitialdelay)
[TextInput/HardwareKeyboard/KeyRepeatRate](p_icd_settings.textinput_hardwarekeyboard_keyrepeatrate)
[Pre-enabled keyboard](pre-enabled-keyboard.md)
[TextInput/PreEnabledKeyboard](p_icd_settings.textinput_preenabledkeyboard)
[Text correction and suggestions](text-correction-and-suggestions.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Phone languages](phone-languages.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Default list of countries/regions](p_phcustomization.default_list_of_countries_regions)
[Globalization/ExcludedNations](p_icd_settings.globalization_excludednations)
[Regional format](regional-format.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Speech languages](speech-languages.md)
See the MCSF topic and customize using an OEMInput.xml file.
[Telecoil and TTY support for accessibility](telecoil-and-tty-support-for-accessibility.md)
Telecoil: [TextInput/ShowInControlPanel](p_icd_settings.textinput_preenabledkeyboard)
Telecoil: [EaseOfAccessCPL/Telecoil/Enabled](p_icd_settings.easeofaccesscpl_telecoil_enabled)
TTY: [EaseOfAccessCPL/TTY/ShowInControlPanel](p_icd_settings.easeofaccesscpl_tty_showincontrolpanel)
TTY: [EaseOfAccessCPL/TTY/CompactMode](p_icd_settings.easeofaccesscpl_tty_compactmode)
TTY: [EaseOfAccessCPL/TTY/Mode](p_icd_settings.easeofaccesscpl_tty_mode)
[Auto scan for phone updates](auto-scan-for-phone-updates.md)
[DeviceUpdate/DisplayCheckForUpdates](p_icd_settings.deviceupdate_displaycheckforupdates)
[Block using SD card for updates](block-using-sd-card-for-updates.md)
[DeviceUpdate/BlockUsingSDCard](p_icd_settings.deviceupdate_blockusingsdcard)
[Enable SD card override](enable-sd-card-override.md)
[DeviceUpdate/EnableSDCardOverride](p_icd_settings.deviceupdate_enablesdcardoverride)
[Phone metadata in DeviceTargetingInfo](phone-metadata-in-devicetargetinginfo.md)
[DeviceInfo/Static/PhoneManufacturer](p_icd_settings.deviceinfo_static_phonemanufacturer)
[DeviceInfo/Static/PhoneROMVersion](p_icd_settings.deviceinfo_static_phoneromversion)
[DeviceInfo/Static/PhoneHardwareRevision](p_icd_settings.deviceinfo_static_phonehardwarerevision)
[DeviceInfo/Static/PhoneSOCVersion](p_icd_settings.deviceinfo_static_phonesocversion)
[DeviceInfo/Static/PhoneFirmwareRevision](p_icd_settings.deviceinfo_static_phonefirmwarerevision)
[DeviceInfo/Static/PhoneRadioHardwareRevision](p_icd_settings.deviceinfo_static_phoneradiohardwarerevision)
[DeviceInfo/Static/PhoneRadioSoftwareRevision](p_icd_settings.deviceinfo_static_phoneradiosoftwarerevision)
[DeviceInfo/Static/PhoneBootLoaderVersion](p_icd_settings.deviceinfo_static_phonebootloaderversion)
[DeviceInfo/Static/PhoneROMLanguage](p_icd_settings.deviceinfo_static_phoneromlanguage)
[DeviceInfo/Static/PhoneHardwareVariant](p_icd_settings.deviceinfo_static_phonehardwarevariant)
[DeviceInfo/Static/PhoneManufacturerDisplayName](p_icd_settings.deviceinfo_static_phonemanufacturerdisplayname)
[DeviceInfo/Variant/PhoneMobileOperatorName](p_icd_settings.deviceinfo_variant_phonemobileoperatorname)
[DeviceInfo/Variant/PhoneManufacturerModelName](p_icd_settings.deviceinfo_variant_phonemanufacturermodelname)
[DeviceInfo/Variant/PhoneMobileOperatorDisplayName](p_icd_settings.deviceinfo_variant_phonemobileoperatordisplayname)
[DeviceInfo/Variant/PhoneSupportPhoneNumber](p_icd_settings.deviceinfo_variant_phonesupportphonenumber)
[DeviceInfo/Variant/PhoneSupportLink](p_icd_settings.deviceinfo_variant_phonesupportlink)
[DeviceInfo/Variant/PhoneOEMSupportLink](p_icd_settings.deviceinfo_variant_phoneoemsupportlink)
[DeviceInfo/Variant/PhoneModelName](p_icd_settings.deviceinfo_variant_phonemodelname)
[DeviceInfo/Variant/RoamingSupportPhoneNumber](p_icd_settings.deviceinfo_variant_roamingsupportphonenumber)
[Showing the FM radio](showing-the-fm-radio.md)
[FmRadio/NotPresent](p_icd_settings.fmradio_notpresent)
[FM radio frequency band](fm-radio-frequency-band.md)
[FmRadio/RadioRegion](p_icd_settings.fmradio_radioregion)
[Default value for browser data saver](default-value-for-browser-data-saver.md)
[InternetExplorer/DataSaving/BrowserDataSaver](p_icd_settings.internetexplorer_datasaving_browserdatasaver)
[Show pictures automatically when browsing](show-pictures-automatically-when-browsing.md)
[InternetExplorer/DataSaving/ShowPicturesAutomatically](p_icd_settings.internetexplorer_datasaving_showpicturesautomatically)
[CMAS Required Monthly Test](cmas-required-monthly-test.md)
Use MCSF to configure this customization.
[Disable editing of the SMS center number](disable-editing-of-the-sms-center-number.md)
Use MCSF to configure this customization.
[Display CMAS message order](display-cmas-message-order.md)
[Messaging/GlobalSettings/DisplayCmasLifo](p_icd_settings.messaging_globalsettings_displaycmaslifo)
[Emergency notifications](emergency-notifications.md)
Use MCSF to configure this customization.
[Extract phone numbers in strings](extract-phone-numbers-in-strings.md)
[Messsaging/GlobalSettings/ExtractPhoneNumbersInStrings](p_icd_settings.messaging_globalsettings_extractphonenumbersinstrings)
[International assisted dialing for SMS](international-assisted-dialing-for-sms.md)
Use MCSF to configure this customization.
[MMS APN settings](mms-apn-settings.md)
[CellCore/PerDevice/CellUX/HideMMSAPN](p_icd_settings.cellcore_perdevice_cellux_hidemmsapn) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideMMSAPN](p_icd_settings.cellcore_perimsi___imsi_cellux_hidemmsapn) (per IMSI)
[CellCore/PerDevice/CellUX/HideMMSAPNIPType](p_icd_settings.cellcore_perdevice_cellux_hidemmsapniptype) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/HideMMSAPNIPType](p_icd_settings.cellcore_perimsi___imsi_cellux_hidemmsapniptype) (per IMSI)
[CellCore/PerDevice/CellUX/MMSAPNIPTypeIfHidden](p_icd_settings.cellcore_perdevice_cellux_mmsapniptypeifhidden) (per device)
[CellCore/PerIMSI/\_\_IMSI/CellUX/MMSAPNIPTypeIfHidden](p_icd_settings.cellcore_perimsi___imsi_cellux_mmsapniptypeifhidden) (per IMSI)
[MMS automatic download](mms-automatic-download.md)
[Messaging/PerSimSettings/\_\_ICCID/AutomaticallyDownload/ShowAutomaticallyDownloadMMSToggle](p_icd_settings.messaging_persimsettings___iccid_automaticallydownload_showautomaticallydownloadmmstoggle)
[Messaging/PerSimSettings/\_\_ICCID/AutomaticallyDownload/AutomaticallyDownload](p_icd_settings.messaging_persimsettings___iccid_automaticallydownload_automaticallydownload)
[MMS data options](p_phcustomization.mms_data_options)
Use MCSF to configure this customization.
[MMS delivery confirmation](mms-delivery-confirmation.md)
[Messaging/PerSimSettings/\_\_ICCID/RequestDeliveryReport/RequestDeliveryReportIsSupported](p_icd_settings.messaging_persimsettings___iccid_requestdeliveryreport_requestdeliveryreportissupported)
[Messaging/PerSimSettings/\_\_ICCID/RequestDeliveryReport/RequestDeliveryReport](p_icd_settings.messaging_persimsettings___iccid_requestdeliveryreport_requestdeliveryreport)
[MMS for group messages](mms-for-group-messages.md)
Use MCSF to configure this customization.
[MMS receipt acknowledgement](mms-receipt-acknowledgement.md)
[Messaging/PerSimSettings/\_\_ICCID/AllowSendingDeliveryReport/AllowSendingDeliveryReportIsSupported](p_icd_settings.messaging_persimsettings___iccid_allowsendingdeliveryreport_allowsendingdeliveryreportissupported)
[Messaging/PerSimSettings/\_\_ICCID/AllowSendingDeliveryReport/AllowSendingDeliveryReport](p_icd_settings.messaging_persimsettings___iccid_allowsendingdeliveryreport_allowsendingdeliveryreport)
[SMS delivery confirmation](sms-delivery-confirmation.md)
Use MCSF to configure this customization.
[Contact management on the SIM](contact-management-on-the-sim.md)
[People/SIMContactManagement/EnableSIMAddressBookAndExport](p_icd_settings.people_simcontactmanagement_enablesimaddressbookandexport)
[Disable wait for phonebook ready signal from the modem](disable-wait-for-phonebook-ready-signal-from-the-modem.md)
[People/SIMContactManagement/CheckFDNStateAfterPhonebookReady](p_icd_settings.people_simcontactmanagement_checkfdnstateafterphonebookready)
[Hide contacts without phone numbers](hide-contacts-without-phone-numbers.md)
[People/ContactsFilteringSettings/HideContactsWithoutPhoneNumbers](p_icd_settings.people_contactsfilteringsettings_hidecontactswithoutphonenumbers)
[Sort order for contacts](sort-order-for-contacts.md)
[People/SortAndDisplaySettings/SortBy](p_icd_settings.people_sortanddisplaysettings_sortby)
[People/SortAndDisplaySettings/DisplayBy](p_icd_settings.people_sortanddisplaysettings_displayby)
[Sort order for contacts override](sort-order-for-contacts-override.md)
[People/SortAndDisplaySettings/OEMOverridesSortDisplay](p_icd_settings.people_sortanddisplaysettings_oemoverridessortdisplay)
[Assistance for dialing international phone numbers](assistance-for-dialing-international-phone-numbers.md)
[Phone/PhoneSettings/AssistedDialSetting](p_icd_settings.phone_phonesettings_assisteddialsetting)
[Call forwarding](call-forwarding.md)
[Phone/PhoneSettings/HideCallForwarding](p_icd_settings.phone_phonesettings_hidecallforwarding)
[Conditional call forwarding](conditional-call-forwarding.md)
[Shell/SystemTray/ConditionalCallForwarding/ConditionalCallForwardingIcon](p_icd_settings.shell_systemtray_conditionalcallforwarding_conditionalcallforwardingicon)
[Hide the SIM security settings option](hide-the-sim-security-settings-option.md)
[Phone/PhoneSettings/HideSIMSecurityUI](p_icd_settings.phone_phonesettings_hidesimsecurityui)
[Long tones](long-tones.md)
[Phone/PhoneSettings/ShowLongTones](p_icd_settings.phone_phonesettings_showlongtones)
[Overriding the voicemail number on the UICC](overriding-the-voicemail-number-on-the-uicc.md)
[Phone/PerSimSettings/\_\_IMSI/Critical/SimOverrideVoicemailNumber](p_icd_settings.phone_persimsettings___imsi_critical_simoverridevoicemailnumber)
[Video over LTE](video-over-lte.md)
[Phone/PerSimSettings/\_\_IMSI/ShowVideoCallingSwitch](p_icd_settings.phone_persimsettings___imsi_showvideocallingswitch)
[Phone/PerSimSettings/\_\_IMSI/DefaultEnableVideoCalling](p_icd_settings.phone_persimsettings___imsi_defaultenablevideocalling)
[Phone/PerSimSettings/\_\_IMSI/DefaultEnableVideoCapability](p_icd_settings.phone_persimsettings___imsi_defaultenablevideocapability)
[Phone/PerSimSettings/\_\_IMSI/ShowVideoCapabilitySwitch](p_icd_settings.phone_persimsettings___imsi_showvideocapabilityswitch)
[Phone/PerSimSettings/\_\_IMSI/AllowVideoConferencing](p_icd_settings.phone_persimsettings___imsi_allowvideoconferencing)
[Phone/PerSimSettings/\_\_IMSI/SupressVideoCallingChargesDialog](p_icd_settings.phone_persimsettings___imsi_supressvideocallingchargesdialog)
[Phone/PhoneSettingsVideoTransitionTimeout](p_icd_settings.phone_phonesettings_videotransitiontimeout)
[Phone/PhoneSettings/VideoCallingLabel](p_icd_settings.phone_phonesettings_videocallinglabel)
[Phone/PhoneSettings/VideoCallingDescription](p_icd_settings.phone_phonesettings_videocallingdescription)
[Phone/PhoneSettings/LowVideoQualityTimeout](p_icd_settings.phone_phonesettings_lowvideoqualitytimeout)
[Phone/Phonesettings/ConferenceCallMaximumPartyCount](p_icd_settings.phone_phonesettings_conferencecallmaximumpartycount)
[Voicemail number for CDMA phones](voicemail-number-for-cdma-phones.md)
[Phone/PerSimSettings/\_\_IMSI/Critical/MOSimFallbackVoicemailNumber](p_icd_settings.phone_persimsettings___imsi_critical_mosimfallbackvoicemailnumber)
[Wi-Fi calling operator name](p_phcustomization.wi-fi_calling_operator_name)
[Phone/PerSimSettings/\_\_IMSI/WiFiCallingOperatorName](p_icd_settings.phone_persimsettings___imsi_wificallingoperatorname)
[Enable the incompatible charger notification](enable-the-incompatible-charger-notification.md)
[WeakCharger/NotifyOnWeakCharger](p_icd_settings.weakcharger_notifyonweakcharger)
[Enable the data connection prompt](enable-the-data-connection-prompt.md)
[USBData/PromptForDataConnection](p_icd_settings.usbdata_promptfordataconnection)
[Hide the weak charger notification option UI](hide-the-weak-charger-notification-option-ui.md)
[WeakCharger/HideWeakChargerNotifyOptionUI](p_icd_settings.weakcharger_hideweakchargernotifyoptionui)
[CTA app install prompts](cta-app-install-prompts.md)
[Zune/Settings/RequireExtendedCapabilityPrompts](p_icd_settings.zune_settings_requireextendedcapabilityprompts)
[Windows Store for China](windows-phone-store-for-china.md)
[DeviceInfo/Static/PhoneROMLanguage](p_icd_settings.deviceinfo_static_phoneromlanguage)
[Display location icon](display-location-icon.md)
[Shell/SystemTray/LocationIcon](p_icd_settings.shell_systemtray_location_locationicon)
 

## Customizations for SMS and MMS


MCSF customization
Windows Provisioning settings
[Add encoding extension tables for SMS](add-encoding-extension-tables-for-sms.md)
Follow the MCSF customization to fully configure this customization, which requires a CodePageDLL asset.

[Automatic send retry and resize settings for MMS messages](automatic-send-retry-and-resize-settings-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/MaxRetryCount](p_icd_settings.messaging_persimsettings___iccid_maxretrycount)
`RetrySize` is not available in the Windows provisioning framework. Use MCSF to configure this setting.
[Automatically retry downloading MMS messages](automatically-retry-downloading-mms-messages.md)
Use MCSF to configure this customization.
[Content location in the multimedia message service center (MMSC)](content-location-in-the-multimedia-message-service-center--mmsc-.md)
[Messaging/PerSimSettings/\_\_ICCID/DefaultContentLocationUrl](p_icd_settings.messaging_persimsettings___iccid_defaultcontentlocationurl)
[Delay for resend attempts](delay-for-resend-attempts.md)
These settings are managed by the modem. For more information, contact the SoC vendor.
[Disable the EMS long messages feature](disable-the-ems-long-messages-feature.md)
[CellCore/PerDevice/SMS/SmsPageLimit](p_icd_settings.cellcore_perdevice_sms_smspagelimit) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsPageLimit](p_icd_settings.cellcore_perimsi___imsi_sms_smspagelimit) (per-IMSI)
[Expiration time for SMS messages](expiration-time-for-sms-messages.md)
[CellCore/PerDevice/SMS/MessageExpirySeconds](p_icd_settings.cellcore_perdevice_sms_messageexpiryseconds) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/MessageExpirySeconds](p_icd_settings.cellcore_perimsi___imsi_sms_messageexpiryseconds) (per-IMSI)
[Full error messages for SMS and MMS](full-error-messages-for-sms-and-mms.md)
[Messaging/PerSimSettings/\_\_ICCID/ErrorCodeEnabled](p_icd_settings.messaging_persimsettings___iccid_errorcodeenabled)
[IMS retry](ims-retry.md)
Use MCSF to configure this customization.
[IMSI authentication](imsi-authentication.md)
[Messaging/PerSimSettings/\_\_ICCID/ImsiAuthenticationToken](p_icd_settings.messaging_persimsettings___iccid_imsiauthenticationtoken)
[Maximum length for SMS messages](maximum-length-for-sms-messages.md)
[CellCore/PerDevice/SMS/SmsFragmentLimit](p_icd_settings.cellcore_perdevice_sms_smsfragmentlimit) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsFragmentLimit](p_icd_settings.cellcore_perimsi___imsi_sms_smsfragmentlimit) (per-IMSI)
[CellCore/PerDevice/SMS/SmsPageLimit](p_icd_settings.cellcore_perdevice_sms_smspagelimit) (per-device)
[CellCore/perIMSI/\_\_IMSI/SMS/SmsPageLimit](p_icd_settings.cellcore_perimsi___imsi_sms_smspagelimit) (per-IMSI)
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
[Messaging/PerSimSettings/\_\_ICCID/AllowSelectAllContacts](p_icd_settings.messaging_persimsettings___iccid_allowselectallcontacts)
[Sending SMS messages to SMTP addresses](sending-sms-messages-to-smtp-addresses.md)
Use MCSF to configure this customization.
[Server for MMS acknowledgement messages](server-for-mms-acknowledgement-messages.md)
Use MCSF to configure this customization.
[SMS encoding](sms-encoding.md)
[CellCore/PerDevice/SMS/Encodings/GSM7BitEncodingPage](p_icd_settings.cellcore_perdevice_sms_encodings_gsm7bitencodingpage) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/GSM7BitEncodingPage](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_gsm7bitencodingpage) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/GSM8BitEncodingPage](p_icd_settings.cellcore_perdevice_sms_encodings_gsm8bitencodingpage) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/GSM8BitEncodingPage](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_gsm8bitencodingpage) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/UseASCII](p_icd_settings.cellcore_perdevice_sms_encodings_useascii) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/UseASCII](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_useascii) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/UseKeyboardLanguage](p_icd_settings.cellcore_perdevice_sms_encodings_usekeyboardlanguage) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/UseKeyboardLanguage](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_usekeyboardlanguage) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/SendUDHNLSS](p_icd_settings.cellcore_perdevice_sms_encodings_sendudhnlss) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/SendUDHNLSS](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_sendudhnlss) (per IMSI)
[CellCore/PerDevice/SMS/Encodings/OctetEncodingPage](p_icd_settings.cellcore_perdevice_sms_encodings_octetencodingpage) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/Encodings/OctetEncodingPage](p_icd_settings.cellcore_perimsi___imsi_sms_encodings_octetencodingpage) (per IMSI)
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
[Messaging/PerSimSettings/\_\_ICCID/WapPushTechnology](p_icd_settings.messaging_persimsettings___iccid_wappushtechnology)
[Use insert-address-token or local raw address](use-insert-address-token-or-local-raw-address.md)
Use MCSF to configure this customization.
[Use UTF-8 for MMS messages with unspecified character encoding](use-utf-8-for-mms-messages-with-unspecified-character-encoding.md)
Use MCSF to configure this customization.
[User agent profile for MMS messages](user-agent-profile-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/UAProf](p_icd_settings.messaging_persimsettings___iccid_uaprof)
[Messaging/PerSimSettings/\_\_ICCID/UAProfToken](p_icd_settings.messaging_persimsettings___iccid_uaproftoken)
[User agent string for MMS messages](user-agent-string-for-mms-messages.md)
[Messaging/PerSimSettings/\_\_ICCID/UserAgentString](p_icd_settings.messaging_persimsettings___iccid_useragentstring)
[User alert for service indication messages](user-alert-for-service-indication-messages.md)
Use MCSF to configure this customization.
[Video attachments in MMS](video-attachments-in-mms.md)
[Messaging/PerSimSettings/\_\_ICCID/TargetVideoFormat](p_icd_settings.messaging_persimsettings___iccid_targetvideoformat)
 

## Customizations for Start


MCSF customization
Windows Provisioning settings
[Start layout for Windows 10 mobile editions](p_customize_converged.start_layout_for_windows_10_mobile_editions)
[Start layout for Windows 10 mobile editions](p_customize_converged.start_layout_for_windows_10_mobile_editions)
[Store live tile](store-live-tile.md)
[StoreMoOemGroup/OemMoCustomizedIsLiveTileEnabled](p_icd_settings.storemooemgroup_oemmocustomizedislivetileenabled)
[StoreMoOemGroup/OemMoLiveTileOptInToCellularAfterStoreLaunch](p_icd_settings.storemooemgroup_oemmolivetileoptintocellularafterstorelaunch)
 

## Customizations for specific mobile operators


MCSF customization
Windows Provisioning settings
Configure ERI for domestic and international
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmMBB0](p_icd_settings.cellcore_perdevice_external_imageonly_eri_algorithmmbb0)
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmMBB1](p_icd_settings.cellcore_perdevice_external_imageonly_eri_algorithmmbb1)
[CellCore/PerDevice/External/ImageOnly/ERI/AlgorithmWmRil](p_icd_settings.cellcore_perdevice_external_imageonly_eri_algorithmwmril)
[CellCore/PerDevice/External/ImageOnly/ERI/DataFileNameWmRil](p_icd_settings.cellcore_perdevice_external_imageonly_eri_datafilenamewmril)
[CellCore/PerDevice/External/ImageOnly/ERI/EnabledWmRil](p_icd_settings.cellcore_perdevice_external_imageonly_eri_enabledwmril)
[CellCore/PerDevice/External/ImageOnly/ERI/ERIDataFileNameMBB0](p_icd_settings.cellcore_perdevice_external_imageonly_eri_eridatafilenamembb0)
[CellCore/PerDevice/External/ImageOnly/ERI/ERIDataFileNameMBB1](p_icd_settings.cellcore_perdevice_external_imageonly_eri_eridatafilenamembb1)
[CellCore/PerDevice/External/ImageOnly/ERI/ERISprintIntlRoamDataFileNameMBB0](p_icd_settings.cellcore_perdevice_external_imageonly_eri_erisprintintlroamdatafilenamembb0)
[CellCore/PerDevice/External/ImageOnly/ERI/ERISprintIntlRoamDataFileNameMBB1](p_icd_settings.cellcore_perdevice_external_imageonly_eri_erisprintintlroamdatafilenamembb1)
[CellCore/PerDevice/External/ImageOnly/ERI/SprintInternationalERIValuesWmRil](p_icd_settings.cellcore_perdevice_external_imageonly_eri_sprintinternationalerivalueswmril)
Enable GBA authorization for MMS over Wi-Fi
[Messaging/PerSimSettings/\_\_ICCID/MmsGbaAuthenticationEnabled](p_icd_settings.messaging_persimsettings___iccid_mmsgbaauthenticationenabled)
Enable multipart SMS with multipart tags in SMS
[CellCore/PerDevice/SMS/SprintFragmentInfoInBody](p_icd_settings.cellcore_perdevice_sms_sprintfragmentinfoinbody) (per device)
[CellCore/perIMSI/\_\_IMSI/SMS/SprintFragmentInfoInBody](p_icd_settings.cellcore_perimsi___imsi_sms_sprintfragmentinfoinbody) (per IMSI)
Hotspot plug-in probe URL and path
[WiFi/HotSpotPlugin/ATT/GetPath](p_icd_settings.wifi_hotspotplugin_att_getpath)
[WiFi/HotSpotPlugin/ATT/GetURL](p_icd_settings.wifi_hotspotplugin_att_geturl)
Roaming text
[CellCore/PerDevice/CellUX/IsATTSpecific](p_icd_settings.cellcore_perdevice_cellux_isattspecific) (per device)
[CellCore/perIMSI/\_\_IMSI/CellUX/IsATTSpecific](p_icd_settings.cellcore_perimsi___imsi_cellux_isattspecific) (per IMSI)
Settings for cloud messaging
[Messaging/GlobalSettings/MOCloudMessageCarrierSetting](p_icd_settings.messaging_globalsettings_mocloudmessagecarriersetting)
[Messaging/GlobalSettings/MOCloudMessageDisplayLabel](p_icd_settings.messaging_globalsettings_mocloudmessagedisplaylabel)
[Messaging/GlobalSettings/MOCloudMessageEnabled](p_icd_settings.messaging_globalsettings_mocloudmessageenabled)
Accept unauthenticated WAP message triggers from a server
[DeviceManagement/Policies/OMADM/AcceptUnauthenticatedTriggers](p_icd_settings.devicemanagement_policies_omadm_acceptunauthenticatedtriggers)
 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phCustomization\p_phCustomization%5D:%20MCSF%20to%20Windows%20Provisioning%20settings%20map%20%20RELEASE:%20%289/7/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




