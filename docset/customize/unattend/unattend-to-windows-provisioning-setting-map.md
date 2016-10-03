---
title: Unattend to Windows Provisioning settings map
description: This topic shows the Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) Unattend components and settings (which are configurable in Windows System Image Manager ) and their equivalent Windows Provisioning setting group and setting name (which are configurable in Windows Imaging and Configuration Designer).
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 56E730AE-C29A-4B4C-A1AB-71167C9B2C39
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Unattend to Windows Provisioning settings map


This topic shows the Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) Unattend components and settings (which are configurable in [Windows System Image Manager](p_wsim.windows_system_image_manager_user_interface_overview_win8)) and their equivalent Windows Provisioning setting group and setting name (which are configurable in [Windows Imaging and Configuration Designer](p_icd.icd_portal)).

**Note**  
Due to the design change in Windows 10, settings marked **N/A** are not supported when using the Windows Provisioning framework or Windows Imaging and Configuration Designer (ICD).

 

## Microsoft-Windows-Audio-AudioCore


| Unattend setting name  | Windows Provisioning setting group and name                              |
|------------------------|--------------------------------------------------------------------------|
| - EnableCaptureMonitor | [/Audio/EnableCaptureMonitor](p_icd_settings.audio_enablecapturemonitor) |

 

## Microsoft-Windows-Audio-VolumeControl


| Unattend setting name            | Windows Provisioning setting group and name                                                  |
|----------------------------------|----------------------------------------------------------------------------------------------|
| - EnableVolumeControlWhileLocked | [/Audio/EnableVolumeControlWhileLocked](p_icd_settings.audio_enablevolumecontrolwhilelocked) |

 

## Microsoft-Windows-BLB-WSB-Online-Main


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - DescriptionText1    | N/A                                         |
| - DescriptionText2    | N/A                                         |
| - EnableOnlineBackup  | N/A                                         |
| - Icon                | N/A                                         |
| - Link1               | N/A                                         |
| - Link1Text           | N/A                                         |
| - Link2               | N/A                                         |
| - Link2Text           | N/A                                         |
| - ProviderName        | N/A                                         |
| - ResourceDll         | N/A                                         |

 

## Microsoft-Windows-BrowserService


| Unattend setting name | Windows Provisioning setting group and name                            |
|-----------------------|------------------------------------------------------------------------|
| - MaintainServerList  | [/Domain/MaintainServerList](p_icd_settings.domain_maintainserverlist) |

 

## Microsoft-Windows-CoreMmRes


| Unattend setting name | Windows Provisioning setting group and name                      |
|-----------------------|------------------------------------------------------------------|
| - CameraSoundLevel    | [/Audio/CameraSoundLevel](p_icd_settings.audio_camerasoundlevel) |
| - NoPhysicalCameraLED | [/Camera/NoPhysicalLED](p_icd_settings.camera_nophysicalled)     |

 

## Microsoft-Windows-Deployment


| Unattend setting name     | Windows Provisioning setting group and name                                |
|---------------------------|----------------------------------------------------------------------------|
| - AuditComputerName       | N/A                                                                        |
| -- MustReboot             | N/A                                                                        |
| -- Name                   | N/A                                                                        |
| - DeviceForm              | [/DeviceFormFactor/DeviceForm](p_icd_settings.deviceformfactor_deviceform) |
| - DuplicatorDescription   | [/Setup/DuplicatorDescription](p_icd_settings.setup_duplicatordescription) |
| - ExtendOSPartition       | N/A                                                                        |
| -- Extend                 | N/A                                                                        |
| -- Size                   | N/A                                                                        |
| - Generalize              | N/A                                                                        |
| -- ForceShutdownNow       | N/A                                                                        |
| -- Mode                   | N/A                                                                        |
| - Reseal                  | N/A                                                                        |
| -- ForceShutdownNow       | N/A                                                                        |
| -- Mode                   | N/A                                                                        |
| - RunAsynchronous         | N/A                                                                        |
| -- RunAsynchronousCommand | N/A                                                                        |
| --- Credentials           | N/A                                                                        |
| ---- Domain               | N/A                                                                        |
| ---- Password             | N/A                                                                        |
| ---- Username             | N/A                                                                        |
| --- Description           | N/A                                                                        |
| --- Order                 | N/A                                                                        |
| --- Path                  | N/A                                                                        |
| - RunSynchronous          | N/A                                                                        |
| -- RunSynchronousCommand  | N/A                                                                        |
| --- Credentials           | N/A                                                                        |
| ---- Domain               | N/A                                                                        |
| ---- Password             | N/A                                                                        |
| ---- Username             | N/A                                                                        |
| --- Description           | N/A                                                                        |
| --- Order                 | N/A                                                                        |
| --- Path                  | N/A                                                                        |
| --- WillReboot            | N/A                                                                        |

 

## Microsoft-Windows-DeviceAccess


| Unattend setting name                  | Windows Provisioning setting group and name                                                                                          |
|----------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| - SetRegionSpecificPrivacyAccessPolicy | [/CountryAndRegion/CountryCodeForExtendedCapabilityPrompts](p_icd_settings.countryandregion_countrycodeforextendedcapabilityprompts) |

 

## Microsoft-Windows-DeviceGuard-Unattend


| Unattend setting name               | Windows Provisioning setting group and name |
|-------------------------------------|---------------------------------------------|
| - EnableVirtualizationBasedSecurity | N/A                                         |
| - HypervisorEnforcedCodeIntegrity   | N/A                                         |
| - LsaCfgFlags                       | N/A                                         |

 

## Microsoft-Windows-DiagCpl


| Unattend setting name | Windows Provisioning setting group and name                                                    |
|-----------------------|------------------------------------------------------------------------------------------------|
| - Description         | [/HelpAndSupport/Description](p_icd_settings.helpandsupport_onlinesupporticondescription)      |
| - Icon                | N/A                                                                                            |
| - Link                | [/HelpAndSupport/OnlineSupportIconLink](p_icd_settings.helpandsupport_onlinesupporticonlink)   |
| - Title               | [/HelpAndSupport/OnlineSupportIconTitle](p_icd_settings.helpandsupport_onlinesupporticontitle) |

 

## Microsoft-Windows-Disk-Failure-Diagnostic-Module


| Unattend setting name           | Windows Provisioning setting group and name                                                                                  |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| - EnabledScenarioExecutionLevel | [/Diagnostics/DiskFailureEnabledScenarioExecutionLevel](p_icd_settings.diagnostics_diskfailureenabledscenarioexecutionlevel) |
| - DfdAlertTextOverride          | [/Diagnostics/DiskFailureAlertTextOverride](p_icd_settings.diagnostics_diskfailurealerttextoverride)                         |

 

## Microsoft-Windows-DNS-Client


| Unattend setting name                   | Windows Provisioning setting group and name                                |
|-----------------------------------------|----------------------------------------------------------------------------|
| - DNSDomain                             | [/DNS/DNSDomain](p_icd_settings.dns_domain)                                |
| - DNSSuffixSearchOrder                  | N/A                                                                        |
| -- DomainName                           | N/A                                                                        |
| --- Key                                 | N/A                                                                        |
| --- Value                               | N/A                                                                        |
| - Interfaces                            | N/A                                                                        |
| -- Identifier                           | N/A                                                                        |
| -- Interface                            | N/A                                                                        |
| --- DisableDynamicUpdate                | N/A                                                                        |
| --- DNSDomain                           | N/A                                                                        |
| --- DNSServerSearchOrder                | N/A                                                                        |
| ---- IpAddress                          | N/A                                                                        |
| ----- Key                               | N/A                                                                        |
| ----- Value                             | N/A                                                                        |
| --- EnableAdapterDomainNameRegistration | N/A                                                                        |
| - UseDomainNameDevolution               | [/DNS/UseDomainNameDevolution](p_icd_settings.dns_usedomainnamedevolution) |

 

## Microsoft-Windows-Embedded-BootExp


| Unattend setting name     | Windows Provisioning setting group and name                                                              |
|---------------------------|----------------------------------------------------------------------------------------------------------|
| - DisableBootMenu         | [/SMISettings/UnbrandedBoot/DisableBootMenu](p_icd_settings.smisettings_disablebootmenu)                 |
| - DisplayDisabled         | [/SMISettings/UnbrandedBoot/DisplayDisabled](p_icd_settings.smisettings_displaydisabled)                 |
| - HideAllBootUI           | [/SMISettings/UnbrandedBoot/HideAllBootUI](p_icd_settings.smisettings_hideallbootui)                     |
| - HideBootLogo            | [/SMISettings/UnbrandedBoot/HideBootLogo](p_icd_settings.smisettings_hidebootlogo)                       |
| - HideBootStatusIndicator | [/SMISettings/UnbrandedBoot/HideBootStatusIndicator](p_icd_settings.smisettings_hidebootstatusindicator) |
| - HideBootStatusMessage   | [/SMISettings/UnbrandedBoot/HideBootStatusMessage](p_icd_settings.smisettings_hidebootstatusmessage)     |

 

## Microsoft-Windows-Embedded-EmbeddedLogon


| Unattend setting name | Windows Provisioning setting group and name                                                |
|-----------------------|--------------------------------------------------------------------------------------------|
| - AnimationDisabled   | [/SMISettings/CustomLogon/AnimationDisabled](p_icd_settings.smisettings_animationdisabled) |
| - BrandingNeutral     | [/SMISettings/CustomLogon/BrandingNeutral](p_icd_settings.smisettings_brandingneutral)     |
| - HideAutoLogonUI     | [/SMISettings/CustomLogon/HideAutologonUI](p_icd_settings.smisettings_hideautologonui)     |
| - NoLockScreen        | [/SMISettings/CustomLogon/NoLockScreen](p_icd_settings.smisettings_nolockscreen)           |
| - UIVerbosityLevel    | [/SMISettings/CustomLogon/UIVerbosityLevel](p_icd_settings.smisettings_uiverbositylevel)   |

 

## Microsoft-Windows-Embedded-KeyboardFilterService


