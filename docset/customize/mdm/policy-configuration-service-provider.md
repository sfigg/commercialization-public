---
title: Policy CSP
description: Policy CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
---

# Policy CSP


The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies.

The Policy configuration service provider has the following sub-categories:

-   Policy/Config/*AreaName* – Handles the policy configuration request from the server.
-   Policy/Result/*AreaName* – Provides a read-only path to policies enforced on the device.

The following diagram shows the Policy configuration service provider in tree format as used by both Open Mobile Alliance Device Management (OMA DM) and OMA Client Provisioning.

![policy csp diagram](images/provisioning-csp-policy.png)

<a href="" id="--vendor-msft-policy"></a>**./Vendor/MSFT/Policy**  
The root node for the Policy configuration service provider.

Supported operation is Get.

<a href="" id="policy-config"></a>**Policy/Config**  
Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.

Supported operation is Get.

<a href="" id="policy-config-areaname"></a>**Policy/Config/*AreaName***  
The area group that can be configured by a single technology for a single provider. Once added, you cannot change the value.

Supported operations are Add, Get, and Delete.

<a href="" id="policy-config-areaname-policyname"></a>**Policy/Config/*AreaName/PolicyName***  
Specifies the name/value pair used in the policy.

The following list shows some tips to help you when configuring policies:

-   Separate multistring values by the Unicode &\#xF000; in the XML file.
-   End multistrings with &\#xF000;. For example, One string&\#xF000;two string&\#xF000;red string&\#xF000;blue string&\#xF000;&\#xF000;.

    **Note**  A query from a different caller could provide a different value as each caller could have different values for a named policy.

     

-   In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
-   Supported operations are Add, Get, Delete, and Replace.
-   Value type is string.

<a href="" id="policy-result"></a>**Policy/Result**  
Groups the evaluated policies from all providers that can be configured.

Supported operation is Get.

<a href="" id="policy-result-areaname"></a>**Policy/Result/*AreaName***  
The area group that can be configured by a single technology independent of the providers.

Supported operation is Get.

<a href="" id="policy-result-areaname-policyname"></a>**Policy/Result/*AreaName/PolicyName***  
Specifies the name/value pair used in the policy.

Supported operation is Get.

## **Policy Tables**


Some policies are only supported in either Windows 10 for desktop or Windows 10 Mobile. In addition, some policies also have a corresponding Group Policy. The following tables provide this information:

-   [Table of Policies](#main-policy-table) - Lists all policies for each SKU in Windows 10 . It also notes policies that can be set using Exchange Active Sync (EAS).
-   [Policies supported by Windows 10 Holographic Enterprise](#hololens-policies) - Lists the policies that are supported in Windows 10 Holographic Enterprise.

## <a href="" id="main-policy-table"></a>Table of Policies for Windows 10


**Important**  When you see the right columns get cut-off, go to the bottom of the table and you will see a scroll bar.

 

Area Name / Policy Name
Supported in Home
Supported in Pro
Supported in Enterprise
Supported in Education
Supported in Mobile
Supported in Mobile Enterprise
Supported in IoT Core
Can be set using Exchange Active Sync (EAS)
[AboveLock/AllowActionCenterNotifications](#abovelock-allowactioncenternotifications)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[AboveLock/AllowCortanaAboveLock](#abovelock-allowcortanaabovelock)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[AboveLock/AllowToasts](#abovelock-allowtoasts)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Accounts/AllowAddingNonMicrosoftAccountsManually](#accounts-allowaddingnonmicrosoftaccountsmanually)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Accounts/AllowMicrosoftAccountConnection](#accounts-allowmicrosoftaccountconnection)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Accounts/DomainNamesForEmailSync](#accounts-domainnamesforemailsync)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowAllTrustedApps](#applicationmanagement-allowalltrustedapps)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowAppStoreAutoUpdate](#applicationmanagement-allowappstoreautoupdate)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowGameDVR](#applicationmanagement-allowgamedvr)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowSharedUserAppData](#applicationmanagement-allowshareduserappdata)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/AllowStore](#applicationmanagement-allowstore)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/ApplicationRestrictions](#applicationmanagement-applicationrestrictions)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/DisableStoreOriginatedApps](#applicationmanagement-disablestoreoriginatedapps)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/RequirePrivateStoreOnly](#applicationmanagement-requireprivatestoreonly)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/RestrictAppDataToSystemVolume](#applicationmanagement-restrictappdatatosystemvolume)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[ApplicationManagement/RestrictAppToSystemVolume](#applicationmanagement-restrictapptosystemvolume)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Authentication/AllowEAPCertSSO](#authentication-alloweapcertsso)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Authentication/AllowFastReconnect](#authentication-allowfastreconnect)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Authentication/AllowSecondaryAuthenticationDevice](#authentication-allowsecondaryauthenticationdevice)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Bitlocker/EncryptionMethod](#bitlocker-encryptionmethod)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Bluetooth/AllowPrepairing](#bluetooth-allowprepairing)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Bluetooth/LocalDeviceName](#bluetooth-localdevicename)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowAutofill](#browser-allowautofill)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowBrowser](#browser-allowbrowser)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Browser/AllowCookies](#browser-allowcookies)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

[Browser/AllowDeveloperTools](#browser-allowdevelopertools)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowDoNotTrack](#browser-allowdonottrack)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowExtensions](#browser-allowextensions)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowInPrivate](#browser-allowinprivate)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowPasswordManager](#browser-allowpasswordmanager)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowPopups](#browser-allowpopups)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/AllowSmartScreen](#browser-allowsmartscreen)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/EnterpriseModeSiteList](#browser-enterprisemodesitelist)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/FirstRunURL](#browser-firstrunurl)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/Homepages](#browser-homepages)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/PreventAccessToAboutFlagsInMicrosoftEdge](#browser-preventaccesstoaboutflagsinmicrosoftedge)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/PreventSmartScreenPromptOverride](#browser-preventsmartscreenpromptoverride)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/PreventSmartScreenPromptOverrideForFiles](#browser-preventsmartscreenpromptoverrideforfiles)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/PreventUsingLocalHostIPAddressForWebRTC](#browser-preventusinglocalhostipaddressforwebrtc)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/SendIntranetTraffictoInternetExplorer](#browser-sendintranettraffictointernetexplorer)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Browser/ShowMessageWhenOpeningSitesInInternetExplorer](#browser-showmessagewhenopeningsitesininternetexplorer)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Camera/AllowCamera](#camera-allowcamera)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Connectivity/AllowBluetooth](#connectivity-allowbluetooth)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Connectivity/AllowCellularData](#connectivity-allowcellulardata)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Connectivity/AllowCellularDataRoaming](#connectivity-allowcellulardataroaming)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Connectivity/AllowNFC](#connectivity-allownfc)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Connectivity/AllowUSBConnection](#connectivity-allowusbconnection)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Connectivity/AllowVPNOverCellular](#connectivity-allowvpnovercellular)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Connectivity/AllowVPNRoamingOverCellular](#connectivity-allowvpnroamingovercellular)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Cryptography/AllowFipsAlgorithmPolicy](#cryptography-allowfipsalgorithmpolicy)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Cryptography/TLSCipherSuites](#cryptography-tlsciphersuites)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DataProtection/AllowDirectMemoryAccess](#dataprotection-allowdirectmemoryaccess)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DataProtection/LegacySelectiveWipeID](#dataprotection-legacyselectivewipeid)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowArchiveScanning](#defender-allowarchivescanning)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowBehaviorMonitoring](#defender-allowbehaviormonitoring)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowCloudProtection](#defender-allowcloudprotection)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowEmailScanning](#defender-allowemailscanning)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowFullScanOnMappedNetworkDrives](#defender-allowfullscanonmappednetworkdrives)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowFullScanRemovableDriveScanning](#defender-allowfullscanremovabledrivescanning)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowIntrusionPreventionSystem](#defender-allowintrusionpreventionsystem)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowIOAVProtection](#defender-allowioavprotection)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowOnAccessProtection](#defender-allowonaccessprotection)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowRealtimeMonitoring](#defender-allowrealtimemonitoring)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowScanningNetworkFiles](#defender-allowscanningnetworkfiles)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowScriptScanning](#defender-allowscriptscanning)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AllowUserUIAccess](#defender-allowuseruiaccess)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/AVGCPULoadFactor](#defender-avgcpuloadfactor)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/DaysToRetainCleanedMalware](#defender-daystoretaincleanedmalware)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ExcludedExtensions](#defender-excludedextensions)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ExcludedPaths](#defender-excludedpaths)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ExcludedProcesses](#defender-excludedprocesses)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/PUAProtection](#defender-puaprotection)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/RealTimeScanDirection](#defender-realtimescandirection)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ScanParameter](#defender-scanparameter)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ScheduleQuickScanTime](#defender-schedulequickscantime)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ScheduleScanDay](#defender-schedulescanday)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ScheduleScanTime](#defender-schedulescantime)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/SignatureUpdateInterval](#defender-signatureupdateinterval)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/SubmitSamplesConsent](#defender-submitsamplesconsent)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Defender/ThreatSeverityDefaultAction](#defender-threatseveritydefaultaction)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOAbsoluteMaxCacheSize](#deliveryoptimization-doabsolutemaxcachesize)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DODownloadMode](#deliveryoptimization-dodownloadmode)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOGroupID](#deliveryoptimization-dogroupid)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMaxCacheAge](#deliveryoptimization-domaxcacheage)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMaxCacheSize](#deliveryoptimization-domaxcachesize)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMaxDownloadBandwidth](#deliveryoptimization-domaxdownloadbandwidth)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMaxUploadBandwidth](#deliveryoptimization-domaxuploadbandwidth)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMinBackgroundQos](#deliveryoptimization-dominbackgroundqos)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOModifyCacheDrive](#deliveryoptimization-domodifycachedrive)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOMonthlyUploadDataCap](#deliveryoptimization-domonthlyuploaddatacap)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeliveryOptimization/DOPercentageMaxDownloadBandwidth](#deliveryoptimization-dopercentagemaxdownloadbandwidth)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeviceLock/AllowIdleReturnWithoutPassword](#devicelock-allowidlereturnwithoutpassword)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeviceLock/AllowScreenTimeoutWhileLockedUserConfig](#devicelock-allowscreentimeoutwhilelockeduserconfig)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeviceLock/AllowSimpleDevicePassword](#devicelock-allowsimpledevicepassword)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/AlphanumericDevicePasswordRequired](#devicelock-alphanumericdevicepasswordrequired)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/DevicePasswordExpiration](#devicelock-devicepasswordexpiration)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/DevicePasswordHistory](#devicelock-devicepasswordhistory)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/EnforceLockScreenAndLogonImage](#devicelock-enforcelockscreenandlogonimage)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeviceLock/EnforceLockScreenProvider](#devicelock-enforcelockscreenprovider)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[DeviceLock/MaxDevicePasswordFailedAttempts](#devicelock-maxdevicepasswordfailedattempts)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/MaxInactivityTimeDeviceLock](#devicelock-maxinactivitytimedevicelock)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/MinDevicePasswordComplexCharacters](#devicelock-mindevicepasswordcomplexcharacters)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[DeviceLock/ScreenTimeoutWhileLocked](#devicelock-screentimeoutwhilelocked)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

[DeviceLock/MinDevicePasswordLength](#devicelock-mindevicepasswordlength)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Experience/AllowCopyPaste](#experience-allowcopypaste)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowCortana](#experience-allowcortana)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowDeviceDiscovery](#experience-allowdevicediscovery)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowManualMDMUnenrollment](#experience-allowmanualmdmunenrollment)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowScreenCapture](#experience-allowscreencapture)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowSIMErrorDialogPromptWhenNoSIM](#experience-allowsimerrordialogpromptwhennosim)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowSyncMySettings](#experience-allowsyncmysettings)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowTaskSwitcher](#experience-allowtaskswitcher)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowThirdPartySuggestionsInWindowsSpotlight](#experience-allowthirdpartysuggestionsinwindowsspotlight)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowVoiceRecording](#experience-allowvoicerecording)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowWindowsConsumerFeatures](#experience-allowwindowsconsumerfeatures)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowWindowsSpotlight](#experience-allowwindowsspotlight)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/AllowWindowsTips](#experience-allowwindowstips)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/ConfigureWindowsSpotlightOnLockScreen](#experience-configurewindowsspotlightonlockscreen)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Experience/DoNotShowFeedbackNotifications](#experience-donotshowfeedbacknotifications)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Licensing/AllowWindowsEntitlementReactivation](#licensing-allowwindowsentitlementreactivation)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Licensing/DisallowKMSClientOnlineAVSValidation](#licensing-disallowkmsclientonlineavsvalidation)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[LockDown/AllowEdgeSwipe](#lockdown-allowedgeswipe)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Maps/EnableOfflineMapsAutoUpdate](#maps-enableofflinemapsautoupdate)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Maps/AllowOfflineMapsDownloadOverMeteredConnection](#maps-allowofflinemapsdownloadovermeteredconnection)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Messaging/AllowMessageSync](#messaging-allowmessagesync)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseCloudResources](#networkisolation-enterprisecloudresources)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseInternalProxyServers](#networkisolation-enterpriseinternalproxyservers)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseIPRange](#networkisolation-enterpriseiprange)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseIPRangesAreAuthoritative](#networkisolation-enterpriseiprangesareauthoritative)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseNetworkDomainNames](#networkisolation-enterprisenetworkdomainnames)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseProxyServers](#networkisolation-enterpriseproxyservers)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/EnterpriseProxyServersAreAuthoritative](#networkisolation-enterpriseproxyserversareauthoritative)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[NetworkIsolation/NeutralResources](#networkisolation-neutralresources)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Notifications/DisallowNotificationMirroring](#notifications-disallownotificationmirroring)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts](#privacy-allowautoacceptpairingandprivacyconsentprompts)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/AllowInputPersonalization](#privacy-allowinputpersonalization)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/DisableAdvertisingId](#privacy-disableadvertisingid)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessAccountInfo](#privacy-letappsaccessaccountinfo)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessAccountInfo\_ForceAllowTheseApps](#privacy-letappsaccessaccountinfo-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessAccountInfo\_ForceDenyTheseApps](#privacy-letappsaccessaccountinfo-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessAccountInfo\_UserInControlOfTheseApps](#privacy-letappsaccessaccountinfo-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCalendar](#privacy-letappsaccesscalendar)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCalendar\_ForceAllowTheseApps](#privacy-letappsaccesscalendar-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCalendar\_ForceDenyTheseApps](#privacy-letappsaccesscalendar-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCalendar\_UserInControlOfTheseApps](#privacy-letappsaccesscalendar-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCallHistory](#privacy-letappsaccesscallhistory)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCallHistory\_ForceAllowTheseApps](#privacy-letappsaccesscallhistory-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCallHistory\_ForceDenyTheseApps](#privacy-letappsaccesscallhistory-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCallHistory\_UserInControlOfTheseApps](#privacy-letappsaccesscallhistory-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCamera](#privacy-letappsaccesscamera)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCamera\_ForceAllowTheseApps](#privacy-letappsaccesscamera-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCamera\_ForceDenyTheseApps](#privacy-letappsaccesscamera-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessCamera\_UserInControlOfTheseApps](#privacy-letappsaccesscamera-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessContacts](#privacy-letappsaccesscontacts)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessContacts\_ForceAllowTheseApps](#privacy-letappsaccesscontacts-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessContacts\_ForceDenyTheseApps](#privacy-letappsaccesscontacts-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessContacts\_UserInControlOfTheseApps](#privacy-letappsaccesscontacts-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessEmail](#privacy-letappsaccessemail)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessEmail\_ForceAllowTheseApps](#privacy-letappsaccessemail-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessEmail\_ForceDenyTheseApps](#privacy-letappsaccessemail-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessEmail\_UserInControlOfTheseApps](#privacy-letappsaccessemail-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessLocation](#privacy-letappsaccesslocation)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessLocation\_ForceAllowTheseApps](#privacy-letappsaccesslocation-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessLocation\_ForceDenyTheseApps](#privacy-letappsaccesslocation-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessLocation\_UserInControlOfTheseApps](#privacy-letappsaccesslocation-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMessaging](#privacy-letappsaccessmessaging)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMessaging\_ForceAllowTheseApps](#privacy-letappsaccessmessaging-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMessaging\_ForceDenyTheseApps](#privacy-letappsaccessmessaging-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMessaging\_UserInControlOfTheseApps](#privacy-letappsaccessmessaging-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMicrophone](#privacy-letappsaccessmicrophone)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMicrophone\_ForceAllowTheseApps](#privacy-letappsaccessmicrophone-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMicrophone\_ForceDenyTheseApps](#privacy-letappsaccessmicrophone-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMicrophone\_UserInControlOfTheseApps](#privacy-letappsaccessmicrophone-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMotion](#privacy-letappsaccessmotion)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMotion\_ForceAllowTheseApps](#privacy-letappsaccessmotion-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMotion\_ForceDenyTheseApps](#privacy-letappsaccessmotion-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessMotion\_UserInControlOfTheseApps](#privacy-letappsaccessmotion-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessNotifications](#privacy-letappsaccessnotifications)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessNotifications\_ForceAllowTheseApps](#privacy-letappsaccessnotifications-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessNotifications\_ForceDenyTheseApps](#privacy-letappsaccessnotifications-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessNotifications\_UserInControlOfTheseApps](#privacy-letappsaccessnotifications-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessPhone](#privacy-letappsaccessphone)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

![cross mark](images/crossmark.png)

[Privacy/LetAppsAccessPhone\_ForceAllowTheseApps](#privacy-letappsaccessphone-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessPhone\_ForceDenyTheseApps](#privacy-letappsaccessphone-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessPhone\_UserInControlOfTheseApps](#privacy-letappsaccessphone-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessRadios](#privacy-letappsaccessradios)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessRadios\_ForceAllowTheseApps](#privacy-letappsaccessradios-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessRadios\_ForceDenyTheseApps](#privacy-letappsaccessradios-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessRadios\_UserInControlOfTheseApps](#privacy-letappsaccessradios-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessTrustedDevices](#privacy-letappsaccesstrusteddevices)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessTrustedDevices\_ForceAllowTheseApps](#privacy-letappsaccesstrusteddevices-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessTrustedDevices\_ForceDenyTheseApps](#privacy-letappsaccesstrusteddevices-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsAccessTrustedDevices\_UserInControlOfTheseApps](#privacy-letappsaccesstrusteddevices-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsSyncWithDevices](#privacy-letappssyncwithdevices)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsSyncWithDevices\_ForceAllowTheseApps](#privacy-letappssyncwithdevices-forceallowtheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsSyncWithDevices\_ForceDenyTheseApps](#privacy-letappssyncwithdevices-forcedenytheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Privacy/LetAppsSyncWithDevices\_UserInControlOfTheseApps](#privacy-letappssyncwithdevices-userincontroloftheseapps)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/AllowIndexingEncryptedStoresOrItems](#search-allowindexingencryptedstoresoritems)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/AllowSearchToUseLocation](#search-allowsearchtouselocation)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Search/AllowUsingDiacritics](#search-allowusingdiacritics)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/AlwaysUseAutoLangDetection](#search-alwaysuseautolangdetection)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/DisableBackoff](#search-disablebackoff)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/DisableRemovableDriveIndexing](#search-disableremovabledriveindexing)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/PreventIndexingLowDiskSpaceMB](#search-preventindexinglowdiskspacemb)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/PreventRemoteQueries](#search-preventremotequeries)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Search/SafeSearchPermissions](#search-safesearchpermissions)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/AllowAddProvisioningPackage](#security-allowaddprovisioningpackage)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices](#security-allowautomaticdeviceencryptionforazureadjoineddevices)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/AllowManualRootCertificateInstallation](#security-allowmanualrootcertificateinstallation)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/AllowRemoveProvisioningPackage](#security-allowremoveprovisioningpackage)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/AntiTheftMode](#security-antitheftmode)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices](#security-allowautomaticdeviceencryptionforazureadjoineddevices)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/RequireDeviceEncryption](#security-requiredeviceencryption)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Security/RequireRetrieveHealthCertificateOnBoot](#security-requireretrievehealthcertificateonboot)
![check mark](images/checkmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowAutoPlay](#settings-allowautoplay)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowDataSense](#settings-allowdatasense)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowDateTime](#settings-allowdatetime)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowEditDeviceName](#settings-alloweditdevicename)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![cross mark](images/crossmark.png)

Enterprise

![cross mark](images/crossmark.png)

Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowLanguage](#settings-allowlanguage)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowPowerSleep](#settings-allowpowersleep)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowRegion](#settings-allowregion)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowSignInOptions](#settings-allowsigninoptions)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowVPN](#settings-allowvpn)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowWorkplace](#settings-allowworkplace)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Settings/AllowYourAccount](#settings-allowyouraccount)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Speech/AllowSpeechModelUpdate](#speech-allowspeechmodelupdate)
![check mark](images/checkmark.png)\*
Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)\*
Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Start/ForceStartSize](#start-forcestartsize)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Start/StartLayout](#start-startlayout)
![cross mark](images/crossmark.png)

Home

![cross mark](images/crossmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/AllowBuildPreview](#system-allowbuildpreview)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/AllowEmbeddedMode](#system-allowembeddedmode)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

[System/AllowExperimentation](#system-allowexperimentation)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/AllowLocation](#system-allowlocation)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/AllowStorageCard](#system-allowstoragecard)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[System/AllowTelemetry](#system-allowtelemetry)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/AllowUserToResetPhone](#system-allowusertoresetphone)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[System/TelemetryProxy](#system-telemetryproxy)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[TextInput/AllowIMELogging](#textinput-allowimelogging)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowIMENetworkAccess](#textinput-allowimenetworkaccess)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowInputPanel](#textinput-allowinputpanel)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowJapaneseIMESurrogatePairCharacters](#textinput-allowjapaneseimesurrogatepaircharacters)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowJapaneseIVSCharacters](#textinput-allowjapaneseivscharacters)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowJapaneseNonPublishingStandardGlyph](#textinput-allowjapanesenonpublishingstandardglyph)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowJapaneseUserDictionary](#textinput-allowjapaneseuserdictionary)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowLanguageFeaturesUninstall](#textinput-allowlanguagefeaturesuninstall)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/AllowLinguisticDataCollection](#textinput-allowlinguisticdatacollection)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/ExcludeJapaneseIMEExceptJIS0208](#textinput-excludejapaneseimeexceptjis0208)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC](#textinput-excludejapaneseimeexceptjis0208andeudc)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[TextInput/ExcludeJapaneseIMEExceptShiftJIS](#textinput-excludejapaneseimeexceptshiftjis)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/ActiveHoursEnd](#update-activehoursend)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/ActiveHoursStart](#update-activehoursstart)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/AllowAutoUpdate](#update-allowautoupdate)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/AllowMUUpdateService](#update-allowmuupdateservice)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/AllowNonMicrosoftSignedUpdate](#update-allownonmicrosoftsignedupdate)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/AllowUpdateService](#update-allowupdateservice)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/BranchReadinessLevel](#update-branchreadinesslevel)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/DeferFeatureUpdatesPeriodInDays](#update-deferfeatureupdatesperiodindays)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/DeferQualityUpdatesPeriodInDays](#update-deferqualityupdatesperiodindays)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/DeferUpdatePeriod](#update-deferupdateperiod)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/DeferUpgradePeriod](#update-deferupgradeperiod)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/ExcludeWUDriversInQualityUpdate](#update-excludewudrivers)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/PauseDeferrals](#update-pausedeferrals)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/PauseFeatureUpdates](#update-pausefeatureupdates)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/PauseQualityUpdates](#update-pausequalityupdates)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)\*
Mobile Enterprise

![check mark](images/checkmark.png)\*
IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/RequireDeferUpgrade](#update-requiredeferupgrade)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/RequireUpdateApproval](#update-requireupdateapproval)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/ScheduledInstallDay](#update-scheduledinstallday)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/ScheduledInstallTime](#update-scheduledinstalltime)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[Update/UpdateServiceUrl](#update-updateserviceurl)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![cross mark](images/crossmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WiFi/AllowAutoConnectToWiFiSenseHotspots](#wifi-allowautoconnecttowifisensehotspots)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WiFi/AllowInternetSharing](#wifi-allowinternetsharing)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[WiFi/AllowManualWiFiConfiguration](#wifi-allowmanualwificonfiguration)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WiFi/AllowWiFi](#wifi-allowwifi)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![check mark](images/checkmark.png)

EAS

[WiFi/WLANScanMode](#wifi-wlanscanmode)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)

Pro

![check mark](images/checkmark.png)

Enterprise

![check mark](images/checkmark.png)

Education

![check mark](images/checkmark.png)

Mobile

![check mark](images/checkmark.png)

Mobile Enterprise

![check mark](images/checkmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WindowsInkWorkspace/AllowWindowsInkWorkspace](#windowsinkworkspace-allowwindowsinkworkspace)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace](#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WirelessDisplay/AllowProjectionToPC](#wirelessdisplay-allowprojectiontopc)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

[WirelessDisplay/RequirePinForPairing](#wirelessdisplay-requirepinforpairing)
![cross mark](images/crossmark.png)

Home

![check mark](images/checkmark.png)\*
Pro

![check mark](images/checkmark.png)\*
Enterprise

![check mark](images/checkmark.png)\*
Education

![cross mark](images/crossmark.png)

Mobile

![cross mark](images/crossmark.png)

Mobile Enterprise

![cross mark](images/crossmark.png)

IoT Core

![cross mark](images/crossmark.png)

EAS

 

Footnote:

-   \* - Added in Windows 10, version 1607.

## <a href="" id="hololens-policies"></a>Policies supported by Windows 10 Holographic Enterprise


-   [Accounts/AllowMicrosoftAccountConnection](#accounts-allowmicrosoftaccountconnection)
-   [ApplicationManagement/AllowAllTrustedApps](#applicationmanagement-allowalltrustedapps)
-   [ApplicationManagement/AllowAppStoreAutoUpdate](#applicationmanagement-allowappstoreautoupdate)
-   [ApplicationManagement/AllowDeveloperUnlock](#applicationmanagement-allowdeveloperunlock)
-   [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)
-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)
-   [Browser/AllowCookies](#browser-allowcookies)
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)
-   [Browser/AllowPasswordManager](#browser-allowpasswordmanager)
-   [Browser/AllowPopups](#browser-allowpopups)
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)
-   [DeviceLock/AllowIdleReturnWithoutPassword](#devicelock-allowidlereturnwithoutpassword)
-   [DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)
-   [Experience/AllowCortana](#experience-allowcortana)
-   [Experience/AllowManualMDMUnenrollment](#experience-allowmanualmdmunenrollment)
-   [Privacy/AllowInputPersonalization](#privacy-allowinputpersonalization)
-   [Search/AllowSearchToUseLocation](#search-allowsearchtouselocation)
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)
-   [Settings/AllowDateTime](#settings-allowdatetime)
-   [Settings/AllowVPN](#settings-allowvpn)
-   [System/AllowLocation](#system-allowlocation)
-   [System/AllowTelemetry](#system-allowtelemetry)
-   [Update/AllowAutoUpdate](#update-allowautoupdate)
-   [Update/AllowUpdateService](#update-allowupdateservice)
-   [Update/RequireDeferUpgrade](#update-requiredeferupgrade)
-   [Update/RequireUpdateApproval](#update-requireupdateapproval)
-   [Update/UpdateServiceUrl](#update-updateserviceurl)

## <a href="" id="list-of--areaname---policyname-"></a>List of &lt;AreaName&gt;/&lt;PolicyName&gt;


<a href="" id="abovelock-allowactioncenternotifications"></a>**AboveLock/AllowActionCenterNotifications**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether to allow Action Center notifications above the device lock screen.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="abovelock-allowcortanaabovelock"></a>**AboveLock/AllowCortanaAboveLock**  
Added in Windows 10, version 1607. Specifies whether or not the user can interact with Cortana using speech while the system is locked. If you enable or don’t configure this setting, the user can interact with Cortana using speech while the system is locked. If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="abovelock-allowtoasts"></a>**AboveLock/AllowToasts**  
Specifies whether to allow toast notifications above the device lock screen.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="accounts-allowaddingnonmicrosoftaccountsmanually"></a>**Accounts/AllowAddingNonMicrosoftAccountsManually**  
Specifies whether user is allowed to add non-MSA email accounts.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

**Note**  This policy will only block UI/UX-based methods for adding non-Microsoft accounts. Even if this policy is enforced, you can still provision non-MSA accounts using the [EMAIL2 CSP](email2-configuration-service-provider.md).

 

<a href="" id="accounts-allowmicrosoftaccountconnection"></a>**Accounts/AllowMicrosoftAccountConnection**  
Specifies whether the user is allowed to use an MSA account for non-email related connection authentication and services.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="accounts-domainnamesforemailsync"></a>**Accounts/DomainNamesForEmailSync**  
Specifies a list of the domains that are allowed to sync email on the device.

The data type is a string.

The default value is an empty string, which allows all email accounts on the device to sync email. Otherwise, the string should contain a pipe-separated list of domains that are allowed to sync email on the device. For example, "contoso.com|fabrikam.net|woodgrove.gov".

<a href="" id="applicationmanagement-allowalltrustedapps"></a>**ApplicationManagement/AllowAllTrustedApps**  
Specifies whether non Windows Store apps are allowed.

The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

Most restricted value is 0.

<a href="" id="applicationmanagement-allowappstoreautoupdate"></a>**ApplicationManagement/AllowAppStoreAutoUpdate**  
Specifies whether automatic update of apps from Windows Store are allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="applicationmanagement-allowdeveloperunlock"></a>**ApplicationManagement/AllowDeveloperUnlock**  
Specifies whether developer unlock is allowed.

The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

Most restricted value is 0.

<a href="" id="applicationmanagement-allowgamedvr"></a>**ApplicationManagement/AllowGameDVR**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Specifies whether DVR and broadcasting is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="applicationmanagement-allowshareduserappdata"></a>**ApplicationManagement/AllowSharedUserAppData**  
Specifies whether multiple users of the same app can share data.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

Most restricted value is 0.

<a href="" id="applicationmanagement-allowstore"></a>**ApplicationManagement/AllowStore**  
Specifies whether app store is allowed at the device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="applicationmanagement-applicationrestrictions"></a>**ApplicationManagement/ApplicationRestrictions**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-configuration-service-provider.md) instead.

 

An XML blob that specifies the application restrictions company want to put to the device. It could be an app allow list, app disallow list, allowed publisher IDs, and so on. For a list of Windows apps and product IDs, see [inbox apps](applocker-configuration-service-provider.md#inbox-apps). For more information about the XML, see the [ApplicationRestrictions XSD](applicationrestrictions-xsd.md).

**Note**  
When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-configuration-service-provider.md#inbox-apps) that you need to your list of allowed apps.

Here's additional guidance for the upgrade process:

-   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-configuration-service-provider.md#inbox-apps).
-   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows Phone 8.1 publisher if you are using it.
-   In the SyncML, you must use lowercase product ID.
-   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.
-   You cannot disable or enable **Contact Support** and **Windows Feedback** apps using ApplicationManagement/ApplicationRestrictions policy, although these are listed in the [inbox apps](applocker-configuration-service-provider.md#inbox-apps).

 

An application that is running may not be immediately terminated.

Value type is chr.

Value evaluation rule - The information for PolicyManager is opaque. There is no most restricted value evaluation. Whenever there is a change to the value, the device parses the node value and enforces specified policies.

<a href="" id="applicationmanagement-disablestoreoriginatedapps"></a>**ApplicationManagement/DisableStoreOriginatedApps**  
Added in Windows 10, version 1607. Boolean value that disables the launch of all apps from Windows Store that came pre-installed or were downloaded.

The following list shows the supported values:

-   0 (default) – Enable launch of apps.
-   1 – Disable launch of apps.

<a href="" id="applicationmanagement-requireprivatestoreonly"></a>**ApplicationManagement/RequirePrivateStoreOnly**  
Allows disabling of the retail catalog and only enables the Private store.

**Important**  
This node must be accessed using the following paths:

-   **./User/Vendor/MSFT/Policy/Config/ApplicationManagement/RequirePrivateStoreOnly** to set the policy.
-   **./User/Vendor/MSFT/Policy/Result/ApplicationManagement/RequirePrivateStoreOnly** to get the result.

 

The following list shows the supported values:

-   0 (default) – Allow both public and Private store.
-   1 – Only Private store is enabled.

This is a per user policy.

Most restricted value is 1.

<a href="" id="applicationmanagement-restrictappdatatosystemvolume"></a>**ApplicationManagement/RestrictAppDataToSystemVolume**  
Specifies whether application data is restricted to the system drive.

The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

Most restricted value is 0.

<a href="" id="applicationmanagement-restrictapptosystemvolume"></a>**ApplicationManagement/RestrictAppToSystemVolume**  
Specifies whether the installation of applications is restricted to the system drive.

The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

Most restricted value is 0.

<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.

**Important**  
This node must be accessed using the following paths:

-   **./User/Vendor/MSFT/Policy/Config/Authentication/AllowEAPCertSSO** to set the policy.
-   **./User/Vendor/MSFT/Policy/Result/Authentication/AllowEAPCertSSO** to get the result.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="authentication-allowfastreconnect"></a>**Authentication/AllowFastReconnect**  
Allows EAP Fast Reconnect from being attempted for EAP Method TLS.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  
Added inWindows 10, version 1607. Allows secondary authentication devices to work with Windows.

The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premise only environment, cloud domain-joined in a hybrid environment, and BYOD).

<a href="" id="bitlocker-encryptionmethod"></a>**Bitlocker/EncryptionMethod**  
Specifies the BitLocker Drive Encryption method and cipher strength.

The following list shows the supported values:

-   3- AES 128-bit
-   4- AES 256
-   6 -XTS 128
-   7 - XTS 256

<a href="" id="bluetooth-allowadvertising"></a>**Bluetooth/AllowAdvertising**  
Specifies whether the device can send out Bluetooth advertisements.

The following list shows the supported values:

-   0 – Not allowed. When set to 0, the device will not send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is not received by the peripheral.
-   1 (default) – Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral.

If this is not set or it is deleted, the default value of 1 (Allow) is used.

Most restricted value is 0.

<a href="" id="bluetooth-allowdiscoverablemode"></a>**Bluetooth/AllowDiscoverableMode**  
Specifies whether other Bluetooth-enabled devices can discover the device.

The following list shows the supported values:

-   0 – Not allowed. When set to 0, other devices will not be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you cannot see the name of the device.
-   1 (default) – Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it.

If this is not set or it is deleted, the default value of 1 (Allow) is used.

Most restricted value is 0.

<a href="" id="bluetooth-allowprepairing"></a>**Bluetooth/AllowPrepairing**  
Specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default)– Allowed.

<a href="" id="bluetooth-localdevicename"></a>**Bluetooth/LocalDeviceName**  
Sets the local Bluetooth device name.

If this is set, the value that it is set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified.

If this policy is not set or it is deleted, the default local radio name is used.

<a href="" id="bluetooth-servicesallowedlist"></a>**Bluetooth/ServicesAllowedList**  
Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7CAA-436C-8BF0-78CD0FFBD4AF}.

The default value is an empty string.

<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**  
Specifies whether autofill on websites is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is greyed out.

<a href="" id="browser-allowbrowser"></a>**Browser/AllowBrowser**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-configuration-service-provider.md) instead.

 

Specifies whether the browser is allowed on the device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

When this policy is set to 0 (not allowed), the Microsoft Edge for Windows 10 Mobile tile will appear greyed out, and clicking on the tile will display a message indicating theat Internet browsing has been disabled by your administrator.

<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**  
Specifies whether cookies are allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is greyed out.

<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Specifies whether employees can use F12 Developer Tools on Microsoft Edge. Turning this setting on, or not configuring it, lets employees use F12 Developer Tools. Turning this setting off stops employees from using F12 Developer Tools.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**  
Specifies whether Do Not Track headers are allowed.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

Most restricted value is 1.

To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is greyed out.

<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**  
Added in Windows 10, version 1607. Specifies whether Microsoft Edge extensions are allowed.

The following list shows the supported values:

-   0– Not allowed.
-   1 (default) – Allowed.

<a href="" id="browser-allowinprivate"></a>**Browser/AllowInPrivate**  
Specifies whether InPrivate browsing is allowed on corporate networks.

The following list shows the supported values:

-   0– Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**  
Specifies whether saving and managing passwords locally on the device is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

To verify AllowPasswordManager is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the settings **Offer to save password** and **Manage my saved passwords** are greyed out.

<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**  
Specifies whether pop-up blocker is allowed or enabled.

The following list shows the supported values:

-   0 (default) – Pop-up blocker is not allowed. It means that pop-up browser windows are allowed.
-   1 – Pop-up blocker is allowed or enabled. It means that pop-up browser windows are blocked.

Most restricted value is 1.

To verify AllowPopups is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Block pop-ups** is greyed out.

<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**  
Specifies whether search suggestions are allowed in the address bar.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="browser-allowsmartscreen"></a>**Browser/AllowSmartScreen**  
Specifies whether SmartScreen is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 1.

To verify AllowSmartScreen is set to 0 (not allowed):

1.  Open Microsoft EdgeorMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Help protect me from malicious sites and download with SmartScreen Filter** is greyed out.

<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to specify an URL of an enterprise site list.

The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL location of the enterprise site list.

<a href="" id="browser-firstrunurl"></a>**Browser/FirstRunURL**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies the URL that Microsoft Edge for Windows 10 Mobile. will use when it is opened the first time.

The data type is a string.

The default value is an empty string. Otherwise, the string should contain the URL of the web page users will see the first time Microsoft Edge is run. For example, “contoso.com”.

<a href="" id="browser-homepages"></a>**Browser/Homepages**  
**Note**  This policy is only available for Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Specifies your Home pages for MDM-enrolled devices. Users can change this setting. Turning this setting on lets you configure one or more corporate Home pages. If this setting is turned on, you must also include URLs to the pages, separating multiple pages by using the XML-escaped characters **&lt;** and **&gt;**. For example, "&lt;support.contoso.com&gt;&lt;support.microsoft.com&gt;"

Starting in Windows 10, version 1607, this policy will be enforced so that the Home pages specified by this policy cannot be changed by the users.

**Note**  Turning this setting off, or not configuring it, sets your default Home page to the web page specified in App settings.

 

<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**  
Specifies whether users can access the about:flags page, which is used to change developer settings and to enable experimental features.

The following list shows the supported values:

-   0 (default) – Users can access the about:flags page in Microsoft Edge.
-   1 – Users can't access the about:flags page in Microsoft Edge.

<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**  
Specifies whether users can override the SmartScreen Filter warnings about potentially malicious websites.

The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

Turning this setting on stops users from ignoring the SmartScreen Filter warnings and blocks them from going to the site. Turning this setting off, or not configuring it, lets users ignore the SmartScreen Filter warnings about potentially malicious websites and to continue to the site.

<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**  
Specifies whether users can override the SmartScreen Filter warnings about downloading unverified files. Turning this setting on stops users from ignoring the SmartScreen Filter warnings and blocks them from downloading unverified files. Turning this setting off, or not configuring it, lets users ignore the SmartScreen Filter warnings about unverified files and lets them continue the download process.

The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Specifies whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. Turning this setting on hides an user’s localhost IP address while making phone calls using WebRTC. Turning this setting off, or not configuring it, shows an user’s localhost IP address while making phone calls using WebRTC.

The following list shows the supported values:

-   0 (default) – The localhost IP address is shown.
-   1 – The localhost IP address is hidden.

<a href="" id="browser-sendintranettraffictointernetexplorer"></a>**Browser/SendIntranetTraffictoInternetExplorer**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Specifies whether to send intranet traffic over to Internet Explorer.

The following list shows the supported values:

-   0 (default) – Intranet traffic is sent to Internet Explorer.
-   1 – Intranet traffic is sent to Microsoft Edge.

Most restricted value is 0.

<a href="" id="browser-showmessagewhenopeningsitesininternetexplorer"></a>**Browser/ShowMessageWhenOpeningSitesInInternetExplorer**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Added inWindows 10, version 1607. Specifies whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List.

The following list shows the supported values:

-   0 (default) – Interstitial pages are not shown.
-   1 – Interstitial pages are shown.

Most restricted value is 0.

<a href="" id="camera-allowcamera"></a>**Camera/AllowCamera**  
Disables or enables the camera.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**  
Allows the user to enable Bluetooth or restrict access.

The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be greyed out and the user will not be able to turn Bluetooth on.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

    **Note**  This value is not supported in Windows Phone 8.1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile.

     

-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

If this is not set or it is deleted, the default value of 2 (Allow) is used.

Most restricted value is 0.

<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**  
Allows the cellular data channel on the device. Device reboot is not required to enforce the policy.

The following list shows the supported values:

-   0 – Do not allow the cellular data channel. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user cannot turn it off.

<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**  
Allows or disallows cellular data roaming on the device. Device reboot is not required to enforce the policy.

The following list shows the supported values:

-   0 – Do not allow cellular data roaming. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user cannot turn it off.

Most restricted value is 0.

To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

To validate on mobile devices, do the following:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<a href="" id="connectivity-allownfc"></a>**Connectivity/AllowNFC**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Allows or disallows near field communication (NFC) on the device.

The following list shows the supported values:

-   0 – Do not allow NFC capabilities.
-   1 (default) – Allow NFC capabilities.

Most restricted value is 0.

<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy does not affect USB charging.

Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**  
Specifies what type of underlying connections VPN is allowed to use.

The following list shows the supported values:

-   0 – VPN is not allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

Most restricted value is 0.

<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**  
Prevents the device from connecting to VPN when the device roams over cellular networks.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="cryptography-allowfipsalgorithmpolicy"></a>**Cryptography/AllowFipsAlgorithmPolicy**  
Allows or disallows the Federal Information Processing Standard (FIPS) policy.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1– Allowed.

<a href="" id="cryptography-tlsciphersuites"></a>**Cryptography/TLSCipherSuites**  
Lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.

<a href="" id="dataprotection-allowdirectmemoryaccess"></a>**DataProtection/AllowDirectMemoryAccess**  
Allows Direct Memory Access.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="dataprotection-legacyselectivewipeid"></a>**DataProtection/LegacySelectiveWipeID**  
**Important**  This policy may change in a future release. It may be used for testing purposes, but should not be used in a production environment at this time.

 

Setting used by Windows 8.1 Selective Wipe.

**Note**  This policy is not recommended for use in Windows 10.

 

<a href="" id="defender-allowarchivescanning"></a>**Defender/AllowArchiveScanning**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows scanning of archives.

The following list shows the supported values:

-   0 – Allowed.
-   1 (default) – Not allowed.

<a href="" id="defender-allowbehaviormonitoring"></a>**Defender/AllowBehaviorMonitoring**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender Behavior Monitoring functionality.

The following list shows the supported values:

-   0 – Allowed.
-   1 (default) – Not allowed.

<a href="" id="defender-allowcloudprotection"></a>**Defender/AllowCloudProtection**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowemailscanning"></a>**Defender/AllowEmailScanning**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows scanning of email.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<a href="" id="defender-allowfullscanonmappednetworkdrives"></a>**Defender/AllowFullScanOnMappedNetworkDrives**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows a full scan of mapped network drives.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<a href="" id="defender-allowfullscanremovabledrivescanning"></a>**Defender/AllowFullScanRemovableDriveScanning**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows a full scan of removable drives.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowintrusionpreventionsystem"></a>**Defender/AllowIntrusionPreventionSystem**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender Intrusion Prevention functionality.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowioavprotection"></a>**Defender/AllowIOAVProtection**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender IOAVP Protection functionality.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowonaccessprotection"></a>**Defender/AllowOnAccessProtection**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender On Access Protection functionality.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowrealtimemonitoring"></a>**Defender/AllowRealtimeMonitoring**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender Realtime Monitoring functionality.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowscanningnetworkfiles"></a>**Defender/AllowScanningNetworkFiles**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows a scanning of network files.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowscriptscanning"></a>**Defender/AllowScriptScanning**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows Windows Defender Script Scanning functionality.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowuseruiaccess"></a>**Defender/AllowUserUIAccess**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-avgcpuloadfactor"></a>**Defender/AVGCPULoadFactor**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Represents the average CPU load factor for the Windows Defender scan (in percent).

Valid values: 0–100

The default value is 50.

<a href="" id="defender-daystoretaincleanedmalware"></a>**Defender/DaysToRetainCleanedMalware**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Time period (in days) that quarantine items will be stored on the system.

Valid values: 0–90

The default value is 0, which keeps items in quarantine, and does not automatically remove them.

<a href="" id="defender-excludedextensions"></a>**Defender/ExcludedExtensions**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a **|**. For example, "lib|obj".

<a href="" id="defender-excludedpaths"></a>**Defender/ExcludedPaths**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a **|**. For example, "C:\\Example|C:\\Example1".

<a href="" id="defender-excludedprocesses"></a>**Defender/ExcludedProcesses**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows an administrator to specify a list of files opened by processes to ignore during a scan.

**Important**  The process itself is not excluded from the scan, but can be by using the **Defender/ExcludedPaths** policy to exclude its path.

 

Each file type must be separated by a **|**. For example, "C:\\Example.exe|C:\\Example1.exe".

<a href="" id="defender-puaprotection"></a>**Defender/PUAProtection**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer.

The following list shows the supported values:

-   0 (default) – PUA Protection off. Windows Defender will not protect against potentially unwanted applications.
-   1 – PUA Protection on. Detected items are blocked. They will show in history along with other threats.
-   2 – Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer.

<a href="" id="defender-realtimescandirection"></a>**Defender/RealTimeScanDirection**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Controls which sets of files should be monitored.

**Note**  If **AllowOnAccessProtection** is not allowed, then this configuration can be used to monitor specific files.

 

The following list shows the supported values:

-   0 (default) – Monitor all files (bi-directional).
-   1 – Monitor incoming files.
-   2 – Monitor outgoing files.

<a href="" id="defender-scanparameter"></a>**Defender/ScanParameter**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Selects whether to perform a quick scan or full scan.

The following list shows the supported values:

-   1 (default) – Quick scan
-   2 – Full scan

<a href="" id="defender-schedulequickscantime"></a>**Defender/ScheduleQuickScanTime**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Selects the time of day that the Windows Defender quick scan should run.

**Note**  The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 

Valid values: 0–1380

For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

The default value is 120

<a href="" id="defender-schedulescanday"></a>**Defender/ScheduleScanDay**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Selects the day that the Windows Defender scan should run.

**Note**  The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 

The following list shows the supported values:

-   0 (default) – Every day
-   1 – Monday
-   2 – Tuesday
-   3 – Wednesday
-   4 – Thursday
-   5 – Friday
-   6 – Saturday
-   7 – Sunday
-   8 – No scheduled scan

<a href="" id="defender-schedulescantime"></a>**Defender/ScheduleScanTime**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Selects the time of day that the Windows Defender scan should run.

**Note**  The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 

Valid values: 0–1380.

For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

The default value is 120.

<a href="" id="defender-signatureupdateinterval"></a>**Defender/SignatureUpdateInterval**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval.

Valid values: 0–24.

A value of 0 means no check for new signatures, a value of 1 means to check every hour, a value of 2 means to check every two hours, and so on, up to a value of 24, which means to check every day.

The default value is 8.

<a href="" id="defender-submitsamplesconsent"></a>**Defender/SubmitSamplesConsent**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Checks for the user consent level in Windows Defender to send data. If the required consent has already been granted, Windows Defender submits them. If not, (and if the user has specified never to ask), the UI is launched to ask for user consent (when **Defender/AllowCloudProtection** is allowed) before sending data.

The following list shows the supported values:

-   0 – Always prompt.
-   1 (default) – Send safe samples automatically.
-   2 – Never send.
-   3 – Send all samples automatically.

<a href="" id="defender-threatseveritydefaultaction"></a>**Defender/ThreatSeverityDefaultAction**  
**Note**  This policy is only enforced in Windows 10 for desktop.

 

Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.

This value is a list of threat severity level IDs and corresponding actions, separated by a**|** using the format "*threat level*=*action*|*threat level*=*action*". For example "1=6|2=2|4=10|5=3

The following list shows the supported values for threat severity levels:

-   1 – Low severity threats
-   2 – Moderate severity threats
-   4 – High severity threats
-   5 – Severe threats

The following list shows the supported values for possible actions:

-   1 – Clean
-   2 – Quarantine
-   3 – Remove
-   6 – Allow
-   8 – User defined
-   10 – Block

<a href="" id="deliveryoptimization-doabsolutemaxcachesize"></a>**DeliveryOptimization/DOAbsoluteMaxCacheSize**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the maximum size in GB of Delivery Optimization cache. This policy overrides the DOMaxCacheSize policy. The value 0 (zero) means "unlimited" cache. Delivery Optimization will clear the cache when the device is running low on disk space.

The default value is 10.

<a href="" id="deliveryoptimization-dodownloadmode"></a>**DeliveryOptimization/DODownloadMode**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps and App updates.

The following list shows the supported values:

-   0 –HTTP only, no peering.
-   1 (default) – HTTP blended with peering behind the same NAT.
-   2 – HTTP blended with peering across a private group. Peering occurs on devices in the same Active Directory Site (if it exists) or the same domain by default. When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2.
-   3 – HTTP blended with Internet peering.
-   99 - Simple download mode with no peering. Delivery Optimization downloads using HTTP only and does not attempt to contact the Delivery Optimization cloud services. Added in Windows 10, version 1607.
-   100 - Bypass mode. Do not use Delivery Optimization and use BITS instead. Added in Windows 10, version 1607.

<a href="" id="deliveryoptimization-dogroupid"></a>**DeliveryOptimization/DOGroupID**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

This Policy specifies an arbitrary group ID that the device belongs to. Use this if you need to create a single group for Local Network Peering for branches that are on different domains or are not on the same LAN. Note that this is a best effort optimization and should not be relied on for an authentication of identity.

**Note**  You must use a GUID as the group ID.

 

<a href="" id="deliveryoptimization-domaxcacheage"></a>**DeliveryOptimization/DOMaxCacheAge**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. The value 0 (zero) means "unlimited"; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size has not exceeded. The value 0 is new in Windows 10, version 1607.

The default value is 259200 seconds (3 days).

<a href="" id="deliveryoptimization-domaxcachesize"></a>**DeliveryOptimization/DOMaxCacheSize**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100).

The default value is 20.

<a href="" id="deliveryoptimization-domaxdownloadbandwidth"></a>**DeliveryOptimization/DOMaxDownloadBandwidth**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<a href="" id="deliveryoptimization-domaxuploadbandwidth"></a>**DeliveryOptimization/DOMaxUploadBandwidth**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization.

The default value is 0, which permits unlimited possible bandwidth (optimized for minimal usage of upload bandwidth).

<a href="" id="deliveryoptimization-dominbackgroundqos"></a>**DeliveryOptimization/DOMinBackgroundQos**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the minimum download QoS (Quality of Service or speed) in KiloBytes/sec for background downloads. This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from the HTTP source to achieve the minimum QoS value set.

The default value is 500.

<a href="" id="deliveryoptimization-domodifycachedrive"></a>**DeliveryOptimization/DOModifyCacheDrive**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the drive that Delivery Optimization should use for its cache. The drive location can be specified using environment variables, drive letter or using a full path.

By default, %SystemDrive% is used to store the cache.

<a href="" id="deliveryoptimization-domonthlyuploaddatacap"></a>**DeliveryOptimization/DOMonthlyUploadDataCap**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month.

The value 0 (zero) means "unlimited"; No monthly upload limit is applied if 0 is set.

The default value is 20.

<a href="" id="deliveryoptimization-dopercentagemaxdownloadbandwidth"></a>**DeliveryOptimization/DOPercentageMaxDownloadBandwidth**  
**Note**  This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607. Specifies the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.

The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<a href="" id="devicelock-allowidlereturnwithoutpassword"></a>**DeviceLock/AllowIdleReturnWithoutPassword**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether the user must input a PIN or password when the device resumes from an idle state.

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="devicelock-allowscreentimeoutwhilelockeduserconfig"></a>**DeviceLock/AllowScreenTimeoutWhileLockedUserConfig**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

**Important**  If this policy is set to 1 (Allowed), the value set by **DeviceLock/ScreenTimeOutWhileLocked** is ignored. To ensure enterprise control over the screen timeout, set this policy to 0 (Not allowed) and use **DeviceLock/ScreenTimeOutWhileLocked** to set the screen timeout period.

 

<a href="" id="devicelock-allowsimpledevicepassword"></a>**DeviceLock/AllowSimpleDevicePassword**  
Specifies whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords.

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-alphanumericdevicepasswordrequired"></a>**DeviceLock/AlphanumericDevicePasswordRequired**  
Determines the type of PIN or password required. This policy only applies if the **DeviceLock/DevicePasswordEnabled** policy is set to 0 (required).

**Note**  
This policy must be wrapped in an Atomic command.

Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education).

 

The following list shows the supported values:

-   0 – Alphanumeric PIN or password required.
-   1 – Numeric PIN or password required.
-   2 (default) – Users can choose: Numeric PIN or password, or Alphanumeric PIN or password.

**Note**  
If AlphanumericDevicePasswordRequired is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.

If AlphanumericDevicePasswordRequired is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

 

<a href="" id="devicelock-devicepasswordenabled"></a>**DeviceLock/DevicePasswordEnabled**  
Specifies whether device lock is enabled.

**Note**  
This policy must be wrapped in an Atomic command.

Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

 

The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

**Important**  
The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:

-   AllowSimpleDevicePassword
-   MinDevicePasswordLength
-   AlphanumericDevicePasswordRequired
-   MaxDevicePasswordFailedAttempts
-   MaxInactivityTimeDeviceLock
-   MinDevicePasswordComplexCharacters

 

**Important**  
If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:

-   MinDevicePasswordLength is set to 4
-   MinDevicePasswordComplexCharacters is set to 1

If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:

-   MinDevicePasswordLength
-   MinDevicePasswordComplexCharacters

 

<a href="" id="devicelock-devicepasswordexpiration"></a>**DeviceLock/DevicePasswordExpiration**  
Specifies when the password expires (in days).

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 730.
-   0 (default) - Passwords do not expire.

If all policy values = 0 then 0; otherwise, Min policy value is the most secure value.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-devicepasswordhistory"></a>**DeviceLock/DevicePasswordHistory**  
Specifies how many passwords can be stored in the history that can’t be used.

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 50.
-   0 (default)

The value includes the user's current password. This means that with a setting of 1 the user cannot reuse their current password when choosing a new password, while a setting of 5 means that a user cannot set their new password to their current password or any of their previous four passwords.

Max policy value is the most restricted.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-enforcelockscreenandlogonimage"></a>**DeviceLock/EnforceLockScreenAndLogonImage**  
Added inWindows 10, version 1607. Specifies the default lock screen and logon image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and logon screens. Users will not be able to change this image.

**Note**  This policy is only enforced in Windows 10 for desktop.

 

Value type is a string, which is the full image filepath and filename.

<a href="" id="devicelock-enforcelockscreenprovider"></a>**DeviceLock/EnforceLockScreenProvider**  
Added inWindows 10, version 1607. Restricts lock screen image to a specific lock screen provider. Users will not be able change this provider.

**Note**  This policy is only enforced in Windows 10 for mobile devices.

 

Value type is a string, which is the AppID.

<a href="" id="devicelock-maxdevicepasswordfailedattempts"></a>**DeviceLock/MaxDevicePasswordFailedAttempts**  
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

**Note**  This policy must be wrapped in an Atomic command.

 

This policy has different behaviors on the mobile device and desktop.

-   On a mobile device, when the user reaches the value set by this policy, then the device is wiped.
-   On a desktop, when the user reaches the value set by this policy, it is not wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker is not enabled, then the policy cannot be enforced.

    Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key.

The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for desktop and 0 &lt;= X &lt;= 999 for mobile devices.
-   0 (default) - The device is never wiped after an incorrect PIN or password is entered.

Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-maxinactivitytimedevicelock"></a>**DeviceLock/MaxInactivityTimeDeviceLock**  
Specifies the amount of time (in minutes) after the device is idle that will cause the device to become PIN or password locked.

**Note**  This policy must be wrapped in an Atomic command.

 

The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-mindevicepasswordcomplexcharacters"></a>**DeviceLock/MinDevicePasswordComplexCharacters**  
The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.

**Note**  
This policy must be wrapped in an Atomic command.

Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

 

PIN enforces the following behavior for desktop and mobile devices:

-   1 - Digits only
-   2 - Digits and lowercase letters are required
-   3 - Digits, lowercase letters, and uppercase letters are required
-   4 - Digits, lowercase letters, uppercase letters, and special characters are required

The default value is 1. The following list shows the supported values and actual enforced values:

| Account Type               | Supported Values | Actual Enforced Values |
|----------------------------|------------------|------------------------|
| Mobile                     | 1,2,3,4          | Same as the value set  |
| Desktop Local Accounts     | 1,2,3            | 3                      |
| Desktop Microsoft Accounts | 1,2              | 2                      |
| Desktop Domain Accounts    | Not supported    | Not supported          |

 

Enforced values for Local and Microsoft Accounts:

-   Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
-   Passwords for local accounts must meet the following minimum requirements:

    -   Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
    -   Be at least six characters in length
    -   Contain characters from three of the following four categories:

        -   English uppercase characters (A through Z)
        -   English lowercase characters (a through z)
        -   Base 10 digits (0 through 9)
        -   Special characters (!, $, \#, %, etc.)

The enforcement of policies for Microsoft accounts happen on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<a href="" id="devicelock-mindevicepasswordlength"></a>**DeviceLock/MinDevicePasswordLength**  
Specifies the minimum number or characters required in the PIN or password.

**Note**  
This policy must be wrapped in an Atomic command.

Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

 

The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for mobile devices and desktop. However, local accounts will always enforce a minimum password length of 6.
-   Not enforced.
-   The default value is 4 for mobile devices and desktop devices.

Max policy value is the most restricted.

For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<a href="" id="devicelock-screentimeoutwhilelocked"></a>**DeviceLock/ScreenTimeoutWhileLocked**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Allows an enterprise to set the duration in seconds for the screen timeout while on the lock screen of Windows 10 Mobile devices.

Minimum supported value is 10.

Maximum supported value is 1800.

The default value is 10.

<a href="" id="experience-allowcopypaste"></a>**Experience/AllowCopyPaste**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether copy and paste is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowcortana"></a>**Experience/AllowCortana**  
Specifies whether Cortana is allowed on the device. If you enable or don’t configure this setting, Cortana is allowed on the device. If you disable this setting, Cortana is turned off. When Cortana is off, users will still be able to use search to find items on the device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowdevicediscovery"></a>**Experience/AllowDeviceDiscovery**  
Allows users to turn on/off device discovery UX.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

When set to 0 , the projection pane is disabled. The Win+P and Win+K shortcut keys will not work on.

Most restricted value is 0.

<a href="" id="experience-allowmanualmdmunenrollment"></a>**Experience/AllowManualMDMUnenrollment**  
Specifies whether to allow the user to delete the workplace account using the workplace control panel.

**Note**  The MDM server can always remotely delete the account.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowscreencapture"></a>**Experience/AllowScreenCapture**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether screen capture is allowed.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowsimerrordialogpromptwhennosim"></a>**Experience/AllowSIMErrorDialogPromptWhenNoSIM**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether to display dialog prompt when no SIM card is detected.

The following list shows the supported values:

-   0 – SIM card dialog prompt is not displayed.
-   1 (default) – SIM card dialog prompt is displayed.

<a href="" id="experience-allowsyncmysettings"></a>**Experience/AllowSyncMySettings**  
Allows or disallows all Windows sync settings on the device. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

The following list shows the supported values:

-   0 – Sync settings is not allowed.
-   1 (default) – Sync settings allowed.

<a href="" id="experience-allowtaskswitcher"></a>**Experience/AllowTaskSwitcher**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Allows or disallows task switching on the device.

The following list shows the supported values:

-   0 – Task switching not allowed.
-   1 (default) – Task switching allowed.

<a href="" id="experience-allowthirdpartysuggestionsinwindowsspotlight"></a>**Experience/AllowThirdPartySuggestionsInWindowsSpotlight**  
**Note**  This policy is only available for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.

 

Specifies whether to allow app and content suggestions from third-party software publishers in Windows spotlight features like lock screen spotlight, suggested apps in the Start menu, and Windows tips. Users may still see suggestions for Microsoft features, apps, and services.

The following list shows the supported values:

-   0 – Third-party suggestions not allowed.
-   1 (default) – Third-party suggestions allowed.

<a href="" id="experience-allowvoicerecording"></a>**Experience/AllowVoiceRecording**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether voice recording is allowed for apps.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowwindowsconsumerfeatures"></a>**Experience/AllowWindowsConsumerFeatures**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

This policy allows IT admins to turn on experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.

**Important**  
This node must be accessed using the following paths:

-   **./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsConsumerFeatures** to set the policy.
-   **./User/Vendor/MSFT/Policy/Result/Experience/AllowWindowsConsumerFeatures** to get the result.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowwindowsspotlight"></a>**Experience/AllowWindowsSpotlight**  
**Note**  This policy is only available for Windows 10 Enterprise and Windows 10 Education.

 

Specifies whether to turn off all Windows spotlight features at once. If you enable this policy setting, Windows spotlight on lock screen, Windows Tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices. If you disable or do not configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="experience-allowwindowstips"></a>**Experience/AllowWindowsTips**  
Enables or disables Windows Tips / soft landing.

The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<a href="" id="experience-configurewindowsspotlightonlockscreen"></a>**Experience/ConfigureWindowsSpotlightOnLockScreen**  
**Note**  This policy is only available for Windows 10 Enterprise and Windows 10 Education.

 

Allows IT admins to specify whether spotlight should be used on the user's lock screen. If you select 2 (Windows spotlight with Enterprise spotlight enabled) and your organization has setup an Enterprise spotlight content service in Azure, the lock screen will display internal messages and communications configured in that service, when available. If your organization does not have an Enterprise spotlight content service, then this policy will behave the same as a setting of 1.

The following list shows the supported values:

-   0 – None.
-   1 (default) – Windows spotlight enabled.
-   2 – Windows Spotlight with Enterprise spotlight enabled.

<a href="" id="experience-donotshowfeedbacknotifications"></a>**Experience/DoNotShowFeedbackNotifications**  
Prevents devices from showing feedback questions from Microsoft.

If you enable this policy setting, users will no longer see feedback notifications through the Feedback hub app. If you disable or do not configure this policy setting, users may see notifications through the Feedback hub app asking users for feedback.

If you disable or do not configure this policy setting, users can control how often they receive feedback questions.

The following list shows the supported values:

-   0 (default) – Feedback notifications are not disabled. The actual state of feedback notifications on the device will then depend on what GP has configured or what the user has configured locally.
-   1 – Feedback notifications are disabled.

<a href="" id="licensing-allowwindowsentitlementreactivation"></a>**Licensing/AllowWindowsEntitlementReactivation**  
Added in Windows 10, version 1607. Enables or Disable Windows license reactivation on managed devices.

The following list shows the supported values:

-   0 – Disable Windows license reactivation on managed devices.
-   1 (default) – Enable Windows license reactivation on managed devices.

<a href="" id="licensing-disallowkmsclientonlineavsvalidation"></a>**Licensing/DisallowKMSClientOnlineAVSValidation**  
Added in Windows 10, version 1607. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.

The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<a href="" id="lockdown-allowedgeswipe"></a>**LockDown/AllowEdgeSwipe**  
Added in Windows 10, version 1607. Allows the user to invoke any system user interface by swiping in from any screen edge using touch.

The following list shows the supported values:

-   0 - disallow edge swipe.
-   1 (default, not configured) - allow edge swipe.

The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied. And then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange. That will also be disabled.

<a href="" id="maps-enableofflinemapsautoupdate"></a>**Maps/EnableOfflineMapsAutoUpdate**  
Added in Windows 10, version 1607. Disables the automatic download and update of map data.

The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force off auto-update.
-   1 – Enabled. Force on auto-update.

After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<a href="" id="maps-allowofflinemapsdownloadovermeteredconnection"></a>**Maps/AllowOfflineMapsDownloadOverMeteredConnection**  
Added in Windows 10, version 1607. Allows the download and update of map data over metered connections.

The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force disable auto-update over metered connection.
-   1 – Enabled. Force enable auto-update over metered connection.

After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<a href="" id="messaging-allowmessagesync"></a>**Messaging/AllowMessageSync**  
Added in Windows 10, version 1607. Enables text message back up and restore and Messaging Everywhere. This policy allows an organization to disable these features to avoid information being stored on servers outside of their control.

The following list shows the supported values:

-   0 - message sync is not allowed and cannot be changed by the user.
-   1 - message sync is allowed. The user can change this setting.

<a href="" id="networkisolation-enterprisecloudresources"></a>**NetworkIsolation/EnterpriseCloudResources**  
Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the **EnterpriseInternalProxyServers** policy. This domain list is a pipe-separated list of cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address. For example, **&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|**.

<a href="" id="networkisolation-enterpriseinternalproxyservers"></a>**NetworkIsolation/EnterpriseInternalProxyServers**  
This is the comma-separated list of internal proxy servers. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the **EnterpriseCloudResources** policy to force traffic to the matched cloud resources through these proxies.

<a href="" id="networkisolation-enterpriseiprange"></a>**NetworkIsolation/EnterpriseIPRange**  
Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of IPv4 and IPv6 ranges. For example:

``` syntax
10.0.0.0-10.255.255.255,157.54.0.0-157.54.255.255,
192.168.0.0-192.168.255.255,2001:4898::-2001:4898:7fff:ffff:ffff:ffff:ffff:ffff,
2001:4898:dc05::-2001:4898:dc05:ffff:ffff:ffff:ffff:ffff,
2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,
fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
       
```

<a href="" id="networkisolation-enterpriseiprangesareauthoritative"></a>**NetworkIsolation/EnterpriseIPRangesAreAuthoritative**  
Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets.

<a href="" id="networkisolation-enterprisenetworkdomainnames"></a>**NetworkIsolation/EnterpriseNetworkDomainNames**  
This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of domains, for example "contoso.sharepoint.com, Fabrikam.com".

**Note**  The client requires domain name to be canonical, otherwise the setting will be rejected by the client.

 

Here are the steps to create canonical domain names:

1.  Transform the ASCII characters (A-Z only) to lower case. For example, Microsoft.COM -&gt; microsoft.com.
2.  Call [IdnToAscii](https://msdn.microsoft.com/library/windows/desktop/dd318149.aspx) with IDN\_USE\_STD3\_ASCII\_RULES as the flags.
3.  Call [IdnToUnicode](https://msdn.microsoft.com/library/windows/desktop/dd318151.aspx) with no flags set (dwFlags = 0).

<a href="" id="networkisolation-enterpriseproxyservers"></a>**NetworkIsolation/EnterpriseProxyServers**  
This is a comma-separated list of proxy servers. Any server on this list is considered non-enterprise. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59".

<a href="" id="networkisolation-enterpriseproxyserversareauthoritative"></a>**NetworkIsolation/EnterpriseProxyServersAreAuthoritative**  
Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies.

<a href="" id="networkisolation-neutralresources"></a>**NetworkIsolation/NeutralResources**  
List of domain names that can used for work or personal resource.

<a href="" id="notifications-disallownotificationmirroring"></a>**Notifications/DisallowNotificationMirroring**  
Added in Windows 10, version 1607. Boolean value that turns off notification mirroring.

For each user logged into the device, if you enable this policy (set value to 1) the app and system notifications received by this user on this device will not get mirrored to other devices of the same logged in user. If you disable or do not configure this policy (set value to 0) the notifications received by this user on this device will be mirrored to other devices of the same logged in user. This feature can be turned off by apps that do not want to participate in Notification Mirroring. This feature can also be turned off by the user in the Cortana setting page.

No reboot or service restart is required for this policy to take effect.

The following list shows the supported values:

-   0 (default)– disable notification mirroring.
-   1 – enable notification mirroring.

<a href="" id="privacy-allowautoacceptpairingandprivacyconsentprompts"></a>**Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts**  
Allows or disallows the automatic acceptance of the pairing and privacy user consent dialog when launching apps.

The following list shows the supported values:

-   0 (default)– Not allowed.
-   1 – Allowed.

Most restricted value is 0.

<a href="" id="privacy-allowinputpersonalization"></a>**Privacy/AllowInputPersonalization**  
Allows or disallows the input of personally identifiable information to leave devices or save locally (Cortana, Typing, Inking, Speech, Dictation, etc.)

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

**Note**  In the current release of Windows 10 Mobile, setting this policy to 0 will not remove the list of contact names on the device from the list of typable candidates. This will be fixed in a future release.

 

<a href="" id="privacy-disableadvertisingid"></a>**Privacy/DisableAdvertisingId**  
Added in Windows 10, version 1607. Enables or disables the Advertising ID.

The following list shows the supported values:

-   0 – Disabled.
-   1 – Enabled.
-   65535 (default)- Not configured.

Most restricted value is 0.

<a href="" id="privacy-letappsaccessaccountinfo"></a>**Privacy/LetAppsAccessAccountInfo**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access account information.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessaccountinfo-forceallowtheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccessaccountinfo-forcedenytheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccessaccountinfo-userincontroloftheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the account information privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar"></a>**Privacy/LetAppsAccessCalendar**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access the calendar.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesscalendar-forceallowtheseapps"></a>**Privacy/LetAppsAccessCalendar\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar-forcedenytheseapps"></a>**Privacy/LetAppsAccessCalendar\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCalendar\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the calendar privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory"></a>**Privacy/LetAppsAccessCallHistory**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access call history.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesscallhistory-forceallowtheseapps"></a>**Privacy/LetAppsAccessCallHistory\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory-forcedenytheseapps"></a>**Privacy/LetAppsAccessCallHistory\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCallHistory\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the call history privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscamera"></a>**Privacy/LetAppsAccessCamera**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access the camera.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesscamera-forceallowtheseapps"></a>**Privacy/LetAppsAccessCamera\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscamera-forcedenytheseapps"></a>**Privacy/LetAppsAccessCamera\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscamera-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCamera\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the camera privacy setting for the listed apps. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts"></a>**Privacy/LetAppsAccessContacts**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access contacts.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesscontacts-forceallowtheseapps"></a>**Privacy/LetAppsAccessContacts\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts-forcedenytheseapps"></a>**Privacy/LetAppsAccessContacts\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts-userincontroloftheseapps"></a>**Privacy/LetAppsAccessContacts\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the contacts privacy setting for the listed apps. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail"></a>**Privacy/LetAppsAccessEmail**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access email.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessemail-forceallowtheseapps"></a>**Privacy/LetAppsAccessEmail\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail-forcedenytheseapps"></a>**Privacy/LetAppsAccessEmail\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail-userincontroloftheseapps"></a>**Privacy/LetAppsAccessEmail\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the email privacy setting for the listed apps. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation"></a>**Privacy/LetAppsAccessLocation**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access location.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesslocation-forceallowtheseapps"></a>**Privacy/LetAppsAccessLocation\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation-forcedenytheseapps"></a>**Privacy/LetAppsAccessLocation\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation-userincontroloftheseapps"></a>**Privacy/LetAppsAccessLocation\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the location privacy setting for the listed apps. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging"></a>**Privacy/LetAppsAccessMessaging**  
Added inWindows 10, version 1607. Specifies whether Windows apps can read or send messages (text or MMS).

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessmessaging-forceallowtheseapps"></a>**Privacy/LetAppsAccessMessaging\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging-forcedenytheseapps"></a>**Privacy/LetAppsAccessMessaging\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMessaging\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the messaging privacy setting for the listed apps. This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone"></a>**Privacy/LetAppsAccessMicrophone**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access the microphone.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessmicrophone-forceallowtheseapps"></a>**Privacy/LetAppsAccessMicrophone\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone-forcedenytheseapps"></a>**Privacy/LetAppsAccessMicrophone\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMicrophone\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the microphone privacy setting for the listed apps. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion"></a>**Privacy/LetAppsAccessMotion**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access motion data.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessmotion-forceallowtheseapps"></a>**Privacy/LetAppsAccessMotion\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion-forcedenytheseapps"></a>**Privacy/LetAppsAccessMotion\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMotion\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the motion privacy setting for the listed apps. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications"></a>**Privacy/LetAppsAccessNotifications**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access notifications.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessnotifications-forceallowtheseapps"></a>**Privacy/LetAppsAccessNotifications\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications-forcedenytheseapps"></a>**Privacy/LetAppsAccessNotifications\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications-userincontroloftheseapps-"></a>**Privacy/LetAppsAccessNotifications\_UserInControlOfTheseApps**   
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the notifications privacy setting for the listed apps. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone"></a>**Privacy/LetAppsAccessPhone**  
Added inWindows 10, version 1607. Specifies whether Windows apps can make phone calls.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessphone-forceallowtheseapps"></a>**Privacy/LetAppsAccessPhone\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone-forcedenytheseapps"></a>**Privacy/LetAppsAccessPhone\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessPhone\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the phone call privacy setting for the listed apps. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios"></a>**Privacy/LetAppsAccessRadios**  
Added inWindows 10, version 1607. Specifies whether Windows apps have access to control radios.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccessradios-forceallowtheseapps"></a>**Privacy/LetAppsAccessRadios\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios-forcedenytheseapps"></a>**Privacy/LetAppsAccessRadios\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios-userincontroloftheseapps"></a>**Privacy/LetAppsAccessRadios\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the radios privacy setting for the listed apps. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices"></a>**Privacy/LetAppsAccessTrustedDevices**  
Added inWindows 10, version 1607. Specifies whether Windows apps can access trusted devices.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappsaccesstrusteddevices-forceallowtheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices-forcedenytheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'trusted devices' privacy setting for the listed apps. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices"></a>**Privacy/LetAppsSyncWithDevices**  
Added inWindows 10, version 1607. Specifies whether Windows apps can sync with devices.

The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

Most restricted value is 2.

<a href="" id="privacy-letappssyncwithdevices-forceallowtheseapps"></a>**Privacy/LetAppsSyncWithDevices\_ForceAllowTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices-forcedenytheseapps"></a>**Privacy/LetAppsSyncWithDevices\_ForceDenyTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices-userincontroloftheseapps"></a>**Privacy/LetAppsSyncWithDevices\_UserInControlOfTheseApps**  
Added inWindows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'sync with devices' privacy setting for the listed apps. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="search-allowindexingencryptedstoresoritems"></a>**Search/AllowIndexingEncryptedStoresOrItems**  
Allows or disallows the indexing of items. This switch is for the Windows Search Indexer, which controls whether it will index items that are encrypted, such as the Windows Information Protection (WIP) protected files.

When the policy is enabled, WIP protected items are indexed and the metadata about them are stored in an unencrypted location. The metadata includes things like file path and date modified.

When the policy is disabled, the WIP protected items are not indexed and do not show up in the results in Cortana or file explorer. There may also be a performance impact on photos and Groove apps if there are a lot of WIP protected media files on the device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="search-allowsearchtouselocation"></a>**Search/AllowSearchToUseLocation**  
Specifies whether search can leverage location information.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="search-allowusingdiacritics"></a>**Search/AllowUsingDiacritics**  
Allows the use of diacritics.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="search-alwaysuseautolangdetection"></a>**Search/AlwaysUseAutoLangDetection**  
Specifies whether to always use automatic language detection when indexing content and properties.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="search-disablebackoff"></a>**Search/DisableBackoff**  
If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.

The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<a href="" id="search-disableremovabledriveindexing"></a>**Search/DisableRemovableDriveIndexing**  
This policy setting configures whether or not locations on removable drives can be added to libraries.

If you enable this policy setting, locations on removable drives cannot be added to libraries. In addition, locations on removable drives cannot be indexed.

If you disable or do not configure this policy setting, locations on removable drives can be added to libraries. In addition, locations on removable drives can be indexed.

The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<a href="" id="search-preventindexinglowdiskspacemb"></a>**Search/PreventIndexingLowDiskSpaceMB**  
Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 2147483647 MB.

Enable this policy if computers in your environment have extremely limited hard drive space.

When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.

The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<a href="" id="search-preventremotequeries"></a>**Search/PreventRemoteQueries**  
If enabled, clients will be unable to query this computer's index remotely. Thus, when they are browsing network shares that are stored on this computer, they will not search them using the index. If disabled, client search requests will use this computer's index..

The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<a href="" id="search-safesearchpermissions"></a>**Search/SafeSearchPermissions**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies what level of safe search (filtering adult content) is required.

The following list shows the supported values:

-   0 – Strict, highest filtering against adult content.
-   1 (default) – Moderate filtering against adult content (valid search results will not be filtered).

Most restricted value is 0.

<a href="" id="security-allowaddprovisioningpackage"></a>**Security/AllowAddProvisioningPackage**  
Specifies whether to allow the runtime configuration agent to install provisioning packages.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-allowautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**  
**Note**  This policy has been deprecated in Windows 10, version 1607

 

**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-allowmanualrootcertificateinstallation"></a>**Security/AllowManualRootCertificateInstallation**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether the user is allowed to manually install root and intermediate CA certificates.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="security-allowremoveprovisioningpackage"></a>**Security/AllowRemoveProvisioningPackage**  
Specifies whether to allow the runtime configuration agent to remove provisioning packages.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-antitheftmode"></a>**Security/AntiTheftMode**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Allows or disallow Anti Theft Mode on the device.

The following list shows the supported values:

-   0 – Don't allow Anti Theft Mode.
-   1 (default) – Anti Theft Mode will follow the default device configuration (region-dependent).

<a href="" id="security-preventautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Added in Windows 10, version 1607 to replace the deprecated policy **Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**.

Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

The following list shows the supported values:

-   0 (default) – Encryption enabled.
-   1 – Encryption disabled.

<a href="" id="security-requiredeviceencryption"></a>**Security/RequireDeviceEncryption**  
**Note**  This policy is only enforced in Windows 10 Mobile. In Windows 10 for desktop, you can query encryption status by using the [DeviceStatus CSP](devicestatus-csp.md) node **DeviceStatus/Compliance/EncryptionCompliance**.

 

Allows enterprise to turn on internal storage encryption.

**Important**  Bitlocker must be enabled on the device before using this policy.

 

The following list shows the supported values:

-   0 (default) – Encryption is not required.
-   1 – Encryption is required.

Most restricted value is 1.

**Important**  If encryption has been enabled, it cannot be turned off using this policy.

 

<a href="" id="security-requireprovisioningpackagesignature"></a>**Security/RequireProvisioningPackageSignature**  
Specifies whether provisioning packages must have a certificate signed by a device trusted authority.

The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<a href="" id="security-requireretrievehealthcertificateonboot"></a>**Security/RequireRetrieveHealthCertificateOnBoot**  
Specifies whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service (HAS) when a device boots or reboots.

The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

Setting this policy to 1 (Required):

-   Determines whether a device is capable of Remote Device Health Attestation, by verifying if the device has TPM 2.0.
-   Improves the performance of the device by enabling the device to fetch and cache data to reduce the latency during Device Health Verification.

**Note**  We recommend that this policy is set to Required after MDM enrollment.

 

Most restricted value is 1.

<a href="" id="settings-allowautoplay"></a>**Settings/AllowAutoPlay**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to change Auto Play settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

**Note**  Setting this policy to 0 (Not allowed) does not affect the autoplay dialog box that appears when a device is connected.

 

<a href="" id="settings-allowdatasense"></a>**Settings/AllowDataSense**  
Allows the user to change Data Sense settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowdatetime"></a>**Settings/AllowDateTime**  
Allows the user to change date and time settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-alloweditdevicename"></a>**Settings/AllowEditDeviceName**  
Allows editing of the device name.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowlanguage"></a>**Settings/AllowLanguage**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to change the language settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowpowersleep"></a>**Settings/AllowPowerSleep**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to change power and sleep settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowregion"></a>**Settings/AllowRegion**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to change the region settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowsigninoptions"></a>**Settings/AllowSignInOptions**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows the user to change sign-in options.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowvpn"></a>**Settings/AllowVPN**  
Allows the user to change VPN settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowworkplace"></a>**Settings/AllowWorkplace**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Allows user to change workplace settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowyouraccount"></a>**Settings/AllowYourAccount**  
Allows user to change account settings.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="speech-allowspeechmodelupdate"></a>**Speech/AllowSpeechModelUpdate**  
Added in Windows 10, version 1607. Specifies whether the device will receive updates to the speech recognition and speech synthesis models. A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. If enabled, the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="start-forcestartsize"></a>**Start/ForceStartSize**  
**Note**  This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 

Forces the start screen size.

The following list shows the supported values:

-   0 (default) – Do not force size of Start.
-   1 – Force non-fullscreen size of Start.
-   2 - Force a fullscreen size of Start.

If there is policy configuration conflict, the latest configuration request is applied to the device.

<a href="" id="start-startlayout"></a>**Start/StartLayout**  
**Important**  This node is set on a per-user basis and must be accessed using the following paths:
-   **./User/Vendor/MSFT/Policy/Config/Start/StartLayout** to configure the policy.
-   **./User/Vendor/MSFT/Policy/Result/Start/StartLayout** to query the current value of the policy.

 

Allows you to override the default Start layout and prevents the user from changing it.

This policy is described in [Start/StartLayout Examples](#startlayout-examples) later in this topic.

<a href="" id="system-allowbuildpreview"></a>**System/AllowBuildPreview**  
**Note**  This policy setting applies only to devices running Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, Windows 10 Mobile, and Windows 10 Mobile Enterprise.

 

This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. These controls are located under "Get Insider builds," and enable users to make their devices available for downloading and installing Windows preview software.

If you enable or do not configure this policy setting, users can download and install Windows preview software on their devices. If you disable this policy setting, the item "Get Insider builds" will be unavailable.

The following list shows the supported values:

-   0 – Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software.
-   1 – Allowed. Users can make their devices available for downloading and installing preview software.
-   2 (default) – Not configured. Users can make their devices available for downloading and installing preview software.

<a href="" id="system-allowembeddedmode"></a>**System/AllowEmbeddedMode**  
Specifies whether set general purpose device to be in embedded mode.

The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

Most restricted value is 0.

<a href="" id="system-allowexperimentation"></a>**System/AllowExperimentation**  
This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior.

The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Permits Microsoft to configure device settings only.
-   2 – Allows Microsoft to conduct full experimentations.

Most restricted value is 0.

<a href="" id="system-allowlocation"></a>**System/AllowLocation**  
Specifies whether to allow app access to the Location service.

The following list shows the supported values:

-   0 – Force Location Off. All Location Privacy settings are toggled off and greyed out. Users cannot change the settings, and no apps are allowed access to the Location service, including Cortana and Search.
-   1 (default) – Location service is allowed. The user has control and can change Location Privacy settings on or off.
-   2 – Force Location On. All Location Privacy settings are toggled on and greyed out. Users cannot change the settings and all consent permissions will be automatically suppressed.

Most restricted value is 0.

While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy.

When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting.

For example, an app's original Location setting is Off. The administrator then sets the **AllowLocation** policy to 2 (Force Location On.) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the **AllowLocation** policy back to 1 (User Control), the app will revert to using its original setting of Off.

<a href="" id="system-allowstoragecard"></a>**System/AllowStorageCard**  
Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card.

The following list shows the supported values:

-   0 – SD card use is not allowed. This does not prevent programmatic access to the storage card.
-   1 (default) – Allow a storage card.

Most restricted value is 0.

<a href="" id="system-allowtelemetry"></a>**System/AllowTelemetry**  
Allow the device to send diagnostic and usage telemetry data, such as Watson.

The following tables describe the supported values:

| Windows 8.1 Values                               |
|--------------------------------------------------|
| 0 – Not allowed                                  |
| 1 – Allowed, except for Secondary Data Requests. |
| 2 (default) – Allowed.                           |

 

<table>
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 10 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.</p>
<div class="alert">
<strong>Note</strong>  This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.</p></td>
</tr>
<tr class="odd">
<td><p>2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.</p></td>
</tr>
<tr class="even">
<td><p>3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.</p></td>
</tr>
</tbody>
</table>

 

**Important**  If you are using Windows 8.1 MDM server and set a value of 0 using the legacy AllowTelemetry policy on a Windows 10 Mobile device, then the value is not respected and the telemetry level is silently set to level 1.

 

Most restricted value is 0.

<a href="" id="system-allowusertoresetphone"></a>**System/AllowUserToResetPhone**  
**Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 

Specifies whether to allow the user to factory reset the phone by using control panel and hardware key combination.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed to reset to factory default settings.

Most restricted value is 0.

<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**  
Allows you to specify the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests. The format for this setting is *&lt;server&gt;:&lt;port&gt;*. The connection is made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if there is no proxy specified when this policy is enabled, the Connected User Experiences and Telemetry data will not be transmitted and will remain on the local device.

If you disable or do not configure this policy setting, Connected User Experiences and Telemetry will go to Microsoft using the default proxy configuration.

<a href="" id="textinput-allowimelogging"></a>**TextInput/AllowIMELogging**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowimenetworkaccess"></a>**TextInput/AllowIMENetworkAccess**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowinputpanel"></a>**TextInput/AllowInputPanel**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the IT admin to disable the touch/handwriting keyboard on Windows.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowjapaneseimesurrogatepaircharacters"></a>**TextInput/AllowJapaneseIMESurrogatePairCharacters**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the Japanese IME surrogate pair characters.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowjapaneseivscharacters"></a>**TextInput/AllowJapaneseIVSCharacters**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows Japanese Ideographic Variation Sequence (IVS) characters.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowjapanesenonpublishingstandardglyph"></a>**TextInput/AllowJapaneseNonPublishingStandardGlyph**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the Japanese non-publishing standard glyph.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowjapaneseuserdictionary"></a>**TextInput/AllowJapaneseUserDictionary**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the Japanese user dictionary.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowkoreanextendedhanja"></a>**TextInput/AllowKoreanExtendedHanja**  
This policy has been deprecated.

<a href="" id="textinput-allowlanguagefeaturesuninstall"></a>**TextInput/AllowLanguageFeaturesUninstall**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the uninstall of language features, such as spell checkers, on a device.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="textinput-allowlinguisticdatacollection"></a>**TextInput/AllowLinguisticDataCollection**  
Allows sending to Microsoft user text input data samples (anonymized) are collected for future language model improvements.

**Important**  Text input entered using specific input scope fields such as email address, login name, passwords, and phone numbers are excluded from any sampling.

 

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="textinput-excludejapaneseimeexceptjis0208"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the users to restrict character code range of conversion by setting the character filter.

The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 are filtered.

<a href="" id="textinput-excludejapaneseimeexceptjis0208andeudc"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the users to restrict character code range of conversion by setting the character filter.

The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 and EUDC are filtered.

<a href="" id="textinput-excludejapaneseimeexceptshiftjis"></a>**TextInput/ExcludeJapaneseIMEExceptShiftJIS**  
**Note**  The policy is only enforced in Windows 10 for desktop.

 

Allows the users to restrict character code range of conversion by setting the character filter.

The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except ShiftJIS are filtered.

<a href="" id="update-activehoursend"></a>**Update/ActiveHoursEnd**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursStart**) to manage a range of active hours where update reboots are not scheduled. This value sets the end time. There is a 12 hour maximum from start time.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default is 17 (5 PM).

<a href="" id="update-activehoursstart"></a>**Update/ActiveHoursStart**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursEnd**) to manage a range of hours where update reboots are not scheduled. This value sets the start time. There is a 12 hour maximum from start time.

Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

The default value is 8 (8 AM).

<a href="" id="update-allowautoupdate"></a>**Update/AllowAutoUpdate**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

Supported operations are Get and Replace.

The following list shows the supported values:

-   0 – Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end-users to manage data usage. With this option users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel.
-   1 – Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end-user is prompted to schedule the restart time. The end-user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end-user to control the start time reduces the risk of accidental data loss caused by applications that do not shutdown properly on restart.
-   2 (default) – Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart.
-   3 – Auto install and restart at a specified time. The IT specifies the installation day and time. If no day and time are specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is logged in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart.
-   4 – Auto install and restart without end-user control. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This setting option also sets the end-user control panel to read-only.
-   5 – Turn off automatic updates.

    **Important**  This option should be used only for systems under regulatory compliance, as you will not get security updates as well.

     

If the policy is not configured, end-users get the default behavior (Auto install and restart).

<a href="" id="update-allowmuupdateservice"></a>**Update/AllowMUUpdateService**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education

 

Added in Windows 10, version 1607. Allows the IT admin to manage whether to scan for app updates from Microsoft Update.

The following list shows the supported values:

-   0 – Not allowed or not configured.
-   1 – Allowed. Accepts updates received through Microsoft Update.

<a href="" id="update-allownonmicrosoftsignedupdate"></a>**Update/AllowNonMicrosoftSignedUpdate**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for 3rd party software and patch distribution.

Supported operations are Get and Replace.

The following list shows the supported values:

-   0 – Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft.
-   1 – Allowed. Accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.

This policy is specific to desktop and local publishing via WSUS for 3rd party updates (binaries and updates not hosted on Microsoft Update) and allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.

<a href="" id="update-allowupdateservice"></a>**Update/AllowUpdateService**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Windows Store.

Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Windows Store

Enabling this policy will disable that functionality, and may cause connection to public services such as the Windows Store to stop working.

The following list shows the supported values:

-   0 – Update service is not allowed.
-   1 (default) – Update service is allowed.

**Note**  This policy applies only when the desktop or device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.

 

<a href="" id="update-branchreadinesslevel"></a>**Update/BranchReadinessLevel**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Added in Windows 10, version 1607. Allows the IT admin to set which branch a device receives their updates from.

The following list shows the supported values:

-   16 (default) – User gets all applicable upgrades from Current Branch (CB).
-   32 – User gets upgrades from Current Branch for Business (CBB).

<a href="" id="update-deferfeatureupdatesperiodindays"></a>**Update/DeferFeatureUpdatesPeriodInDays**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

 

Added in Windows 10, version 1607. Defers Feature Updates for the specified number of days.

Supported values are 0-180.

<a href="" id="update-deferqualityupdatesperiodindays"></a>**Update/DeferQualityUpdatesPeriodInDays**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Added in Windows 10, version 1607. Defers Quality Updates for the specified number of days.

Supported values are 0-30.

<a href="" id="update-deferupdateperiod"></a>**Update/DeferUpdatePeriod**  
**Note**  
This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#new-update-policies). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.

 

Allows IT Admins to specify update delays for up to 4 weeks.

Supported values are 0-4, which refers to the number of weeks to defer updates.

In Windows 10 Mobile Enterprise version 1511 devices set to automatic updates, for DeferUpdatePeriod to work, you must set the following:

-   Update/RequireDeferUpgrade must be set to 1
-   System/AllowTelemetry must be set to 1 or higher

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the Allow Telemetry policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Update category</th>
<th>Maximum deferral</th>
<th>Deferral increment</th>
<th>Update type/notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>OS upgrade</p></td>
<td><p>8 months</p></td>
<td><p>1 month</p></td>
<td><p>Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</p></td>
</tr>
<tr class="even">
<td><p>Update</p></td>
<td><p>1 month</p></td>
<td><p>1 week</p></td>
<td><div class="alert">
<strong>Note</strong>  If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic.
</div>
<div>
 
</div>
<ul>
<li>Security Update - 0FA1201D-4330-4FA8-8AE9-B877473B6441</li>
<li>Critical Update - E6CF1350-C01B-414D-A61F-263D14D133B4</li>
<li>Update Rollup - 28BC880E-0592-4CBF-8F95-C79B17911D5F</li>
<li>Service Pack - 68C5B0A3-D1A6-4553-AE49-01D3A7827828</li>
<li>Tools - B4832BD8-E735-4761-8DAF-37F882276DAB</li>
<li>Feature Pack - B54E7D24-7ADD-428F-8B75-90A396FA584F</li>
<li>Update - CD5FFD1E-E932-4E3A-BF74-18BF0B1BBD83</li>
<li>Driver - EBFC1FC5-71A4-4F7B-9ACA-3B9A503104A0</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>Other/cannot defer</p></td>
<td><p>No deferral</p></td>
<td><p>No deferral</p></td>
<td><p>Any update category not specifically enumerated above falls into this category.</p>
<p>Definition Update - E0789628-CE08-4437-BE74-2495B842F43B</p></td>
</tr>
</tbody>
</table>

 

<a href="" id="update-deferupgradeperiod"></a>**Update/DeferUpgradePeriod**  
**Note**  
This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.

Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#new-update-policies). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.

 

Allows IT Admins to specify additional upgrade delays for up to 8 months.

Supported values are 0-8, which refers to the number of months to defer upgrades.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<a href="" id="update-excludewudriversinqualityupdate"></a>**Update/ExcludeWUDriversInQualityUpdate**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

 

Added in Windows 10, version 1607. Allows IT Admins to exclude Windows Update (WU) drivers during updates.

The following list shows the supported values:

-   0 (default) – Allow Windows Update drivers.
-   1 – Exclude Windows Update drivers.

<a href="" id="update-pausedeferrals"></a>**Update/PauseDeferrals**  
**Note**  
This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#new-update-policies). You can continue to use PauseDeferrals for Windows 10, version 1511 devices.

 

Allows IT Admins to pause updates and upgrades for up to 5 weeks. Paused deferrals will be reset after 5 weeks.

The following list shows the supported values:

-   0 (default) – Deferrals are not paused.
-   1 – Deferrals are paused.

If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<a href="" id="update-pausefeatureupdates"></a>**Update/PauseFeatureUpdates**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

 

Added in Windows 10, version 1607. Allows IT Admins to pause Feature Updates for up to 60 days.

The following list shows the supported values:

-   0 (default) – Feature Updates are not paused.
-   1 – Feature Updates are paused for 60 days or until value set to back to 0, whichever is sooner.

<a href="" id="update-pausequalityupdates"></a>**Update/PauseQualityUpdates**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Added in Windows 10, version 1607. Allows IT Admins to pause Quality Updates.

The following list shows the supported values:

-   0 (default) – Quality Updates are not paused.
-   1 – Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner.

<a href="" id="update-requiredeferupgrade"></a>**Update/RequireDeferUpgrade**  
**Note**  
This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#new-update-policies). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices.

 

Allows the IT admin to set a device to CBB train.

The following list shows the supported values:

-   0 (default) – User gets upgrades from Current Branch.
-   1 – User gets upgrades from Current Branch for Business.

<a href="" id="update-requireupdateapproval"></a>**Update/RequireUpdateApproval**  

**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

**Note**  If you previously used the **Update/PhoneUpdateRestrictions** policy in previous versions of Windows, it has been deprecated. Please use this policy instead.

 

Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end-user. EULAs are approved once an update is approved.

Supported operations are Get and Replace.

The following list shows the supported values:

-   0 – Not configured. The device installs all applicable updates.
-   1 – The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment.

<a href="" id="update-scheduledinstallday"></a>**Update/ScheduledInstallDay**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Enables the IT admin to schedule the day of the update installation.

The data type is a string.

Supported operations are Add, Delete, Get, and Replace.

The following list shows the supported values:

-   0 (default) – Every day
-   1 – Sunday
-   2 – Monday
-   3 – Tuesday
-   4 – Wednesday
-   5 – Thursday
-   6 – Friday
-   7 – Saturday

<a href="" id="update-scheduledinstalltime"></a>**Update/ScheduledInstallTime**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Enables the IT admin to schedule the time of the update installation.

The data type is a string.

Supported operations are Add, Delete, Get, and Replace.

Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM.

The default value is 3.

<a href="" id="update-updateserviceurl"></a>**Update/UpdateServiceUrl**  
**Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

 

Allows the device to check for updates from a WSUS server instead of Microsoft Update. This is useful for on-premise MDMs that need to update devices that cannot connect to the Internet.

Supported operations are Get and Replace.

The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL, such as `http://abcd-srv:8530`. The device checks for updates from the WSUS server at the specified URL.

Example

``` syntax
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Meta>
                    <Format>chr</Format>
                    <Type>text/plain</Type>
                </Meta>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/Update/UpdateServiceUrl</LocURI>
                </Target>
                <Data>http://abcd-srv:8530</Data>
            </Item>
        </Replace>
```

<a href="" id="wifi-allowautoconnecttowifisensehotspots"></a>**WiFi/AllowAutoConnectToWiFiSenseHotspots**  
Allow or disallow the device to automatically connect to Wi-Fi hotspots.

The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

Most restricted value is 0.

<a href="" id="wifi-allowinternetsharing"></a>**WiFi/AllowInternetSharing**  
Allow or disallow internet sharing.

The following list shows the supported values:

-   0 – Do not allow the use of Internet Sharing.
-   1 (default) – Allow the use of Internet Sharing.

Most restricted value is 0.

<a href="" id="wifi-allowmanualwificonfiguration"></a>**WiFi/AllowManualWiFiConfiguration**  
Allow or disallow connecting to Wi-Fi outside of MDM server-installed networks.

The following list shows the supported values:

-   0 – No Wi-Fi connection outside of MDM provisioned network is allowed.
-   1 (default) – Adding new network SSIDs beyond the already MDM provisioned ones is allowed.

Most restricted value is 0.

**Note**  Setting this policy deletes any previously installed user-configured and Wi-Fi sense Wi-Fi profiles from the device. Certain Wi-Fi profiles that are not user configured nor Wi-Fi sense might not be deleted. In addition, not all non-MDM profiles are completely deleted.

 

<a href="" id="wifi-allowwifi"></a>**WiFi/AllowWiFi**  
Allow or disallow Wi-Fi connection.

The following list shows the supported values:

-   0 – Wi-Fi connection is not allowed.
-   1 (default) – Wi-Fi connection is allowed.

Most restricted value is 0.

<a href="" id="wifi-allowwifihotspotreporting"></a>**WiFi/AllowWiFiHotSpotReporting**  
This policy has been deprecated.

<a href="" id="wifi-wlanscanmode"></a>**WiFi/WLANScanMode**  
Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected.

Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency.

The default value is 0.

Supported operations are Add, Delete, Get, and Replace.

<a href="" id="windowsinkworkspace-allowwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowWindowsInkWorkspace**  
Added in Windows 10, version 1607. Specifies whether to allow the user to access the ink workspace.

Value type is int. The following list shows the supported values:

-   0 - access to ink workspace is disabled. The feature is turned off.
-   1 - ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.
-   2 (default) - ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen.

<a href="" id="windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace**  
Added in Windows 10, version 1607. Show recommended app suggestions in the ink workspace.

Value type is bool. The following list shows the supported values:

-   0 - app suggestions are not allowed.
-   1 (default) -allow app suggestions.

<a href="" id="wirelessdisplay-allowprojectiontopc"></a>**WirelessDisplay/AllowProjectionToPC**  
Added in Windows 10, version 1607. Allow or disallow turning off the projection to a PC.

If you set it to 0 (zero), your PC is not discoverable and you cannot project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

Value type is integer. Valid value:

-   0 - projection to PC is not allowed. Always off and the user cannot enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<a href="" id="wirelessdisplay-requirepinforpairing"></a>**WirelessDisplay/RequirePinForPairing**  
Added in Windows 10, version 1607. Allow or disallow requirement for a PIN for pairing.

If you turn this on, the pairing ceremony for new devices will always require a PIN. If you turn this off or do not configure it, a PIN is not required for pairing. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

Value type is integer. Valid value:

-   0 (default) - PIN is not required.
-   1 - PIN is required.

## Examples


Set the minimum password length to 4 characters.

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/DeviceLock/MinDevicePasswordLength</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>4</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

Do not allow NFC.

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Replace>
            <CmdID>$CmdID$</CmdID>
            <Item>
                <Target>
                    <LocURI>./Vendor/MSFT/Policy/Config/Connectivity/AllowNFC</LocURI>
                </Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>0</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

## <a href="" id="startlayout-examples"></a>Start/StartLayout Examples


### <a href="" id="generating-a-layout-"></a>Generating a layout

The easiest way to generate a layout is to set the Start layout on a PC, and then run the PowerShell cmdlet **Export-StartLayout**.

` > Export-StartLayout -path c:\users\<`*you*`>\desktop\startlayout.xml`

Sample layout generated using the cmdlet

``` syntax
<LayoutModificationTemplate Version="1" xmlns="http://schemas.microsoft.com/Start/2014/LayoutModification">
  <DefaultLayoutOverride>
    <StartLayoutCollection>
      <defaultlayout:StartLayout GroupCellWidth="6" xmlns:defaultlayout="http://schemas.microsoft.com/Start/2014/FullDefaultLayout">
        <start:Group Name="quick links" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="2x2" Column="4" Row="4" TileID="903d2b5e-807b-4c7a-8362-0fcc184f97f7" AppUserModelID="windows.immersivecontrolpanel_cw5n1h2txyewy!microsoft.windows.immersivecontrolpanel"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="ad99e7e3-3929-4e54-850c-0956e6dc6296" AppUserModelID="Microsoft.BingWeather_8wekyb3d8bbwe!App"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="e86b4425-e28e-4e59-abeb-39316c1cd0eb" AppUserModelID="Microsoft.BingNews_8wekyb3d8bbwe!AppexNews"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="37fe8c50-8b37-41e2-9d8b-f8915ef2b89b" AppUserModelID="Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"/>
        </start:Group>
        <start:Group Name="LOB apps" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="2x2" Column="4" Row="4" TileID="10c72642-ef27-4890-8d3b-f5a4b10b2611" AppUserModelID="CmModernAppv.01_g4ype1skzj3jy!App"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="wpsh..tion_0000000000000000_ea68d408322b5ed8"/>
          <start:Tile Size="2x2" Column="2" Row="2" TileID="68a2c085-a2a5-4849-a3e5-c5f8bd736b8f" AppUserModelID="Microsoft.CorporateAppCenter_8wekyb3d8bbwe!App"/>
        </start:Group>
        <start:Group Name="comms" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:Tile Size="4x2" Column="0" Row="0" TileID="a39d270e-d013-40a9-879d-eb563c019a4f" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.mail"/>
          <start:Tile Size="4x4" Column="0" Row="0" TileID="293e8dd8-c33d-4797-997e-f646902d1e56" AppUserModelID="microsoft.windowscommunicationsapps_8wekyb3d8bbwe!microsoft.windowslive.calendar"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="2f5a81f5-7f85-42c9-88f7-dd41aa9609f7" AppUserModelID="Microsoft.People_8wekyb3d8bbwe!x4c7a3b7dy2188y46d4ya362y19ac5a5805e5x"/>
        </start:Group>
        <start:Group Name="Office" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="Microsoft.Office.lync.exe.15"/>
          <start:Tile Size="2x2" Column="4" Row="4" TileID="337be122-44b3-4215-8d6f-75f29af5a722" AppUserModelID="Microsoft.Office.OneNote_8wekyb3d8bbwe!microsoft.onenoteim"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Office.OUTLOOK.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="Microsoft.Office.EXCEL.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="Microsoft.Office.ONENOTE.EXE.15"/>
          <start:DesktopApplicationTile Size="2x2" Column="4" Row="4" DesktopApplicationID="Microsoft.Office.POWERPNT.EXE.15"/>
        </start:Group>
        <start:Group Name="Edge pinned shortcuts" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-9513911450" DisplayName="Bing" Size="2x2" Column="0" Row="0" Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x36a8c2e4 -pinnedTimeHigh 0x01d0919b -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000014 http://www.bing.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-9513911450/lowres.png" Wide310x150LogoUri="ms-appx:///" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-2360074010" DisplayName="msn" Size="2x2" Column="2" Row="2" Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0xec458ccc -pinnedTimeHigh 0x01d091a0 -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000013 http://www.msn.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-2360074010/hires.png" Wide310x150LogoUri="ms-appx:///" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
          <start:SecondaryTile AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" TileID="-21368412090" DisplayName="The Verge" Size="2x2" Column="4" Row="4" Arguments="-pinnedSite -contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x00bad87b -pinnedTimeHigh 0x01d091a1 -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000018 http://www.theverge.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-21368412090/squaretile.png" Wide310x150LogoUri="ms-appdata:///local/PinnedTiles/-21368412090/widetile.png" ShowNameOnSquare150x150Logo="true" ShowNameOnWide310x150Logo="true" BackgroundColor="#7fffffff"/>
        </start:Group>
        <start:Group Name="dev tools" xmlns:start="http://schemas.microsoft.com/Start/2014/StartLayout">
          <start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\cmd.exe"/>
          <start:DesktopApplicationTile Size="2x2" Column="2" Row="2" DesktopApplicationID="{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}\WindowsPowerShell\v1.0\powershell.exe"/>
        </start:Group>
      </defaultlayout:StartLayout>
    </StartLayoutCollection>
  </DefaultLayoutOverride>
</LayoutModificationTemplate>
```

### Understanding the schema

In the previous example, the **DefaultLayoutOverride** element is used to specify a layout that overrides the default Start layout. It contains a **StartLayoutCollection**. **StartLayoutCollection** contains a **StartLayout**, which is made up of a collection of **Groups** which are, in turn, made up of either **Tiles** or **DesktopApplicationTiles**.

### Manually creating a layout

For **Tile** elements, the **AppUserModelID** can be retrieved with the PowerShell cmdlet **Get-StartApps**. The app needs to be installed to retrieve this information.

For **DesktopApplicationTile** elements, the **DesktopApplicationID** can be retrieved with the PowerShell cmdlet **Get-StartApps**. The app needs to be installed to retrieve this information.

### Secondary tiles

Creating a layout requires some special notes about secondary tiles. In general, the simplest way to correctly specify a **SecondaryTile** is to generate it using the **Export-StartLayout** PowerShell cmdlet as specified above.

**Note**  Apps that don't encode enough information in their secondary tiles may not be able to be used effectively in the **StartLayout** policy.

 

### Generic webpage shortcuts

The simplest mechanism to create a link to a webpage is to use a URL file. This can be manually added to the layout file by specifying the URL in the **DesktopApplicationID** attribute.

``` syntax
<start:DesktopApplicationTile Size="2x2" Column="0" Row="0" DesktopApplicationID="www.bing.com" />
```

### <a href="" id="microsoft-edge-secondary-tiles-"></a>Microsoft Edge secondary tiles

These can be generated by using the **Export-StartLayout** PowerShell cmdlet as specified above. The following example shows a generated secondary tile:

``` syntax
<start:SecondaryTile 
    AppUserModelID="Microsoft.Windows.Edge_cw5n1h2txyewy!Microsoft.Edge.Edge" 
    TileID="-9513911450" 
    DisplayName="Bing" 
    Size="2x2" 
    Column="0" 
    Row="0" 
    Arguments="-contentTile -formatVersion 0x00000003 -pinnedTimeLow 0x36a8c2e4 -pinnedTimeHigh 0x01d0919b -securityFlags 0x00000000 -tileType 0x00000000 -url 0x00000014 http://www.bing.com/" Square150x150LogoUri="ms-appdata:///local/PinnedTiles/-9513911450/lowres.png" 
    Wide310x150LogoUri="ms-appx:///" 
    ShowNameOnSquare150x150Logo="true" 
    ShowNameOnWide310x150Logo="true" 
    BackgroundColor="#7fffffff" 
  />
```

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 

10/10/2016




