---
title: MCSF settings not supported in Windows Provisioning
description: The following tables list the runtime and image time settings that were available in Windows Phone 8.1 but are not supported in the Windows Provisioning framework.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 63D0980E-930F-4984-9760-3E57A142693E
---

# MCSF settings not supported in Windows Provisioning


The following tables list the runtime and image time settings that are not supported in the Windows Provisioning framework. You must use MCSF and [Customization answer files](customization-answer-file.md) to configure the values for these settings.

## Runtime settings


|                                                        |
|--------------------------------------------------------|
| Connections/Cellular                                   |
| Connections/Item/Connection/AlwaysOn                   |
| Connections/Item/Connection/AccessPointName            |
| Connections/Item/Connection/UseRequiresMappingsPolicy  |
| Connections/Item/Connection/AuthType                   |
| Connections/Item/Connection/ConnectionType             |
| Connections/Item/Connection/LanguageSpecificIdentifier |
| Connections/Item/Connection/Enabled                    |
| Connections/Item/Connection/IpHeaderCompression        |
| Connections/Item/Connection/Password                   |
| Connections/Item/Connection/SwCompression              |
| Connections/Item/Connection/UserName                   |
| Connections/Item/Connection/Version                    |
| Connections/Item/Connection/Roaming                    |
| Connections/Item/Connection/OemConnectionId            |
| Connections/Item/Connection/SimIccId                   |
| Connections/Item/Connection/IdleDisconnectTimeout      |
| Connections/Item/Connection/ApnId                      |
| Connections/Item/Connection/IPType                     |
| Connections/Item/Connection/ExemptFromDisablePolicy    |
| Connections/Item/Connection/TetheringNAI               |
| Connections/Item/Connection/ConnectionName             |
| Connections/Item/Connection/BypassLocal                |
| Connections/Item/Connection/EnableProxy                |
| Connections/Item/Connection/Exception                  |
| Connections/Item/Connection/Password                   |
| Connections/Item/Connection/Port                       |
| Connections/Item/Connection/Server                     |
| Connections/Item/Connection/Type                       |
| Connections/Item/Connection/UserName                   |
| Connections/Item/Connection/ExtraInfo                  |
| Connections/Proxies                                    |
| DeviceManagement/Policies/MMS/MMSMessageRoles          |
| DeviceManagement/Policies/OMACP/NetwpinRoles           |
| DeviceManagement/Policies/OMACP/UsernetwpinRoles       |
| DeviceManagement/Policies/OMACP/UserpinRoles           |
| DeviceManagement/Policies/SISL/ServiceIndicationRoles  |
| DeviceManagement/Policies/SISL/ServiceLoadingRoles     |
| Email/DefaultBackgroundThemeSetting                    |
| Maps/ChinaVariantWin10                                 |
| NFC/SEMgr/UI/CardEmulationState                        |
| NFC/SEMgr/UI/DefaultFastCardSetting                    |
| NFC/SEMgr/UI/HideFastCardsOptions                      |
| Phone/VoicemailRegistrationTable                       |
| Shell/Start/Item/PrepinnedTile/MSAppID                 |
| Shell/Start/Item/PrepinnedTile/OEMAppID                |
| Shell/Start/Item/PrepinnedTile/Size                    |
| Shell/Start/Item/PrepinnedTile/XCoordinate             |
| Shell/Start/Item/PrepinnedTile/YCoordinate             |
| Shell/Start/Layout/FeaturedTile                        |
| Shell/Start/Layout/StartLayout                         |
| Shell/Start/Layout/PinDiagnosticTiles                  |
| Shell/Start/PrepinnedTiles                             |
| Shell/SystemTray/DataActivity/DataActivityIcon         |
| Shell/SystemTray/Location/LocationIcon                 |

 

## Image time settings


|                                                            |
|------------------------------------------------------------|
| Accounts                                                   |
| AutoBrightness                                             |
| AutoDataConfig                                             |
| BootDisplaySettings                                        |
| Brightness                                                 |
| CellCore/PerDevice/CellData/ModemProfiles                  |
| CellCore/PerDevice/CellData/PersistAtImaging               |
| CellCore/PerDevice/External                                |
| CellCore/PerDevice/External/ImageOnly                      |
| CellCore/PerDevice/General/atomicRoamingTableSettings3GPP  |
| CellCore/PerDevice/General/atomicRoamingTableSettings3GPP2 |
| ChargeSettings                                             |
| DataSense                                                  |
| Graphics/D3D/DisplayResolutionOverride                     |
| Input/Keyboard/EnabledOnIdleButtons                        |
| Input/Touch/AutoRepeat                                     |
| Input/Touch/CapButtons                                     |
| Input/Touch/DisplayProperties                              |
| People/ContactsFilteringSettings                           |
| People/MultiSelectDelete                                   |
| People/SIMContactManagement                                |
| People/SortAndDisplaySettings                              |
| Silverlight/Compositor                                     |
| Storage/SdBus/MainOS                                       |
| StoreMoOemGroup                                            |
| TextInput/HardwareKeyboard                                 |
| USBData                                                    |
| UsbDualRole                                                |
| WeakCharger                                                |
| WiFi/FirstBoot                                             |
| WiFi/HotSpotPlugin/ATT                                     |
| WiFi/SystemCapabilities                                    |

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phCustomization\p_phCustomization%5D:%20MCSF%20settings%20not%20supported%20in%20Windows%20Provisioning%20%20RELEASE:%20%289/7/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