| Unattend setting name                    | Windows Provisioning setting group and name                                                                                                            |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| - Alt                                    | [/SMISettings/KeyboardFilter/Alt](p_icd_settings.smisettings_keyboardfilter_alt)                                                                       |
| - AltF4                                  | [/SMISettings/KeyboardFilter/AltF4](p_icd_settings.smisettings_keyboardfilter_altf4)                                                                   |
| - AltSpace                               | [/SMISettings/KeyboardFilter/AltSpace](p_icd_settings.smisettings_keyboardfilter_altspace)                                                             |
| - AltTab                                 | [/SMISettings/KeyboardFilter/AltTab](p_icd_settings.smisettings_keyboardfilter_alttab)                                                                 |
| - AltWin                                 | [/SMISettings/KeyboardFilter/AltWin](p_icd_settings.smisettings_keyboardfilter_altwin)                                                                 |
| - BrowserBack                            | [/SMISettings/KeyboardFilter/BrowserBack](p_icd_settings.smisettings_keyboardfilter_browserback)                                                       |
| - BrowserFavorites                       | [/SMISettings/KeyboardFilter/BrowserFavorites](p_icd_settings.smisettings_keyboardfilter_browserfavorites)                                             |
| - BrowserForward                         | [/SMISettings/KeyboardFilter/BrowserForward](p_icd_settings.smisettings_keyboardfilter_browserforward)                                                 |
| - BrowserHome                            | [/SMISettings/KeyboardFilter/BrowserHome](p_icd_settings.smisettings_keyboardfilter_browserhome)                                                       |
| - BrowserRefresh                         | [/SMISettings/KeyboardFilter/BrowserRefresh](p_icd_settings.smisettings_keyboardfilter_browserrefresh)                                                 |
| - BrowserSearch                          | [/SMISettings/KeyboardFilter/BrowserSearch](p_icd_settings.smisettings_keyboardfilter_browsersearch)                                                   |
| - BrowserStop                            | [/SMISettings/KeyboardFilter/BrowserStop](p_icd_settings.smisettings_keyboardfilter_browserstop)                                                       |
| - ControlAltDelete                       | [/SMISettings/KeyboardFilter/CtrlAltDel](p_icd_settings.smisettings_keyboardfilter_ctrlaltdel)                                                         |
| - ControlEscape                          | [/SMISettings/KeyboardFilter/CtrlEsc](p_icd_settings.smisettings_keyboardfilter_ctrlesc)                                                               |
| - ControlTab                             | [/SMISettings/KeyboardFilter/CtrlTab](p_icd_settings.smisettings_keyboardfilter_ctrltab)                                                               |
| - ControlWindowsF                        | [/SMISettings/KeyboardFilter/CtrlWinF](p_icd_settings.smisettings_keyboardfilter_ctrlwinf)                                                             |
| - Ctrl                                   | [/SMISettings/KeyboardFilter/Ctrl](p_icd_settings.smisettings_keyboardfilter_ctrl)                                                                     |
| - CtrlF4                                 | [/SMISettings/KeyboardFilter/CtrlF4](p_icd_settings.smisettings_keyboardfilter_ctrlf4)                                                                 |
| - CtrlWin                                | [/SMISettings/KeyboardFilter/CtrlWin](p_icd_settings.smisettings_keyboardfilter_ctrlwin)                                                               |
| - CustomFilters                          | [/SMISettings/KeyboardFilter/CustomKeyFilter](p_icd_settings.smisettings_keyboardfilter_customkeyfilter)                                               |
| -- FilterRule                            | N/A                                                                                                                                                    |
| - CustomScancodes                        | [/SMISettings/KeyboardFilter/CustomScancodeFilter](p_icd_settings.smisettings_keyboardfilter_customscancodefilter)                                     |
| -- FilterRule                            | N/A                                                                                                                                                    |
| - DisableKeyboardFilterForAdministrators | [/SMISettings/KeyboardFilter/DisableKeyboardFilterForAdministrators](p_icd_settings.smisettings_keyboardfilter_disablekeyboardfilterforadministrators) |
| - Escape                                 | [/SMISettings/KeyboardFilter/Escape](p_icd_settings.smisettings_keyboardfilter_escape)                                                                 |
| - F21                                    | [/SMISettings/KeyboardFilter/F21](p_icd_settings.smisettings_keyboardfilter_f21)                                                                       |
| - ForceOffAccessibility                  | [/SMISettings/KeyboardFilter/ForceOffAccessibility](p_icd_settings.smisettings_keyboardfilter_forceoffaccessibility)                                   |
| - LaunchApp1                             | [/SMISettings/KeyboardFilter/LaunchApp1](p_icd_settings.smisettings_keyboardfilter_launchapp1)                                                         |
| - LaunchApp2                             | [/SMISettings/KeyboardFilter/LaunchApp2](p_icd_settings.smisettings_keyboardfilter_launchapp2)                                                         |
| - LaunchMail                             | [/SMISettings/KeyboardFilter/LaunchMail](p_icd_settings.smisettings_keyboardfilter_launchmail)                                                         |
| - LaunchMediaSelect                      | [/SMISettings/KeyboardFilter/LaunchMediaSelect](p_icd_settings.smisettings_keyboardfilter_launchmediaselect)                                           |
| - LeftShiftLeftAltNumLock                | [/SMISettings/KeyboardFilter/LShiftLAltNumLock](p_icd_settings.smisettings_keyboardfilter_lshiftlaltnumlock)                                           |
| - LeftShiftLeftAltPrintScreen            | [/SMISettings/KeyboardFilter/LShiftLAltPrintScrn](p_icd_settings.smisettings_keyboardfilter_lshiftlaltprintscrn)                                       |
| - MediaNext                              | [/SMISettings/KeyboardFilter/MediaNext](p_icd_settings.smisettings_keyboardfilter_medianext)                                                           |
| - MediaPlayPause                         | [/SMISettings/KeyboardFilter/MediaPlayPause](p_icd_settings.smisettings_keyboardfilter_mediaplaypause)                                                 |
| - MediaPrev                              | [/SMISettings/KeyboardFilter/MediaPrev](p_icd_settings.smisettings_keyboardfilter_mediaprev)                                                           |
| - MediaStop                              | [/SMISettings/KeyboardFilter/MediaStop](p_icd_settings.smisettings_keyboardfilter_mediastop)                                                           |
| - Shift                                  | [/SMISettings/KeyboardFilter/Shift](p_icd_settings.smisettings_keyboardfilter_shift)                                                                   |
| - ShiftControlEscape                     | [/SMISettings/KeyboardFilter/ShiftCtrlEsc](p_icd_settings.smisettings_keyboardfilter_shiftctrlesc)                                                     |
| - ShiftWin                               | [/SMISettings/KeyboardFilter/ShiftWin](p_icd_settings.smisettings_keyboardfilter_shiftwin)                                                             |
| - VolumeDown                             | [/SMISettings/KeyboardFilter/VolumeDown](p_icd_settings.smisettings_keyboardfilter_volumedown)                                                         |
| - VolumeMute                             | [/SMISettings/KeyboardFilter/VolumeMute](p_icd_settings.smisettings_keyboardfilter_volumemute)                                                         |
| - VolumeUp                               | [/SMISettings/KeyboardFilter/VolumeUp](p_icd_settings.smisettings_keyboardfilter_volumeup)                                                             |
| - Windows                                | [/SMISettings/KeyboardFilter/Windows](p_icd_settings.smisettings_keyboardfilter_windows)                                                               |
| - WindowsB                               | [/SMISettings/KeyboardFilter/WinB](p_icd_settings.smisettings_keyboardfilter_winb)                                                                     |
| - WindowsBreak                           | [/SMISettings/KeyboardFilter/WinBreak](p_icd_settings.smisettings_keyboardfilter_winbreak)                                                             |
| - WindowsC                               | [/SMISettings/KeyboardFilter/WinC](p_icd_settings.smisettings_keyboardfilter_winc)                                                                     |
| - WindowsComma                           | [/SMISettings/KeyboardFilter/WinComma](p_icd_settings.smisettings_keyboardfilter_wincomma)                                                             |
| - WindowsD                               | [/SMISettings/KeyboardFilter/WinD](p_icd_settings.smisettings_keyboardfilter_wind)                                                                     |
| - WindowsDown                            | [/SMISettings/KeyboardFilter/WinDown](p_icd_settings.smisettings_keyboardfilter_windown)                                                               |
| - WindowsE                               | [/SMISettings/KeyboardFilter/WinE](p_icd_settings.smisettings_keyboardfilter_wine)                                                                     |
| - WindowsEnter                           | [/SMISettings/KeyboardFilter/WinEnter](p_icd_settings.smisettings_keyboardfilter_winenter)                                                             |
| - WindowsEscape                          | [/SMISettings/KeyboardFilter/WinEsc](p_icd_settings.smisettings_keyboardfilter_winesc)                                                                 |
| - WindowsF                               | [/SMISettings/KeyboardFilter/WinF](p_icd_settings.smisettings_keyboardfilter_winf)                                                                     |
| - WindowsF1                              | [/SMISettings/KeyboardFilter/WinF1](p_icd_settings.smisettings_keyboardfilter_winf1)                                                                   |
| - WindowsH                               | [/SMISettings/KeyboardFilter/WinH](p_icd_settings.smisettings_keyboardfilter_winh)                                                                     |
| - WindowsHome                            | [/SMISettings/KeyboardFilter/WinHome](p_icd_settings.smisettings_keyboardfilter_winhome)                                                               |
| - WindowsI                               | [/SMISettings/KeyboardFilter/WinI](p_icd_settings.smisettings_keyboardfilter_wini)                                                                     |
| - WindowsJ                               | [/SMISettings/KeyboardFilter/WinJ](p_icd_settings.smisettings_keyboardfilter_winj)                                                                     |
| - WindowsK                               | [/SMISettings/KeyboardFilter/WinK](p_icd_settings.smisettings_keyboardfilter_wink)                                                                     |
| - WindowsL                               | [/SMISettings/KeyboardFilter/WinL](p_icd_settings.smisettings_keyboardfilter_winl)                                                                     |
| - WindowsLeft                            | [/SMISettings/KeyboardFilter/WinLeft](p_icd_settings.smisettings_keyboardfilter_winleft)                                                               |
| - WindowsM                               | [/SMISettings/KeyboardFilter/WinM](p_icd_settings.smisettings_keyboardfilter_winm)                                                                     |
| - WindowsMinus                           | [/SMISettings/KeyboardFilter/WinMinus](p_icd_settings.smisettings_keyboardfilter_winminus)                                                             |
| - WindowsO                               | [/SMISettings/KeyboardFilter/WinO](p_icd_settings.smisettings_keyboardfilter_wino)                                                                     |
| - WindowsP                               | [/SMISettings/KeyboardFilter/WinP](p_icd_settings.smisettings_keyboardfilter_winp)                                                                     |
| - WindowsPageDown                        | [/SMISettings/KeyboardFilter/WinPageDown](p_icd_settings.smisettings_keyboardfilter_winpagedown)                                                       |
| - WindowsPageUp                          | [/SMISettings/KeyboardFilter/WinPageUp](p_icd_settings.smisettings_keyboardfilter_winpageup)                                                           |
| - WindowsPeriod                          | [/SMISettings/KeyboardFilter/WinPeriod](p_icd_settings.smisettings_keyboardfilter_winperiod)                                                           |
| - WindowsPlus                            | [/SMISettings/KeyboardFilter/WinPlus](p_icd_settings.smisettings_keyboardfilter_winplus)                                                               |
| - WindowsQ                               | [/SMISettings/KeyboardFilter/WinQ](p_icd_settings.smisettings_keyboardfilter_winq)                                                                     |
| - WindowsR                               | [/SMISettings/KeyboardFilter/WinR](p_icd_settings.smisettings_keyboardfilter_winr)                                                                     |
| - WindowsRight                           | [/SMISettings/KeyboardFilter/WinRight](p_icd_settings.smisettings_keyboardfilter_winright)                                                             |
| - WindowsShiftDown                       | [/SMISettings/KeyboardFilter/WinShiftDown](p_icd_settings.smisettings_keyboardfilter_winshiftdown)                                                     |
| - WindowsShiftLeft                       | [/SMISettings/KeyboardFilter/WinShiftLeft](p_icd_settings.smisettings_keyboardfilter_winshiftleft)                                                     |
| - WindowsShiftRight                      | [/SMISettings/KeyboardFilter/WinShiftRight](p_icd_settings.smisettings_keyboardfilter_winshiftright)                                                   |
| - WindowsShiftUp                         | [/SMISettings/KeyboardFilter/WinShiftUp](p_icd_settings.smisettings_keyboardfilter_winshiftup)                                                         |
| - WindowsSlash                           | [/SMISettings/KeyboardFilter/WinForwardslash](p_icd_settings.smisettings_keyboardfilter_winforwardslash)                                               |
| - WindowsSpace                           | [/SMISettings/KeyboardFilter/WinSpace](p_icd_settings.smisettings_keyboardfilter_winspace)                                                             |
| - WindowsT                               | [/SMISettings/KeyboardFilter/WinT](p_icd_settings.smisettings_keyboardfilter_wint)                                                                     |
| - WindowsTab                             | [/SMISettings/KeyboardFilter/WinTab](p_icd_settings.smisettings_keyboardfilter_wintab)                                                                 |
| - WindowsU                               | [/SMISettings/KeyboardFilter/WinU](p_icd_settings.smisettings_keyboardfilter_winu)                                                                     |
| - WindowsUp                              | [/SMISettings/KeyboardFilter/WinUp](p_icd_settings.smisettings_keyboardfilter_winup)                                                                   |
| - WindowsV                               | [/SMISettings/KeyboardFilter/WinV](p_icd_settings.smisettings_keyboardfilter_winv)                                                                     |
| - WindowsW                               | [/SMISettings/KeyboardFilter/WinW](p_icd_settings.smisettings_keyboardfilter_winw)                                                                     |
| - WindowsZ                               | [/SMISettings/KeyboardFilter/WinZ](p_icd_settings.smisettings_keyboardfilter_winz)                                                                     |

 

## Microsoft-Windows-Embedded-ShellLauncher


| Unattend setting name       | Windows Provisioning setting group and name                                                                            |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------|
| - DefaultReturnCodeAction   | [/SMISettings/ShellLauncher/DefaultReturnCodeAction](p_icd_settings.smisettings_shelllauncher_defaultreturncodeaction) |
| - Shell                     | [/SMISettings/ShellLauncher/Shell](p_icd_settings.smisettings_shelllauncher_shell)                                     |
| - UserSettings              | N/A                                                                                                                    |
| -- User                     | N/A                                                                                                                    |
| --- AccountName             | N/A                                                                                                                    |
| --- CustomReturnCodeAction  | N/A                                                                                                                    |
| ---- CodeAction             | N/A                                                                                                                    |
| ----- Action                | N/A                                                                                                                    |
| ----- ReturnCode            | N/A                                                                                                                    |
| --- DefaultReturnCodeAction | N/A                                                                                                                    |
| --- Domain                  | N/A                                                                                                                    |
| --- Key                     | N/A                                                                                                                    |
| --- Shell                   | N/A                                                                                                                    |

 

## Microsoft-Windows-EnhancedStorage-Adm


| Unattend setting name           | Windows Provisioning setting group and name                                                      |
|---------------------------------|--------------------------------------------------------------------------------------------------|
| - TCGSecurityActivationDisabled | [/Storage/DisableAutomaticDiscEncryption](p_icd_settings.storage_disableautomaticdiscencryption) |

 

## Microsoft-Windows-ErrorReportingCore


| Unattend setting name | Windows Provisioning setting group and name                                    |
|-----------------------|--------------------------------------------------------------------------------|
| - DefaultConsent      | [/ErrorReporting/DefaultConsent](p_icd_settings.errorreporting_defaultconsent) |
| - DisableWER          | [/ErrorReporting/DisableWER](p_icd_settings.errorreporting_disablewer)         |

 

## Microsoft-Windows-Fax-Service


