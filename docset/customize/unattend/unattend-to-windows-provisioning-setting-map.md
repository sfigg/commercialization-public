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


This topic shows the Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) Unattend components and settings (which are configurable in [Windows System Image Manager](https://msdn.microsoft.com/library/windows/hardware/dn922447)) and their equivalent Windows Provisioning setting group and setting name (which are configurable in [Windows Imaging and Configuration Designer](https://msdn.microsoft.com/library/windows/hardware/dn916113)).

**Note**  
Due to the design change in Windows 10, settings marked **N/A** are not supported when using the Windows Provisioning framework or Windows Imaging and Configuration Designer (ICD).

 

## Microsoft-Windows-Audio-AudioCore


| Unattend setting name  | Windows Provisioning setting group and name                              |
|------------------------|--------------------------------------------------------------------------|
| - EnableCaptureMonitor | [/Audio/EnableCaptureMonitor](https://msdn.microsoft.com/library/windows/hardware/dn953351) |

 

## Microsoft-Windows-Audio-VolumeControl


| Unattend setting name            | Windows Provisioning setting group and name                                                  |
|----------------------------------|----------------------------------------------------------------------------------------------|
| - EnableVolumeControlWhileLocked | [/Audio/EnableVolumeControlWhileLocked](https://msdn.microsoft.com/library/windows/hardware/dn953352) |

 

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
| - MaintainServerList  | [/Domain/MaintainServerList](https://msdn.microsoft.com/library/windows/hardware/dn953389) |

 

## Microsoft-Windows-CoreMmRes


| Unattend setting name | Windows Provisioning setting group and name                      |
|-----------------------|------------------------------------------------------------------|
| - CameraSoundLevel    | [/Audio/CameraSoundLevel](https://msdn.microsoft.com/library/windows/hardware/dn953350) |
| - NoPhysicalCameraLED | [/Camera/NoPhysicalLED](https://msdn.microsoft.com/library/windows/hardware/dn953359)     |

 

## Microsoft-Windows-Deployment


| Unattend setting name     | Windows Provisioning setting group and name                                |
|---------------------------|----------------------------------------------------------------------------|
| - AuditComputerName       | N/A                                                                        |
| -- MustReboot             | N/A                                                                        |
| -- Name                   | N/A                                                                        |
| - DeviceForm              | [/DeviceFormFactor/DeviceForm](https://msdn.microsoft.com/library/windows/hardware/mt243450) |
| - DuplicatorDescription   | [/Setup/DuplicatorDescription](https://msdn.microsoft.com/library/windows/hardware/dn953782) |
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
| - SetRegionSpecificPrivacyAccessPolicy | [/CountryAndRegion/CountryCodeForExtendedCapabilityPrompts](https://msdn.microsoft.com/library/windows/hardware/mt219727) |

 

## Microsoft-Windows-DeviceGuard-Unattend


| Unattend setting name               | Windows Provisioning setting group and name |
|-------------------------------------|---------------------------------------------|
| - EnableVirtualizationBasedSecurity | N/A                                         |
| - HypervisorEnforcedCodeIntegrity   | N/A                                         |
| - LsaCfgFlags                       | N/A                                         |

 

## Microsoft-Windows-DiagCpl


| Unattend setting name | Windows Provisioning setting group and name                                                    |
|-----------------------|------------------------------------------------------------------------------------------------|
| - Description         | [/HelpAndSupport/Description](https://msdn.microsoft.com/library/windows/hardware/dn953476)      |
| - Icon                | N/A                                                                                            |
| - Link                | [/HelpAndSupport/OnlineSupportIconLink](https://msdn.microsoft.com/library/windows/hardware/dn953478)   |
| - Title               | [/HelpAndSupport/OnlineSupportIconTitle](https://msdn.microsoft.com/library/windows/hardware/dn953479) |

 

## Microsoft-Windows-Disk-Failure-Diagnostic-Module


| Unattend setting name           | Windows Provisioning setting group and name                                                                                  |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| - EnabledScenarioExecutionLevel | [/Diagnostics/DiskFailureEnabledScenarioExecutionLevel](https://msdn.microsoft.com/library/windows/hardware/dn953367) |
| - DfdAlertTextOverride          | [/Diagnostics/DiskFailureAlertTextOverride](https://msdn.microsoft.com/library/windows/hardware/dn953366)                         |

 

## Microsoft-Windows-DNS-Client


| Unattend setting name                   | Windows Provisioning setting group and name                                |
|-----------------------------------------|----------------------------------------------------------------------------|
| - DNSDomain                             | [/DNS/DNSDomain](https://msdn.microsoft.com/library/windows/hardware/dn953376)                                |
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
| - UseDomainNameDevolution               | [/DNS/UseDomainNameDevolution](https://msdn.microsoft.com/library/windows/hardware/dn953387) |

 

## Microsoft-Windows-Embedded-BootExp


| Unattend setting name     | Windows Provisioning setting group and name                                                              |
|---------------------------|----------------------------------------------------------------------------------------------------------|
| - DisableBootMenu         | [/SMISettings/UnbrandedBoot/DisableBootMenu](https://msdn.microsoft.com/library/windows/hardware/mt586682)                 |
| - DisplayDisabled         | [/SMISettings/UnbrandedBoot/DisplayDisabled](https://msdn.microsoft.com/library/windows/hardware/mt586683)                 |
| - HideAllBootUI           | [/SMISettings/UnbrandedBoot/HideAllBootUI](https://msdn.microsoft.com/library/windows/hardware/mt586684)                     |
| - HideBootLogo            | [/SMISettings/UnbrandedBoot/HideBootLogo](https://msdn.microsoft.com/library/windows/hardware/mt586685)                       |
| - HideBootStatusIndicator | [/SMISettings/UnbrandedBoot/HideBootStatusIndicator](https://msdn.microsoft.com/library/windows/hardware/mt586686) |
| - HideBootStatusMessage   | [/SMISettings/UnbrandedBoot/HideBootStatusMessage](https://msdn.microsoft.com/library/windows/hardware/mt586687)     |

 

## Microsoft-Windows-Embedded-EmbeddedLogon


| Unattend setting name | Windows Provisioning setting group and name                                                |
|-----------------------|--------------------------------------------------------------------------------------------|
| - AnimationDisabled   | [/SMISettings/CustomLogon/AnimationDisabled](https://msdn.microsoft.com/library/windows/hardware/mt584191) |
| - BrandingNeutral     | [/SMISettings/CustomLogon/BrandingNeutral](https://msdn.microsoft.com/library/windows/hardware/mt584192)     |
| - HideAutoLogonUI     | [/SMISettings/CustomLogon/HideAutologonUI](https://msdn.microsoft.com/library/windows/hardware/mt584194)     |
| - NoLockScreen        | [/SMISettings/CustomLogon/NoLockScreen](https://msdn.microsoft.com/library/windows/hardware/mt584195)           |
| - UIVerbosityLevel    | [/SMISettings/CustomLogon/UIVerbosityLevel](https://msdn.microsoft.com/library/windows/hardware/mt584199)   |

 

## Microsoft-Windows-Embedded-KeyboardFilterService


| Unattend setting name                    | Windows Provisioning setting group and name                                                                                                            |
|------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| - Alt                                    | [/SMISettings/KeyboardFilter/Alt](https://msdn.microsoft.com/library/windows/hardware/mt593148)                                                                       |
| - AltF4                                  | [/SMISettings/KeyboardFilter/AltF4](https://msdn.microsoft.com/library/windows/hardware/mt593148f4)                                                                   |
| - AltSpace                               | [/SMISettings/KeyboardFilter/AltSpace](https://msdn.microsoft.com/library/windows/hardware/mt593148space)                                                             |
| - AltTab                                 | [/SMISettings/KeyboardFilter/AltTab](https://msdn.microsoft.com/library/windows/hardware/mt593148tab)                                                                 |
| - AltWin                                 | [/SMISettings/KeyboardFilter/AltWin](https://msdn.microsoft.com/library/windows/hardware/mt593148win)                                                                 |
| - BrowserBack                            | [/SMISettings/KeyboardFilter/BrowserBack](https://msdn.microsoft.com/library/windows/hardware/mt593153)                                                       |
| - BrowserFavorites                       | [/SMISettings/KeyboardFilter/BrowserFavorites](https://msdn.microsoft.com/library/windows/hardware/mt593154)                                             |
| - BrowserForward                         | [/SMISettings/KeyboardFilter/BrowserForward](https://msdn.microsoft.com/library/windows/hardware/mt593155)                                                 |
| - BrowserHome                            | [/SMISettings/KeyboardFilter/BrowserHome](https://msdn.microsoft.com/library/windows/hardware/mt593156)                                                       |
| - BrowserRefresh                         | [/SMISettings/KeyboardFilter/BrowserRefresh](https://msdn.microsoft.com/library/windows/hardware/mt593157)                                                 |
| - BrowserSearch                          | [/SMISettings/KeyboardFilter/BrowserSearch](https://msdn.microsoft.com/library/windows/hardware/mt593158)                                                   |
| - BrowserStop                            | [/SMISettings/KeyboardFilter/BrowserStop](https://msdn.microsoft.com/library/windows/hardware/mt593159)                                                       |
| - ControlAltDelete                       | [/SMISettings/KeyboardFilter/CtrlAltDel](https://msdn.microsoft.com/library/windows/hardware/mt593161)                                                         |
| - ControlEscape                          | [/SMISettings/KeyboardFilter/CtrlEsc](https://msdn.microsoft.com/library/windows/hardware/mt593162)                                                               |
| - ControlTab                             | [/SMISettings/KeyboardFilter/CtrlTab](https://msdn.microsoft.com/library/windows/hardware/mt593164)                                                               |
| - ControlWindowsF                        | [/SMISettings/KeyboardFilter/CtrlWinF](https://msdn.microsoft.com/library/windows/hardware/mt593166)                                                             |
| - Ctrl                                   | [/SMISettings/KeyboardFilter/Ctrl](https://msdn.microsoft.com/library/windows/hardware/mt593160)                                                                     |
| - CtrlF4                                 | [/SMISettings/KeyboardFilter/CtrlF4](https://msdn.microsoft.com/library/windows/hardware/mt593160f4)                                                                 |
| - CtrlWin                                | [/SMISettings/KeyboardFilter/CtrlWin](https://msdn.microsoft.com/library/windows/hardware/mt593160win)                                                               |
| - CustomFilters                          | [/SMISettings/KeyboardFilter/CustomKeyFilter](https://msdn.microsoft.com/library/windows/hardware/mt593167)                                               |
| -- FilterRule                            | N/A                                                                                                                                                    |
| - CustomScancodes                        | [/SMISettings/KeyboardFilter/CustomScancodeFilter](https://msdn.microsoft.com/library/windows/hardware/mt593168)                                     |
| -- FilterRule                            | N/A                                                                                                                                                    |
| - DisableKeyboardFilterForAdministrators | [/SMISettings/KeyboardFilter/DisableKeyboardFilterForAdministrators](https://msdn.microsoft.com/library/windows/hardware/mt593169) |
| - Escape                                 | [/SMISettings/KeyboardFilter/Escape](https://msdn.microsoft.com/library/windows/hardware/mt593170)                                                                 |
| - F21                                    | [/SMISettings/KeyboardFilter/F21](https://msdn.microsoft.com/library/windows/hardware/mt593171)                                                                       |
| - ForceOffAccessibility                  | [/SMISettings/KeyboardFilter/ForceOffAccessibility](https://msdn.microsoft.com/library/windows/hardware/mt593172)                                   |
| - LaunchApp1                             | [/SMISettings/KeyboardFilter/LaunchApp1](https://msdn.microsoft.com/library/windows/hardware/mt593173)                                                         |
| - LaunchApp2                             | [/SMISettings/KeyboardFilter/LaunchApp2](https://msdn.microsoft.com/library/windows/hardware/mt593174)                                                         |
| - LaunchMail                             | [/SMISettings/KeyboardFilter/LaunchMail](https://msdn.microsoft.com/library/windows/hardware/mt593175)                                                         |
| - LaunchMediaSelect                      | [/SMISettings/KeyboardFilter/LaunchMediaSelect](https://msdn.microsoft.com/library/windows/hardware/mt593176)                                           |
| - LeftShiftLeftAltNumLock                | [/SMISettings/KeyboardFilter/LShiftLAltNumLock](https://msdn.microsoft.com/library/windows/hardware/mt593177)                                           |
| - LeftShiftLeftAltPrintScreen            | [/SMISettings/KeyboardFilter/LShiftLAltPrintScrn](https://msdn.microsoft.com/library/windows/hardware/mt593178)                                       |
| - MediaNext                              | [/SMISettings/KeyboardFilter/MediaNext](https://msdn.microsoft.com/library/windows/hardware/mt593179)                                                           |
| - MediaPlayPause                         | [/SMISettings/KeyboardFilter/MediaPlayPause](https://msdn.microsoft.com/library/windows/hardware/mt593180)                                                 |
| - MediaPrev                              | [/SMISettings/KeyboardFilter/MediaPrev](https://msdn.microsoft.com/library/windows/hardware/mt593181)                                                           |
| - MediaStop                              | [/SMISettings/KeyboardFilter/MediaStop](https://msdn.microsoft.com/library/windows/hardware/mt593182)                                                           |
| - Shift                                  | [/SMISettings/KeyboardFilter/Shift](https://msdn.microsoft.com/library/windows/hardware/mt593183)                                                                   |
| - ShiftControlEscape                     | [/SMISettings/KeyboardFilter/ShiftCtrlEsc](https://msdn.microsoft.com/library/windows/hardware/mt593183ctrlesc)                                                     |
| - ShiftWin                               | [/SMISettings/KeyboardFilter/ShiftWin](https://msdn.microsoft.com/library/windows/hardware/mt593183win)                                                             |
| - VolumeDown                             | [/SMISettings/KeyboardFilter/VolumeDown](https://msdn.microsoft.com/library/windows/hardware/mt593186)                                                         |
| - VolumeMute                             | [/SMISettings/KeyboardFilter/VolumeMute](https://msdn.microsoft.com/library/windows/hardware/mt593187)                                                         |
| - VolumeUp                               | [/SMISettings/KeyboardFilter/VolumeUp](https://msdn.microsoft.com/library/windows/hardware/mt593188)                                                             |
| - Windows                                | [/SMISettings/KeyboardFilter/Windows](https://msdn.microsoft.com/library/windows/hardware/mt593195)                                                               |
| - WindowsB                               | [/SMISettings/KeyboardFilter/WinB](https://msdn.microsoft.com/library/windows/hardware/mt593189)                                                                     |
| - WindowsBreak                           | [/SMISettings/KeyboardFilter/WinBreak](https://msdn.microsoft.com/library/windows/hardware/mt593189reak)                                                             |
| - WindowsC                               | [/SMISettings/KeyboardFilter/WinC](https://msdn.microsoft.com/library/windows/hardware/mt593191)                                                                     |
| - WindowsComma                           | [/SMISettings/KeyboardFilter/WinComma](https://msdn.microsoft.com/library/windows/hardware/mt593191omma)                                                             |
| - WindowsD                               | [/SMISettings/KeyboardFilter/WinD](https://msdn.microsoft.com/library/windows/hardware/mt593193)                                                                     |
| - WindowsDown                            | [/SMISettings/KeyboardFilter/WinDown](https://msdn.microsoft.com/library/windows/hardware/mt593193own)                                                               |
| - WindowsE                               | [/SMISettings/KeyboardFilter/WinE](https://msdn.microsoft.com/library/windows/hardware/mt593196)                                                                     |
| - WindowsEnter                           | [/SMISettings/KeyboardFilter/WinEnter](https://msdn.microsoft.com/library/windows/hardware/mt593196nter)                                                             |
| - WindowsEscape                          | [/SMISettings/KeyboardFilter/WinEsc](https://msdn.microsoft.com/library/windows/hardware/mt593196sc)                                                                 |
| - WindowsF                               | [/SMISettings/KeyboardFilter/WinF](https://msdn.microsoft.com/library/windows/hardware/mt593199)                                                                     |
| - WindowsF1                              | [/SMISettings/KeyboardFilter/WinF1](https://msdn.microsoft.com/library/windows/hardware/mt5931991)                                                                   |
| - WindowsH                               | [/SMISettings/KeyboardFilter/WinH](https://msdn.microsoft.com/library/windows/hardware/mt593202)                                                                     |
| - WindowsHome                            | [/SMISettings/KeyboardFilter/WinHome](https://msdn.microsoft.com/library/windows/hardware/mt593202ome)                                                               |
| - WindowsI                               | [/SMISettings/KeyboardFilter/WinI](https://msdn.microsoft.com/library/windows/hardware/mt593204)                                                                     |
| - WindowsJ                               | [/SMISettings/KeyboardFilter/WinJ](https://msdn.microsoft.com/library/windows/hardware/mt593205)                                                                     |
| - WindowsK                               | [/SMISettings/KeyboardFilter/WinK](https://msdn.microsoft.com/library/windows/hardware/mt593206)                                                                     |
| - WindowsL                               | [/SMISettings/KeyboardFilter/WinL](https://msdn.microsoft.com/library/windows/hardware/mt593207)                                                                     |
| - WindowsLeft                            | [/SMISettings/KeyboardFilter/WinLeft](https://msdn.microsoft.com/library/windows/hardware/mt593207eft)                                                               |
| - WindowsM                               | [/SMISettings/KeyboardFilter/WinM](https://msdn.microsoft.com/library/windows/hardware/mt593209)                                                                     |
| - WindowsMinus                           | [/SMISettings/KeyboardFilter/WinMinus](https://msdn.microsoft.com/library/windows/hardware/mt593209inus)                                                             |
| - WindowsO                               | [/SMISettings/KeyboardFilter/WinO](https://msdn.microsoft.com/library/windows/hardware/mt593211)                                                                     |
| - WindowsP                               | [/SMISettings/KeyboardFilter/WinP](https://msdn.microsoft.com/library/windows/hardware/mt593212)                                                                     |
| - WindowsPageDown                        | [/SMISettings/KeyboardFilter/WinPageDown](https://msdn.microsoft.com/library/windows/hardware/mt593212agedown)                                                       |
| - WindowsPageUp                          | [/SMISettings/KeyboardFilter/WinPageUp](https://msdn.microsoft.com/library/windows/hardware/mt593212ageup)                                                           |
| - WindowsPeriod                          | [/SMISettings/KeyboardFilter/WinPeriod](https://msdn.microsoft.com/library/windows/hardware/mt593212eriod)                                                           |
| - WindowsPlus                            | [/SMISettings/KeyboardFilter/WinPlus](https://msdn.microsoft.com/library/windows/hardware/mt593212lus)                                                               |
| - WindowsQ                               | [/SMISettings/KeyboardFilter/WinQ](https://msdn.microsoft.com/library/windows/hardware/mt593217)                                                                     |
| - WindowsR                               | [/SMISettings/KeyboardFilter/WinR](https://msdn.microsoft.com/library/windows/hardware/mt593218)                                                                     |
| - WindowsRight                           | [/SMISettings/KeyboardFilter/WinRight](https://msdn.microsoft.com/library/windows/hardware/mt593218ight)                                                             |
| - WindowsShiftDown                       | [/SMISettings/KeyboardFilter/WinShiftDown](https://msdn.microsoft.com/library/windows/hardware/mt593220)                                                     |
| - WindowsShiftLeft                       | [/SMISettings/KeyboardFilter/WinShiftLeft](https://msdn.microsoft.com/library/windows/hardware/mt593221)                                                     |
| - WindowsShiftRight                      | [/SMISettings/KeyboardFilter/WinShiftRight](https://msdn.microsoft.com/library/windows/hardware/mt593223)                                                   |
| - WindowsShiftUp                         | [/SMISettings/KeyboardFilter/WinShiftUp](https://msdn.microsoft.com/library/windows/hardware/mt593224)                                                         |
| - WindowsSlash                           | [/SMISettings/KeyboardFilter/WinForwardslash](https://msdn.microsoft.com/library/windows/hardware/mt593199orwardslash)                                               |
| - WindowsSpace                           | [/SMISettings/KeyboardFilter/WinSpace](https://msdn.microsoft.com/library/windows/hardware/mt593225)                                                             |
| - WindowsT                               | [/SMISettings/KeyboardFilter/WinT](https://msdn.microsoft.com/library/windows/hardware/mt593226)                                                                     |
| - WindowsTab                             | [/SMISettings/KeyboardFilter/WinTab](https://msdn.microsoft.com/library/windows/hardware/mt593226ab)                                                                 |
| - WindowsU                               | [/SMISettings/KeyboardFilter/WinU](https://msdn.microsoft.com/library/windows/hardware/mt593228)                                                                     |
| - WindowsUp                              | [/SMISettings/KeyboardFilter/WinUp](https://msdn.microsoft.com/library/windows/hardware/mt593228p)                                                                   |
| - WindowsV                               | [/SMISettings/KeyboardFilter/WinV](https://msdn.microsoft.com/library/windows/hardware/mt593230)                                                                     |
| - WindowsW                               | [/SMISettings/KeyboardFilter/WinW](https://msdn.microsoft.com/library/windows/hardware/mt593231)                                                                     |
| - WindowsZ                               | [/SMISettings/KeyboardFilter/WinZ](https://msdn.microsoft.com/library/windows/hardware/mt593232)                                                                     |

 

## Microsoft-Windows-Embedded-ShellLauncher


| Unattend setting name       | Windows Provisioning setting group and name                                                                            |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------|
| - DefaultReturnCodeAction   | [/SMISettings/ShellLauncher/DefaultReturnCodeAction](https://msdn.microsoft.com/library/windows/hardware/mt584197) |
| - Shell                     | [/SMISettings/ShellLauncher/Shell](https://msdn.microsoft.com/library/windows/hardware/mt584198)                                     |
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
| - TCGSecurityActivationDisabled | [/Storage/DisableAutomaticDiscEncryption](https://msdn.microsoft.com/library/windows/hardware/dn934598) |

 

## Microsoft-Windows-ErrorReportingCore


| Unattend setting name | Windows Provisioning setting group and name                                    |
|-----------------------|--------------------------------------------------------------------------------|
| - DefaultConsent      | [/ErrorReporting/DefaultConsent](https://msdn.microsoft.com/library/windows/hardware/dn953414) |
| - DisableWER          | [/ErrorReporting/DisableWER](https://msdn.microsoft.com/library/windows/hardware/dn953415)         |

 

## Microsoft-Windows-Fax-Service


| Unattend setting name                | Windows Provisioning setting group and name                                                                      |
|--------------------------------------|------------------------------------------------------------------------------------------------------------------|
| - Fax                                | [/Fax/Fax](https://msdn.microsoft.com/library/windows/hardware/dn953417)                                                                                   |
| -- ArchiveFaxes                      | [/Fax/Fax/ArchiveFaxes](https://msdn.microsoft.com/library/windows/hardware/dn953417_fax_archivefaxes)                                                     |
| -- ArchiveFolderName                 | [/Fax/Fax/ArchiveFolderName](https://msdn.microsoft.com/library/windows/hardware/dn953417_fax_archivefoldername)                                           |
| -- IncomingFaxesArePublic            | [/Fax/Fax/IncomingFaxesArePublic](https://msdn.microsoft.com/library/windows/hardware/dn953417_fax_incomingfaxesarepublic)                                 |
| - FaxUnattend                        | [/Fax/FaxUnattend](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend)                                                               |
| -- Csid                              | [/Fax/FaxUnattend/Csid](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_csid)                                                     |
| -- FaxPrinterIsShared                | [/Fax/FaxUnattend/FaxPrinterIsShared](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_faxprinterisshared)                         |
| -- ReceiveFaxes                      | [/Fax/FaxUnattend/ReceiveFaxes](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_receivefaxes)                                     |
| -- Rings                             | [/Fax/FaxUnattend/Rings](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_rings)                                                   |
| -- RouteFolderName                   | [/Fax/FaxUnattend/RouteFolderName](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_routefoldername)                               |
| -- RoutePrinterName                  | [/Fax/FaxUnattend/RoutePrinterName](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_routeprintername)                             |
| -- RouteToFolder                     | [/Fax/FaxUnattend/RouteToFolder](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_routetofolder)                                   |
| -- RouteToPrinter                    | [/Fax/FaxUnattend/RouteToPrinter](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_routetoprinter)                                 |
| -- SendFaxes                         | [/Fax/FaxUnattend/SendFaxes](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_sendfaxes)                                           |
| -- Tsid                              | [/Fax/FaxUnattend/Tsid](https://msdn.microsoft.com/library/windows/hardware/dn953417_faxunattend_tsid)                                                     |
| - Receipts                           | [/Fax/Receipts](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts)                                                                     |
| -- FaxUserName                       | [/Fax/Receipts/FaxUserName](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_faxusername)                                             |
| -- FaxUserPassword                   | [/Fax/Receipts/FaxUserPassword](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_faxuserpassword)                                     |
| -- SmtpNotificationsEnabled          | [/Fax/Receipts/SmtpNotificationsEnabled](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_smtpnotificationsenabled)                   |
| -- SmtpSenderAddress                 | [/Fax/Receipts/SmtpSenderAddress](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_smtpsenderaddress)                                 |
| -- SmtpServerAddress                 | [/Fax/Receipts/SmtpServerAddress](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_smtpserveraddress)                                 |
| -- SmtpServerAuthenticationMechanism | [/Fax/Receipts/SmtpServerAuthenticationMechanism](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_smtpserverauthenticationmechanism) |
| -- SmtpServerPort                    | [/Fax/Receipts/SmtpServerPort](https://msdn.microsoft.com/library/windows/hardware/dn953417_receipts_smtpserverport)                                       |

 

## Microsoft-Windows-GPIOButtons


| Unattend setting name  | Windows Provisioning setting group and name                                |
|------------------------|----------------------------------------------------------------------------|
| - ConvertibleSlateMode | [/Tablet/ConvertibleSlateHint](https://msdn.microsoft.com/library/windows/hardware/dn934604) |

 

## Microsoft-Windows-HelpAndSupport


| Unattend setting name | Windows Provisioning setting group and name                                                                                                                      |
|-----------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - HelpAndSupport      | Deprecated in Windows 10. To add customer support contact information in the Contact Support app or Web page, see [Information](https://msdn.microsoft.com/library/windows/hardware/dn953644). |
| -- Logo               | N/A                                                                                                                                                              |
| -- LogoURL            | N/A                                                                                                                                                              |
| -- Manufacturer       | N/A                                                                                                                                                              |
| -- SearchContent      | N/A                                                                                                                                                              |
| -- SupportSearchURL   | N/A                                                                                                                                                              |
| -- TileColor          | N/A                                                                                                                                                              |

 

## Microsoft-Windows-IE-ClientNetworkProtocolImplementation


| Unattend setting name    | Windows Provisioning setting group and name                                                |
|--------------------------|--------------------------------------------------------------------------------------------|
| - CacheLimit             | [/NetworkProxy/CacheLimit](https://msdn.microsoft.com/library/windows/hardware/dn953632)                         |
| - HKLMConnectRetries     | [/NetworkProxy/HKLMConnectRetries](https://msdn.microsoft.com/library/windows/hardware/dn953633)         |
| - HKLMConnectTimeOut     | [/NetworkProxy/HKLMConnectTimeOut](https://msdn.microsoft.com/library/windows/hardware/dn953634)         |
| - HKLMContentPerUserItem | [/NetworkProxy/HKLMContentPerUserItem](https://msdn.microsoft.com/library/windows/hardware/dn953635) |
| - HKLMCookiesPerUserItem | [/NetworkProxy/HKLMCookiesPerUserItem](https://msdn.microsoft.com/library/windows/hardware/dn953636) |
| - HKLMHistoryPerUserItem | [/NetworkProxy/HKLMHistoryPerUserItem](https://msdn.microsoft.com/library/windows/hardware/dn953637) |
| - HKLMProxyEnable        | [/NetworkProxy/HKLMProxyEnable](https://msdn.microsoft.com/library/windows/hardware/dn953638)               |
| - HKLMProxyOverride      | [/NetworkProxy/HKLMProxyOverride](https://msdn.microsoft.com/library/windows/hardware/dn953639)           |
| - HKLMProxyServer        | [/NetworkProxy/HKLMProxyServer](https://msdn.microsoft.com/library/windows/hardware/dn953640)               |
| - HKLMReceiveTimeOut     | [/NetworkProxy/HKLMReceiveTimeOut](https://msdn.microsoft.com/library/windows/hardware/dn953641)         |
| - HKLMSendTimeOut        | [/NetworkProxy/HKLMSendTimeOut](https://msdn.microsoft.com/library/windows/hardware/dn953642)               |

 

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
| - AllowedSites                   | [/InternetExplorer/AllowedSites](https://msdn.microsoft.com/library/windows/hardware/dn953491)                                     |
| - BlockPopups                    | [/InternetExplorer/BlockPopups](https://msdn.microsoft.com/library/windows/hardware/dn953493)                                       |
| - CommandLabelDisplay            | [/InternetExplorer/CommandLabelDisplay](https://msdn.microsoft.com/library/windows/hardware/dn953494)                       |
| - CompanyName                    | [/InternetExplorer/CompanyName](https://msdn.microsoft.com/library/windows/hardware/dn953495)                                       |
| - CompatibilityViewDomains       | [/InternetExplorer/CompatibilityViewDomains](https://msdn.microsoft.com/library/windows/hardware/dn953496)             |
| - DisableAccelerators            | [/InternetExplorer/DisableAccelerators](https://msdn.microsoft.com/library/windows/hardware/dn953497)                       |
| - DisableDataExecutionPrevention | [/InternetExplorer/DisableDataExecutionPrevention](https://msdn.microsoft.com/library/windows/hardware/dn953498) |
| - DisableDevTools                | [/InternetExplorer/DisableDevTools](https://msdn.microsoft.com/library/windows/hardware/dn953499)                               |
| - DisableFirstRunWizard          | [/InternetExplorer/DisableFirstRunWizard](https://msdn.microsoft.com/library/windows/hardware/dn953500)                   |
| - DisableOOBAccelerators         | [/InternetExplorer/DisableOOBAccelerators](https://msdn.microsoft.com/library/windows/hardware/dn953501)                 |
| - FavoriteBarItems               | N/A                                                                                                                |
| -- ItemKey                       | N/A                                                                                                                |
| -- FavoriteBarItem               | N/A                                                                                                                |
| --- ItemName                     | N/A                                                                                                                |
| --- ItemType                     | N/A                                                                                                                |
| --- ItemUrl                      | N/A                                                                                                                |
| - FavoritesDelete                | [/InternetExplorer/FavoritesDelete](https://msdn.microsoft.com/library/windows/hardware/dn953509)                               |
| - FavoritesList                  | N/A                                                                                                                |
| -- FavID                         | N/A                                                                                                                |
| -- FavoriteItem                  | N/A                                                                                                                |
| --- FavIconFile                  | N/A                                                                                                                |
| --- FavOffLine                   | N/A                                                                                                                |
| --- FavTitle                     | N/A                                                                                                                |
| --- FavURL                       | N/A                                                                                                                |
| - FavoritesOnTop                 | [/InternetExplorer/FavoritesOnTop](https://msdn.microsoft.com/library/windows/hardware/dn953517)                                 |
| - FeedList                       | N/A                                                                                                                |
| -- FeedKey                       | N/A                                                                                                                |
| -- FeedItem                      | N/A                                                                                                                |
| --- FeedTitle                    | N/A                                                                                                                |
| --- FeedURL                      | N/A                                                                                                                |
| - FilterLevel                    | [/InternetExplorer/FilterLevel](https://msdn.microsoft.com/library/windows/hardware/dn953523)                                       |
| - FindProvidersURL               | [/InternetExplorer/FindProvidersURL](https://msdn.microsoft.com/library/windows/hardware/dn953524)                             |
| - GroupTabs                      | [/InternetExplorer/GroupTabs](https://msdn.microsoft.com/library/windows/hardware/dn953525)                                           |
| - Help\_Page                     | [/InternetExplorer/Help\_Page](https://msdn.microsoft.com/library/windows/hardware/dn953526)                                          |
| - Home\_Page                     | [/InternetExplorer/Home\_Page](https://msdn.microsoft.com/library/windows/hardware/dn953527)                                          |
| - InstalledBHOList               | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - InstalledBrowserExtensions     | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - InstalledToolbarsList          | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - IntranetCompatibilityMode      | [/InternetExplorer/IntranetCompatibilityMode](https://msdn.microsoft.com/library/windows/hardware/dn953537)           |
| - LocalIntranetSites             | [/InternetExplorer/LocalIntranetSites](https://msdn.microsoft.com/library/windows/hardware/dn953538)                         |
| - LockToolbars                   | [/InternetExplorer/LockToolbars](https://msdn.microsoft.com/library/windows/hardware/dn953539)                                     |
| - MSCompatibilityMode            | [/InternetExplorer/MSCompatibilityMode](https://msdn.microsoft.com/library/windows/hardware/dn953540)                       |
| - PlaySound                      | [/InternetExplorer/PlaySound](https://msdn.microsoft.com/library/windows/hardware/dn953542)                                           |
| - PreApprovedAddons              | N/A                                                                                                                |
| -- AddonGuid                     | N/A                                                                                                                |
| -- AddonGuidItem                 | N/A                                                                                                                |
| - PrivacyAdvisorMode             | [/InternetExplorer/PrivacyAdvisorMode](https://msdn.microsoft.com/library/windows/hardware/dn953547)                         |
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
| - ShowLeftAddressToolbar         | [/InternetExplorer/ShowLeftAddressToolbar](https://msdn.microsoft.com/library/windows/hardware/dn953571)                 |
| - ShowInformationBar             | [/InternetExplorer/ShowInformationBar](https://msdn.microsoft.com/library/windows/hardware/dn953570)                         |
| - StartPages                     | N/A                                                                                                                |
| -- StartPageKey                  | N/A                                                                                                                |
| -- StartPage                     | N/A                                                                                                                |
| --- StartPageUrl                 | N/A                                                                                                                |
| - SuggestedSitesEnabled          | [/InternetExplorer/SuggestedSitesEnabled](https://msdn.microsoft.com/library/windows/hardware/dn953579)                   |
| - TabProcessGrowth               | [/InternetExplorer/TabProcessGrowth](https://msdn.microsoft.com/library/windows/hardware/dn953580)                             |
| - TrustedSites                   | [/InternetExplorer/TrustedSites](https://msdn.microsoft.com/library/windows/hardware/dn953581)                                     |
| - UserAgent                      | [/InternetExplorer/UserAgent](https://msdn.microsoft.com/library/windows/hardware/dn953582)                                           |
| - Window\_Title\_CN              | [/InternetExplorer/Window\_Title\_CN](https://msdn.microsoft.com/library/windows/hardware/dn953584)                             |

 

## Microsoft-Windows-International-Core


| Unattend setting name | Windows Provisioning setting group and name                                                        |
|-----------------------|----------------------------------------------------------------------------------------------------|
| - InputLocale         | [/Internationalization/InputLocale](https://msdn.microsoft.com/library/windows/hardware/dn953481)               |
| - SystemLocale        | [/Internationalization/SystemLocale](https://msdn.microsoft.com/library/windows/hardware/dn953482)             |
| - UILanguage          | [/Internationalization/UILanguage](https://msdn.microsoft.com/library/windows/hardware/dn953483)                 |
| - UILanguageFallback  | [/Internationalization/UILanguageFallback](https://msdn.microsoft.com/library/windows/hardware/dn953483fallback) |
| - UserLocale          | [/Internationalization/UserLocale](https://msdn.microsoft.com/library/windows/hardware/dn953485)                 |

 

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
| - EnableLUA           | [/UserAccountControl/Enabled](https://msdn.microsoft.com/library/windows/hardware/dn934649) |

 

## Microsoft-Windows-MapControl-Desktop


| Unattend setting name | Windows Provisioning setting group and name                      |
|-----------------------|------------------------------------------------------------------|
| - ChinaVariantWin10   | [/Maps/ChinaVariantWin10](https://msdn.microsoft.com/library/windows/hardware/mt203640) |

 

## Microsoft-Windows-MediaPlayer-Core


| Unattend setting name       | Windows Provisioning setting group and name                                                    |
|-----------------------------|------------------------------------------------------------------------------------------------|
| - InitialOEMServiceProvider | [/MediaPlayer/InitialOEMServiceProvider](https://msdn.microsoft.com/library/windows/hardware/dn953620) |

 

## Microsoft-Windows-MobilePC-Sensors-API


| Unattend setting name           | Windows Provisioning setting group and name                                                  |
|---------------------------------|----------------------------------------------------------------------------------------------|
| - AdaptiveBrightness            | [/Sensors/AdaptiveBrightness](https://msdn.microsoft.com/library/windows/hardware/dn953767)                     |
| -- ALRPoints                    | [/Sensors/AdaptiveBrightness/ALRPoints](https://msdn.microsoft.com/library/windows/hardware/dn953767_alrpoints) |
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
| - Bridge              | [/Networking/BridgedInterfaces](https://msdn.microsoft.com/library/windows/hardware/dn953630) |

 

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
| - SanPolicy           | [/StorageAreaNetwork/AutoMountPolicy](https://msdn.microsoft.com/library/windows/hardware/dn934597) |

 

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
| - DoNotCleanUpNonPresentDevices | [/Drivers/DoNotCleanUpNonPresentDevices](https://msdn.microsoft.com/library/windows/hardware/dn953410) |
| - PersistAllDeviceInstalls      | [/Drivers/PersistAllDeviceInstalls](https://msdn.microsoft.com/library/windows/hardware/dn953412)           |

 

## Microsoft-Windows-powercpl


| Unattend setting name | Windows Provisioning setting group and name                |
|-----------------------|------------------------------------------------------------|
| - PreferredPlan       | [/Power/PreferredPlan](https://msdn.microsoft.com/library/windows/hardware/dn953738) |

 

## Microsoft-Windows-Printing-Spooler-Core


| Unattend setting name | Windows Provisioning setting group and name                          |
|-----------------------|----------------------------------------------------------------------|
| - RemoveMXDW          | [/Printing/RemoveMXDW](https://msdn.microsoft.com/library/windows/hardware/dn953740)           |
| - Start               | [/Printing/StartAutoLogger](https://msdn.microsoft.com/library/windows/hardware/dn953741) |

 

## Microsoft-Windows-RasServer


| Unattend setting name | Windows Provisioning setting group and name                                        |
|-----------------------|------------------------------------------------------------------------------------|
| - ConfigurationFlags  | [/RemoteAccess/ConfigurationFlags](https://msdn.microsoft.com/library/windows/hardware/dn953755) |
| - RouterType          | [/RemoteAccess/RouterType](https://msdn.microsoft.com/library/windows/hardware/dn953756)                 |

 

## Microsoft-Windows-RemoteAssistance-Exe


| Unattend setting name        | Windows Provisioning setting group and name                                                                |
|------------------------------|------------------------------------------------------------------------------------------------------------|
| - CreateEncryptedOnlyTickets | [/RemoteAssistance/CreateEncryptedOnlyTickets](https://msdn.microsoft.com/library/windows/hardware/dn953760) |
| - fAllowToGetHelp            | [/RemoteAssistance/AllowToGetHelp](https://msdn.microsoft.com/library/windows/hardware/dn953759)                         |
| - fAllowFullControl          | [/RemoteAssistance/AllowFullControl](https://msdn.microsoft.com/library/windows/hardware/dn953758)                     |
| - MaxTicketExpiry            | [/RemoteAssistance/MaxTicketExpiry](https://msdn.microsoft.com/library/windows/hardware/dn953761)                       |
| - MaxTicketExpiryUnits       | [/RemoteAssistance/MaxTicketExpiryUnits](https://msdn.microsoft.com/library/windows/hardware/dn953761units)             |

 

## Microsoft-Windows-SecureStartup-FilterDriver


| Unattend setting name                 | Windows Provisioning setting group and name                                                              |
|---------------------------------------|----------------------------------------------------------------------------------------------------------|
| - BytesDecryptedInDiskRequestOverhead | N/A                                                                                                      |
| - MaxCryptoRequestsPerIo              | N/A                                                                                                      |
| - MaxDecryptRequests                  | N/A                                                                                                      |
| - MaxEncryptRequests                  | N/A                                                                                                      |
| - PreventDeviceEncryption             | [/BitLocker/DoNotAutomaticallyEncryptDevices](https://msdn.microsoft.com/library/windows/hardware/dn953354) |
| - SlicedEncryptionInPlace             | N/A                                                                                                      |
| - SlicedEncryptionMinSize             | N/A                                                                                                      |
| - SlicedEncryptionRequestsMax         | N/A                                                                                                      |
| - WriteIoAggregateMaxSize             | N/A                                                                                                      |
| - WriteIoAggregateMinSize             | N/A                                                                                                      |
| - WriteSubrequestLength               | N/A                                                                                                      |

 

## Microsoft-Windows-Security-SPP


| Unattend setting name | Windows Provisioning setting group and name                                |
|-----------------------|----------------------------------------------------------------------------|
| - SkipRearm           | [/SoftwareLicensing/SkipRearm](https://msdn.microsoft.com/library/windows/hardware/dn934590) |

 

## Microsoft-Windows-Security-SPP-UX


| Unattend setting name | Windows Provisioning setting group and name                                                  |
|-----------------------|----------------------------------------------------------------------------------------------|
| - SkipAutoActivation  | [/SoftwareLicensing/SkipAutoActivation](https://msdn.microsoft.com/library/windows/hardware/dn934589) |

 

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
| - EnableICS           | [/SharedAccess/EnableICS](https://msdn.microsoft.com/library/windows/hardware/dn953786)               |
| - ExternalAdapter     | [/SharedAccess/ExternalAdapter](https://msdn.microsoft.com/library/windows/hardware/dn953787)   |
| - InternalAdapter     | [/SharedAccess/InternalAdapter](https://msdn.microsoft.com/library/windows/hardware/dn953788)   |
| - InternalIsBridge    | [/SharedAccess/InternalIsBridge](https://msdn.microsoft.com/library/windows/hardware/dn953789) |

 

## Microsoft-Windows-Shell-Setup


| Unattend setting name                  | Windows Provisioning setting group and name                                                                                                                |
|----------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - AutoLogon                            | [/Shell/AutoLogon](https://msdn.microsoft.com/library/windows/hardware/dn953791)                                                                                                         |
| -- Domain                              | [/Shell/AutoLogon/Domain](https://msdn.microsoft.com/library/windows/hardware/dn953791_domain)                                                                                           |
| -- Enabled                             | [/Shell/AutoLogon/Enabled](https://msdn.microsoft.com/library/windows/hardware/dn953791_enabled)                                                                                         |
| -- LogonCount                          | [/Shell/AutoLogon/LogonCount](https://msdn.microsoft.com/library/windows/hardware/dn953791_logoncount)                                                                                   |
| -- Password                            | [/Shell/AutoLogon/Password](https://msdn.microsoft.com/library/windows/hardware/dn953791_password)                                                                                       |
| --- PlainText                          | [/Shell/AutoLogon/PlainText](https://msdn.microsoft.com/library/windows/hardware/dn953791_password_plaintext)                                                                            |
| --- Value                              | [/Shell/AutoLogon/Value](https://msdn.microsoft.com/library/windows/hardware/dn953791_password_value)                                                                                    |
| -- Username                            | [/Shell/AutoLogon/Username](https://msdn.microsoft.com/library/windows/hardware/dn953791_username)                                                                                       |
| - BluetoothTaskbarIconEnabled          | [/Shell/BluetoothTaskbarIconEnabled](https://msdn.microsoft.com/library/windows/hardware/dn953799)                                                                     |
| - ClientApplications                   | [/Shell/ClientApplications](https://msdn.microsoft.com/library/windows/hardware/dn953800)                                                                                       |
| -- IM                                  | [/Shell/ClientApplications/IM](https://msdn.microsoft.com/library/windows/hardware/dn953800_im)                                                                                 |
| -- Internet                            | [/Shell/ClientApplications/Internet](https://msdn.microsoft.com/library/windows/hardware/dn953800_internet)                                                                     |
| -- JavaVM                              | [/Shell/ClientApplications/JavaVM](https://msdn.microsoft.com/library/windows/hardware/dn953800_javavm)                                                                         |
| -- Mail                                | [/Shell/ClientApplications/Mail](https://msdn.microsoft.com/library/windows/hardware/dn953800_mail)                                                                             |
| -- Media                               | [/Shell/ClientApplications/Media](https://msdn.microsoft.com/library/windows/hardware/dn953800_media)                                                                           |
| - ComputerName                         | [/Computer/Name](https://msdn.microsoft.com/library/windows/hardware/dn953363)                                                                                                             |
| - ConvertibleSlateModePromptPreference | [/TabletMode/ConvertibleSlateModePromptPreference](https://msdn.microsoft.com/library/windows/hardware/mt297551)                                         |
| - CopyProfile                          | [/Shell/CopyProfile](https://msdn.microsoft.com/library/windows/hardware/dn953806)                                                                                                     |
| - DesktopOptimization                  | [/Shell/DesktopOptimizations](https://msdn.microsoft.com/library/windows/hardware/dn953807)                                                                                   |
| -- GoToDesktopOnSignIn                 | [/Shell/DesktopOptimizations/GoToDesktopOnSignIn](https://msdn.microsoft.com/library/windows/hardware/dn953807_gotodesktoponsignin)                                           |
| -- ShowWindowsStoreAppsOnTaskbar       | [/Shell/DesktopOptimizations/ShowWindowsStoreAppsOnTaskbar](https://msdn.microsoft.com/library/windows/hardware/dn953807_showwindowsstoreappsontaskbar)                       |
| - DisableAutoDaylightTimeSet           | [/Shell/DisableAutoDaylightTimeSet](https://msdn.microsoft.com/library/windows/hardware/dn953810)                                                                       |
| - Display                              | [/Display/Settings](https://msdn.microsoft.com/library/windows/hardware/dn953368)                                                                                                                |
| -- ColorDepth                          | [/Display/Settings/ColorDepth](https://msdn.microsoft.com/library/windows/hardware/dn953368_settings_colordepth)                                                                                 |
| -- DPI                                 | [/Display/Settings/DPI](https://msdn.microsoft.com/library/windows/hardware/dn953368_settings_dpi)                                                                                               |
| -- HorizontalResolution                | [/Display/Settings/HorizontalResolution](https://msdn.microsoft.com/library/windows/hardware/dn953368_settings_horizontalresolution)                                                             |
| -- RefreshRate                         | [/Display/Settings/RefreshRate](https://msdn.microsoft.com/library/windows/hardware/dn953368_settings_refreshrate)                                                                               |
| -- VerticalResolution                  | [/Display/Settings/VerticalResolution](https://msdn.microsoft.com/library/windows/hardware/dn953368_settings_verticalresolution)                                                                 |
| - DoNotCleanTaskBar                    | [/Shell/DoNotCleanTaskBar](https://msdn.microsoft.com/library/windows/hardware/dn953811)                                                                                         |
| - FirstLogonCommands                   | N/A                                                                                                                                                        |
| -- SynchronousCommand                  | N/A                                                                                                                                                        |
| --- CommandLine                        | N/A                                                                                                                                                        |
| --- Description                        | N/A                                                                                                                                                        |
| --- Order                              | N/A                                                                                                                                                        |
| --- RequiresUserInput                  | N/A                                                                                                                                                        |
| - FolderLocations                      | [/Shell/FolderLocations](https://msdn.microsoft.com/library/windows/hardware/dn953817)                                                                                             |
| -- ProfilesDirectory                   | [/Shell/FolderLocations/ProfilesDirectory](https://msdn.microsoft.com/library/windows/hardware/dn953817_profilesdirectory)                                                         |
| -- ProgramData                         | [/Shell/FolderLocations/ProgramData](https://msdn.microsoft.com/library/windows/hardware/dn953817_programdata)                                                                     |
| - LogonCommands                        | N/A                                                                                                                                                        |
| -- AsynchronousCommand                 | N/A                                                                                                                                                        |
| --- CommandLine                        | N/A                                                                                                                                                        |
| --- Description                        | [/Shell/LogonCommands/AsynchronousCommand/Description](https://msdn.microsoft.com/library/windows/hardware/dn953476)                                         |
| --- Order                              | N/A                                                                                                                                                        |
| --- RequiresUserInput                  | N/A                                                                                                                                                        |
| - NotificationArea                     | [/Shell/NotificationArea](https://msdn.microsoft.com/library/windows/hardware/dn953825)                                                                                           |
| -- PromotedIcon1                       | [/Shell/NotificationArea/PromotedIcon1](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon1)                                                               |
| --- GUID                               | [/Shell/NotificationArea/PromotedIcon1/GUID](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon1_guid)                                                     |
| --- Path                               | [/Shell/NotificationArea/PromotedIcon1/Path](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon1_path)                                                     |
| -- PromotedIcon2                       | [/Shell/PromotedIcon2](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon2)                                                                                |
| --- GUID                               | [/Shell/PromotedIcon2/GUID](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon2_guid)                                                                      |
| --- Path                               | [/Shell/PromotedIcon2/Path](https://msdn.microsoft.com/library/windows/hardware/dn953825_promotedicon2_path)                                                                      |
| - OEMInformation                       | [/OEM/Information](https://msdn.microsoft.com/library/windows/hardware/dn953644)                                                                                                         |
| -- HelpCustomized                      | [/OEM/Information/HelpCustomized](https://msdn.microsoft.com/library/windows/hardware/dn953644_helpcustomized)                                                                           |
| -- Logo                                | N/A                                                                                                                                                        |
| -- Manufacturer                        | [/OEM/Information/Manufacturer](https://msdn.microsoft.com/library/windows/hardware/dn953644_manufacturer)                                                                               |
| -- Model                               | [/OEM/Information/Model](https://msdn.microsoft.com/library/windows/hardware/dn953644_model)                                                                                             |
| -- SupportAppURL                       | [/OEM/Information/SupportAppURL](https://msdn.microsoft.com/library/windows/hardware/dn953644_supportappurl)                                                                             |
| -- SupportHours                        | [/OEM/Information/SupportHours](https://msdn.microsoft.com/library/windows/hardware/dn953644_supporthours)                                                                               |
| -- SupportPhone                        | [/OEM/Information/SupportPhone](https://msdn.microsoft.com/library/windows/hardware/dn953644_supportphone)                                                                               |
| -- SupportURL                          | [/OEM/Information/SupportURL](https://msdn.microsoft.com/library/windows/hardware/dn953644_supporturl)                                                                                   |
| - OEMName                              | N/A                                                                                                                                                        |
| - OEMWelcomeCenter                     | [/OEM/WelcomeCenter](https://msdn.microsoft.com/library/windows/hardware/dn953653)                                                                                                     |
| -- link                                | [/OEM/WelcomeCenter/link](https://msdn.microsoft.com/library/windows/hardware/dn953653_link)                                                                                           |
| - OEMWelcomeCenterLinks                | [/OEM/WelcomeCenterLinks](https://msdn.microsoft.com/library/windows/hardware/dn953653links)                                                                                           |
| -- Link0                               | [/OEM/WelcomeCenterLinks/Link0](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link0)                                                                               |
| -- Link1                               | [/OEM/WelcomeCenterLinks/Link1](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link1)                                                                               |
| -- Link2                               | [/OEM/WelcomeCenterLinks/Link2](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link2)                                                                               |
| -- Link3                               | [/OEM/WelcomeCenterLinks/Link3](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link3)                                                                               |
| -- Link4                               | [/OEM/WelcomeCenterLinks/Link4](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link4)                                                                               |
| -- Link5                               | [/OEM/WelcomeCenterLinks/Link5](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link5)                                                                               |
| -- Link6                               | [/OEM/WelcomeCenterLinks/Link6](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link6)                                                                               |
| -- Link7                               | [/OEM/WelcomeCenterLinks/Link7](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link7)                                                                               |
| -- Link8                               | [/OEM/WelcomeCenterLinks/Link8](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link8)                                                                               |
| -- Link9                               | [/OEM/WelcomeCenterLinks/Link9](https://msdn.microsoft.com/library/windows/hardware/dn953653links_link9)                                                                               |
| - OfflineUserAccounts                  | [/UserAccounts/OfflineAccounts](https://msdn.microsoft.com/library/windows/hardware/dn934668)                                                                               |
| -- OfflineAdministratorPassword        | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword](https://msdn.microsoft.com/library/windows/hardware/dn934668_offlineadministratorpassword)                     |
| --- PlainText                          | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword/PlainText](https://msdn.microsoft.com/library/windows/hardware/dn934668_offlineadministratorpassword_plaintext) |
| --- Value                              | [/UserAccounts/OfflineAccounts/OfflineAdministratorPassword/Value](https://msdn.microsoft.com/library/windows/hardware/dn934668_offlineadministratorpassword_value)         |
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
| - OOBE                                 | [/OutOfBoxExperience/Options](https://msdn.microsoft.com/library/windows/hardware/dn953685)                                                                                   |
| -- HideEULAPage                        | [/OutOfBoxExperience/Options/HideEULAPage](https://msdn.microsoft.com/library/windows/hardware/dn953685_hideeulapage)                                                         |
| -- HideLocalAccountScreen              | [/OutOfBoxExperience/Options/HideLocalAccountScreen](https://msdn.microsoft.com/library/windows/hardware/dn953685_hidelocalaccountscreen)                                     |
| -- HideOEMRegistrationScreen           | [/OutOfBoxExperience/Options/HideOEMRegistrationScreen](https://msdn.microsoft.com/library/windows/hardware/dn953685_hideoemregistrationscreen)                               |
| -- HideOnlineAccountScreens            | [/OutOfBoxExperience/Options/HideOnlineAccountScreens](https://msdn.microsoft.com/library/windows/hardware/dn953685_hideonlineaccountscreens)                                 |
| -- HideWirelessSetupInOOBE             | [/OutOfBoxExperience/Options/HideWirelessSetupInOOBE](https://msdn.microsoft.com/library/windows/hardware/dn953685_hidewirelesssetupinoobe)                                   |
| -- NetworkLocation                     | Deprecated in Windows 10                                                                                                                                   |
| -- OEMAppId                            | [/OutOfBoxExperience/Options/OEMAppId](https://msdn.microsoft.com/library/windows/hardware/dn953685_oemappid)                                                                 |
| -- ProtectYourPC                       | [/OutOfBoxExperience/Options/ProtectYourPC](https://msdn.microsoft.com/library/windows/hardware/dn953685_protectyourpc)                                                       |
| -- SkipMachineOOBE                     | [/OutOfBoxExperience/Options/SkipMachineOOBE](https://msdn.microsoft.com/library/windows/hardware/dn953685_skipmachineoobe)                                                   |
| -- SkipUserOOBE                        | [/OutOfBoxExperience/Options/SkipUserOOBE](https://msdn.microsoft.com/library/windows/hardware/dn953685_skipuseroobe)                                                         |
| -- UnattendEnableRetailDemo            | [/OutOfBoxExperience/Options/UnattendEnableRetailDemo](https://msdn.microsoft.com/library/windows/hardware/dn953685_unattendenableretaildemo)                                 |
| - ProductKey                           | [/Setup/ProductKey](https://msdn.microsoft.com/library/windows/hardware/dn953783)                                                                                                       |
| - RegisteredOrganization               | [/Registered/Organization](https://msdn.microsoft.com/library/windows/hardware/dn953752)                                                                                         |
| - RegisteredOwner                      | [/Registered/Owner](https://msdn.microsoft.com/library/windows/hardware/dn953753)                                                                                                       |
| - ShowPowerButtonOnStartScreen         | [/StartMenu/ShowPowerButton](https://msdn.microsoft.com/library/windows/hardware/dn934593)                                                                                     |
| - ShowWindowsLive                      | [/Shell/ShowWindowsLive](https://msdn.microsoft.com/library/windows/hardware/dn953832)                                                                                             |
| - SignInMode                           | [/TabletMode/SignInMode](https://msdn.microsoft.com/library/windows/hardware/mt297552)                                                                                             |
| - StartPanelLinks                      | [/Shell/StartPanelLinks](https://msdn.microsoft.com/library/windows/hardware/dn953833)                                                                                             |
| -- Link0                               | [/Shell/StartPanelLinks/Link0](https://msdn.microsoft.com/library/windows/hardware/dn953833_link0)                                                                                 |
| -- Link1                               | [/Shell/StartPanelLinks/Link1](https://msdn.microsoft.com/library/windows/hardware/dn953833_link1)                                                                                 |
| -- Link2                               | [/Shell/StartPanelLinks/Link2](https://msdn.microsoft.com/library/windows/hardware/dn953833_link2)                                                                                 |
| -- Link3                               | [/Shell/StartPanelLinks/Link3](https://msdn.microsoft.com/library/windows/hardware/dn953833_link3)                                                                                 |
| -- Link4                               | [/Shell/StartPanelLinks/Link4](https://msdn.microsoft.com/library/windows/hardware/dn953833_link4)                                                                                 |
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
| - StartPanelOff                        | [/StartMenu/UseClassicAppearance](https://msdn.microsoft.com/library/windows/hardware/dn934594)                                                                           |
| - TaskbarLinks                         | [/Shell/TaskbarLinks](https://msdn.microsoft.com/library/windows/hardware/dn934546)                                                                                                   |
| -- Link0                               | [/Shell/TaskbarLinks/Link0](https://msdn.microsoft.com/library/windows/hardware/dn934546_link0)                                                                                       |
| -- Link1                               | [/Shell/TaskbarLinks/Link1](https://msdn.microsoft.com/library/windows/hardware/dn934546_link1)                                                                                       |
| -- Link2                               | [/Shell/TaskbarLinks/Link2](https://msdn.microsoft.com/library/windows/hardware/dn934546_link2)                                                                                       |
| -- Link3                               | [/Shell/TaskbarLinks/Link3](https://msdn.microsoft.com/library/windows/hardware/dn934546_link3)                                                                                       |
| -- Link4                               | [/Shell/TaskbarLinks/Link4](https://msdn.microsoft.com/library/windows/hardware/dn934546_link4)                                                                                       |
| -- Link5                               | [/Shell/TaskbarLinks/Link5](https://msdn.microsoft.com/library/windows/hardware/dn934546_link5)                                                                                       |
| - Themes                               | [/Shell/Themes](https://msdn.microsoft.com/library/windows/hardware/dn934553)                                                                                                               |
| -- BrandIcon                           | N/A                                                                                                                                                        |
| -- CustomDefaultThemeFile              | N/A                                                                                                                                                        |
| -- DefaultThemesOff                    | [/Shell/Themes/DefaultThemesOff](https://msdn.microsoft.com/library/windows/hardware/dn934553_defaultthemesoff)                                                                             |
| -- DesktopBackground                   | N/A                                                                                                                                                        |
| -- ScreenSaver                         | N/A                                                                                                                                                        |
| -- ThemeName                           | [/Shell/Themes/ThemeName](https://msdn.microsoft.com/library/windows/hardware/dn934553_themename)                                                                                           |
| -- WindowColor                         | [/Shell/Themes/WindowColor](https://msdn.microsoft.com/library/windows/hardware/dn934553_windowcolor)                                                                                       |
| - TimeZone                             | [/Shell/TimeZone](https://msdn.microsoft.com/library/windows/hardware/dn934562)                                                                                                           |
| - UserAccounts                         | [/UserAccounts/Accounts](https://msdn.microsoft.com/library/windows/hardware/dn934651)                                                                                             |
| -- AdministratorPassword               | [/UserAccounts/Accounts/AdministratorPassword](https://msdn.microsoft.com/library/windows/hardware/dn934651_administratorpassword)                                                 |
| --- PlainText                          | [/UserAccounts/Accounts/AdministratorPassword/PlainText](https://msdn.microsoft.com/library/windows/hardware/dn934651_administratorpassword_plaintext)                             |
| --- Value                              | [/UserAccounts/Accounts/AdministratorPassword/Value](https://msdn.microsoft.com/library/windows/hardware/dn934651_administratorpassword_value)                                     |
| -- DomainAccounts                      | N/A                                                                                                                                                        |
| --- Domain                             | N/A                                                                                                                                                        |
| --- DomainAccountList                  | N/A                                                                                                                                                        |
| ---- DomainAccount                     | N/A                                                                                                                                                        |
| ----- Group                            | N/A                                                                                                                                                        |
| ----- Name                             | N/A                                                                                                                                                        |
| -- LocalAccounts                       | N/A                                                                                                                                                        |
| --- Name                               | N/A                                                                                                                                                        |
| --- LocalAccount                       | N/A                                                                                                                                                        |
| ---- Description                       | [/UserAccounts/Accounts/LocalAccounts/LocalAccount/Description](https://msdn.microsoft.com/library/windows/hardware/dn953476)                                |
| ---- DisplayName                       | N/A                                                                                                                                                        |
| ---- Group                             | N/A                                                                                                                                                        |
| ---- Password                          | N/A                                                                                                                                                        |
| ----- PlainText                        | N/A                                                                                                                                                        |
| ----- Value                            | N/A                                                                                                                                                        |
| - VisualEffects                        | [/Shell/VisualEffects](https://msdn.microsoft.com/library/windows/hardware/dn934563)                                                                                                 |
| -- FontSmoothing                       | [/Shell/VisualEffects/FontSmoothing](https://msdn.microsoft.com/library/windows/hardware/dn934563_fontsmoothing)                                                                     |
| -- SystemDefaultBackgroundColor        | Deprecated in Windows 10 and should not be used.                                                                                                           |
| - WindowsFeatures                      | [/Shell/WindowsFeatures](https://msdn.microsoft.com/library/windows/hardware/dn934566)                                                                                             |
| -- ShowInternetExplorer                | [/Shell/WindowsFeatures/ShowInternetExplorer](https://msdn.microsoft.com/library/windows/hardware/dn934566_showinternetexplorer)                                                   |
| -- ShowMediaCenter                     | [/Shell/WindowsFeatures/ShowMediaCenter](https://msdn.microsoft.com/library/windows/hardware/dn934566_showmediacenter)                                                             |
| -- ShowWindowsMediaPlayer              | [/Shell/WindowsFeatures/ShowWindowsMediaPlayer](https://msdn.microsoft.com/library/windows/hardware/dn934566_showwindowsmediaplayer)                                               |
| -- ShowWindowsMail                     | [/Shell/WindowsFeatures/ShowWindowsMail](https://msdn.microsoft.com/library/windows/hardware/dn934566_showwindowsmail)                                                             |

 

## Microsoft-Windows-shwebsvc


| Unattend setting name | Windows Provisioning setting group and name                              |
|-----------------------|--------------------------------------------------------------------------|
| - Description         | [/OnlinePrinting/Description](https://msdn.microsoft.com/library/windows/hardware/dn953679) |
| - DisplayName         | [/OnlinePrinting/DisplayName](https://msdn.microsoft.com/library/windows/hardware/dn953680) |
| - href                | [/OnlinePrinting/href](https://msdn.microsoft.com/library/windows/hardware/dn953681)               |
| - Icon                | N/A                                                                      |
| - ID                  | [/OnlinePrinting/ID](https://msdn.microsoft.com/library/windows/hardware/dn953683)                   |

 

## Microsoft-Windows-Sidebar


| Unattend setting name | Windows Provisioning setting group and name                              |
|-----------------------|--------------------------------------------------------------------------|
| - Gadget1             | [/Sidebar/Gadget1](https://msdn.microsoft.com/library/windows/hardware/dn934572)                       |
| - Gadget2             | [/Sidebar/Gadget2](https://msdn.microsoft.com/library/windows/hardware/dn934573)                       |
| - Gadget3             | [/Sidebar/Gadget3](https://msdn.microsoft.com/library/windows/hardware/dn934574)                       |
| - Gadget4             | [/Sidebar/Gadget4](https://msdn.microsoft.com/library/windows/hardware/dn934575)                       |
| - Gadget5             | [/Sidebar/Gadget5](https://msdn.microsoft.com/library/windows/hardware/dn934576)                       |
| - LayoutPosition      | [/Sidebar/LayoutPosition](https://msdn.microsoft.com/library/windows/hardware/dn934577)         |
| - SidebarOnByDefault  | [/Sidebar/SidebarOnByDefault](https://msdn.microsoft.com/library/windows/hardware/dn934578) |
| - SidebarVisible      | [/Sidebar/SidebarVisible](https://msdn.microsoft.com/library/windows/hardware/dn934579)         |

 

## Microsoft-Windows-SMBServer


| Unattend setting name | Windows Provisioning setting group and name                  |
|-----------------------|--------------------------------------------------------------|
| - LmAnnounce          | [/SMBServer/LmAnnounce](https://msdn.microsoft.com/library/windows/hardware/dn934586) |
| - Size                | [/SMBServer/CacheSize](https://msdn.microsoft.com/library/windows/hardware/dn934585)   |

 

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
| - CEIPEnabled         | [/CEIP/Enabled](https://msdn.microsoft.com/library/windows/hardware/dn953361) |

 

## Microsoft-Windows-stobject


| Unattend setting name              | Windows Provisioning setting group and name                                                          |
|------------------------------------|------------------------------------------------------------------------------------------------------|
| - FlyoutAutoPowerScheme            | [/Power/FlyoutAutoPowerScheme](https://msdn.microsoft.com/library/windows/hardware/dn953735)                           |
| - FlyoutHighPerformancePowerScheme | [/Power/FlyoutHighPerformancePowerScheme](https://msdn.microsoft.com/library/windows/hardware/dn953736)     |
| - FlyoutPowerSaverPowerScheme      | [/Power/FlyoutPowerSaverPowerScheme](https://msdn.microsoft.com/library/windows/hardware/dn953737)               |
| - CustomPowerApplication1          | [/Power/CustomPowerApplication1](https://msdn.microsoft.com/library/windows/hardware/dn953705)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication1/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953705_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication1/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953705_parameters) |
| - CustomPowerApplication2          | [/Power/CustomPowerApplication2](https://msdn.microsoft.com/library/windows/hardware/dn953710)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication2/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953710_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication2/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953710_parameters) |
| - CustomPowerApplication3          | [/Power/CustomPowerApplication3](https://msdn.microsoft.com/library/windows/hardware/dn953715)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication3/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953715_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication3/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953715_parameters) |
| - CustomPowerApplication4          | [/Power/CustomPowerApplication4](https://msdn.microsoft.com/library/windows/hardware/dn953720)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication4/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953720_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication4/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953720_parameters) |
| - CustomPowerApplication5          | [/Power/CustomPowerApplication5](https://msdn.microsoft.com/library/windows/hardware/dn953725)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication5/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953725_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication5/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953725_parameters) |
| - CustomPowerApplication6          | [/Power/CustomPowerApplication6](https://msdn.microsoft.com/library/windows/hardware/dn953730)                       |
| -- Application                     | N/A                                                                                                  |
| -- IconID                          | N/A                                                                                                  |
| -- ItemName                        | [/Power/CustomPowerApplication6/ItemName](https://msdn.microsoft.com/library/windows/hardware/dn953730_itemname)     |
| -- Parameters                      | [/Power/CustomPowerApplication6/Parameters](https://msdn.microsoft.com/library/windows/hardware/dn953730_parameters) |

 

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
| - DisableSR           | [/SystemRestore/Disabled](https://msdn.microsoft.com/library/windows/hardware/dn934600) |

 

## Microsoft-Windows-SystemSettings


| Unattend setting name     | Windows Provisioning setting group and name                                            |
|---------------------------|----------------------------------------------------------------------------------------|
| - DisplayNetworkSelection | [/Wireless/DisplayNetworkSelection](https://msdn.microsoft.com/library/windows/hardware/dn953701) |
| - WiFiToWlan              | [/Wireless/WiFiToWlan](https://msdn.microsoft.com/library/windows/hardware/dn953702)                           |

 

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
| - MultiTouchEnabled              | [/Tablet/MultiTouchEnabled](https://msdn.microsoft.com/library/windows/hardware/dn934607) |
| - PanningDisabled                | [/Tablet/PanningDisabled](https://msdn.microsoft.com/library/windows/hardware/dn934608)     |
| - TouchGate                      | [/Tablet/TouchEnabled](https://msdn.microsoft.com/library/windows/hardware/dn934609)           |
| - TouchKeyboardAutoInvokeEnabled | This content is not yet available.                                   |
| - TouchUI                        | [/Tablet/TouchUI](https://msdn.microsoft.com/library/windows/hardware/dn934610)                     |
| - TouchUISize                    | [/Tablet/TouchUISize](https://msdn.microsoft.com/library/windows/hardware/dn934610size)             |

 

## Microsoft-Windows-TapiSetup


| Unattend setting name       | Windows Provisioning setting group and name                                                                                        |
|-----------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| - TapiConfigured            | [/Telephony/TapiConfigured](https://msdn.microsoft.com/library/windows/hardware/dn934632)                                                               |
| - TapiUnattendLocation      | [/Telephony/TapiUnattendLocation](https://msdn.microsoft.com/library/windows/hardware/dn934633)                                                   |
| -- AreaCode                 | [/Telephony/TapiUnattendLocation/AreaCode](https://msdn.microsoft.com/library/windows/hardware/dn934633_areacode)                                 |
| -- CountryOrRegion          | [/Telephony/TapiUnattendLocation/CountryOrRegion](https://msdn.microsoft.com/library/windows/hardware/dn934633_countryorregion)                   |
| -- DisableCallWaiting       | [/Telephony/TapiUnattendLocation/DisableCallWaiting](https://msdn.microsoft.com/library/windows/hardware/dn934633_disablecallwaiting)             |
| -- InternationalCarrierCode | [/Telephony/TapiUnattendLocation/InternationalCarrierCode](https://msdn.microsoft.com/library/windows/hardware/dn934633_internationalcarriercode) |
| -- LongDistanceAccess       | [/Telephony/TapiUnattendLocation/LongDistanceAccess](https://msdn.microsoft.com/library/windows/hardware/dn934633_longdistanceaccess)             |
| -- LongDistanceCarrierCode  | [/Telephony/TapiUnattendLocation/LongDistanceCarrierCode](https://msdn.microsoft.com/library/windows/hardware/dn934633_longdistancecarriercode)   |
| -- Name                     | [/Telephony/TapiUnattendLocation/Name](https://msdn.microsoft.com/library/windows/hardware/dn934633_name)                                         |
| -- OutsideAccess            | [/Telephony/TapiUnattendLocation/OutsideAccess](https://msdn.microsoft.com/library/windows/hardware/dn934633_outsideaccess)                       |
| -- PulseOrToneDialing       | [/Telephony/TapiUnattendLocation/PulseOrToneDialing](https://msdn.microsoft.com/library/windows/hardware/dn934633_pulseortonedialing)             |

 

## Microsoft-Windows-TCPIP


| Unattend setting name       | Windows Provisioning setting group and name                              |
|-----------------------------|--------------------------------------------------------------------------|
| - IcmpRedirectsEnabled      | [/TCPIP/IcmpRedirectsEnabled](https://msdn.microsoft.com/library/windows/hardware/dn934613) |
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
| - fDenyTSConnections  | [/TerminalServices/DenyTSConnections](https://msdn.microsoft.com/library/windows/hardware/dn934646) |

 

## Microsoft-Windows-TerminalServices-Publishing-WMIProvider


| Unattend setting name | Windows Provisioning setting group and name                                                                    |
|-----------------------|----------------------------------------------------------------------------------------------------------------|
| - fDisabledAllowList  | [/TerminalServicesWMIProvider/DisabledAllowList](https://msdn.microsoft.com/library/windows/hardware/dn934645) |

 

## Microsoft-Windows-TerminalServices-RDP-WinStationExtensions


| Unattend setting name | Windows Provisioning setting group and name                                          |
|-----------------------|--------------------------------------------------------------------------------------|
| - SecurityLayer       | [/RemoteDesktop/SecurityLayer](https://msdn.microsoft.com/library/windows/hardware/dn953764)           |
| - UserAuthentication  | [/RemoteDesktop/UserAuthentication](https://msdn.microsoft.com/library/windows/hardware/dn953765) |

 

## Microsoft-Windows-TerminalServices-RemoteConnectionManager


| Unattend setting name | Windows Provisioning setting group and name                                      |
|-----------------------|----------------------------------------------------------------------------------|
| - LicensingMode       | [/TerminalServices/LicensingMode](https://msdn.microsoft.com/library/windows/hardware/dn934647) |

 

## Microsoft-Windows-UnattendedJoin


| Unattend setting name       | Windows Provisioning setting group and name                                                                                      |
|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------|
| - Identification            | [/Domain/UnattendedJoin/Online](https://msdn.microsoft.com/library/windows/hardware/dn953394)                                                     |
| -- Credentials              | [/Domain/UnattendedJoin/Online/Credentials](https://msdn.microsoft.com/library/windows/hardware/dn953394_credentials)                             |
| --- Domain                  | [/Domain/UnattendedJoin/Online/Credentials/Domain](https://msdn.microsoft.com/library/windows/hardware/dn953394_credentials_domain)               |
| --- Password                | [/Domain/UnattendedJoin/Online/Credentials/Password](https://msdn.microsoft.com/library/windows/hardware/dn953394_credentials_password)           |
| --- Username                | [/Domain/UnattendedJoin/Online/Credentials/Username](https://msdn.microsoft.com/library/windows/hardware/dn953394_credentials_username)           |
| -- DebugJoin                | [/Domain/UnattendedJoin/Online/DebugJoin](https://msdn.microsoft.com/library/windows/hardware/dn953394_debugjoin)                                 |
| -- DebugJoinOnlyOnThisError | [/Domain/UnattendedJoin/Online/DebugJoinOnlyOnThisError](https://msdn.microsoft.com/library/windows/hardware/dn953394_debugjoinonlyonthiserror)   |
| -- JoinDomain               | [/Domain/UnattendedJoin/Online/JoinDomain](https://msdn.microsoft.com/library/windows/hardware/dn953394_joindomain)                               |
| -- JoinWorkgroup            | [/Domain/UnattendedJoin/Online/JoinWorkgroup](https://msdn.microsoft.com/library/windows/hardware/dn953394_joinworkgroup)                         |
| -- MachineObjectOU          | [/Domain/UnattendedJoin/Online/MachineObjectOU](https://msdn.microsoft.com/library/windows/hardware/dn953394_machineobjectou)                     |
| -- MachinePassword          | [/Domain/UnattendedJoin/Online/MachinePassword](https://msdn.microsoft.com/library/windows/hardware/dn953394_machinepassword)                     |
| -- Provisioning             | [/Domain/UnattendedJoin/Online/Provisioning](https://msdn.microsoft.com/library/windows/hardware/dn953394_provisioning)                           |
| --- AccountData             | [/Domain/UnattendedJoin/Online/Provisioning/AccountData](https://msdn.microsoft.com/library/windows/hardware/dn953394_provisioning_accountdata)   |
| -- TimeoutPeriodInMinutes   | [/Domain/UnattendedJoin/Online/TimeoutPeriodInMinutes](https://msdn.microsoft.com/library/windows/hardware/dn953394_timeoutperiodinminutes)       |
| -- UnsecureJoin             | [/Domain/UnattendedJoin/Online/UnsecureJoin](https://msdn.microsoft.com/library/windows/hardware/dn953394_unsecurejoin)                           |
| - OfflineIdentification     | [/Domain/UnattendedJoin/Offline](https://msdn.microsoft.com/library/windows/hardware/dn953391)                                                   |
| -- Provisioning             | [/Domain/UnattendedJoin/Offline/Provisioning](https://msdn.microsoft.com/library/windows/hardware/dn953391_provisioning)                         |
| --- AccountData             | [/Domain/UnattendedJoin/Offline/Provisioning/Accountdata](https://msdn.microsoft.com/library/windows/hardware/dn953391_provisioning_accountdata) |

 

## Microsoft-Windows-WDF-Kernel Library


| Unattend setting name | Windows Provisioning setting group and name                    |
|-----------------------|----------------------------------------------------------------|
| - DriverStartType     | [/Drivers/KMDFStartType](https://msdn.microsoft.com/library/windows/hardware/dn953411) |

 

## Microsoft-Windows-WinRE-RecoveryAgent


| Unattend setting name | Windows Provisioning setting group and name                          |
|-----------------------|----------------------------------------------------------------------|
| - UninstallWindowsRE  | [/Setup/UninstallWindowsRE](https://msdn.microsoft.com/library/windows/hardware/dn953784) |

 

## Microsoft-Windows-Wlansvc


| Unattend setting name                     | Windows Provisioning setting group and name                                                                                                                                                        |
|-------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| - CoexistenceSupport                      | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/CoexistenceSupport](https://msdn.microsoft.com/library/windows/hardware/mt219721)                                       |
| - NumAntennaConnected                     | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/NumAntennaConnected](https://msdn.microsoft.com/library/windows/hardware/mt219722)                                     |
| - RadioLocation                           | [/Wireless/RadioLocation](https://msdn.microsoft.com/library/windows/hardware/dn953949)                                                                                                                                   |
| - SimultaneousMultiChannelSupported       | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/SimultaneousMultiChannelSupported](https://msdn.microsoft.com/library/windows/hardware/mt219723)         |
| - WLANFunctionalLevelDeviceResetSupported | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/WLANFunctionLevelDeviceResetSupported](https://msdn.microsoft.com/library/windows/hardware/mt219724) |
| - WLANPlatformLevelDeviceResetSupported   | [/ConnectivityProfiles/WiFiSense/SystemCapabilities/WLANPlatformLevelDeviceResetSupported](https://msdn.microsoft.com/library/windows/hardware/mt219725) |

 

## Microsoft-Windows-WorkstationService


| Unattend setting name      | Windows Provisioning setting group and name                                              |
|----------------------------|------------------------------------------------------------------------------------------|
| - OtherDomains             | [/SMBClient/OtherDomains](https://msdn.microsoft.com/library/windows/hardware/dn934582)                         |
| - SyncDomainWithMembership | [/SMBClient/SyncDomainWithMembership](https://msdn.microsoft.com/library/windows/hardware/dn934583) |

 

## Microsoft-Windows-WPD-BusEnumService


| Unattend setting name  | Windows Provisioning setting group and name                                        |
|------------------------|------------------------------------------------------------------------------------|
| - BTSearchIntervalOnAC | [/Bluetooth/MTPSearchIntervalOnAC](https://msdn.microsoft.com/library/windows/hardware/dn953356) |
| - BTSearchIntervalOnDC | [/Bluetooth/MTPSearchIntervalOnDC](https://msdn.microsoft.com/library/windows/hardware/dn953357) |
| - RegCacheUpdated      | N/A                                                                                |

 

## Microsoft-Windows-WwanUI


| Unattend setting name | Windows Provisioning setting group and name                    |
|-----------------------|----------------------------------------------------------------|
| - NotInOOBE           | [/Wireless/HideUIInOOBE](https://msdn.microsoft.com/library/windows/hardware/dn953947) |

 

## Networking-MPSSVC-Svc


| Unattend setting name                      | Windows Provisioning setting group and name                                                                           |
|--------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| - DisableStatefulFTP                       | [/Firewall/DisableStatefulFTP](https://msdn.microsoft.com/library/windows/hardware/dn953442)                                            |
| - DisableStatefulPPTP                      | [/Firewall/DisableStatefulPPTP](https://msdn.microsoft.com/library/windows/hardware/dn953443)                                          |
| - DomainProfile\_DisableNotifications      | [/Firewall/DomainProfile\_DisableNotifications](https://msdn.microsoft.com/library/windows/hardware/dn953445)           |
| - DomainProfile\_EnableFirewall            | [/Firewall/DomainProfile\_EnableFirewall](https://msdn.microsoft.com/library/windows/hardware/dn953446)                       |
| - DomainProfile\_LogDroppedPackets         | [/Firewall/DomainProfile\_LogDroppedPackets](https://msdn.microsoft.com/library/windows/hardware/dn953447)                 |
| - DomainProfile\_LogFile                   | [/Firewall/DomainProfile\_LogFile](https://msdn.microsoft.com/library/windows/hardware/dn953448)                                     |
| - DomainProfile\_LogFileSize               | [/Firewall/DomainProfile\_LogFileSize](https://msdn.microsoft.com/library/windows/hardware/dn953448size)                             |
| - DomainProfile\_LogSuccessfulConnections  | [/Firewall/DomainProfile\_LogSuccessfulConnections](https://msdn.microsoft.com/library/windows/hardware/dn953450)   |
| - FirewallGroups                           | N/A                                                                                                                   |
| -- Key                                     | N/A                                                                                                                   |
| -- FirewallGroup                           | N/A                                                                                                                   |
| --- Active                                 | N/A                                                                                                                   |
| --- Group                                  | N/A                                                                                                                   |
| --- Profile                                | N/A                                                                                                                   |
| - PrivateProfile\_DisableNotifications     | [/Firewall/PrivateProfile\_DisableNotifications](https://msdn.microsoft.com/library/windows/hardware/dn953456)         |
| - PrivateProfile\_EnableFirewall           | [/Firewall/PrivateProfile\_EnableFirewall](https://msdn.microsoft.com/library/windows/hardware/dn953457)                     |
| - PrivateProfile\_LogDroppedPackets        | [/Firewall/PrivateProfile\_LogDroppedPackets](https://msdn.microsoft.com/library/windows/hardware/dn953458)               |
| - PrivateProfile\_LogFile                  | [/Firewall/PrivateProfile\_LogFile](https://msdn.microsoft.com/library/windows/hardware/dn953459)                                   |
| - PrivateProfile\_LogFileSize              | [/Firewall/PrivateProfile\_LogFileSize](https://msdn.microsoft.com/library/windows/hardware/dn953459size)                           |
| - PrivateProfile\_LogSuccessfulConnections | [/Firewall/PrivateProfile\_LogSuccessfulConnections](https://msdn.microsoft.com/library/windows/hardware/dn953461) |
| - PublicProfile\_DisableNotifications      | [/Firewall/PublicProfile\_DisableNotifications](https://msdn.microsoft.com/library/windows/hardware/dn953462)           |
| - PublicProfile\_EnableFirewall            | [/Firewall/PublicProfile\_EnableFirewall](https://msdn.microsoft.com/library/windows/hardware/dn953463)                       |
| - PublicProfile\_LogDroppedPackets         | [/Firewall/PublicProfile\_LogDroppedPackets](https://msdn.microsoft.com/library/windows/hardware/dn953464)                 |
| - PublicProfile\_LogFile                   | [/Firewall/PublicProfile\_LogFile](https://msdn.microsoft.com/library/windows/hardware/dn953465)                                     |
| - PublicProfile\_LogFileSize               | [/Firewall/PublicProfile\_LogFileSize](https://msdn.microsoft.com/library/windows/hardware/dn953465size)                             |
| - PublicProfile\_LogSuccessfulConnections  | [/Firewall/PublicProfile\_LogSuccessfulConnections](https://msdn.microsoft.com/library/windows/hardware/dn953467)   |

 

## Security-Malware-Windows-Defender


| Unattend setting name               | Windows Provisioning setting group and name                                                                                  |
|-------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
| - DefinitionUpdateFileSharesSources | [/WindowsDefender/DefinitionUpdateFileSharesSources](https://msdn.microsoft.com/library/windows/hardware/dn934686)       |
| - DisableAntiSpyware                | [/WindowsDefender/DisableAntiSpyware](https://msdn.microsoft.com/library/windows/hardware/dn934687)                                     |
| - EnableRemoteManagedDefaults       | [/WindowsDefender/EnableRemoteManagedDefaults](https://msdn.microsoft.com/library/windows/hardware/dn934688)                   |
| - FallbackOrder                     | [/WindowsDefender/FallbackOrder](https://msdn.microsoft.com/library/windows/hardware/dn934689)                                               |
| - Scan                              | [/WindowsDefender/Scan](https://msdn.microsoft.com/library/windows/hardware/dn934690)                                                                 |
| -- ScanParameters                   | [/WindowsDefender/Scan/ScanParameters](https://msdn.microsoft.com/library/windows/hardware/dn934690_scanparameters)                                   |
| -- ScheduleDay                      | [/WindowsDefender/Scan/ScheduleDay](https://msdn.microsoft.com/library/windows/hardware/dn934690_scheduleday)                                         |
| -- ScheduleTime                     | [/WindowsDefender/Scan/ScheduleTime](https://msdn.microsoft.com/library/windows/hardware/dn934690_scheduletime)                                       |
| - SignatureUpdateInterval           | [/WindowsDefender/SignatureUpdateInterval](https://msdn.microsoft.com/library/windows/hardware/dn934694)                           |
| - ThreatSeverityDefaultAction       | [/WindowsDefender/ThreatSeverityDefaultAction](https://msdn.microsoft.com/library/windows/hardware/dn934695)                   |
| -- Low                              | [/WindowsDefender/ThreatSeverityDefaultAction/Low](https://msdn.microsoft.com/library/windows/hardware/dn934695_low)           |
| -- Moderate                         | [/WindowsDefender/ThreatSeverityDefaultAction/Moderate](https://msdn.microsoft.com/library/windows/hardware/dn934695_moderate) |
| -- High                             | [/WindowsDefender/ThreatSeverityDefaultAction/High](https://msdn.microsoft.com/library/windows/hardware/dn934695_high)         |
| -- Severe                           | [/WindowsDefender/ThreatSeverityDefaultAction/Severe](https://msdn.microsoft.com/library/windows/hardware/dn934695_severe)     |
| - TrustedImageIdentifier            | [/WindowsDefender/TrustedImageIdentifier](https://msdn.microsoft.com/library/windows/hardware/dn934700)                             |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Unattend%20to%20Windows%20Provisioning%20settings%20map%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