| Unattend setting name                | Windows Provisioning setting group and name                                                                      |
|--------------------------------------|------------------------------------------------------------------------------------------------------------------|
| - Fax                                | [/Fax/Fax](p_icd_settings.fax)                                                                                   |
| -- ArchiveFaxes                      | [/Fax/Fax/ArchiveFaxes](p_icd_settings.fax_fax_archivefaxes)                                                     |
| -- ArchiveFolderName                 | [/Fax/Fax/ArchiveFolderName](p_icd_settings.fax_fax_archivefoldername)                                           |
| -- IncomingFaxesArePublic            | [/Fax/Fax/IncomingFaxesArePublic](p_icd_settings.fax_fax_incomingfaxesarepublic)                                 |
| - FaxUnattend                        | [/Fax/FaxUnattend](p_icd_settings.fax_faxunattend)                                                               |
| -- Csid                              | [/Fax/FaxUnattend/Csid](p_icd_settings.fax_faxunattend_csid)                                                     |
| -- FaxPrinterIsShared                | [/Fax/FaxUnattend/FaxPrinterIsShared](p_icd_settings.fax_faxunattend_faxprinterisshared)                         |
| -- ReceiveFaxes                      | [/Fax/FaxUnattend/ReceiveFaxes](p_icd_settings.fax_faxunattend_receivefaxes)                                     |
| -- Rings                             | [/Fax/FaxUnattend/Rings](p_icd_settings.fax_faxunattend_rings)                                                   |
| -- RouteFolderName                   | [/Fax/FaxUnattend/RouteFolderName](p_icd_settings.fax_faxunattend_routefoldername)                               |
| -- RoutePrinterName                  | [/Fax/FaxUnattend/RoutePrinterName](p_icd_settings.fax_faxunattend_routeprintername)                             |
| -- RouteToFolder                     | [/Fax/FaxUnattend/RouteToFolder](p_icd_settings.fax_faxunattend_routetofolder)                                   |
| -- RouteToPrinter                    | [/Fax/FaxUnattend/RouteToPrinter](p_icd_settings.fax_faxunattend_routetoprinter)                                 |
| -- SendFaxes                         | [/Fax/FaxUnattend/SendFaxes](p_icd_settings.fax_faxunattend_sendfaxes)                                           |
| -- Tsid                              | [/Fax/FaxUnattend/Tsid](p_icd_settings.fax_faxunattend_tsid)                                                     |
| - Receipts                           | [/Fax/Receipts](p_icd_settings.fax_receipts)                                                                     |
| -- FaxUserName                       | [/Fax/Receipts/FaxUserName](p_icd_settings.fax_receipts_faxusername)                                             |
| -- FaxUserPassword                   | [/Fax/Receipts/FaxUserPassword](p_icd_settings.fax_receipts_faxuserpassword)                                     |
| -- SmtpNotificationsEnabled          | [/Fax/Receipts/SmtpNotificationsEnabled](p_icd_settings.fax_receipts_smtpnotificationsenabled)                   |
| -- SmtpSenderAddress                 | [/Fax/Receipts/SmtpSenderAddress](p_icd_settings.fax_receipts_smtpsenderaddress)                                 |
| -- SmtpServerAddress                 | [/Fax/Receipts/SmtpServerAddress](p_icd_settings.fax_receipts_smtpserveraddress)                                 |
| -- SmtpServerAuthenticationMechanism | [/Fax/Receipts/SmtpServerAuthenticationMechanism](p_icd_settings.fax_receipts_smtpserverauthenticationmechanism) |
| -- SmtpServerPort                    | [/Fax/Receipts/SmtpServerPort](p_icd_settings.fax_receipts_smtpserverport)                                       |

 

## Microsoft-Windows-GPIOButtons


| Unattend setting name  | Windows Provisioning setting group and name                                |
|------------------------|----------------------------------------------------------------------------|
| - ConvertibleSlateMode | [/Tablet/ConvertibleSlateHint](p_icd_settings.tablet_convertibleslatehint) |

 

## Microsoft-Windows-HelpAndSupport


| Unattend setting name | Windows Provisioning setting group and name                                                                                                                      |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - HelpAndSupport      | Deprecated in Windows 10. To add customer support contact information in the Contact Support app or Web page, see [Information](p_icd_settings.oem_information). |
| -- Logo               | N/A                                                                                                                                                              |
| -- LogoURL            | N/A                                                                                                                                                              |
| -- Manufacturer       | N/A                                                                                                                                                              |
| -- SearchContent      | N/A                                                                                                                                                              |
| -- SupportSearchURL   | N/A                                                                                                                                                              |
| -- TileColor          | N/A                                                                                                                                                              |

 

## Microsoft-Windows-IE-ClientNetworkProtocolImplementation


| Unattend setting name    | Windows Provisioning setting group and name                                                |
|--------------------------|--------------------------------------------------------------------------------------------|
| - CacheLimit             | [/NetworkProxy/CacheLimit](p_icd_settings.networkproxy_cachelimit)                         |
| - HKLMConnectRetries     | [/NetworkProxy/HKLMConnectRetries](p_icd_settings.networkproxy_hklmconnectretries)         |
| - HKLMConnectTimeOut     | [/NetworkProxy/HKLMConnectTimeOut](p_icd_settings.networkproxy_hklmconnecttimeout)         |
| - HKLMContentPerUserItem | [/NetworkProxy/HKLMContentPerUserItem](p_icd_settings.networkproxy_hklmcontentperuseritem) |
| - HKLMCookiesPerUserItem | [/NetworkProxy/HKLMCookiesPerUserItem](p_icd_settings.networkproxy_hklmcookiesperuseritem) |
| - HKLMHistoryPerUserItem | [/NetworkProxy/HKLMHistoryPerUserItem](p_icd_settings.networkproxy_hklmhistoryperuseritem) |
| - HKLMProxyEnable        | [/NetworkProxy/HKLMProxyEnable](p_icd_settings.networkproxy_hklmproxyenable)               |
| - HKLMProxyOverride      | [/NetworkProxy/HKLMProxyOverride](p_icd_settings.networkproxy_hklmproxyoverride)           |
| - HKLMProxyServer        | [/NetworkProxy/HKLMProxyServer](p_icd_settings.networkproxy_hklmproxyserver)               |
| - HKLMReceiveTimeOut     | [/NetworkProxy/HKLMReceiveTimeOut](p_icd_settings.networkproxy_hklmreceivetimeout)         |
| - HKLMSendTimeOut        | [/NetworkProxy/HKLMSendTimeOut](p_icd_settings.networkproxy_hklmsendtimeout)               |

 

## Microsoft-Windows-IE-ESC


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - IEHardenAdmin       | N/A                                         |
| - IEHardenUser        | N/A                                         |

 

## Microsoft-Windows-IE-InternetExplorer


| Unattend setting name            | Windows Provisioning setting group and name                                                                        |
|----------------------------------|--------------------------------------------------------------------------------------------------------------------|
| - Accelerators                   | N/A                                                                                                                |
| -- ItemKey                       | N/A                                                                                                                |
| -- Accelerator                   | N/A                                                                                                                |
| --- AcceleratorXML               | N/A                                                                                                                |
| --- IsDefault                    | N/A                                                                                                                |
| - AllowedSites                   | [/InternetExplorer/AllowedSites](p_icd_settings.internetexplorer_allowedsites)                                     |
| - BlockPopups                    | [/InternetExplorer/BlockPopups](p_icd_settings.internetexplorer_blockpopups)                                       |
| - CommandLabelDisplay            | [/InternetExplorer/CommandLabelDisplay](p_icd_settings.internetexplorer_commandlabeldisplay)                       |
| - CompanyName                    | [/InternetExplorer/CompanyName](p_icd_settings.internetexplorer_companyname)                                       |
| - CompatibilityViewDomains       | [/InternetExplorer/CompatibilityViewDomains](p_icd_settings.internetexplorer_compatibilityviewdomains)             |
| - DisableAccelerators            | [/InternetExplorer/DisableAccelerators](p_icd_settings.internetexplorer_disableaccelerators)                       |
| - DisableDataExecutionPrevention | [/InternetExplorer/DisableDataExecutionPrevention](p_icd_settings.internetexplorer_disabledataexecutionprevention) |
| - DisableDevTools                | [/InternetExplorer/DisableDevTools](p_icd_settings.internetexplorer_disabledevtools)                               |
| - DisableFirstRunWizard          | [/InternetExplorer/DisableFirstRunWizard](p_icd_settings.internetexplorer_disablefirstrunwizard)                   |
| - DisableOOBAccelerators         | [/InternetExplorer/DisableOOBAccelerators](p_icd_settings.internetexplorer_disableoobaccelerators)                 |
| - FavoriteBarItems               | N/A                                                                                                                |
| -- ItemKey                       | N/A                                                                                                                |
| -- FavoriteBarItem               | N/A                                                                                                                |
| --- ItemName                     | N/A                                                                                                                |
| --- ItemType                     | N/A                                                                                                                |
| --- ItemUrl                      | N/A                                                                                                                |
| - FavoritesDelete                | [/InternetExplorer/FavoritesDelete](p_icd_settings.internetexplorer_favoritesdelete)                               |
| - FavoritesList                  | N/A                                                                                                                |
| -- FavID                         | N/A                                                                                                                |
| -- FavoriteItem                  | N/A                                                                                                                |
| --- FavIconFile                  | N/A                                                                                                                |
| --- FavOffLine                   | N/A                                                                                                                |
| --- FavTitle                     | N/A                                                                                                                |
| --- FavURL                       | N/A                                                                                                                |
| - FavoritesOnTop                 | [/InternetExplorer/FavoritesOnTop](p_icd_settings.internetexplorer_favoritesontop)                                 |
| - FeedList                       | N/A                                                                                                                |
| -- FeedKey                       | N/A                                                                                                                |
| -- FeedItem                      | N/A                                                                                                                |
| --- FeedTitle                    | N/A                                                                                                                |
| --- FeedURL                      | N/A                                                                                                                |
| - FilterLevel                    | [/InternetExplorer/FilterLevel](p_icd_settings.internetexplorer_filterlevel)                                       |
| - FindProvidersURL               | [/InternetExplorer/FindProvidersURL](p_icd_settings.internetexplorer_findprovidersurl)                             |
| - GroupTabs                      | [/InternetExplorer/GroupTabs](p_icd_settings.internetexplorer_grouptabs)                                           |
| - Help\_Page                     | [/InternetExplorer/Help\_Page](p_icd_settings.internetexplorer_help_page)                                          |
| - Home\_Page                     | [/InternetExplorer/Home\_Page](p_icd_settings.internetexplorer_home_page)                                          |
| - InstalledBHOList               | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - InstalledBrowserExtensions     | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - InstalledToolbarsList          | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - IntranetCompatibilityMode      | [/InternetExplorer/IntranetCompatibilityMode](p_icd_settings.internetexplorer_intranetcompatibilitymode)           |
| - LocalIntranetSites             | [/InternetExplorer/LocalIntranetSites](p_icd_settings.internetexplorer_localintranetsites)                         |
| - LockToolbars                   | [/InternetExplorer/LockToolbars](p_icd_settings.internetexplorer_locktoolbars)                                     |
| - MSCompatibilityMode            | [/InternetExplorer/MSCompatibilityMode](p_icd_settings.internetexplorer_mscompatibilitymode)                       |
| - PlaySound                      | [/InternetExplorer/PlaySound](p_icd_settings.internetexplorer_playsound)                                           |
| - PreApprovedAddons              | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - PrivacyAdvisorMode             | [/InternetExplorer/PrivacyAdvisorMode](p_icd_settings.internetexplorer_privacyadvisormode)                         |
| - QuickLinkList                  | N/A                                                                                                                |
| -- QLID                          | N/A                                                                                                                |
| -- QuickLinkItem                 | N/A                                                                                                                |
| --- QuickLinkName                | N/A                                                                                                                |
| --- QuickLinkUrl                 | N/A                                                                                                                |
| - SearchScopes                   | N/A                                                                                                                |
| -- ScopeKey                      | N/A                                                                                                                |
| -- Scope                         | N/A                                                                                                                |
| --- FaviconURL                   | N/A                                                                                                                |
| --- PreviewURL                   | N/A                                                                                                                |
| --- ScopeDefault                 | N/A                                                                                                                |
| --- ScopeDisplayName             | N/A                                                                                                                |
| --- ScopeUrl                     | N/A                                                                                                                |
| --- ShowSearchSuggestions        | N/A                                                                                                                |
| --- SuggestionsURL               | N/A                                                                                                                |
| --- SuggestionsURL\_JSON         | N/A                                                                                                                |
| - ShowLeftAddressToolbar         | [/InternetExplorer/ShowLeftAddressToolbar](p_icd_settings.internetexplorer_showleftaddresstoolbar)                 |
| - ShowInformationBar             | [/InternetExplorer/ShowInformationBar](p_icd_settings.internetexplorer_showinformationbar)                         |
| - StartPages                     | N/A                                                                                                                |
| -- StartPageKey                  | N/A                                                                                                                |
| -- StartPage                     | N/A                                                                                                                |
| --- StartPageUrl                 | N/A                                                                                                                |
| - SuggestedSitesEnabled          | [/InternetExplorer/SuggestedSitesEnabled](p_icd_settings.internetexplorer_suggestedsitesenabled)                   |
| - TabProcessGrowth               | [/InternetExplorer/TabProcessGrowth](p_icd_settings.internetexplorer_tabprocessgrowth)                             |
| - TrustedSites                   | [/InternetExplorer/TrustedSites](p_icd_settings.internetexplorer_trustedsites)                                     |
| - UserAgent                      | [/InternetExplorer/UserAgent](p_icd_settings.internetexplorer_useragent)                                           |
| - Window\_Title\_CN              | [/InternetExplorer/Window\_Title\_CN](p_icd_settings.internetexplorer_window_title_cn)                             |

 

## Microsoft-Windows-International-Core


| Unattend setting name | Windows Provisioning setting group and name                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------|
| - InputLocale         | [/Internationalization/InputLocale](p_icd_settings.internationalization_inputlocale)               |
| - SystemLocale        | [/Internationalization/SystemLocale](p_icd_settings.internationalization_systemlocale)             |
| - UILanguage          | [/Internationalization/UILanguage](p_icd_settings.internationalization_uilanguage)                 |
| - UILanguageFallback  | [/Internationalization/UILanguageFallback](p_icd_settings.internationalization_uilanguagefallback) |
| - UserLocale          | [/Internationalization/UserLocale](p_icd_settings.internationalization_userlocale)                 |

 

## Microsoft-Windows-International-Core-WinPE


WindowsPE settings are not available in Windows Provisioning/Windows ICD.

| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - InputLocale         | Not available                               |
| - LayeredDriver       | Not available                               |
| - SetupUILanguage     | Not available                               |
| -- UILanguage         | Not available                               |
| -- WillShowUI         | Not available                               |
| - SystemLocale        | Not available                               |
| - UILanguage          | Not available                               |
| - UILanguageFallback  | Not available                               |
| - UserLocale          | Not available                               |

 

## Microsoft-Windows-LUA-Settings


| Unattend setting name | Windows Provisioning setting group and name                              |
|-----------------------|--------------------------------------------------------------------------|
| - EnableLUA           | [/UserAccountControl/Enabled](p_icd_settings.useraccountcontrol_enabled) |

 

## Microsoft-Windows-MapControl-Desktop


| Unattend setting name | Windows Provisioning setting group and name                      |
|-----------------------|------------------------------------------------------------------|
| - ChinaVariantWin10   | [/Maps/ChinaVariantWin10](p_icd_settings.maps_chinavariantwin10) |

 

## Microsoft-Windows-MediaPlayer-Core


| Unattend setting name       | Windows Provisioning setting group and name                                                    |
|-----------------------------|------------------------------------------------------------------------------------------------|
| - InitialOEMServiceProvider | [/MediaPlayer/InitialOEMServiceProvider](p_icd_settings.mediaplayer_initialoemserviceprovider) |

 

## Microsoft-Windows-MobilePC-Sensors-API


| Unattend setting name           | Windows Provisioning setting group and name                                                  |
|---------------------------------|----------------------------------------------------------------------------------------------|
| - AdaptiveBrightness            | [/Sensors/AdaptiveBrightness](p_icd_settings.sensors_adaptivebrightness)                     |
| -- ALRPoints                    | [/Sensors/AdaptiveBrightness/ALRPoints](p_icd_settings.sensors_adaptivebrightness_alrpoints) |
| -- DisplayResponseInterval      | N/A                                                                                          |
| -- IlluminanceChangeSensitivity | N/A                                                                                          |

 

## Microsoft-Windows-NetBT


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - Interfaces          | N/A                                         |
| -- Interface          | N/A                                         |
| --- Identifier        | N/A                                         |
| --- NameServerList    | N/A                                         |
| ---- IpAddress        | N/A                                         |
| ----- Key             | N/A                                         |
| ----- Value           | N/A                                         |
| --- NetbiosOptions    | N/A                                         |

 

## Microsoft-Windows-NetworkBridge


| Unattend setting name | Windows Provisioning setting group and name                                  |
|-----------------------|------------------------------------------------------------------------------|
| - Bridge              | [/Networking/BridgedInterfaces](p_icd_settings.networking_bridgedinterfaces) |

 

## Microsoft-Windows-NetworkLoadBalancing-Core


| Unattend setting name                           | Windows Provisioning setting group and name |
|-------------------------------------------------|---------------------------------------------|
| - Clusters                                      | N/A                                         |
| -- Cluster                                      | N/A                                         |
| --- BDATeam                                     | N/A                                         |
| ---- Master                                     | N/A                                         |
| ---- ReverseHash                                | N/A                                         |
| ---- Team                                       | N/A                                         |
| --- ClusterIpAddress                            | N/A                                         |
| --- ClusterIpToClusterMacEnabled                | N/A                                         |
| --- ClusterMacAddress                           | N/A                                         |
| --- ClusterMode                                 | N/A                                         |
| --- ClusterName                                 | N/A                                         |
| --- ClusterNetMask                              | N/A                                         |
| --- DedicatedIpAddresses                        | N/A                                         |
| ---- IpAddress                                  | N/A                                         |
| ----- Key                                       | N/A                                         |
| ----- IpAddress                                 | N/A                                         |
| ----- NetworkMask                               | N/A                                         |
| --- HostIdentifier                              | N/A                                         |
| --- ICMPFilteringEnabled                        | N/A                                         |
| --- IdentityHeartbeatPeriod                     | N/A                                         |
| --- InitialHostState                            | N/A                                         |
| --- Interface                                   | N/A                                         |
| --- MaskSourceMacEnabled                        | N/A                                         |
| --- MaximumConnectionDescriptors                | N/A                                         |
| --- MembershipHeartbeatLossTolerance            | N/A                                         |
| --- MembershipHeartbeatPeriod                   | N/A                                         |
| --- MulticastSpoofEnabled                       | N/A                                         |
| --- NetBTSupportEnabled                         | N/A                                         |
| --- PersistSuspendedState                       | N/A                                         |
| --- Portrules                                   | N/A                                         |
| ---- Portrule                                   | N/A                                         |
| ----- ClientAffinity                            | N/A                                         |
| ----- EndPort                                   | N/A                                         |
| ----- EqualLoad                                 | N/A                                         |
| ----- HostPriority                              | N/A                                         |
| ----- Key                                       | N/A                                         |
| ----- LoadWeight                                | N/A                                         |
| ----- Mode                                      | N/A                                         |
| ----- Protocol                                  | N/A                                         |
| ----- StartPort                                 | N/A                                         |
| ----- Timeout                                   | N/A                                         |
| ----- VirtualIpAddress                          | N/A                                         |
| --- UnicastInterHostCommunicationSupportEnabled | N/A                                         |
| --- VirtualIpAddresses                          | N/A                                         |
| ---- IpAddress                                  | N/A                                         |
| ----- Key                                       | N/A                                         |
| ----- IpAddress                                 | N/A                                         |
| ----- NetworkMask                               | N/A                                         |

 

## Microsoft-Windows-OutOfBoxExperience


| Unattend setting name                       | Windows Provisioning setting group and name |
|---------------------------------------------|---------------------------------------------|
| - DoNotOpenInitialConfigurationTasksAtLogon | N/A                                         |
| - OemExtensionXmlFilePath                   | N/A                                         |

 

## Microsoft-Windows-PartitionManager


| Unattend setting name | Windows Provisioning setting group and name                                              |
|-----------------------|------------------------------------------------------------------------------------------|
| - SanPolicy           | [/StorageAreaNetwork/AutoMountPolicy](p_icd_settings.storageareanetwork_automountpolicy) |

 

## Microsoft-Windows-PnpCustomizationsNonWinPE


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - DriverPaths         | N/A                                         |
| -- PathAndCredentials | N/A                                         |
| --- Credentials       | N/A                                         |
| ---- Domain           | N/A                                         |
| ---- Password         | N/A                                         |
| ---- Username         | N/A                                         |
| --- Key               | N/A                                         |
| --- Path              | N/A                                         |

 

## Microsoft-Windows-PnpCustomizationsWinPE


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - DriverPaths         | N/A                                         |
| -- PathAndCredentials | N/A                                         |
| --- Credentials       | N/A                                         |
| ---- Domain           | N/A                                         |
| ---- Password         | N/A                                         |
| ---- Username         | N/A                                         |
| --- Key               | N/A                                         |
| --- Path              | N/A                                         |

 

## Microsoft-Windows-PnpSysprep


| Unattend setting name           | Windows Provisioning setting group and name                                                    |
|---------------------------------|------------------------------------------------------------------------------------------------|
| - DoNotCleanUpNonPresentDevices | [/Drivers/DoNotCleanUpNonPresentDevices](p_icd_settings.drivers_donotcleanupnonpresentdevices) |
| - PersistAllDeviceInstalls      | [/Drivers/PersistAllDeviceInstalls](p_icd_settings.drivers_persistalldeviceinstalls)           |

 

## Microsoft-Windows-powercpl


| Unattend setting name | Windows Provisioning setting group and name                |
|-----------------------|------------------------------------------------------------|
| - PreferredPlan       | [/Power/PreferredPlan](p_icd_settings.power_preferredplan) |

 

## Microsoft-Windows-Printing-Spooler-Core


| Unattend setting name | Windows Provisioning setting group and name                          |
|-----------------------|----------------------------------------------------------------------|
| - RemoveMXDW          | [/Printing/RemoveMXDW](p_icd_settings.printing_removemxdw)           |
| - Start               | [/Printing/StartAutoLogger](p_icd_settings.printing_startautologger) |

 

## Microsoft-Windows-RasServer


| Unattend setting name | Windows Provisioning setting group and name                                        |
|-----------------------|------------------------------------------------------------------------------------|
| - ConfigurationFlags  | [/RemoteAccess/ConfigurationFlags](p_icd_settings.remoteaccess_configurationflags) |
| - RouterType          | [/RemoteAccess/RouterType](p_icd_settings.remoteaccess_routertype)                 |

 

## Microsoft-Windows-RemoteAssistance-Exe


| Unattend setting name        | Windows Provisioning setting group and name                                                                |
|------------------------------|------------------------------------------------------------------------------------------------------------|
| - CreateEncryptedOnlyTickets | [/RemoteAssistance/CreateEncryptedOnlyTickets](p_icd_settings.remoteassistance_createencryptedonlytickets) |
| - fAllowToGetHelp            | [/RemoteAssistance/AllowToGetHelp](p_icd_settings.remoteassistance_allowtogethelp)                         |
| - fAllowFullControl          | [/RemoteAssistance/AllowFullControl](p_icd_settings.remoteassistance_allowfullcontrol)                     |
| - MaxTicketExpiry            | [/RemoteAssistance/MaxTicketExpiry](p_icd_settings.remoteassistance_maxticketexpiry)                       |
| - MaxTicketExpiryUnits       | [/RemoteAssistance/MaxTicketExpiryUnits](p_icd_settings.remoteassistance_maxticketexpiryunits)             |

 

## Microsoft-Windows-SecureStartup-FilterDriver


| Unattend setting name                 | Windows Provisioning setting group and name                                                              |
|---------------------------------------|----------------------------------------------------------------------------------------------------------|
| - BytesDecryptedInDiskRequestOverhead | N/A                                                                                                      |
| - MaxCryptoRequestsPerIo              | N/A                                                                                                      |
| - MaxDecryptRequests                  | N/A                                                                                                      |
| - MaxEncryptRequests                  | N/A                                                                                                      |
| - PreventDeviceEncryption             | [/BitLocker/DoNotAutomaticallyEncryptDevices](p_icd_settings.bitlocker_donotautomaticallyencryptdevices) |
| - SlicedEncryptionInPlace             | N/A                                                                                                      |
| - SlicedEncryptionMinSize             | N/A                                                                                                      |
| - SlicedEncryptionRequestsMax         | N/A                                                                                                      |
| - WriteIoAggregateMaxSize             | N/A                                                                                                      |
| - WriteIoAggregateMinSize             | N/A                                                                                                      |
| - WriteSubrequestLength               | N/A                                                                                                      |

 

## Microsoft-Windows-Security-SPP


| Unattend setting name | Windows Provisioning setting group and name                                |
|-----------------------|----------------------------------------------------------------------------|
| - SkipRearm           | [/SoftwareLicensing/SkipRearm](p_icd_settings.softwarelicensing_skiprearm) |

 

## Microsoft-Windows-Security-SPP-UX


| Unattend setting name | Windows Provisioning setting group and name                                                  |
|-----------------------|----------------------------------------------------------------------------------------------|
| - SkipAutoActivation  | [/SoftwareLicensing/SkipAutoActivation](p_icd_settings.softwarelicensing_skipautoactivation) |

 

## Microsoft-Windows-Security-SPP-UX-SPPCC


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - ReferralId          | N/A                                         |

 

## Microsoft-Windows-ServerManager-SvrMgrNc


| Unattend setting name           | Windows Provisioning setting group and name |
|---------------------------------|---------------------------------------------|
| - DoNotOpenServerManagerAtLogon | N/A                                         |

 

## Microsoft-Windows-Setup


| Unattend setting name               | Windows Provisioning setting group and name |
|-------------------------------------|---------------------------------------------|
| - ComplianceCheck                   | N/A                                         |
| -- DisplayReport                    | N/A                                         |
| - Diagnostics                       | N/A                                         |
| -- OptIn                            | N/A                                         |
| - DiskConfiguration                 | N/A                                         |
| -- DisableEncryptedDiskProvisioning | N/A                                         |
| -- Disk                             | N/A                                         |
| --- CreatePartitions                | N/A                                         |
| ---- CreatePartition                | N/A                                         |
| ----- Extend                        | N/A                                         |
| ----- Order                         | N/A                                         |
| ----- Size                          | N/A                                         |
| ----- Type                          | N/A                                         |
| --- DiskID                          | N/A                                         |
| --- ModifyPartitions                | N/A                                         |
| ---- ModifyPartition                | N/A                                         |
| ----- Active                        | N/A                                         |
| ----- Extend                        | N/A                                         |
| ----- Format                        | N/A                                         |
| ----- Label                         | N/A                                         |
| ----- Letter                        | N/A                                         |
| ----- Order                         | N/A                                         |
| ----- PartitionID                   | N/A                                         |
| ----- TypeID                        | N/A                                         |
| --- WillWipeDisk                    | N/A                                         |
| -- WillShowUI                       | N/A                                         |
| - Display                           | N/A                                         |
| -- ColorDepth                       | N/A                                         |
| -- HorizontalResolution             | N/A                                         |
| -- RefreshRate                      | N/A                                         |
| -- VerticalResolution               | N/A                                         |
| - DynamicUpdate                     | N/A                                         |
| -- Enable                           | N/A                                         |
| -- WillShowUI                       | N/A                                         |
| - EnableFirewall                    | N/A                                         |
| - EnableNetwork                     | N/A                                         |
| - ImageInstall                      | N/A                                         |
| -- DataImage                        | N/A                                         |
| --- InstallFrom                     | N/A                                         |
| ---- Credentials                    | N/A                                         |
| ----- Domain                        | N/A                                         |
| ----- Password                      | N/A                                         |
| ----- Username                      | N/A                                         |
| ---- MetaData                       | N/A                                         |
| ----- Key                           | N/A                                         |
| ----- Value                         | N/A                                         |
| ---- Path                           | N/A                                         |
| --- InstallTo                       | N/A                                         |
| ---- DiskID                         | N/A                                         |
| ---- PartitionID                    | N/A                                         |
| --- Order                           | N/A                                         |
| -- OSImage                          | N/A                                         |
| --- Compact                         | N/A                                         |
| --- InstallFrom                     | N/A                                         |
| ---- Credentials                    | N/A                                         |
| ----- Domain                        | N/A                                         |
| ----- Password                      | N/A                                         |
| ----- Username                      | N/A                                         |
| ---- MetaData                       | N/A                                         |
| ----- Key                           | N/A                                         |
| ----- Value                         | N/A                                         |
| ---- Path                           | N/A                                         |
| --- InstallTo                       | N/A                                         |
| ---- DiskID                         | N/A                                         |
| ---- PartitionID                    | N/A                                         |
| --- InstallToAvailablePartition     | N/A                                         |
| --- WillShowUI                      | N/A                                         |
| - LogPath                           | N/A                                         |
| - PageFile                          | N/A                                         |
| -- Path                             | N/A                                         |
| -- Size                             | N/A                                         |
| - Restart                           | N/A                                         |
| - RunAsynchronous                   | N/A                                         |
| -- RunAsynchronousCommand           | N/A                                         |
| --- Credentials                     | N/A                                         |
| ---- Domain                         | N/A                                         |
| ---- Password                       | N/A                                         |
| ---- Username                       | N/A                                         |
| --- Description                     | N/A                                         |
| --- Order                           | N/A                                         |
| --- Path                            | N/A                                         |
| - RunSynchronous                    | N/A                                         |
| -- RunSynchronousCommand            | N/A                                         |
| --- Credentials                     | N/A                                         |
| ---- Domain                         | N/A                                         |
| ---- Password                       | N/A                                         |
| ---- UserName                       | N/A                                         |
| --- Description                     | N/A                                         |
| --- Order                           | N/A                                         |
| --- Path                            | N/A                                         |
| - UpgradeData                       | N/A                                         |
| -- Upgrade                          | N/A                                         |
| -- WillShowUI                       | N/A                                         |
| - UseConfigurationSet               | N/A                                         |
| - UserData                          | N/A                                         |
| -- AcceptEula                       | N/A                                         |
| -- FullName                         | N/A                                         |
| -- Organization                     | N/A                                         |
| -- ProductKey                       | N/A                                         |
| --- Key                             | N/A                                         |
| --- WillShowUI                      | N/A                                         |
| - WindowsDeploymentServices         | N/A                                         |
| -- ImageSelection                   | N/A                                         |
| --- InstallImage                    | N/A                                         |
| ---- Filename                       | N/A                                         |
| ---- ImageGroup                     | N/A                                         |
| ---- ImageName                      | N/A                                         |
| --- InstallTo                       | N/A                                         |
| ---- DiskID                         | N/A                                         |
| ---- PartitionID                    | N/A                                         |
| --- WillShowUI                      | N/A                                         |
| -- Login                            | N/A                                         |
| --- Credentials                     | N/A                                         |
| ---- Domain                         | N/A                                         |
| ---- Password                       | N/A                                         |
| ---- Username                       | N/A                                         |
| --- WillShowUI                      | N/A                                         |

 

## Microsoft-Windows-SharedAccess


| Unattend setting name | Windows Provisioning setting group and name                                    |
|-----------------------|--------------------------------------------------------------------------------|
| - EnableICS           | [/SharedAccess/EnableICS](p_icd_settings.sharedaccess_enableics)               |
| - ExternalAdapter     | [/SharedAccess/ExternalAdapter](p_icd_settings.sharedaccess_externaladapter)   |
| - InternalAdapter     | [/SharedAccess/InternalAdapter](p_icd_settings.sharedaccess_internaladapter)   |
| - InternalIsBridge    | [/SharedAccess/InternalIsBridge](p_icd_settings.sharedaccess_internalisbridge) |

 

## Microsoft-Windows-Shell-Setup


| Unattend setting name                  | Windows Provisioning setting group and name                                                                                                                |
|----------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - AutoLogon                            | [/Shell/AutoLogon](p_icd_settings.shell_autologon)                                                                                                         |
| -- Domain                              | [/Shell/AutoLogon/Domain](p_icd_settings.shell_autologon_domain)                                                                                           |
| -- Enabled                             | [/Shell/AutoLogon/Enabled](p_icd_settings.shell_autologon_enabled)                                                                                         |
| -- LogonCount                          | [/Shell/AutoLogon/LogonCount](p_icd_settings.shell_autologon_logoncount)                                                                                   |
| -- Password                            | [/Shell/AutoLogon/Password](p_icd_settings.shell_autologon_password)                                                                                       |
| --- PlainText                          | [/Shell/AutoLogon/PlainText](p_icd_settings.shell_autologon_password_plaintext)                                                                            |
| --- Value                              | [/Shell/AutoLogon/Value](p_icd_settings.shell_autologon_password_value)                                                                                    |
| -- Username                            | [/Shell/AutoLogon/Username](p_icd_settings.shell_autologon_username)                                                                                       |
| - BluetoothTaskbarIconEnabled          | [/Shell/BluetoothTaskbarIconEnabled](p_icd_settings.shell_bluetoothtaskbariconenabled)                                                                     |
| - ClientApplications                   | [/Shell/ClientApplications](p_icd_settings.shell_clientapplications)                                                                                       |
| -- IM                                  | [/Shell/ClientApplications/IM](p_icd_settings.shell_clientapplications_im)                                                                                 |
| -- Internet                            | [/Shell/ClientApplications/Internet](p_icd_settings.shell_clientapplications_internet)                                                                     |
| -- JavaVM                              | [/Shell/ClientApplications/JavaVM](p_icd_settings.shell_clientapplications_javavm)                                                                         |
| -- Mail                                | [/Shell/ClientApplications/Mail](p_icd_settings.shell_clientapplications_mail)                                                                             |
| -- Media                               | [/Shell/ClientApplications/Media](p_icd_settings.shell_clientapplications_media)                                                                           |
| - ComputerName                         | [/Computer/Name](p_icd_settings.computer_name)                                                                                                             |
| - ConvertibleSlateModePromptPreference | [/TabletMode/ConvertibleSlateModePromptPreference](p_icd_settings.tabletmode_convertibleslatemodepromptpreference)                                         |
| - CopyProfile                          | [/Shell/CopyProfile](p_icd_settings.shell_copyprofile)                                                                                                     |
| - DesktopOptimization                  | [/Shell/DesktopOptimizations](p_icd_settings.shell_desktopoptimizations)                                                                                   |
| -- GoToDesktopOnSignIn                 | [/Shell/DesktopOptimizations/GoToDesktopOnSignIn](p_icd_settings.shell_desktopoptimizations_gotodesktoponsignin)                                           |
| -- ShowWindowsStoreAppsOnTaskbar       | [/Shell/DesktopOptimizations/ShowWindowsStoreAppsOnTaskbar](p_icd_settings.shell_desktopoptimizations_showwindowsstoreappsontaskbar)                       |
| - DisableAutoDaylightTimeSet           | [/Shell/DisableAutoDaylightTimeSet](p_icd_settings.shell_disableautodaylighttimeset)                                                                       |
| - Display                              | [/Display/Settings](p_icd_settings.display)                                                                                                                |
| -- ColorDepth                          | [/Display/Settings/ColorDepth](p_icd_settings.display_settings_colordepth)                                                                                 |
| -- DPI                                 | [/Display/Settings/DPI](p_icd_settings.display_settings_dpi)                                                                                               |
| -- HorizontalResolution                | [/Display/Settings/HorizontalResolution](p_icd_settings.display_settings_horizontalresolution)                                                             |
| -- RefreshRate                         | [/Display/Settings/RefreshRate](p_icd_settings.display_settings_refreshrate)                                                                               |
| -- VerticalResolution                  | [/Display/Settings/VerticalResolution](p_icd_settings.display_settings_verticalresolution)                                                                 |
| - DoNotCleanTaskBar                    | [/Shell/DoNotCleanTaskBar](p_icd_settings.shell_donotcleantaskbar)                                                                                         |
| - FirstLogonCommands                   | N/A                                                                                                                                                        |
| -- SynchronousCommand                  | N/A                                                                                                                                                        |
| --- CommandLine                        | N/A                                                                                                                                                        |
| --- Description                        | N/A                                                                                                                                                        |
| --- Order                              | N/A                                                                                                                                                        |
| --- RequiresUserInput                  | N/A                                                                                                                                                        |
| - FolderLocations                      | [/Shell/FolderLocations](p_icd_settings.shell_folderlocations)                                                                                             |
| -- ProfilesDirectory                   | [/Shell/FolderLocations/ProfilesDirectory](p_icd_settings.shell_folderlocations_profilesdirectory)                                                         |
| -- ProgramData                         | [/Shell/FolderLocations/ProgramData](p_icd_settings.shell_folderlocations_programdata)                                                                     |
| - LogonCommands                        | N/A                                                                                                                                                        |
| -- AsynchronousCommand                 | N/A                                                                                                                                                        |
| --- CommandLine                        | N/A                                                                                                                                                        |
| --- Description                        | [/Shell/LogonCommands/AsynchronousCommand/Description](p_icd_settings.helpandsupport_onlinesupporticondescription)                                         |
| --- Order                              | N/A                                                                                                                                                        |
| --- RequiresUserInput                  | N/A                                                                                                                                                        |
| - NotificationArea                     | [/Shell/NotificationArea](p_icd_settings.shell_notificationarea)                                                                                           |
| -- PromotedIcon1                       | [/Shell/NotificationArea/PromotedIcon1](p_icd_settings.shell_notificationarea_promotedicon1)                                                               |
| --- GUID                               | [/Shell/NotificationArea/PromotedIcon1/GUID](p_icd_settings.shell_notificationarea_promotedicon1_guid)                                                     |
| --- Path                               | [/Shell/NotificationArea/PromotedIcon1/Path](p_icd_settings.shell_notificationarea_promotedicon1_path)                                                     |
| -- PromotedIcon2                       | [/Shell/PromotedIcon2](p_icd_settings.shell_notificationarea_promotedicon2)                                                                                |
| --- GUID                               | [/Shell/PromotedIcon2/GUID](p_icd_settings.shell_notificationarea_promotedicon2_guid)                                                                      |
| --- Path                               | [/Shell/PromotedIcon2/Path](p_icd_settings.shell_notificationarea_promotedicon2_path)                                                                      |
| - OEMInformation                       | [/OEM/Information](p_icd_settings.oem_information)                                                                                                         |
| -- HelpCustomized                      | [/OEM/Information/HelpCustomized](p_icd_settings.oem_information_helpcustomized)                                                                           |
| -- Logo                                | N/A                                                                                                                                                        |
| -- Manufacturer                        | [/OEM/Information/Manufacturer](p_icd_settings.oem_information_manufacturer)                                                                               |
| -- Model                               | [/OEM/Information/Model](p_icd_settings.oem_information_model)                                                                                             |
| -- SupportAppURL                       | [/OEM/Information/SupportAppURL](p_icd_settings.oem_information_supportappurl)                                                                             |
| -- SupportHours                        | [/OEM/Information/SupportHours](p_icd_settings.oem_information_supporthours)                                                                               |
| -- SupportPhone                        | [/OEM/Information/SupportPhone](p_icd_settings.oem_information_supportphone)                                                                               |
| -- SupportURL                          | [/OEM/Information/SupportURL](p_icd_settings.oem_information_supporturl)                                                                                   |
| - OEMName                              | N/A                                                                                                                                                        |
| - OEMWelcomeCenter                     | [/OEM/WelcomeCenter](p_icd_settings.oem_welcomecenter)                                                                                                     |
| -- link                                | [/OEM/WelcomeCenter/link](p_icd_settings.oem_welcomecenter_link)                                                                                           |
| - OEMWelcomeCenterLinks                | [/OEM/WelcomeCenterLinks](p_icd_settings.oem_welcomecenterlinks)                                                                                           |
| -- Link0                               | [/OEM/WelcomeCenterLinks/Link0](p_icd_settings.oem_welcomecenterlinks_link0)                                                                               |
| -- Link1                               | [/OEM/WelcomeCenterLinks/Link1](p_icd_settings.oem_welcomecenterlinks_link1)                                                                               |
| -- Link2                               | [/OEM/WelcomeCenterLinks/Link2](p_icd_settings.oem_welcomecenterlinks_link2)                                                                               |
| -- Link3                               | [/OEM/WelcomeCenterLinks/Link3](p_icd_settings.oem_welcomecenterlinks_link3)                                                                               |
| -- Link4                               | [/OEM/WelcomeCenterLinks/Link4](p_icd_settings.oem_welcomecenterlinks_link4)                                                                               |
| -- Link5                               | [/OEM/WelcomeCenterLinks/Link5](p_icd_settings.oem_welcomecenterlinks_link5)                                                                               |
| -- Link6                               | [/OEM/WelcomeCenterLinks/Link6](p_icd_settings.oem_welcomecenterlinks_link6)                                                                               |
| -- Link7                               | [/OEM/WelcomeCenterLinks/Link7](p_icd_settings.oem_welcomecenterlinks_link7)                                                                               |
| -- Link8                               | [/OEM/WelcomeCenterLinks/Link8](p_icd_settings.oem_welcomecenterlinks_link8)                                                                               |
| -- Link9                               | [/OEM/WelcomeCenterLinks/Link9](p_icd_settings.oem_welcomecenterlinks_link9)                                                                               |
| - OfflineUserAccounts                  | [/UserAccounts/OfflineAccounts](p_icd_settings.useraccounts_offlineaccounts)                                                                               |
| -- OfflineAdministratorPassword        | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword](p_icd_settings.useraccounts_offlineaccounts_offlineadministratorpassword)                     |
| --- PlainText                          | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword/PlainText](p_icd_settings.useraccounts_offlineaccounts_offlineadministratorpassword_plaintext) |
| --- Value                              | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword/Value](p_icd_settings.useraccounts_offlineaccounts_offlineadministratorpassword_value)         |
| -- OfflineDomainAccounts               | N/A                                                                                                                                                        |
| --- OfflineDomainAccount               | N/A                                                                                                                                                        |
| ---- Group                             | N/A                                                                                                                                                        |
| ---- SID                               | N/A                                                                                                                                                        |
| --- OfflineLocalAccounts               | N/A                                                                                                                                                        |
| ---- LocalAccount                      | N/A                                                                                                                                                        |
| ----- Description                      | N/A                                                                                                                                                        |
| ----- DisplayName                      | N/A                                                                                                                                                        |
| ----- Group                            | N/A                                                                                                                                                        |
| ----- Name                             | N/A                                                                                                                                                        |
| ----- Password                         | N/A                                                                                                                                                        |
| ------ PlainText                       | N/A                                                                                                                                                        |
| ------ Value                           | N/A                                                                                                                                                        |
| - OOBE                                 | [/OutOfBoxExperience/Options](p_icd_settings.outofboxexperience_options)                                                                                   |
| -- HideEULAPage                        | [/OutOfBoxExperience/Options/HideEULAPage](p_icd_settings.outofboxexperience_options_hideeulapage)                                                         |
| -- HideLocalAccountScreen              | [/OutOfBoxExperience/Options/HideLocalAccountScreen](p_icd_settings.outofboxexperience_options_hidelocalaccountscreen)                                     |
| -- HideOEMRegistrationScreen           | [/OutOfBoxExperience/Options/HideOEMRegistrationScreen](p_icd_settings.outofboxexperience_options_hideoemregistrationscreen)                               |
| -- HideOnlineAccountScreens            | [/OutOfBoxExperience/Options/HideOnlineAccountScreens](p_icd_settings.outofboxexperience_options_hideonlineaccountscreens)                                 |
| -- HideWirelessSetupInOOBE             | [/OutOfBoxExperience/Options/HideWirelessSetupInOOBE](p_icd_settings.outofboxexperience_options_hidewirelesssetupinoobe)                                   |
| -- NetworkLocation                     | Deprecated in Windows 10                                                                                                                                   |
| -- OEMAppId                            | [/OutOfBoxExperience/Options/OEMAppId](p_icd_settings.outofboxexperience_options_oemappid)                                                                 |
| -- ProtectYourPC                       | [/OutOfBoxExperience/Options/ProtectYourPC](p_icd_settings.outofboxexperience_options_protectyourpc)                                                       |
| -- SkipMachineOOBE                     | [/OutOfBoxExperience/Options/SkipMachineOOBE](p_icd_settings.outofboxexperience_options_skipmachineoobe)                                                   |
| -- SkipUserOOBE                        | [/OutOfBoxExperience/Options/SkipUserOOBE](p_icd_settings.outofboxexperience_options_skipuseroobe)                                                         |
| -- UnattendEnableRetailDemo            | [/OutOfBoxExperience/Options/UnattendEnableRetailDemo](p_icd_settings.outofboxexperience_options_unattendenableretaildemo)                                 |
| - ProductKey                           | [/Setup/ProductKey](p_icd_settings.setup_productkey)                                                                                                       |
| - RegisteredOrganization               | [/Registered/Organization](p_icd_settings.registered_organization)                                                                                         |
| - RegisteredOwner                      | [/Registered/Owner](p_icd_settings.registered_owner)                                                                                                       |
| - ShowPowerButtonOnStartScreen         | [/StartMenu/ShowPowerButton](p_icd_settings.startmenu_showpowerbutton)                                                                                     |
| - ShowWindowsLive                      | [/Shell/ShowWindowsLive](p_icd_settings.shell_showwindowslive)                                                                                             |
| - SignInMode                           | [/TabletMode/SignInMode](p_icd_settings.tabletmode_signinmode)                                                                                             |
| - StartPanelLinks                      | [/Shell/StartPanelLinks](p_icd_settings.shell_startpanellinks)                                                                                             |
| -- Link0                               | [/Shell/StartPanelLinks/Link0](p_icd_settings.shell_startpanellinks_link0)                                                                                 |
| -- Link1                               | [/Shell/StartPanelLinks/Link1](p_icd_settings.shell_startpanellinks_link1)                                                                                 |
| -- Link2                               | [/Shell/StartPanelLinks/Link2](p_icd_settings.shell_startpanellinks_link2)                                                                                 |
| -- Link3                               | [/Shell/StartPanelLinks/Link3](p_icd_settings.shell_startpanellinks_link3)                                                                                 |
| -- Link4                               | [/Shell/StartPanelLinks/Link4](p_icd_settings.shell_startpanellinks_link4)                                                                                 |
| - StartTiles                           | N/A                                                                                                                                                        |
| -- LockScreen                          | N/A                                                                                                                                                        |
| --- Badge                              | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| -- RegionalOverrides                   | N/A                                                                                                                                                        |
| --- RegionalOverride                   | N/A                                                                                                                                                        |
| ---- Order                             | N/A                                                                                                                                                        |
| ---- LockScreen                        | N/A                                                                                                                                                        |
| ----- Badge                            | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ---- Regions                           | N/A                                                                                                                                                        |
| ----- Key                              | N/A                                                                                                                                                        |
| ----- Region                           | N/A                                                                                                                                                        |
| ------ CountryOrRegionID               | N/A                                                                                                                                                        |
| ---- SquareTiles                       | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile1             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile2             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile3             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile4             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile5             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareOrDesktopTile6             | N/A                                                                                                                                                        |
| ------ AppIdOrPath                     | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile1                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile10                     | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile11                     | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile12                     | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile2                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile3                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile4                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile5                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile6                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile7                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile8                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- SquareTile9                      | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ---- WideTiles                         | N/A                                                                                                                                                        |
| ----- WideTile1                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- WideTile2                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- WideTile3                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- WideTile4                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- WideTile5                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| ----- WideTile6                        | N/A                                                                                                                                                        |
| ------ AppId                           | N/A                                                                                                                                                        |
| ------ FirstRunTask                    | N/A                                                                                                                                                        |
| -- SquareTiles                         | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile1               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile2               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile3               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile4               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile5               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile6               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile7               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile8               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile9               | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile10              | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile11              | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareOrDesktopTile12              | N/A                                                                                                                                                        |
| ---- AppIdOrPath                       | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile1                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile10                       | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile11                       | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile12                       | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile2                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile3                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile4                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile5                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile6                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile7                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile8                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- SquareTile9                        | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| -- WideTiles                           | N/A                                                                                                                                                        |
| --- WideTile1                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- WideTile2                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- WideTile3                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- WideTile4                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- WideTile5                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| --- WideTile6                          | N/A                                                                                                                                                        |
| ---- AppId                             | N/A                                                                                                                                                        |
| ---- FirstRunTask                      | N/A                                                                                                                                                        |
| - StartPanelOff                        | [/StartMenu/UseClassicAppearance](p_icd_settings.startmenu_useclassicappearance)                                                                           |
| - TaskbarLinks                         | [/Shell/TaskbarLinks](p_icd_settings.shell_taskbarlinks)                                                                                                   |
| -- Link0                               | [/Shell/TaskbarLinks/Link0](p_icd_settings.shell_taskbarlinks_link0)                                                                                       |
| -- Link1                               | [/Shell/TaskbarLinks/Link1](p_icd_settings.shell_taskbarlinks_link1)                                                                                       |
| -- Link2                               | [/Shell/TaskbarLinks/Link2](p_icd_settings.shell_taskbarlinks_link2)                                                                                       |
| -- Link3                               | [/Shell/TaskbarLinks/Link3](p_icd_settings.shell_taskbarlinks_link3)                                                                                       |
| -- Link4                               | [/Shell/TaskbarLinks/Link4](p_icd_settings.shell_taskbarlinks_link4)                                                                                       |
| -- Link5                               | [/Shell/TaskbarLinks/Link5](p_icd_settings.shell_taskbarlinks_link5)                                                                                       |
| - Themes                               | [/Shell/Themes](p_icd_settings.shell_themes)                                                                                                               |
| -- BrandIcon                           | N/A                                                                                                                                                        |
| -- CustomDefaultThemeFile              | N/A                                                                                                                                                        |
| -- DefaultThemesOff                    | [/Shell/Themes/DefaultThemesOff](p_icd_settings.shell_themes_defaultthemesoff)                                                                             |
| -- DesktopBackground                   | N/A                                                                                                                                                        |
| -- ScreenSaver                         | N/A                                                                                                                                                        |
| -- ThemeName                           | [/Shell/Themes/ThemeName](p_icd_settings.shell_themes_themename)                                                                                           |
| -- WindowColor                         | [/Shell/Themes/WindowColor](p_icd_settings.shell_themes_windowcolor)                                                                                       |
| - TimeZone                             | [/Shell/TimeZone](p_icd_settings.shell_timezone)                                                                                                           |
| - UserAccounts                         | [/UserAccounts/Accounts](p_icd_settings.useraccounts_accounts)                                                                                             |
| -- AdministratorPassword               | [/UserAccounts/Accounts/AdministratorPassword](p_icd_settings.useraccounts_accounts_administratorpassword)                                                 |
| --- PlainText                          | [/UserAccounts/Accounts/AdministratorPassword/PlainText](p_icd_settings.useraccounts_accounts_administratorpassword_plaintext)                             |
| --- Value                              | [/UserAccounts/Accounts/AdministratorPassword/Value](p_icd_settings.useraccounts_accounts_administratorpassword_value)                                     |
| -- DomainAccounts                      | N/A                                                                                                                                                        |
| --- Domain                             | N/A                                                                                                                                                        |
| --- DomainAccountList                  | N/A                                                                                                                                                        |
| ---- DomainAccount                     | N/A                                                                                                                                                        |
| ----- Group                            | N/A                                                                                                                                                        |
| ----- Name                             | N/A                                                                                                                                                        |
| -- LocalAccounts                       | N/A                                                                                                                                                        |
| --- Name                               | N/A                                                                                                                                                        |
| --- LocalAccount                       | N/A                                                                                                                                                        |
| ---- Description                       | [/UserAccounts/Accounts/LocalAccounts/LocalAccount/Description](p_icd_settings.helpandsupport_onlinesupporticondescription)                                |
| ---- DisplayName                       | N/A                                                                                                                                                        |
| ---- Group                             | N/A                                                                                                                                                        |
| ---- Password                          | N/A                                                                                                                                                        |
| ----- PlainText                        | N/A                                                                                                                                                        |
| ----- Value                            | N/A                                                                                                                                                        |
| - VisualEffects                        | [/Shell/VisualEffects](p_icd_settings.shell_visualeffects)                                                                                                 |
| -- FontSmoothing                       | [/Shell/VisualEffects/FontSmoothing](p_icd_settings.shell_visualeffects_fontsmoothing)                                                                     |
| -- SystemDefaultBackgroundColor        | Deprecated in Windows 10 and should not be used.                                                                                                           |
| - WindowsFeatures                      | [/Shell/WindowsFeatures](p_icd_settings.shell_windowsfeatures)                                                                                             |
| -- ShowInternetExplorer                | [/Shell/WindowsFeatures/ShowInternetExplorer](p_icd_settings.shell_windowsfeatures_showinternetexplorer)                                                   |
| -- ShowMediaCenter                     | [/Shell/WindowsFeatures/ShowMediaCenter](p_icd_settings.shell_windowsfeatures_showmediacenter)                                                             |
| -- ShowWindowsMediaPlayer              | [/Shell/WindowsFeatures/ShowWindowsMediaPlayer](p_icd_settings.shell_windowsfeatures_showwindowsmediaplayer)                                               |
| -- ShowWindowsMail                     | [/Shell/WindowsFeatures/ShowWindowsMail](p_icd_settings.shell_windowsfeatures_showwindowsmail)                                                             |

 

## Microsoft-Windows-shwebsvc


| Unattend setting name | Windows Provisioning setting group and name                              |
|-----------------------|--------------------------------------------------------------------------|
| - Description         | [/OnlinePrinting/Description](p_icd_settings.onlineprinting_description) |
| - DisplayName         | [/OnlinePrinting/DisplayName](p_icd_settings.onlineprinting_displayname) |
| - href                | [/OnlinePrinting/href](p_icd_settings.onlineprinting_href)               |
| - Icon                | N/A                                                                      |
| - ID                  | [/OnlinePrinting/ID](p_icd_settings.onlineprinting_id)                   |

 

## Microsoft-Windows-Sidebar


| Unattend setting name | Windows Provisioning setting group and name                              |
|-----------------------|--------------------------------------------------------------------------|
| - Gadget1             | [/Sidebar/Gadget1](p_icd_settings.sidebar_gadget1)                       |
| - Gadget2             | [/Sidebar/Gadget2](p_icd_settings.sidebar_gadget2)                       |
| - Gadget3             | [/Sidebar/Gadget3](p_icd_settings.sidebar_gadget3)                       |
| - Gadget4             | [/Sidebar/Gadget4](p_icd_settings.sidebar_gadget4)                       |
| - Gadget5             | [/Sidebar/Gadget5](p_icd_settings.sidebar_gadget5)                       |
| - LayoutPosition      | [/Sidebar/LayoutPosition](p_icd_settings.sidebar_layoutposition)         |
| - SidebarOnByDefault  | [/Sidebar/SidebarOnByDefault](p_icd_settings.sidebar_sidebaronbydefault) |
| - SidebarVisible      | [/Sidebar/SidebarVisible](p_icd_settings.sidebar_sidebarvisible)         |

 

## Microsoft-Windows-SMBServer


| Unattend setting name | Windows Provisioning setting group and name                  |
|-----------------------|--------------------------------------------------------------|
| - LmAnnounce          | [/SMBServer/LmAnnounce](p_icd_settings.smbserver_lmannounce) |
| - Size                | [/SMBServer/CacheSize](p_icd_settings.smbserver_cachesize)   |

 

## Microsoft-Windows-SNMP-Agent-Service


| Unattend setting name       | Windows Provisioning setting group and name |
|-----------------------------|---------------------------------------------|
| - EnableAuthenticationTraps | N/A                                         |
| - PermittedManagers         | N/A                                         |
| -- A1                       | N/A                                         |
| - RFC1156Agent              | N/A                                         |
| -- sysContact               | N/A                                         |
| -- sysLocation              | N/A                                         |
| -- sysServices              | N/A                                         |
| - TrapConfiguration         | N/A                                         |
| -- TrapConfigurationItems   | N/A                                         |
| --- Community\_Name         | N/A                                         |
| --- Traps                   | N/A                                         |
| - ValidCommunities          | N/A                                         |
| -- ValidCommunity           | N/A                                         |
| --- Key                     | N/A                                         |
| --- Value                   | N/A                                         |

 

## Microsoft-Windows-SQMAPI


| Unattend setting name | Windows Provisioning setting group and name  |
|-----------------------|----------------------------------------------|
| - CEIPEnabled         | [/CEIP/Enabled](p_icd_settings.ceip_enabled) |

 

## Microsoft-Windows-stobject


| Unattend setting name              | Windows Provisioning setting group and name                                                          |
|------------------------------------|------------------------------------------------------------------------------------------------------|
| - FlyoutAutoPowerScheme            | [/Power/FlyoutAutoPowerScheme](p_icd_settings.power_flyoutautopowerscheme)                           |
| - FlyoutHighPerformancePowerScheme | [/Power/FlyoutHighPerformancePowerScheme](p_icd_settings.power_flyouthighperformancepowerscheme)     |
| - FlyoutPowerSaverPowerScheme      | [/Power/FlyoutPowerSaverPowerScheme](p_icd_settings.power_flyoutpowersaverpowerscheme)               |
| - CustomPowerApplication1          | [/Power/CustomPowerApplication1](p_icd_settings.power_custompowerapplication1)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication1/ItemName](p_icd_settings.power_custompowerapplication1_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication1/Parameters](p_icd_settings.power_custompowerapplication1_parameters) |
| - CustomPowerApplication2          | [/Power/CustomPowerApplication2](p_icd_settings.power_custompowerapplication2)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication2/ItemName](p_icd_settings.power_custompowerapplication2_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication2/Parameters](p_icd_settings.power_custompowerapplication2_parameters) |
| - CustomPowerApplication3          | [/Power/CustomPowerApplication3](p_icd_settings.power_custompowerapplication3)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication3/ItemName](p_icd_settings.power_custompowerapplication3_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication3/Parameters](p_icd_settings.power_custompowerapplication3_parameters) |
| - CustomPowerApplication4          | [/Power/CustomPowerApplication4](p_icd_settings.power_custompowerapplication4)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication4/ItemName](p_icd_settings.power_custompowerapplication4_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication4/Parameters](p_icd_settings.power_custompowerapplication4_parameters) |
| - CustomPowerApplication5          | [/Power/CustomPowerApplication5](p_icd_settings.power_custompowerapplication5)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication5/ItemName](p_icd_settings.power_custompowerapplication5_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication5/Parameters](p_icd_settings.power_custompowerapplication5_parameters) |
| - CustomPowerApplication6          | [/Power/CustomPowerApplication6](p_icd_settings.power_custompowerapplication6)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication6/ItemName](p_icd_settings.power_custompowerapplication6_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication6/Parameters](p_icd_settings.power_custompowerapplication6_parameters) |

 

## Microsoft-Windows-SystemMaintenanceService


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - CacheList           | N/A                                         |
| -- CacheID            | N/A                                         |
| -- Cache              | N/A                                         |
| --- CacheSizeMB       | N/A                                         |
| --- DiskID            | N/A                                         |
| --- EnableCompression | N/A                                         |
| --- EnableEncryption  | N/A                                         |
| --- PartitionID       | N/A                                         |

 

## Microsoft-Windows-SystemRestore-Main


| Unattend setting name | Windows Provisioning setting group and name                      |
|-----------------------|------------------------------------------------------------------|
| - DisableSR           | [/SystemRestore/Disabled](p_icd_settings.systemrestore_disabled) |

 

## Microsoft-Windows-SystemSettings


| Unattend setting name     | Windows Provisioning setting group and name                                            |
|---------------------------|----------------------------------------------------------------------------------------|
| - DisplayNetworkSelection | [/Wireless/DisplayNetworkSelection](p_icd_settings.pcsettings_displaynetworkselection) |
| - WiFiToWlan              | [/Wireless/WiFiToWlan](p_icd_settings.pcsettings_wifitowlan)                           |

 

## Microsoft-Windows-TabletPC-Platform-Input-Core


| Unattend setting name            | Windows Provisioning setting group and name                          |
|----------------------------------|----------------------------------------------------------------------|
| - AssociationData                | N/A                                                                  |
| -- AssociationElement            | N/A                                                                  |
| --- Key                          | N/A                                                                  |
| --- Value                        | N/A                                                                  |
| - HandwritingPanelDockedModeSet  | This content is not yet available.                                   |
| - LinearityData                  | N/A                                                                  |
| -- DeviceElement                 | N/A                                                                  |
| --- Key                          | N/A                                                                  |
| --- Value                        | N/A                                                                  |
| - MultiTouchEnabled              | [/Tablet/MultiTouchEnabled](p_icd_settings.tablet_multitouchenabled) |
| - PanningDisabled                | [/Tablet/PanningDisabled](p_icd_settings.tablet_panningdisabled)     |
| - TouchGate                      | [/Tablet/TouchEnabled](p_icd_settings.tablet_touchenabled)           |
| - TouchKeyboardAutoInvokeEnabled | This content is not yet available.                                   |
| - TouchUI                        | [/Tablet/TouchUI](p_icd_settings.tablet_touchui)                     |
| - TouchUISize                    | [/Tablet/TouchUISize](p_icd_settings.tablet_touchuisize)             |

 

## Microsoft-Windows-TapiSetup


| Unattend setting name       | Windows Provisioning setting group and name                                                                                        |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| - TapiConfigured            | [/Telephony/TapiConfigured](p_icd_settings.telephony_tapiconfigured)                                                               |
| - TapiUnattendLocation      | [/Telephony/TapiUnattendLocation](p_icd_settings.telephony_tapiunattendlocation)                                                   |
| -- AreaCode                 | [/Telephony/TapiUnattendLocation/AreaCode](p_icd_settings.telephony_tapiunattendlocation_areacode)                                 |
| -- CountryOrRegion          | [/Telephony/TapiUnattendLocation/CountryOrRegion](p_icd_settings.telephony_tapiunattendlocation_countryorregion)                   |
| -- DisableCallWaiting       | [/Telephony/TapiUnattendLocation/DisableCallWaiting](p_icd_settings.telephony_tapiunattendlocation_disablecallwaiting)             |
| -- InternationalCarrierCode | [/Telephony/TapiUnattendLocation/InternationalCarrierCode](p_icd_settings.telephony_tapiunattendlocation_internationalcarriercode) |
| -- LongDistanceAccess       | [/Telephony/TapiUnattendLocation/LongDistanceAccess](p_icd_settings.telephony_tapiunattendlocation_longdistanceaccess)             |
| -- LongDistanceCarrierCode  | [/Telephony/TapiUnattendLocation/LongDistanceCarrierCode](p_icd_settings.telephony_tapiunattendlocation_longdistancecarriercode)   |
| -- Name                     | [/Telephony/TapiUnattendLocation/Name](p_icd_settings.telephony_tapiunattendlocation_name)                                         |
| -- OutsideAccess            | [/Telephony/TapiUnattendLocation/OutsideAccess](p_icd_settings.telephony_tapiunattendlocation_outsideaccess)                       |
| -- PulseOrToneDialing       | [/Telephony/TapiUnattendLocation/PulseOrToneDialing](p_icd_settings.telephony_tapiunattendlocation_pulseortonedialing)             |

 

## Microsoft-Windows-TCPIP


| Unattend setting name       | Windows Provisioning setting group and name                              |
|-----------------------------|--------------------------------------------------------------------------|
| - IcmpRedirectsEnabled      | [/TCPIP/IcmpRedirectsEnabled](p_icd_settings.tcpip_icmpredirectsenabled) |
| - Interfaces                | N/A                                                                      |
| -- Identifier               | N/A                                                                      |
| -- Interface                | N/A                                                                      |
| --- Ipv4Settings            | N/A                                                                      |
| ---- DhcpEnabled            | N/A                                                                      |
| ---- Metric                 | N/A                                                                      |
| ---- RouterDiscoveryEnabled | N/A                                                                      |
| --- Ipv6Settings            | N/A                                                                      |
| ---- DhcpEnabled            | N/A                                                                      |
| ---- Metric                 | N/A                                                                      |
| ---- RouterDiscoveryEnabled | N/A                                                                      |
| --- Routes                  | N/A                                                                      |
| ---- Identifier             | N/A                                                                      |
| ---- Route                  | N/A                                                                      |
| ----- Metric                | N/A                                                                      |
| ----- NextHopAddress        | N/A                                                                      |
| ----- Prefix                | N/A                                                                      |
| --- UnicastIpAddresses      | N/A                                                                      |
| ---- IpAddress              | N/A                                                                      |
| ----- Key                   | N/A                                                                      |
| ----- Value                 | N/A                                                                      |

 

## Microsoft-Windows-TerminalServices-CentralPublishing


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - Port                | N/A                                         |

 

## Microsoft-Windows-TerminalServices-LicenseServer


| Unattend setting name | Windows Provisioning setting group and name |
|-----------------------|---------------------------------------------|
| - DBPath              | N/A                                         |
| - Role                | N/A                                         |

 

## Microsoft-Windows-TerminalServices-LocalSessionManager


| Unattend setting name | Windows Provisioning setting group and name                                              |
|-----------------------|------------------------------------------------------------------------------------------|
| - fDenyTSConnections  | [/TerminalServices/DenyTSConnections](p_icd_settings.terminalservices_denytsconnections) |

 

## Microsoft-Windows-TerminalServices-Publishing-WMIProvider


| Unattend setting name | Windows Provisioning setting group and name                                                                    |
|-----------------------|----------------------------------------------------------------------------------------------------------------|
| - fDisabledAllowList  | [/TerminalServicesWMIProvider/DisabledAllowList](p_icd_settings.terminalserviceswmiprovider_disabledallowlist) |

 

## Microsoft-Windows-TerminalServices-RDP-WinStationExtensions


| Unattend setting name | Windows Provisioning setting group and name                                          |
|-----------------------|--------------------------------------------------------------------------------------|
| - SecurityLayer       | [/RemoteDesktop/SecurityLayer](p_icd_settings.remotedesktop_securitylayer)           |
| - UserAuthentication  | [/RemoteDesktop/UserAuthentication](p_icd_settings.remotedesktop_userauthentication) |

 

## Microsoft-Windows-TerminalServices-RemoteConnectionManager


| Unattend setting name | Windows Provisioning setting group and name                                      |
|-----------------------|----------------------------------------------------------------------------------|
| - LicensingMode       | [/TerminalServices/LicensingMode](p_icd_settings.terminalservices_licensingmode) |

 

## Microsoft-Windows-UnattendedJoin


| Unattend setting name       | Windows Provisioning setting group and name                                                                                      |
|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| - Identification            | [/Domain/UnattendedJoin/Online](p_icd_settings.domain_unattendedjoin_online)                                                     |
| -- Credentials              | [/Domain/UnattendedJoin/Online/Credentials](p_icd_settings.domain_unattendedjoin_online_credentials)                             |
| --- Domain                  | [/Domain/UnattendedJoin/Online/Credentials/Domain](p_icd_settings.domain_unattendedjoin_online_credentials_domain)               |
| --- Password                | [/Domain/UnattendedJoin/Online/Credentials/Password](p_icd_settings.domain_unattendedjoin_online_credentials_password)           |
| --- Username                | [/Domain/UnattendedJoin/Online/Credentials/Username](p_icd_settings.domain_unattendedjoin_online_credentials_username)           |
| -- DebugJoin                | [/Domain/UnattendedJoin/Online/DebugJoin](p_icd_settings.domain_unattendedjoin_online_debugjoin)                                 |
| -- DebugJoinOnlyOnThisError | [/Domain/UnattendedJoin/Online/DebugJoinOnlyOnThisError](p_icd_settings.domain_unattendedjoin_online_debugjoinonlyonthiserror)   |
| -- JoinDomain               | [/Domain/UnattendedJoin/Online/JoinDomain](p_icd_settings.domain_unattendedjoin_online_joindomain)                               |
| -- JoinWorkgroup            | [/Domain/UnattendedJoin/Online/JoinWorkgroup](p_icd_settings.domain_unattendedjoin_online_joinworkgroup)                         |
| -- MachineObjectOU          | [/Domain/UnattendedJoin/Online/MachineObjectOU](p_icd_settings.domain_unattendedjoin_online_machineobjectou)                     |
| -- MachinePassword          | [/Domain/UnattendedJoin/Online/MachinePassword](p_icd_settings.domain_unattendedjoin_online_machinepassword)                     |
| -- Provisioning             | [/Domain/UnattendedJoin/Online/Provisioning](p_icd_settings.domain_unattendedjoin_online_provisioning)                           |
| --- AccountData             | [/Domain/UnattendedJoin/Online/Provisioning/AccountData](p_icd_settings.domain_unattendedjoin_online_provisioning_accountdata)   |
| -- TimeoutPeriodInMinutes   | [/Domain/UnattendedJoin/Online/TimeoutPeriodInMinutes](p_icd_settings.domain_unattendedjoin_online_timeoutperiodinminutes)       |
| -- UnsecureJoin             | [/Domain/UnattendedJoin/Online/UnsecureJoin](p_icd_settings.domain_unattendedjoin_online_unsecurejoin)                           |
| - OfflineIdentification     | [/Domain/UnattendedJoin/Offline](p_icd_settings.domain_unattendedjoin_offline)                                                   |
| -- Provisioning             | [/Domain/UnattendedJoin/Offline/Provisioning](p_icd_settings.domain_unattendedjoin_offline_provisioning)                         |
| --- AccountData             | [/Domain/UnattendedJoin/Offline/Provisioning/Accountdata](p_icd_settings.domain_unattendedjoin_offline_provisioning_accountdata) |

 

## Microsoft-Windows-WDF-Kernel Library


| Unattend setting name | Windows Provisioning setting group and name                    |
|-----------------------|----------------------------------------------------------------|
| - DriverStartType     | [/Drivers/KMDFStartType](p_icd_settings.drivers_kmdfstarttype) |

 

## Microsoft-Windows-WinRE-RecoveryAgent


| Unattend setting name | Windows Provisioning setting group and name                          |
|-----------------------|----------------------------------------------------------------------|
| - UninstallWindowsRE  | [/Setup/UninstallWindowsRE](p_icd_settings.setup_uninstallwindowsre) |

 

## Microsoft-Windows-Wlansvc


| Unattend setting name                     | Windows Provisioning setting group and name                                                                                                                                                        |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - CoexistenceSupport                      | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/CoexistenceSupport](p_icd_settings.connectivityprofiles_wifisense_systemcapabilities_coexistencesupport)                                       |
| - NumAntennaConnected                     | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/NumAntennaConnected](p_icd_settings.connectivityprofiles_wifisense_systemcapabilities_numantennaconnected)                                     |
| - RadioLocation                           | [/Wireless/RadioLocation](p_icd_settings.wireless_radiolocation)                                                                                                                                   |
| - SimultaneousMultiChannelSupported       | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/SimultaneousMultiChannelSupported](p_icd_settings.connectivityprofiles_wifisense_systemcapabilities_simultaneousmultichannelsupported)         |
| - WLANFunctionalLevelDeviceResetSupported | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/WLANFunctionLevelDeviceResetSupported](p_icd_settings.connectivityprofiles_wifisense_systemcapabilities_wlanfunctionleveldeviceresetsupported) |
| - WLANPlatformLevelDeviceResetSupported   | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/WLANPlatformLevelDeviceResetSupported](p_icd_settings.connectivityprofiles_wifisense_systemcapabilities_wlanplatformleveldeviceresetsupported) |

 

## Microsoft-Windows-WorkstationService


| Unattend setting name      | Windows Provisioning setting group and name                                              |
|----------------------------|------------------------------------------------------------------------------------------|
| - OtherDomains             | [/SMBClient/OtherDomains](p_icd_settings.smbclient_otherdomains)                         |
| - SyncDomainWithMembership | [/SMBClient/SyncDomainWithMembership](p_icd_settings.smbclient_syncdomainwithmembership) |

 

## Microsoft-Windows-WPD-BusEnumService


| Unattend setting name  | Windows Provisioning setting group and name                                        |
|------------------------|------------------------------------------------------------------------------------|
| - BTSearchIntervalOnAC | [/Bluetooth/MTPSearchIntervalOnAC](p_icd_settings.bluetooth_mtpsearchintervalonac) |
| - BTSearchIntervalOnDC | [/Bluetooth/MTPSearchIntervalOnDC](p_icd_settings.bluetooth_mtpsearchintervalondc) |
| - RegCacheUpdated      | N/A                                                                                |

 

## Microsoft-Windows-WwanUI


| Unattend setting name | Windows Provisioning setting group and name                    |
|-----------------------|----------------------------------------------------------------|
| - NotInOOBE           | [/Wireless/HideUIInOOBE](p_icd_settings.wireless_hideuiinoobe) |

 

## Networking-MPSSVC-Svc


| Unattend setting name                      | Windows Provisioning setting group and name                                                                           |
|--------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| - DisableStatefulFTP                       | [/Firewall/DisableStatefulFTP](p_icd_settings.firewall_disablestatefulftp)                                            |
| - DisableStatefulPPTP                      | [/Firewall/DisableStatefulPPTP](p_icd_settings.firewall_disablestatefulpptp)                                          |
| - DomainProfile\_DisableNotifications      | [/Firewall/DomainProfile\_DisableNotifications](p_icd_settings.firewall_domainprofile_disablenotifications)           |
| - DomainProfile\_EnableFirewall            | [/Firewall/DomainProfile\_EnableFirewall](p_icd_settings.firewall_domainprofile_enablefirewall)                       |
| - DomainProfile\_LogDroppedPackets         | [/Firewall/DomainProfile\_LogDroppedPackets](p_icd_settings.firewall_domainprofile_logdroppedpackets)                 |
| - DomainProfile\_LogFile                   | [/Firewall/DomainProfile\_LogFile](p_icd_settings.firewall_domainprofile_logfile)                                     |
| - DomainProfile\_LogFileSize               | [/Firewall/DomainProfile\_LogFileSize](p_icd_settings.firewall_domainprofile_logfilesize)                             |
| - DomainProfile\_LogSuccessfulConnections  | [/Firewall/DomainProfile\_LogSuccessfulConnections](p_icd_settings.firewall_domainprofile_logsuccessfulconnections)   |
| - FirewallGroups                           | N/A                                                                                                                   |
| -- Key                                     | N/A                                                                                                                   |
| -- FirewallGroup                           | N/A                                                                                                                   |
| --- Active                                 | N/A                                                                                                                   |
| --- Group                                  | N/A                                                                                                                   |
| --- Profile                                | N/A                                                                                                                   |
| - PrivateProfile\_DisableNotifications     | [/Firewall/PrivateProfile\_DisableNotifications](p_icd_settings.firewall_privateprofile_disablenotifications)         |
| - PrivateProfile\_EnableFirewall           | [/Firewall/PrivateProfile\_EnableFirewall](p_icd_settings.firewall_privateprofile_enablefirewall)                     |
| - PrivateProfile\_LogDroppedPackets        | [/Firewall/PrivateProfile\_LogDroppedPackets](p_icd_settings.firewall_privateprofile_logdroppedpackets)               |
| - PrivateProfile\_LogFile                  | [/Firewall/PrivateProfile\_LogFile](p_icd_settings.firewall_privateprofile_logfile)                                   |
| - PrivateProfile\_LogFileSize              | [/Firewall/PrivateProfile\_LogFileSize](p_icd_settings.firewall_privateprofile_logfilesize)                           |
| - PrivateProfile\_LogSuccessfulConnections | [/Firewall/PrivateProfile\_LogSuccessfulConnections](p_icd_settings.firewall_privateprofile_logsuccessfulconnections) |
| - PublicProfile\_DisableNotifications      | [/Firewall/PublicProfile\_DisableNotifications](p_icd_settings.firewall_publicprofile_disablenotifications)           |
| - PublicProfile\_EnableFirewall            | [/Firewall/PublicProfile\_EnableFirewall](p_icd_settings.firewall_publicprofile_enablefirewall)                       |
| - PublicProfile\_LogDroppedPackets         | [/Firewall/PublicProfile\_LogDroppedPackets](p_icd_settings.firewall_publicprofile_logdroppedpackets)                 |
| - PublicProfile\_LogFile                   | [/Firewall/PublicProfile\_LogFile](p_icd_settings.firewall_publicprofile_logfile)                                     |
| - PublicProfile\_LogFileSize               | [/Firewall/PublicProfile\_LogFileSize](p_icd_settings.firewall_publicprofile_logfilesize)                             |
| - PublicProfile\_LogSuccessfulConnections  | [/Firewall/PublicProfile\_LogSuccessfulConnections](p_icd_settings.firewall_publicprofile_logsuccessfulconnections)   |

 

## Security-Malware-Windows-Defender


| Unattend setting name               | Windows Provisioning setting group and name                                                                                  |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| - DefinitionUpdateFileSharesSources | [/WindowsDefender/DefinitionUpdateFileSharesSources](p_icd_settings.windowsdefender_definitionupdatefilesharessources)       |
| - DisableAntiSpyware                | [/WindowsDefender/DisableAntiSpyware](p_icd_settings.windowsdefender_disableantispyware)                                     |
| - EnableRemoteManagedDefaults       | [/WindowsDefender/EnableRemoteManagedDefaults](p_icd_settings.windowsdefender_enableremotemanageddefaults)                   |
| - FallbackOrder                     | [/WindowsDefender/FallbackOrder](p_icd_settings.windowsdefender_fallbackorder)                                               |
| - Scan                              | [/WindowsDefender/Scan](p_icd_settings.windowsdefender_scan)                                                                 |
| -- ScanParameters                   | [/WindowsDefender/Scan/ScanParameters](p_icd_settings.windowsdefender_scan_scanparameters)                                   |
| -- ScheduleDay                      | [/WindowsDefender/Scan/ScheduleDay](p_icd_settings.windowsdefender_scan_scheduleday)                                         |
| -- ScheduleTime                     | [/WindowsDefender/Scan/ScheduleTime](p_icd_settings.windowsdefender_scan_scheduletime)                                       |
| - SignatureUpdateInterval           | [/WindowsDefender/SignatureUpdateInterval](p_icd_settings.windowsdefender_signatureupdateinterval)                           |
| - ThreatSeverityDefaultAction       | [/WindowsDefender/ThreatSeverityDefaultAction](p_icd_settings.windowsdefender_threatseveritydefaultaction)                   |
| -- Low                              | [/WindowsDefender/ThreatSeverityDefaultAction/Low](p_icd_settings.windowsdefender_threatseveritydefaultaction_low)           |
| -- Moderate                         | [/WindowsDefender/ThreatSeverityDefaultAction/Moderate](p_icd_settings.windowsdefender_threatseveritydefaultaction_moderate) |
| -- High                             | [/WindowsDefender/ThreatSeverityDefaultAction/High](p_icd_settings.windowsdefender_threatseveritydefaultaction_high)         |
| -- Severe                           | [/WindowsDefender/ThreatSeverityDefaultAction/Severe](p_icd_settings.windowsdefender_threatseveritydefaultaction_severe)     |
| - TrustedImageIdentifier            | [/WindowsDefender/TrustedImageIdentifier](p_icd_settings.windowsdefender_trustedimageidentifier)                             |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Unattend%20to%20Windows%20Provisioning%20settings%20map%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




