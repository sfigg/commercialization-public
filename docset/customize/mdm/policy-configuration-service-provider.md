---
title: Policy CSP
description: Policy CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
---

# Policy CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies.

The Policy configuration service provider has the following sub-categories:

-   Policy/Config/*AreaName* – Handles the policy configuration request from the server.
-   Policy/Result/*AreaName* – Provides a read-only path to policies enforced on the device.

The following diagram shows the Policy configuration service provider in tree format as used by both Open Mobile Alliance Device Management (OMA DM) and OMA Client Provisioning.

![policy csp diagram](images/provisioning-csp-policy.png)


<a href="" id="--vendor-msft-policy"></a>**./Vendor/MSFT/Policy**  
<p style="margin-left: 20px">The root node for the Policy configuration service provider.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config"></a>**Policy/Config**  
<p style="margin-left: 20px">Node for grouping all policies configured by one source. The configuration source can use this path to set policy values and later query any policy value that it previously set. One policy can be configured by multiple configuration sources. If a configuration source wants to query the result of conflict resolution (for example, if Exchange and MDM both attempt to set a value,) the configuration source can use the Policy/Result path to retrieve the resulting value.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-config-areaname"></a>**Policy/Config/****_AreaName_**  
<p style="margin-left: 20px">The area group that can be configured by a single technology for a single provider. Once added, you cannot change the value.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="policy-config-areaname-policyname"></a>**Policy/Config/****_AreaName/PolicyName_**  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">The following list shows some tips to help you when configuring policies:

-   Separate substring values by the Unicode &\#xF000; in the XML file.

> [!NOTE]
> A query from a different caller could provide a different value as each caller could have different values for a named policy.

-   In SyncML, wrap this policy with the Atomic command so that the policy settings are treated as a single transaction.
-   Supported operations are Add, Get, Delete, and Replace.
-   Value type is string.

<a href="" id="policy-result"></a>**Policy/Result**  
<p style="margin-left: 20px">Groups the evaluated policies from all providers that can be configured.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname"></a>**Policy/Result/****_AreaName_**  
<p style="margin-left: 20px">The area group that can be configured by a single technology independent of the providers.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="policy-result-areaname-policyname"></a>**Policy/Result/****_AreaName/PolicyName_**  
<p style="margin-left: 20px">Specifies the name/value pair used in the policy.

<p style="margin-left: 20px">Supported operation is Get.

## **Policy Tables**

Some policies are only supported in either Windows 10 for desktop or Windows 10 Mobile. In addition, some policies also have a corresponding Group Policy. The following tables provide this information:

-   [Table of Policies for Windows 10](#mainpolicytable) - Lists all policies for each SKU in Windows 10 . It also notes policies that can be set using Exchange Active Sync (EAS).
-   [Policies supported by Windows Holographic Enterprise](#hololenspolicies) - Lists the policies that are supported in Windows 10 Holographic Enterprise.
-   [Policies supported by Microsoft Surface Hub](#surfacehubpolicies) - Lists the policies that are supported by Microsoft Surface Hub.

## <a href="" id="mainpolicytable"></a>Table of Policies for Windows 10

> [!IMPORTANT]
> To navigate the table horizontally, click on the table and then use the left and right scroll keys on your keyboard or use the scroll bar at the bottom of the table.

<table>
<tr>
<th>Area Name / Policy Name</th>
<th>Supported in Home</th>
<th>Supported in Pro</th>
<th>Supported in Enterprise</th>
<th>Supported in Education</th>
<th>Supported in Mobile</th>
<th>Supported in Mobile Enterprise</th>
<th>Supported in IoT Core</th>
<th>
       Can be set using Exchange Active Sync (EAS)</th>
</tr>
<tr>
<td style="vertical-align:top"><a href="#abovelock-allowactioncenternotifications">AboveLock/AllowActionCenterNotifications</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#abovelock-allowcortanaabovelock">AboveLock/AllowCortanaAboveLock</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#abovelock-allowtoasts">AboveLock/AllowToasts</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#accounts-allowaddingnonmicrosoftaccountsmanually">Accounts/AllowAddingNonMicrosoftAccountsManually</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#accounts-allowmicrosoftaccountconnection">Accounts/AllowMicrosoftAccountConnection</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#accounts-domainnamesforemailsync">Accounts/DomainNamesForEmailSync</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowalltrustedapps">ApplicationManagement/AllowAllTrustedApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowappstoreautoupdate">ApplicationManagement/AllowAppStoreAutoUpdate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowdeveloperunlock">ApplicationManagement/AllowDeveloperUnlock</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowgamedvr">ApplicationManagement/AllowGameDVR</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowshareduserappdata">ApplicationManagement/AllowSharedUserAppData</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-allowstore">ApplicationManagement/AllowStore</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-applicationrestrictions">ApplicationManagement/ApplicationRestrictions</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-disablestoreoriginatedapps">ApplicationManagement/DisableStoreOriginatedApps</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-requireprivatestoreonly">ApplicationManagement/RequirePrivateStoreOnly</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-restrictappdatatosystemvolume">ApplicationManagement/RestrictAppDataToSystemVolume</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#applicationmanagement-restrictapptosystemvolume">ApplicationManagement/RestrictAppToSystemVolume</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#authentication-alloweapcertsso">Authentication/AllowEAPCertSSO</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#authentication-allowfastreconnect">Authentication/AllowFastReconnect</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#authentication-allowsecondaryauthenticationdevice">Authentication/AllowSecondaryAuthenticationDevice</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bitlocker-encryptionmethod">Bitlocker/EncryptionMethod</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bluetooth-allowadvertising">Bluetooth/AllowAdvertising</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bluetooth-allowdiscoverablemode">Bluetooth/AllowDiscoverableMode</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bluetooth-allowprepairing">Bluetooth/AllowPrepairing</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bluetooth-localdevicename">Bluetooth/LocalDeviceName</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#bluetooth-servicesallowedlist">Bluetooth/ServicesAllowedList</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowautofill">Browser/AllowAutofill</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowbrowser">Browser/AllowBrowser</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowcookies">Browser/AllowCookies</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"></td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowdevelopertools">Browser/AllowDeveloperTools</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowdonottrack">Browser/AllowDoNotTrack</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowextensions">Browser/AllowExtensions</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowinprivate">Browser/AllowInPrivate</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowpasswordmanager">Browser/AllowPasswordManager</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowpopups">Browser/AllowPopups</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowsearchsuggestionsinaddressbar">Browser/AllowSearchSuggestionsinAddressBar</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-allowsmartscreen">Browser/AllowSmartScreen</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-enterprisemodesitelist">Browser/EnterpriseModeSiteList</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-firstrunurl">Browser/FirstRunURL</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-homepages">Browser/HomePages</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-preventaccesstoaboutflagsinmicrosoftedge">Browser/PreventAccessToAboutFlagsInMicrosoftEdge</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-preventsmartscreenpromptoverride">Browser/PreventSmartScreenPromptOverride</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-preventsmartscreenpromptoverrideforfiles">Browser/PreventSmartScreenPromptOverrideForFiles</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-preventusinglocalhostipaddressforwebrtc">Browser/PreventUsingLocalHostIPAddressForWebRTC</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-sendintranettraffictointernetexplorer">Browser/SendIntranetTraffictoInternetExplorer</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#browser-showmessagewhenopeningsitesininternetexplorer">Browser/ShowMessageWhenOpeningSitesInInternetExplorer</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#camera-allowcamera">Camera/AllowCamera</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowbluetooth">Connectivity/AllowBluetooth</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowcellulardata">Connectivity/AllowCellularData</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowcellulardataroaming">Connectivity/AllowCellularDataRoaming</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allownfc">Connectivity/AllowNFC</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowusbconnection">Connectivity/AllowUSBConnection</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowvpnovercellular">Connectivity/AllowVPNOverCellular</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#connectivity-allowvpnroamingovercellular">Connectivity/AllowVPNRoamingOverCellular</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#cryptography-allowfipsalgorithmpolicy">Cryptography/AllowFipsAlgorithmPolicy</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#cryptography-tlsciphersuites">Cryptography/TLSCipherSuites</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#dataprotection-allowdirectmemoryaccess">DataProtection/AllowDirectMemoryAccess</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#dataprotection-legacyselectivewipeid">DataProtection/LegacySelectiveWipeID</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowarchivescanning">Defender/AllowArchiveScanning</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowbehaviormonitoring">Defender/AllowBehaviorMonitoring</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowcloudprotection">Defender/AllowCloudProtection</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowemailscanning">Defender/AllowEmailScanning</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowfullscanonmappednetworkdrives">Defender/AllowFullScanOnMappedNetworkDrives</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowfullscanremovabledrivescanning">Defender/AllowFullScanRemovableDriveScanning</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowintrusionpreventionsystem">Defender/AllowIntrusionPreventionSystem</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowioavprotection">Defender/AllowIOAVProtection</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowonaccessprotection">Defender/AllowOnAccessProtection</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowrealtimemonitoring">Defender/AllowRealtimeMonitoring</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowscanningnetworkfiles">Defender/AllowScanningNetworkFiles</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowscriptscanning">Defender/AllowScriptScanning</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-allowuseruiaccess">Defender/AllowUserUIAccess</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-avgcpuloadfactor">Defender/AVGCPULoadFactor</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-daystoretaincleanedmalware">Defender/DaysToRetainCleanedMalware</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-excludedextensions">Defender/ExcludedExtensions</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-excludedpaths">Defender/ExcludedPaths</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-excludedprocesses">Defender/ExcludedProcesses</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-puaprotection">Defender/PUAProtection</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-realtimescandirection">Defender/RealTimeScanDirection</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-scanparameter">Defender/ScanParameter</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-schedulequickscantime">Defender/ScheduleQuickScanTime</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-schedulescanday">Defender/ScheduleScanDay</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-schedulescantime">Defender/ScheduleScanTime</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-signatureupdateinterval">Defender/SignatureUpdateInterval</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-submitsamplesconsent">Defender/SubmitSamplesConsent</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#defender-threatseveritydefaultaction">Defender/ThreatSeverityDefaultAction</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-doabsolutemaxcachesize">DeliveryOptimization/DOAbsoluteMaxCacheSize</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-doallowvpnpeercaching">DeliveryOptimization/DOAllowVPNPeerCaching</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dodownloadmode">DeliveryOptimization/DODownloadMode</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dogroupid">DeliveryOptimization/DOGroupID</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domaxcacheage">DeliveryOptimization/DOMaxCacheAge</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domaxcachesize">DeliveryOptimization/DOMaxCacheSize</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domaxdownloadbandwidth">DeliveryOptimization/DOMaxDownloadBandwidth</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domaxuploadbandwidth">DeliveryOptimization/DOMaxUploadBandwidth</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dominbackgroundqos">DeliveryOptimization/DOMinBackgroundQos</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domindisksizeallowedtopeer">DeliveryOptimization/DOMinDiskSizeAllowedToPeer</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dominfilesizetocache">DeliveryOptimization/DOMinFileSizeToCache</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dominramallowedtopeer">DeliveryOptimization/DOMinRAMAllowedToPeer</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domodifycachedrive">DeliveryOptimization/DOModifyCacheDrive</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-domonthlyuploaddatacap">DeliveryOptimization/DOMonthlyUploadDataCap</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#deliveryoptimization-dopercentagemaxdownloadbandwidth">DeliveryOptimization/DOPercentageMaxDownloadBandwidth</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-allowidlereturnwithoutpassword">DeviceLock/AllowIdleReturnWithoutPassword</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-allowscreentimeoutwhilelockeduserconfig">DeviceLock/AllowScreenTimeoutWhileLockedUserConfig</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-allowsimpledevicepassword">DeviceLock/AllowSimpleDevicePassword</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-alphanumericdevicepasswordrequired">DeviceLock/AlphanumericDevicePasswordRequired</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-devicepasswordenabled">DeviceLock/DevicePasswordEnabled</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-devicepasswordexpiration">DeviceLock/DevicePasswordExpiration</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-devicepasswordhistory">DeviceLock/DevicePasswordHistory</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-enforcelockscreenandlogonimage">DeviceLock/EnforceLockScreenAndLogonImage</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-enforcelockscreenprovider">DeviceLock/EnforceLockScreenProvider</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-maxdevicepasswordfailedattempts">DeviceLock/MaxDevicePasswordFailedAttempts</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-maxinactivitytimedevicelock">DeviceLock/MaxInactivityTimeDeviceLock</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-mindevicepasswordcomplexcharacters">DeviceLock/MinDevicePasswordComplexCharacters</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-screentimeoutwhilelocked">DeviceLock/ScreenTimeoutWhileLocked</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"></td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#devicelock-mindevicepasswordlength">DeviceLock/MinDevicePasswordLength</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-cloudprinterdiscoveryendpoint">EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-cloudprintoauthauthority">EnterpriseCloudPrint/CloudPrintOAuthAuthority</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-cloudprintoauthclientid">EnterpriseCloudPrint/CloudPrintOAuthClientId</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-cloudprintresourceid">EnterpriseCloudPrint/CloudPrintResourceId</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-discoverymaxprinterlimit">EnterpriseCloudPrint/DiscoveryMaxPrinterLimit</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#enterprisecloudprint-mopriadiscoveryresourceid">EnterpriseCloudPrint/MopriaDiscoveryResourceId</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowcopypaste">Experience/AllowCopyPaste</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowcortana">Experience/AllowCortana</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowdevicediscovery">Experience/AllowDeviceDiscovery</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowmanualmdmunenrollment">Experience/AllowManualMDMUnenrollment</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowscreencapture">Experience/AllowScreenCapture</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowsimerrordialogpromptwhennosim">Experience/AllowSIMErrorDialogPromptWhenNoSIM</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowsyncmysettings">Experience/AllowSyncMySettings</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowtaskswitcher">Experience/AllowTaskSwitcher</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowthirdpartysuggestionsinwindowsspotlight">Experience/AllowThirdPartySuggestionsInWindowsSpotlight</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowvoicerecording">Experience/AllowVoiceRecording</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowwindowsconsumerfeatures">Experience/AllowWindowsConsumerFeatures</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowwindowsspotlight">Experience/AllowWindowsSpotlight</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-allowwindowstips">Experience/AllowWindowsTips</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-configurewindowsspotlightonlockscreen">Experience/ConfigureWindowsSpotlightOnLockScreen</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#experience-donotshowfeedbacknotifications">Experience/DoNotShowFeedbackNotifications</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#licensing-allowwindowsentitlementreactivation">Licensing/AllowWindowsEntitlementReactivation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#licensing-disallowkmsclientonlineavsvalidation">Licensing/DisallowKMSClientOnlineAVSValidation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#lockdown-allowedgeswipe">LockDown/AllowEdgeSwipe</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#maps-enableofflinemapsautoupdate">Maps/EnableOfflineMapsAutoUpdate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#maps-allowofflinemapsdownloadovermeteredconnection">Maps/AllowOfflineMapsDownloadOverMeteredConnection</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#messaging-allowmessagesync">Messaging/AllowMessageSync</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterprisecloudresources">NetworkIsolation/EnterpriseCloudResources</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterpriseinternalproxyservers">NetworkIsolation/EnterpriseInternalProxyServers</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterpriseiprange">NetworkIsolation/EnterpriseIPRange</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterpriseiprangesareauthoritative">NetworkIsolation/EnterpriseIPRangesAreAuthoritative</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterprisenetworkdomainnames">NetworkIsolation/EnterpriseNetworkDomainNames</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterpriseproxyservers">NetworkIsolation/EnterpriseProxyServers</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-enterpriseproxyserversareauthoritative">NetworkIsolation/EnterpriseProxyServersAreAuthoritative</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#networkisolation-neutralresources">NetworkIsolation/NeutralResources</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#notifications-disallownotificationmirroring">Notifications/DisallowNotificationMirroring</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-allowautoacceptpairingandprivacyconsentprompts">Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-allowinputpersonalization">Privacy/AllowInputPersonalization</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-disableadvertisingid">Privacy/DisableAdvertisingId</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessaccountinfo">Privacy/LetAppsAccessAccountInfo</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessaccountinfo-forceallowtheseapps">Privacy/LetAppsAccessAccountInfo_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessaccountinfo-forcedenytheseapps">Privacy/LetAppsAccessAccountInfo_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessaccountinfo-userincontroloftheseapps">Privacy/LetAppsAccessAccountInfo_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscalendar">Privacy/LetAppsAccessCalendar</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscalendar-forceallowtheseapps">Privacy/LetAppsAccessCalendar_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscalendar-forcedenytheseapps">Privacy/LetAppsAccessCalendar_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscalendar-userincontroloftheseapps">Privacy/LetAppsAccessCalendar_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscallhistory">Privacy/LetAppsAccessCallHistory</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscallhistory-forceallowtheseapps">Privacy/LetAppsAccessCallHistory_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscallhistory-forcedenytheseapps">Privacy/LetAppsAccessCallHistory_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscallhistory-userincontroloftheseapps">Privacy/LetAppsAccessCallHistory_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscamera">Privacy/LetAppsAccessCamera</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscamera-forceallowtheseapps">Privacy/LetAppsAccessCamera_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscamera-forcedenytheseapps">Privacy/LetAppsAccessCamera_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscamera-userincontroloftheseapps">Privacy/LetAppsAccessCamera_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscontacts">Privacy/LetAppsAccessContacts</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscontacts-forceallowtheseapps">Privacy/LetAppsAccessContacts_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscontacts-forcedenytheseapps">Privacy/LetAppsAccessContacts_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesscontacts-userincontroloftheseapps">Privacy/LetAppsAccessContacts_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessemail">Privacy/LetAppsAccessEmail</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessemail-forceallowtheseapps">Privacy/LetAppsAccessEmail_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessemail-forcedenytheseapps">Privacy/LetAppsAccessEmail_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessemail-userincontroloftheseapps">Privacy/LetAppsAccessEmail_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesslocation">Privacy/LetAppsAccessLocation</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesslocation-forceallowtheseapps">Privacy/LetAppsAccessLocation_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesslocation-forcedenytheseapps">Privacy/LetAppsAccessLocation_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesslocation-userincontroloftheseapps">Privacy/LetAppsAccessLocation_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmessaging">Privacy/LetAppsAccessMessaging</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmessaging-forceallowtheseapps">Privacy/LetAppsAccessMessaging_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmessaging-forcedenytheseapps">Privacy/LetAppsAccessMessaging_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmessaging-userincontroloftheseapps">Privacy/LetAppsAccessMessaging_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmicrophone">Privacy/LetAppsAccessMicrophone</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmicrophone-forceallowtheseapps">Privacy/LetAppsAccessMicrophone_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmicrophone-forcedenytheseapps">Privacy/LetAppsAccessMicrophone_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmicrophone-userincontroloftheseapps">Privacy/LetAppsAccessMicrophone_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmotion">Privacy/LetAppsAccessMotion</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmotion-forceallowtheseapps">Privacy/LetAppsAccessMotion_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmotion-forcedenytheseapps">Privacy/LetAppsAccessMotion_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessmotion-userincontroloftheseapps">Privacy/LetAppsAccessMotion_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessnotifications">Privacy/LetAppsAccessNotifications</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessnotifications-forceallowtheseapps">Privacy/LetAppsAccessNotifications_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessnotifications-forcedenytheseapps">Privacy/LetAppsAccessNotifications_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessnotifications-userincontroloftheseapps">Privacy/LetAppsAccessNotifications_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessphone">Privacy/LetAppsAccessPhone</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/></td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessphone-forceallowtheseapps">Privacy/LetAppsAccessPhone_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessphone-forcedenytheseapps">Privacy/LetAppsAccessPhone_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessphone-userincontroloftheseapps">Privacy/LetAppsAccessPhone_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessradios">Privacy/LetAppsAccessRadios</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessradios-forceallowtheseapps">Privacy/LetAppsAccessRadios_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessradios-forcedenytheseapps">Privacy/LetAppsAccessRadios_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccessradios-userincontroloftheseapps">Privacy/LetAppsAccessRadios_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesstrusteddevices">Privacy/LetAppsAccessTrustedDevices</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesstrusteddevices-forceallowtheseapps">Privacy/LetAppsAccessTrustedDevices_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesstrusteddevices-forcedenytheseapps">Privacy/LetAppsAccessTrustedDevices_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsaccesstrusteddevices-userincontroloftheseapps">Privacy/LetAppsAccessTrustedDevices_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsgetdiagnosticinfo">Privacy/LetAppsGetDiagnosticInfo</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsgetdiagnosticinfo-forceallowtheseapps">Privacy/LetAppsGetDiagnosticInfo_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsgetdiagnosticinfo-forcedenytheseapps">Privacy/LetAppsGetDiagnosticInfo_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsgetdiagnosticinfo-userincontroloftheseapps">Privacy/LetAppsGetDiagnosticInfo_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsruninbackground">Privacy/LetAppsRunInBackground</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsruninbackground-forceallowtheseapps">Privacy/LetAppsRunInBackground_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsruninbackground-forcedenytheseapps">Privacy/LetAppsRunInBackground_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappsruninbackground-userincontroloftheseapps">Privacy/LetAppsRunInBackground_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappssyncwithdevices">Privacy/LetAppsSyncWithDevices</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappssyncwithdevices-forceallowtheseapps">Privacy/LetAppsSyncWithDevices_ForceAllowTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappssyncwithdevices-forcedenytheseapps">Privacy/LetAppsSyncWithDevices_ForceDenyTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#privacy-letappssyncwithdevices-userincontroloftheseapps">Privacy/LetAppsSyncWithDevices_UserInControlOfTheseApps</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-allowindexingencryptedstoresoritems">Search/AllowIndexingEncryptedStoresOrItems</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-allowsearchtouselocation">Search/AllowSearchToUseLocation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-allowusingdiacritics">Search/AllowUsingDiacritics</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-alwaysuseautolangdetection">Search/AlwaysUseAutoLangDetection</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-disablebackoff">Search/DisableBackoff</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-disableremovabledriveindexing">Search/DisableRemovableDriveIndexing</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-preventindexinglowdiskspacemb">Search/PreventIndexingLowDiskSpaceMB</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-preventremotequeries">Search/PreventRemoteQueries</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#search-safesearchpermissions">Search/SafeSearchPermissions</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-allowaddprovisioningpackage">Security/AllowAddProvisioningPackage</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-allowautomaticdeviceencryptionforazureadjoineddevices">Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-allowmanualrootcertificateinstallation">Security/AllowManualRootCertificateInstallation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-allowremoveprovisioningpackage">Security/AllowRemoveProvisioningPackage</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-antitheftmode">Security/AntiTheftMode</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-allowautomaticdeviceencryptionforazureadjoineddevices">Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-requiredeviceencryption">Security/RequireDeviceEncryption</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-requireprovisioningpackagesignature">Security/RequireProvisioningPackageSignature</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#security-requireretrievehealthcertificateonboot">Security/RequireRetrieveHealthCertificateOnBoot</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowautoplay">Settings/AllowAutoPlay</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowdatasense">Settings/AllowDataSense</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowdatetime">Settings/AllowDateTime</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-alloweditdevicename">Settings/AllowEditDeviceName</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowlanguage">Settings/AllowLanguage</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowpowersleep">Settings/AllowPowerSleep</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowregion">Settings/AllowRegion</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowsigninoptions">Settings/AllowSignInOptions</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowvpn">Settings/AllowVPN</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowworkplace">Settings/AllowWorkplace</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#settings-allowyouraccount">Settings/AllowYourAccount</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#speech-allowspeechmodelupdate">Speech/AllowSpeechModelUpdate</a></td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#start-forcestartsize">Start/ForceStartSize</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#start-startlayout">Start/StartLayout</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowbuildpreview">System/AllowBuildPreview</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowembeddedmode">System/AllowEmbeddedMode</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"></td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowexperimentation">System/AllowExperimentation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowlocation">System/AllowLocation</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowstoragecard">System/AllowStorageCard</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowtelemetry">System/AllowTelemetry</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-allowusertoresetphone">System/AllowUserToResetPhone</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#system-telemetryproxy">System/TelemetryProxy</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowimelogging">TextInput/AllowIMELogging</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowimenetworkaccess">TextInput/AllowIMENetworkAccess</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowinputpanel">TextInput/AllowInputPanel</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowjapaneseimesurrogatepaircharacters">TextInput/AllowJapaneseIMESurrogatePairCharacters</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowjapaneseivscharacters">TextInput/AllowJapaneseIVSCharacters</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowjapanesenonpublishingstandardglyph">TextInput/AllowJapaneseNonPublishingStandardGlyph</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowjapaneseuserdictionary">TextInput/AllowJapaneseUserDictionary</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowlanguagefeaturesuninstall">TextInput/AllowLanguageFeaturesUninstall</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-allowlinguisticdatacollection">TextInput/AllowLinguisticDataCollection</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-excludejapaneseimeexceptjis0208">TextInput/ExcludeJapaneseIMEExceptJIS0208</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-excludejapaneseimeexceptjis0208andeudc">TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#textinput-excludejapaneseimeexceptshiftjis">TextInput/ExcludeJapaneseIMEExceptShiftJIS</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-activehoursend">Update/ActiveHoursEnd</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-activehoursstart">Update/ActiveHoursStart</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-allowautoupdate">Update/AllowAutoUpdate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-allowmuupdateservice">Update/AllowMUUpdateService</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-allownonmicrosoftsignedupdate">Update/AllowNonMicrosoftSignedUpdate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-allowupdateservice">Update/AllowUpdateService</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-branchreadinesslevel">Update/BranchReadinessLevel</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-deferfeatureupdatesperiodindays">Update/DeferFeatureUpdatesPeriodInDays</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-deferqualityupdatesperiodindays">Update/DeferQualityUpdatesPeriodInDays</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-deferupdateperiod">Update/DeferUpdatePeriod</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-deferupgradeperiod">Update/DeferUpgradePeriod</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-excludewudriversinqualityupdate">Update/ExcludeWUDriversInQualityUpdate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-pausedeferrals">Update/PauseDeferrals</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-pausefeatureupdates">Update/PauseFeatureUpdates</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-pausequalityupdates">Update/PauseQualityUpdates</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-requiredeferupgrade">Update/RequireDeferUpgrade</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-requireupdateapproval">Update/RequireUpdateApproval</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-scheduledinstallday">Update/ScheduledInstallDay</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-scheduledinstalltime">Update/ScheduledInstallTime</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-updateserviceurl">Update/UpdateServiceUrl</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#update-updateserviceurlalternate">Update/UpdateServiceUrlAlternate</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wifi-allowautoconnecttowifisensehotspots">WiFi/AllowAutoConnectToWiFiSenseHotspots</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wifi-allowinternetsharing">WiFi/AllowInternetSharing</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wifi-allowmanualwificonfiguration">WiFi/AllowManualWiFiConfiguration</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wifi-allowwifi">WiFi/AllowWiFi</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wifi-wlanscanmode">WiFi/WLANScanMode</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#windowsinkworkspace-allowwindowsinkworkspace">WindowsInkWorkspace/AllowWindowsInkWorkspace</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace">WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wirelessdisplay-allowprojectiontopc">WirelessDisplay/AllowProjectionToPC</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
<tr>
<td style="vertical-align:top"><a href="#wirelessdisplay-requirepinforpairing">WirelessDisplay/RequirePinForPairing</a></td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Home</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Pro</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CheckMark.png" alt="check mark"/>\*<p>Education</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>Mobile Enterprise</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>IoT Core</p>
</td>
<td style="vertical-align:top"><img src="images/CrossMark.png" alt="cross mark"/><p>EAS</p>
</td>
</tr>
</table>

 

Footnote:

-   \* - Added in Windows 10, version 1607.

## <a href="" id="hololenspolicies"></a>Policies supported by Windows Holographic Enterprise

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


## <a href="" id="surfacehubpolicies"></a>Policies supported by Microsoft Surface Hub

-   [Bluetooth/AllowAdvertising](#bluetooth-allowadvertising)
-   [Bluetooth/AllowDiscoverableMode](#bluetooth-allowdiscoverablemode)
-   [Bluetooth/AllowPrepairing](#bluetooth-allowprepairing)
-   [Bluetooth/LocalDeviceName](#bluetooth-localdevicename)
-   [Bluetooth/ServicesAllowedList](#bluetooth-servicesallowedlist)
-   [Browser/HomePages](#browser-homepages)
-   [Browser/AllowCookies](#browser-allowcookies)
-   [Browser/AllowDeveloperTools](#browser-allowdevelopertools)
-   [Browser/AllowDoNotTrack](#browser-allowdonottrack)
-   [Browser/AllowPopups](#browser-allowpopups)
-   [Browser/AllowSearchSuggestionsinAddressBar](#browser-allowsearchsuggestionsinaddressbar)
-   [Browser/AllowSmartScreen](#browser-allowsmartscreen)
-   [Browser/PreventSmartScreenPromptOverride](#browser-preventsmartscreenpromptoverride)
-   [Browser/PreventSmartScreenPromptOverrideForFiles](#browser-preventsmartscreenpromptoverrideforfiles)
-   [Camera/AllowCamera](#camera-allowcamera)
-   [Connectivity/AllowBluetooth](#connectivity-allowbluetooth)
-   [Cryptography/AllowFipsAlgorithmPolicy](#cryptography-allowfipsalgorithmpolicy)
-   [Cryptography/TLSCipherSuites](#cryptography-tlsciphersuites)
-   [Defender/AllowArchiveScanning](#defender-allowarchivescanning)
-   [Defender/AllowBehaviorMonitoring](#defender-allowbehaviormonitoring)
-   [Defender/AllowCloudProtection](#defender-allowcloudprotection)
-   [Defender/AllowEmailScanning](#defender-allowemailscanning)
-   [Defender/AllowFullScanOnMappedNetworkDrives](#defender-allowfullscanonmappednetworkdrives)
-   [Defender/AllowFullScanRemovableDriveScanning](#defender-allowfullscanremovabledrivescanning)
-   [Defender/AllowIntrusionPreventionSystem](#defender-allowintrusionpreventionsystem)
-   [Defender/AllowIOAVProtection](#defender-allowioavprotection)
-   [Defender/AllowOnAccessProtection](#defender-allowonaccessprotection)
-   [Defender/AllowRealtimeMonitoring](#defender-allowrealtimemonitoring)
-   [Defender/AllowScanningNetworkFiles](#defender-allowscanningnetworkfiles)
-   [Defender/AllowScriptScanning](#defender-allowscriptscanning)
-   [Defender/AllowUserUIAccess](#defender-allowuseruiaccess)
-   [Defender/AVGCPULoadFactor](#defender-avgcpuloadfactor)
-   [Defender/DaysToRetainCleanedMalware](#defender-daystoretaincleanedmalware)
-   [Defender/ExcludedExtensions](#defender-excludedextensions)
-   [Defender/ExcludedPaths](#defender-excludedpaths)
-   [Defender/ExcludedProcesses](#defender-excludedprocesses)
-   [Defender/PUAProtection](#defender-puaprotection)
-   [Defender/RealTimeScanDirection](#defender-realtimescandirection)
-   [Defender/ScanParameter](#defender-scanparameter)
-   [Defender/ScheduleQuickScanTime](#defender-schedulequickscantime)
-   [Defender/ScheduleScanDay](#defender-schedulescanday)
-   [Defender/ScheduleScanTime](#defender-schedulescantime)
-   [Defender/SignatureUpdateInterval](#defender-signatureupdateinterval)
-   [Defender/SubmitSamplesConsent](#defender-submitsamplesconsent)
-   [Defender/ThreatSeverityDefaultAction](#defender-threatseveritydefaultaction)
-   [DeliveryOptimization/DOAbsoluteMaxCacheSize](#deliveryoptimization-doabsolutemaxcachesize)
-   [DeliveryOptimization/DOAllowVPNPeerCaching](#deliveryoptimization-doallowvpnpeercaching)
-   [DeliveryOptimization/DODownloadMode](#deliveryoptimization-dodownloadmode)
-   [DeliveryOptimization/DOGroupID](#deliveryoptimization-dogroupid)
-   [DeliveryOptimization/DOMaxCacheAge](#deliveryoptimization-domaxcacheage)
-   [DeliveryOptimization/DOMaxCacheSize](#deliveryoptimization-domaxcachesize)
-   [DeliveryOptimization/DOMaxDownloadBandwidth](#deliveryoptimization-domaxdownloadbandwidth)
-   [DeliveryOptimization/DOMaxUploadBandwidth](#deliveryoptimization-domaxuploadbandwidth)
-   [DeliveryOptimization/DOMinBackgroundQos](#deliveryoptimization-dominbackgroundqos)
-   [DeliveryOptimization/DOMinDiskSizeAllowedToPeer](#deliveryoptimization-domindisksizeallowedtopeer)
-   [DeliveryOptimization/DOMinFileSizeToCache](#deliveryoptimization-dominfilesizetocache)
-   [DeliveryOptimization/DOMinRAMAllowedToPeer](#deliveryoptimization-dominramallowedtopeer)
-   [DeliveryOptimization/DOModifyCacheDrive](#deliveryoptimization-domodifycachedrive)
-   [DeliveryOptimization/DOMonthlyUploadDataCap](#deliveryoptimization-domonthlyuploaddatacap)
-   [DeliveryOptimization/DOPercentageMaxDownloadBandwidth](#deliveryoptimization-dopercentagemaxdownloadbandwidth)
-   [Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)
-   [Security/RequireRetrieveHealthCertificateOnBoot](#security-requireretrievehealthcertificateonboot)
-   [System/AllowLocation](#system-allowlocation)
-   [System/AllowTelemetry](#system-allowtelemetry)
-   [TextInput/AllowIMELogging](#textinput-allowimelogging)
-   [TextInput/AllowIMENetworkAccess](#textinput-allowimenetworkaccess)
-   [TextInput/AllowInputPanel](#textinput-allowinputpanel)
-   [TextInput/AllowJapaneseIMESurrogatePairCharacters](#textinput-allowjapaneseimesurrogatepaircharacters)
-   [TextInput/AllowJapaneseIVSCharacters](#textinput-allowjapaneseivscharacters)
-   [TextInput/AllowJapaneseNonPublishingStandardGlyph](#textinput-allowjapanesenonpublishingstandardglyph)
-   [TextInput/AllowJapaneseUserDictionary](#textinput-allowjapaneseuserdictionary)
-   [TextInput/AllowLanguageFeaturesUninstall](#textinput-allowlanguagefeaturesuninstall)
-   [TextInput/AllowLinguisticDataCollection](#textinput-allowlinguisticdatacollection)
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208](#textinput-excludejapaneseimeexceptjis0208)
-   [TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC](#textinput-excludejapaneseimeexceptjis0208andeudc)
-   [TextInput/ExcludeJapaneseIMEExceptShiftJIS](#textinput-excludejapaneseimeexceptshiftjis)
-   [Update/AllowAutoUpdate](#update-allowautoupdate)
-   [Update/AllowUpdateService](#update-allowupdateservice)
-   [Update/BranchReadinessLevel](#update-branchreadinesslevel)
-   [Update/DeferFeatureUpdatesPeriodInDays](#update-deferfeatureupdatesperiodindays)
-   [Update/DeferQualityUpdatesPeriodInDays](#update-deferqualityupdatesperiodindays)
-   [Update/PauseFeatureUpdates](#update-pausefeatureupdates)
-   [Update/PauseQualityUpdates](#update-pausequalityupdates)
-   [Update/UpdateServiceUrl](#update-updateserviceurl)


## <a href="" id="list-of--areaname---policyname-"></a>List of &lt;AreaName&gt;/&lt;PolicyName&gt;

<a href="" id="abovelock-allowactioncenternotifications"></a>**AboveLock/AllowActionCenterNotifications**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether to allow Action Center notifications above the device lock screen.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="abovelock-allowcortanaabovelock"></a>**AboveLock/AllowCortanaAboveLock**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether or not the user can interact with Cortana using speech while the system is locked. If you enable or don’t configure this setting, the user can interact with Cortana using speech while the system is locked. If you disable this setting, the system will need to be unlocked for the user to interact with Cortana using speech.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="abovelock-allowtoasts"></a>**AboveLock/AllowToasts**  
<p style="margin-left: 20px">Specifies whether to allow toast notifications above the device lock screen.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="accounts-allowaddingnonmicrosoftaccountsmanually"></a>**Accounts/AllowAddingNonMicrosoftAccountsManually**  
<p style="margin-left: 20px">Specifies whether user is allowed to add non-MSA email accounts.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

> [!NOTE]
> This policy will only block UI/UX-based methods for adding non-Microsoft accounts. Even if this policy is enforced, you can still provision non-MSA accounts using the [EMAIL2 CSP](email2-csp.md).

<a href="" id="accounts-allowmicrosoftaccountconnection"></a>**Accounts/AllowMicrosoftAccountConnection**  
<p style="margin-left: 20px">Specifies whether the user is allowed to use an MSA account for non-email related connection authentication and services.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="accounts-domainnamesforemailsync"></a>**Accounts/DomainNamesForEmailSync**  
<p style="margin-left: 20px">Specifies a list of the domains that are allowed to sync email on the device.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">The default value is an empty string, which allows all email accounts on the device to sync email. Otherwise, the string should contain a pipe-separated list of domains that are allowed to sync email on the device. For example, "contoso.com|fabrikam.net|woodgrove.gov".

<a href="" id="applicationmanagement-allowalltrustedapps"></a>**ApplicationManagement/AllowAllTrustedApps**  
<p style="margin-left: 20px">Specifies whether non Windows Store apps are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-allowappstoreautoupdate"></a>**ApplicationManagement/AllowAppStoreAutoUpdate**  
<p style="margin-left: 20px">Specifies whether automatic update of apps from Windows Store are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-allowdeveloperunlock"></a>**ApplicationManagement/AllowDeveloperUnlock**  
<p style="margin-left: 20px">Specifies whether developer unlock is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Explicit deny.
-   1 – Explicit allow unlock.
-   65535 (default) – Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-allowgamedvr"></a>**ApplicationManagement/AllowGameDVR**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether DVR and broadcasting is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-allowshareduserappdata"></a>**ApplicationManagement/AllowSharedUserAppData**  
<p style="margin-left: 20px">Specifies whether multiple users of the same app can share data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-allowstore"></a>**ApplicationManagement/AllowStore**  
<p style="margin-left: 20px">Specifies whether app store is allowed at the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-applicationrestrictions"></a>**ApplicationManagement/ApplicationRestrictions**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.

 
<p style="margin-left: 20px">An XML blob that specifies the application restrictions company want to put to the device. It could be an app allow list, app disallow list, allowed publisher IDs, and so on. For a list of Windows apps and product IDs, see [inbox apps](applocker-csp.md#inboxappsandcomponents). For more information about the XML, see the [ApplicationRestrictions XSD](applicationrestrictions-xsd.md).

> [!NOTE]
> When you upgrade Windows Phone 8.1 devices to Windows 10 Mobile with a list of allowed apps, some Windows inbox apps get blocked causing unexpected behavior. To work around this issue, you must include the [inbox apps](applocker-csp.md#inboxappsandcomponents) that you need to your list of allowed apps.
>
> Here's additional guidance for the upgrade process:
>
>  -   Use Windows 10 product IDs for the apps listed in [inbox apps](applocker-csp.md#inboxappsandcomponents).
>  -   Use the new Microsoft publisher name (PublisherName="CN=Microsoft Corporation, O=Microsoft Corporation, L=Redmond, S=Washington, C=US") and Publisher="CN=Microsoft Windows, O=Microsoft Corporation, L=Redmond, S=Washington, C=US" if you are using the publisher policy. Do not remove the Windows  Phone 8.1 publisher if you are using it.
>  -   In the SyncML, you must use lowercase product ID.
>  -   Do not duplicate a product ID. Messaging and Skype Video use the same product ID. Duplicates cause an error.
>  -   You cannot disable or enable **Contact Support** and **Windows Feedback** apps using ApplicationManagement/ApplicationRestrictions policy, although these are listed in the [inbox apps](applocker-csp.md#inboxappsandcomponents).


<p style="margin-left: 20px">An application that is running may not be immediately terminated.

<p style="margin-left: 20px">Value type is chr.

<p style="margin-left: 20px">Value evaluation rule - The information for PolicyManager is opaque. There is no most restricted value evaluation. Whenever there is a change to the value, the device parses the node value and enforces specified policies.

<a href="" id="applicationmanagement-disablestoreoriginatedapps"></a>**ApplicationManagement/DisableStoreOriginatedApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Boolean value that disables the launch of all apps from Windows Store that came pre-installed or were downloaded.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enable launch of apps.
-   1 – Disable launch of apps.

<a href="" id="applicationmanagement-requireprivatestoreonly"></a>**ApplicationManagement/RequirePrivateStoreOnly**  
<p style="margin-left: 20px">Allows disabling of the retail catalog and only enables the Private store.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/ApplicationManagement/RequirePrivateStoreOnly** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/ApplicationManagement/RequirePrivateStoreOnly** to get the result.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Allow both public and Private store.
-   1 – Only Private store is enabled.

<p style="margin-left: 20px">This is a per user policy.

<p style="margin-left: 20px">Most restricted value is 1.

<a href="" id="applicationmanagement-restrictappdatatosystemvolume"></a>**ApplicationManagement/RestrictAppDataToSystemVolume**  
<p style="margin-left: 20px">Specifies whether application data is restricted to the system drive.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="applicationmanagement-restrictapptosystemvolume"></a>**ApplicationManagement/RestrictAppToSystemVolume**  
<p style="margin-left: 20px">Specifies whether the installation of applications is restricted to the system drive.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not restricted.
-   1 – Restricted.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Authentication/AllowEAPCertSSO** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Authentication/AllowEAPCertSSO** to get the result.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="authentication-allowfastreconnect"></a>**Authentication/AllowFastReconnect**  
<p style="margin-left: 20px">Allows EAP Fast Reconnect from being attempted for EAP Method TLS.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows secondary authentication devices to work with Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premise only environment, cloud domain-joined in a hybrid environment, and BYOD).

<a href="" id="bitlocker-encryptionmethod"></a>**Bitlocker/EncryptionMethod**  
<p style="margin-left: 20px">Specifies the BitLocker Drive Encryption method and cipher strength.

<p style="margin-left: 20px">The following list shows the supported values:

-   3- AES 128-bit
-   4- AES 256
-   6 -XTS 128
-   7 - XTS 256

<a href="" id="bluetooth-allowadvertising"></a>**Bluetooth/AllowAdvertising**  
<p style="margin-left: 20px">Specifies whether the device can send out Bluetooth advertisements.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, the device will not send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is not received by the peripheral.
-   1 (default) – Allowed. When set to 1, the device will send out advertisements. To verify, use any Bluetooth LE app and enable it to do advertising. Then, verify that the advertisement is received by the peripheral.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="bluetooth-allowdiscoverablemode"></a>**Bluetooth/AllowDiscoverableMode**  
<p style="margin-left: 20px">Specifies whether other Bluetooth-enabled devices can discover the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. When set to 0, other devices will not be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that you cannot see the name of the device.
-   1 (default) – Allowed. When set to 1, other devices will be able to detect the device. To verify, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel and verify that you can discover it.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 1 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="bluetooth-allowprepairing"></a>**Bluetooth/AllowPrepairing**  
<p style="margin-left: 20px">Specifies whether to allow specific bundled Bluetooth peripherals to automatically pair with the host device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default)– Allowed.

<a href="" id="bluetooth-localdevicename"></a>**Bluetooth/LocalDeviceName**  
<p style="margin-left: 20px">Sets the local Bluetooth device name.

<p style="margin-left: 20px">If this is set, the value that it is set to will be used as the Bluetooth device name. To verify the policy is set, open the Bluetooth control panel on the device. Then, go to another Bluetooth-enabled device, open the Bluetooth control panel, and verify that the value that was specified.

<p style="margin-left: 20px">If this policy is not set or it is deleted, the default local radio name is used.

<a href="" id="bluetooth-servicesallowedlist"></a>**Bluetooth/ServicesAllowedList**  
<p style="margin-left: 20px">Set a list of allowable services and profiles. String hex formatted array of Bluetooth service UUIDs in canonical format, delimited by semicolons. For example, {782AFCFC-7CAA-436C-8BF0-78CD0FFBD4AF}.

<p style="margin-left: 20px">The default value is an empty string.

<a href="" id="browser-allowautofill"></a>**Browser/AllowAutofill**  
<p style="margin-left: 20px">Specifies whether autofill on websites is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowAutofill is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Save form entries** is greyed out.

<a href="" id="browser-allowbrowser"></a>**Browser/AllowBrowser**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop. For desktop devices, use the [AppLocker CSP](applocker-csp.md) instead.


<p style="margin-left: 20px">Specifies whether the browser is allowed on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">When this policy is set to 0 (not allowed), the Microsoft Edge for Windows 10 Mobile tile will appear greyed out, and clicking on the tile will display a message indicating theat Internet browsing has been disabled by your administrator.

<a href="" id="browser-allowcookies"></a>**Browser/AllowCookies**  
<p style="margin-left: 20px">Specifies whether cookies are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowCookies is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Cookies** is greyed out.

<a href="" id="browser-allowdevelopertools"></a>**Browser/AllowDeveloperTools**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether employees can use F12 Developer Tools on Microsoft Edge. Turning this setting on, or not configuring it, lets employees use F12 Developer Tools. Turning this setting off stops employees from using F12 Developer Tools.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="browser-allowdonottrack"></a>**Browser/AllowDoNotTrack**  
<p style="margin-left: 20px">Specifies whether Do Not Track headers are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowDoNotTrack is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Send Do Not Track requests** is greyed out.

<a href="" id="browser-allowextensions"></a>**Browser/AllowExtensions**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Microsoft Edge extensions are allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0– Not allowed.
-   1 (default) – Allowed.

<a href="" id="browser-allowinprivate"></a>**Browser/AllowInPrivate**  
<p style="margin-left: 20px">Specifies whether InPrivate browsing is allowed on corporate networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0– Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="browser-allowpasswordmanager"></a>**Browser/AllowPasswordManager**  
<p style="margin-left: 20px">Specifies whether saving and managing passwords locally on the device is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To verify AllowPasswordManager is set to 0 (not allowed):

1.  Open Microsoft Edge orMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the settings **Offer to save password** and **Manage my saved passwords** are greyed out.

<a href="" id="browser-allowpopups"></a>**Browser/AllowPopups**  
<p style="margin-left: 20px">Specifies whether pop-up blocker is allowed or enabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Pop-up blocker is not allowed. It means that pop-up browser windows are allowed.
-   1 – Pop-up blocker is allowed or enabled. It means that pop-up browser windows are blocked.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowPopups is set to 0 (not allowed):

1.  Open Microsoft Edge.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Block pop-ups** is greyed out.

<a href="" id="browser-allowsearchsuggestionsinaddressbar"></a>**Browser/AllowSearchSuggestionsinAddressBar**  
<p style="margin-left: 20px">Specifies whether search suggestions are allowed in the address bar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="browser-allowsmartscreen"></a>**Browser/AllowSmartScreen**  
<p style="margin-left: 20px">Specifies whether SmartScreen is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 1.

<p style="margin-left: 20px">To verify AllowSmartScreen is set to 0 (not allowed):

1.  Open Microsoft EdgeorMicrosoft Edge for Windows 10 Mobile.
2.  In the upper-right corner of the browser, click **…**.
3.  Click **Settings** in the drop down list, and select **View Advanced Settings**.
4.  Verify the setting **Help protect me from malicious sites and download with SmartScreen Filter** is greyed out.

<a href="" id="browser-enterprisemodesitelist"></a>**Browser/EnterpriseModeSiteList**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Allows the user to specify an URL of an enterprise site list.

<p style="margin-left: 20px">The following list shows the supported values:

-   Not configured. The device checks for updates from Microsoft Update.
-   Set to a URL location of the enterprise site list.

<a href="" id="browser-firstrunurl"></a>**Browser/FirstRunURL**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies the URL that Microsoft Edge for Windows 10 Mobile. will use when it is opened the first time.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the string should contain the URL of the web page users will see the first time Microsoft Edge is run. For example, “contoso.com”.

<a href="" id="browser-homepages"></a>**Browser/HomePages**  
> [!NOTE]
> This policy is only available for Windows 10 for desktop and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Specifies your Start pages for MDM-enrolled devices. Users can change this setting. Turning this setting on lets you configure one or more corporate Start pages. If this setting is turned on, you must also include URLs to the pages, separating multiple pages by using the XML-escaped characters **&lt;** and **&gt;**. For example, "&lt;support.contoso.com&gt;&lt;support.microsoft.com&gt;"

<p style="margin-left: 20px">Starting in Windows 10, version 1607, this policy will be enforced so that the Start pages specified by this policy cannot be changed by the users.

> [!NOTE]
> Turning this setting off, or not configuring it, sets your default Start pages to the web pages specified in App settings.


<a href="" id="browser-preventaccesstoaboutflagsinmicrosoftedge"></a>**Browser/PreventAccessToAboutFlagsInMicrosoftEdge**  
<p style="margin-left: 20px">Specifies whether users can access the about:flags page, which is used to change developer settings and to enable experimental features.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Users can access the about:flags page in Microsoft Edge.
-   1 – Users can't access the about:flags page in Microsoft Edge.

<a href="" id="browser-preventsmartscreenpromptoverride"></a>**Browser/PreventSmartScreenPromptOverride**  
<p style="margin-left: 20px">Specifies whether users can override the SmartScreen Filter warnings about potentially malicious websites.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<p style="margin-left: 20px">Turning this setting on stops users from ignoring the SmartScreen Filter warnings and blocks them from going to the site. Turning this setting off, or not configuring it, lets users ignore the SmartScreen Filter warnings about potentially malicious websites and to continue to the site.

<a href="" id="browser-preventsmartscreenpromptoverrideforfiles"></a>**Browser/PreventSmartScreenPromptOverrideForFiles**  
<p style="margin-left: 20px">Specifies whether users can override the SmartScreen Filter warnings about downloading unverified files. Turning this setting on stops users from ignoring the SmartScreen Filter warnings and blocks them from downloading unverified files. Turning this setting off, or not configuring it, lets users ignore the SmartScreen Filter warnings about unverified files and lets them continue the download process.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Off.
-   1 – On.

<a href="" id="browser-preventusinglocalhostipaddressforwebrtc"></a>**Browser/PreventUsingLocalHostIPAddressForWebRTC**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether a user's localhost IP address is displayed while making phone calls using the WebRTC protocol. Turning this setting on hides an user’s localhost IP address while making phone calls using WebRTC. Turning this setting off, or not configuring it, shows an <p style="margin-left: 20px">user’s localhost IP address while making phone calls using WebRTC.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – The localhost IP address is shown.
-   1 – The localhost IP address is hidden.

<a href="" id="browser-sendintranettraffictointernetexplorer"></a>**Browser/SendIntranetTraffictoInternetExplorer**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to send intranet traffic over to Internet Explorer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Intranet traffic is sent to Internet Explorer.
-   1 – Intranet traffic is sent to Microsoft Edge.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="browser-showmessagewhenopeningsitesininternetexplorer"></a>**Browser/ShowMessageWhenOpeningSitesInInternetExplorer**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether users should see a full interstitial page in Microsoft Edge when opening sites that are configured to open in Internet Explorer using the Enterprise Site List.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Interstitial pages are not shown.
-   1 – Interstitial pages are shown.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="camera-allowcamera"></a>**Camera/AllowCamera**  
<p style="margin-left: 20px">Disables or enables the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="connectivity-allowbluetooth"></a>**Connectivity/AllowBluetooth**  
<p style="margin-left: 20px">Allows the user to enable Bluetooth or restrict access.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disallow Bluetooth. If this is set to 0, the radio in the Bluetooth control panel will be greyed out and the user will not be able to turn Bluetooth on.
-   1 – Reserved. If this is set to 1, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

> [!NOTE]
>  This value is not supported in Windows Phone 8.1 MDM and EAS, Windows 10 for desktop, or Windows 10 Mobile.

-   2 (default) – Allow Bluetooth. If this is set to 2, the radio in the Bluetooth control panel will be functional and the user will be able to turn Bluetooth on.

<p style="margin-left: 20px">If this is not set or it is deleted, the default value of 2 (Allow) is used.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="connectivity-allowcellulardata"></a>**Connectivity/AllowCellularData**  
<p style="margin-left: 20px">Allows the cellular data channel on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow the cellular data channel. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow the cellular data channel. The user can turn it off.
-   2 - Allow the cellular data channel. The user cannot turn it off.

<a href="" id="connectivity-allowcellulardataroaming"></a>**Connectivity/AllowCellularDataRoaming**  
<p style="margin-left: 20px">Allows or disallows cellular data roaming on the device. Device reboot is not required to enforce the policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow cellular data roaming. The user can turn it on. This value is not supported in Windows 10, version 1511.
-   1 (default) – Allow cellular data roaming.
-   2 - Allow cellular data roaming on. The user cannot turn it off.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">To validate, the enterprise can confirm by observing the roaming enable switch in the UX. It will be inactive if the roaming policy is being enforced by the enterprise policy.

<p style="margin-left: 20px">To validate on mobile devices, do the following:

1.  Go to Cellular & SIM.
2.  Click on the SIM (next to the signal strength icon) and select **Properties**.
3.  On the Properties page, select **Data roaming options**.

<a href="" id="connectivity-allownfc"></a>**Connectivity/AllowNFC**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows near field communication (NFC) on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow NFC capabilities.
-   1 (default) – Allow NFC capabilities.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="connectivity-allowusbconnection"></a>**Connectivity/AllowUSBConnection**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Enables USB connection between the device and a computer to sync files with the device or to use developer tools to deploy or debug applications. Changing this policy does not affect USB charging.

<p style="margin-left: 20px">Both Media Transfer Protocol (MTP) and IP over USB are disabled when this policy is enforced.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="connectivity-allowvpnovercellular"></a>**Connectivity/AllowVPNOverCellular**  
<p style="margin-left: 20px">Specifies what type of underlying connections VPN is allowed to use.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – VPN is not allowed over cellular.
-   1 (default) – VPN can use any connection, including cellular.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="connectivity-allowvpnroamingovercellular"></a>**Connectivity/AllowVPNRoamingOverCellular**  
<p style="margin-left: 20px">Prevents the device from connecting to VPN when the device roams over cellular networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="cryptography-allowfipsalgorithmpolicy"></a>**Cryptography/AllowFipsAlgorithmPolicy**  
<p style="margin-left: 20px">Allows or disallows the Federal Information Processing Standard (FIPS) policy.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1– Allowed.

<a href="" id="cryptography-tlsciphersuites"></a>**Cryptography/TLSCipherSuites**  
<p style="margin-left: 20px">Lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.

<a href="" id="dataprotection-allowdirectmemoryaccess"></a>**DataProtection/AllowDirectMemoryAccess**  
<p style="margin-left: 20px">Allows Direct Memory Access.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="dataprotection-legacyselectivewipeid"></a>**DataProtection/LegacySelectiveWipeID**  
> [!IMPORTANT]
> This policy may change in a future release. It may be used for testing purposes, but should not be used in a production environment at this time.

 
<p style="margin-left: 20px">Setting used by Windows 8.1 Selective Wipe.

> [!NOTE]
> This policy is not recommended for use in Windows 10.


<a href="" id="defender-allowarchivescanning"></a>**Defender/AllowArchiveScanning**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of archives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowbehaviormonitoring"></a>**Defender/AllowBehaviorMonitoring**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender Behavior Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowcloudprotection"></a>**Defender/AllowCloudProtection**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowemailscanning"></a>**Defender/AllowEmailScanning**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows scanning of email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<a href="" id="defender-allowfullscanonmappednetworkdrives"></a>**Defender/AllowFullScanOnMappedNetworkDrives**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of mapped network drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<a href="" id="defender-allowfullscanremovabledrivescanning"></a>**Defender/AllowFullScanRemovableDriveScanning**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows a full scan of removable drives.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowintrusionpreventionsystem"></a>**Defender/AllowIntrusionPreventionSystem**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Intrusion Prevention functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowioavprotection"></a>**Defender/AllowIOAVProtection**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows Windows Defender IOAVP Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowonaccessprotection"></a>**Defender/AllowOnAccessProtection**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender On Access Protection functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowrealtimemonitoring"></a>**Defender/AllowRealtimeMonitoring**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Realtime Monitoring functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowscanningnetworkfiles"></a>**Defender/AllowScanningNetworkFiles**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallows a scanning of network files.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowscriptscanning"></a>**Defender/AllowScriptScanning**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows Windows Defender Script Scanning functionality.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-allowuseruiaccess"></a>**Defender/AllowUserUIAccess**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="defender-avgcpuloadfactor"></a>**Defender/AVGCPULoadFactor**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Represents the average CPU load factor for the Windows Defender scan (in percent).

<p style="margin-left: 20px">Valid values: 0–100

<p style="margin-left: 20px">The default value is 50.

<a href="" id="defender-daystoretaincleanedmalware"></a>**Defender/DaysToRetainCleanedMalware**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Time period (in days) that quarantine items will be stored on the system.

<p style="margin-left: 20px">Valid values: 0–90

<p style="margin-left: 20px">The default value is 0, which keeps items in quarantine, and does not automatically remove them.

<a href="" id="defender-excludedextensions"></a>**Defender/ExcludedExtensions**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">llows an administrator to specify a list of file type extensions to ignore during a scan. Each file type in the list must be separated by a **|**. For example, "lib|obj".

<a href="" id="defender-excludedpaths"></a>**Defender/ExcludedPaths**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of directory paths to ignore during a scan. Each path in the list must be separated by a **|**. For example, "C:\\Example|C:\\Example1".

<a href="" id="defender-excludedprocesses"></a>**Defender/ExcludedProcesses**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows an administrator to specify a list of files opened by processes to ignore during a scan.

> [!IMPORTANT]
> The process itself is not excluded from the scan, but can be by using the **Defender/ExcludedPaths** policy to exclude its path.

 
<p style="margin-left: 20px">Each file type must be separated by a **|**. For example, "C:\\Example.exe|C:\\Example1.exe".

<a href="" id="defender-puaprotection"></a>**Defender/PUAProtection**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – PUA Protection off. Windows Defender will not protect against potentially unwanted applications.
-   1 – PUA Protection on. Detected items are blocked. They will show in history along with other threats.
-   2 – Audit mode. Windows Defender will detect potentially unwanted applications, but take no action. You can review information about the applications Windows Defender would have taken action against by searching for events created by Windows Defender in the Event Viewer.

<a href="" id="defender-realtimescandirection"></a>**Defender/RealTimeScanDirection**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Controls which sets of files should be monitored.

> [!NOTE]
> If **AllowOnAccessProtection** is not allowed, then this configuration can be used to monitor specific files.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Monitor all files (bi-directional).
-   1 – Monitor incoming files.
-   2 – Monitor outgoing files.

<a href="" id="defender-scanparameter"></a>**Defender/ScanParameter**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects whether to perform a quick scan or full scan.

<p style="margin-left: 20px">The following list shows the supported values:

-   1 (default) – Quick scan
-   2 – Full scan

<a href="" id="defender-schedulequickscantime"></a>**Defender/ScheduleQuickScanTime**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Selects the time of day that the Windows Defender quick scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.

 
<p style="margin-left: 20px">Valid values: 0–1380

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120

<a href="" id="defender-schedulescanday"></a>**Defender/ScheduleScanDay**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">The following list shows the supported values:

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
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Selects the time of day that the Windows Defender scan should run.

> [!NOTE]
> The scan type will depends on what scan type is selected in the **Defender/ScanParameter** setting.


<p style="margin-left: 20px">Valid values: 0–1380.

<p style="margin-left: 20px">For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM.

<p style="margin-left: 20px">The default value is 120.

<a href="" id="defender-signatureupdateinterval"></a>**Defender/SignatureUpdateInterval**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval.

<p style="margin-left: 20px">Valid values: 0–24.

<p style="margin-left: 20px">A value of 0 means no check for new signatures, a value of 1 means to check every hour, a value of 2 means to check every two hours, and so on, up to a value of 24, which means to check every day.

<p style="margin-left: 20px">The default value is 8.

<a href="" id="defender-submitsamplesconsent"></a>**Defender/SubmitSamplesConsent**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.

 
<p style="margin-left: 20px">Checks for the user consent level in Windows Defender to send data. If the required consent has already been granted, Windows Defender submits them. If not, (and if the user has specified never to ask), the UI is launched to ask for user consent (when **Defender/AllowCloudProtection** is allowed) before sending data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Always prompt.
-   1 (default) – Send safe samples automatically.
-   2 – Never send.
-   3 – Send all samples automatically.

<a href="" id="defender-threatseveritydefaultaction"></a>**Defender/ThreatSeverityDefaultAction**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop.
 

<p style="margin-left: 20px">Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.

<p style="margin-left: 20px">This value is a list of threat severity level IDs and corresponding actions, separated by a**|** using the format "*threat level*=*action*|*threat level*=*action*". For example "1=6|2=2|4=10|5=3

<p style="margin-left: 20px">The following list shows the supported values for threat severity levels:

-   1 – Low severity threats
-   2 – Moderate severity threats
-   4 – High severity threats
-   5 – Severe threats

<p style="margin-left: 20px">The following list shows the supported values for possible actions:

-   1 – Clean
-   2 – Quarantine
-   3 – Remove
-   6 – Allow
-   8 – User defined
-   10 – Block

<a href="" id="deliveryoptimization-doabsolutemaxcachesize"></a>**DeliveryOptimization/DOAbsoluteMaxCacheSize**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum size in GB of Delivery Optimization cache. This policy overrides the DOMaxCacheSize policy. The value 0 (zero) means "unlimited" cache. Delivery Optimization will clear the cache when the device is running low on disk space.

<p style="margin-left: 20px">The default value is 10.

<a href="" id="deliveryoptimization-doallowvpnpeercaching"></a>**DeliveryOptimization/DOAllowVPNPeerCaching**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether the device is allowed to participate in Peer Caching while connected via VPN to the domain network. This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.

<p style="margin-left: 20px">The default value is 0 (FALSE).

<a href="" id="deliveryoptimization-dodownloadmode"></a>**DeliveryOptimization/DODownloadMode**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies the download method that Delivery Optimization can use in downloads of Windows Updates, Apps and App updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 –HTTP only, no peering.
-   1 (default) – HTTP blended with peering behind the same NAT.
-   2 – HTTP blended with peering across a private group. Peering occurs on devices in the same Active Directory Site (if it exists) or the same domain by default. When this option is selected, peering will cross NATs. To create a custom group use Group ID in combination with Mode 2.
-   3 – HTTP blended with Internet peering.
-   99 - Simple download mode with no peering. Delivery Optimization downloads using HTTP only and does not attempt to contact the Delivery Optimization cloud services. Added in Windows 10, version 1607.
-   100 - Bypass mode. Do not use Delivery Optimization and use BITS instead. Added in Windows 10, version 1607.

<a href="" id="deliveryoptimization-dogroupid"></a>**DeliveryOptimization/DOGroupID**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">This Policy specifies an arbitrary group ID that the device belongs to. Use this if you need to create a single group for Local Network Peering for branches that are on different domains or are not on the same LAN. Note that this is a best effort optimization and should not be relied on for an authentication of identity.

> [!NOTE]
> You must use a GUID as the group ID.


<a href="" id="deliveryoptimization-domaxcacheage"></a>**DeliveryOptimization/DOMaxCacheAge**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies the maximum time in seconds that each file is held in the Delivery Optimization cache after downloading successfully. The value 0 (zero) means "unlimited"; Delivery Optimization will hold the files in the cache longer and make the files available for uploads to other devices, as long as the cache size has not exceeded. The value 0 is new in Windows 10, version 1607.

<p style="margin-left: 20px">The default value is 259200 seconds (3 days).

<a href="" id="deliveryoptimization-domaxcachesize"></a>**DeliveryOptimization/DOMaxCacheSize**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Specifies the maximum cache size that Delivery Optimization can utilize, as a percentage of disk size (1-100).

<p style="margin-left: 20px">The default value is 20.

<a href="" id="deliveryoptimization-domaxdownloadbandwidth"></a>**DeliveryOptimization/DOMaxDownloadBandwidth**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.
 

<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization.

<p style="margin-left: 20px">The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<a href="" id="deliveryoptimization-domaxuploadbandwidth"></a>**DeliveryOptimization/DOMaxUploadBandwidth**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization.

<p style="margin-left: 20px">The default value is 0, which permits unlimited possible bandwidth (optimized for minimal usage of upload bandwidth).

<a href="" id="deliveryoptimization-dominbackgroundqos"></a>**DeliveryOptimization/DOMinBackgroundQos**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the minimum download QoS (Quality of Service or speed) in KiloBytes/sec for background downloads. This policy affects the blending of peer and HTTP sources. Delivery Optimization complements the download from the HTTP source to achieve the minimum QoS value set.

<p style="margin-left: 20px">The default value is 500.

<a href="" id="deliveryoptimization-domindisksizeallowedtopeer"></a>**DeliveryOptimization/DOMinDiskSizeAllowedToPeer**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the required minimum disk size (capacity in GB) for the device to use Peer Caching. The value 0 means "not-limited" which means the cloud service set default value will be used. Recommended values: 64 GB to 256 GB.

> [!NOTE]
> If the DOMofidyCacheDrive policy is set, the disk size check will apply to the new working directory specified by this policy.

<p style="margin-left: 20px">The default value is 32 GB.


<a href="" id="deliveryoptimization-dominfilesizetocache"></a>**DeliveryOptimization/DOMinFileSizeToCache**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the minimum content file size in MB enabled to use Peer Caching. The value 0 means "unlimited" which means the cloud service set default value will be used. Recommended values: 1 MB to 100,000 MB.

<p style="margin-left: 20px">The default value is 100 MB.


<a href="" id="deliveryoptimization-dominramallowedtopeer"></a>**DeliveryOptimization/DOMinRAMAllowedToPeer**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the minimum RAM size in GB required to use Peer Caching. The value 0 means "not-limited" which means the cloud service set default value will be used. For example if the minimum set is 1 GB, then devices with 1 GB or higher available RAM will be allowed to use Peer caching. Recommended values: 1 GB to 4 GB.

<p style="margin-left: 20px">The default value is 4 GB.

<a href="" id="deliveryoptimization-domodifycachedrive"></a>**DeliveryOptimization/DOModifyCacheDrive**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the drive that Delivery Optimization should use for its cache. The drive location can be specified using environment variables, drive letter or using a full path.

<p style="margin-left: 20px">By default, %SystemDrive% is used to store the cache.

<a href="" id="deliveryoptimization-domonthlyuploaddatacap"></a>**DeliveryOptimization/DOMonthlyUploadDataCap**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum total bytes in GB that Delivery Optimization is allowed to upload to Internet peers in each calendar month.

<p style="margin-left: 20px">The value 0 (zero) means "unlimited"; No monthly upload limit is applied if 0 is set.

<p style="margin-left: 20px">The default value is 20.

<a href="" id="deliveryoptimization-dopercentagemaxdownloadbandwidth"></a>**DeliveryOptimization/DOPercentageMaxDownloadBandwidth**  
> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Mobile.

 
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the maximum download bandwidth that Delivery Optimization uses across all concurrent download activities as a percentage of available download bandwidth.

<p style="margin-left: 20px">The default value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads.

<a href="" id="devicelock-allowidlereturnwithoutpassword"></a>**DeviceLock/AllowIdleReturnWithoutPassword**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether the user must input a PIN or password when the device resumes from an idle state.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

 
<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="devicelock-allowscreentimeoutwhilelockeduserconfig"></a>**DeviceLock/AllowScreenTimeoutWhileLockedUserConfig**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

> [!IMPORTANT]
> If this policy is set to 1 (Allowed), the value set by **DeviceLock/ScreenTimeOutWhileLocked** is ignored. To ensure enterprise control over the screen timeout, set this policy to 0 (Not allowed) and use **DeviceLock/ScreenTimeOutWhileLocked** to set the screen timeout period.


<a href="" id="devicelock-allowsimpledevicepassword"></a>**DeviceLock/AllowSimpleDevicePassword**  
<p style="margin-left: 20px">Specifies whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-alphanumericdevicepasswordrequired"></a>**DeviceLock/AlphanumericDevicePasswordRequired**  
<p style="margin-left: 20px">Determines the type of PIN or password required. This policy only applies if the **DeviceLock/DevicePasswordEnabled** policy is set to 0 (required).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education).


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Alphanumeric PIN or password required.
-   1 – Numeric PIN or password required.
-   2 (default) – Users can choose: Numeric PIN or password, or Alphanumeric PIN or password.

> [!NOTE]
> If **AlphanumericDevicePasswordRequired** is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.
>
> If **AlphanumericDevicePasswordRequired** is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

 
<a href="" id="devicelock-devicepasswordenabled"></a>**DeviceLock/DevicePasswordEnabled**  
<p style="margin-left: 20px">Specifies whether device lock is enabled.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.
 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

> [!IMPORTANT]
> The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:
>
> -   AllowSimpleDevicePassword
> -   MinDevicePasswordLength
> -   AlphanumericDevicePasswordRequired
> -   MaxDevicePasswordFailedAttempts
> -   MaxInactivityTimeDeviceLock
> -   MinDevicePasswordComplexCharacters
&nbsp;

> [!IMPORTANT]
> If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:
>
> -   MinDevicePasswordLength is set to 4
> -   MinDevicePasswordComplexCharacters is set to 1
>
> If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:
>
> -   MinDevicePasswordLength
> -   MinDevicePasswordComplexCharacters

 

<a href="" id="devicelock-devicepasswordexpiration"></a>**DeviceLock/DevicePasswordExpiration**  
<p style="margin-left: 20px">Specifies when the password expires (in days).

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 730.
-   0 (default) - Passwords do not expire.

<p style="margin-left: 20px">If all policy values = 0 then 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-devicepasswordhistory"></a>**DeviceLock/DevicePasswordHistory**  
<p style="margin-left: 20px">Specifies how many passwords can be stored in the history that can’t be used.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 50.
-   0 (default)

<p style="margin-left: 20px">The value includes the user's current password. This means that with a setting of 1 the user cannot reuse their current password when choosing a new password, while a setting of 5 means that a user cannot set their new password to their current password or any of their previous four passwords.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-enforcelockscreenandlogonimage"></a>**DeviceLock/EnforceLockScreenAndLogonImage**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the default lock screen and logon image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and logon screens. Users will not be able to change this image.

> [!NOTE]
> This policy is only enforced in Windows 10 Pro, Enterprise, and Education editions and not supported in Windows 10 Home.


<p style="margin-left: 20px">Value type is a string, which is the full image filepath and filename.

<a href="" id="devicelock-enforcelockscreenprovider"></a>**DeviceLock/EnforceLockScreenProvider**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Restricts lock screen image to a specific lock screen provider. Users will not be able change this provider.

> [!NOTE]
> This policy is only enforced in Windows 10 for mobile devices.


<p style="margin-left: 20px">Value type is a string, which is the AppID.

<a href="" id="devicelock-maxdevicepasswordfailedattempts"></a>**DeviceLock/MaxDevicePasswordFailedAttempts**  
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">This policy has different behaviors on the mobile device and desktop.

-   On a mobile device, when the user reaches the value set by this policy, then the device is wiped.
-   On a desktop, when the user reaches the value set by this policy, it is not wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker is not enabled, then the policy cannot be enforced.

    Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key.

<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for desktop and 0 &lt;= X &lt;= 999 for mobile devices.
-   0 (default) - The device is never wiped after an incorrect PIN or password is entered.

<p style="margin-left: 20px">Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-maxinactivitytimedevicelock"></a>**DeviceLock/MaxInactivityTimeDeviceLock**  
<p style="margin-left: 20px">Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked. Users can select any existing timeout value less than the specified maximum time in the Settings app. Note the Lumia 950 and 950XL have a maximum timeout value of 5 minutes, regardless of the value set by this policy.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<a href="" id="devicelock-mindevicepasswordcomplexcharacters"></a>**DeviceLock/MinDevicePasswordComplexCharacters**  
<p style="margin-left: 20px">The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

<p style="margin-left: 20px">PIN enforces the following behavior for desktop and mobile devices:

-   1 - Digits only
-   2 - Digits and lowercase letters are required
-   3 - Digits, lowercase letters, and uppercase letters are required
-   4 - Digits, lowercase letters, uppercase letters, and special characters are required

<p style="margin-left: 20px">The default value is 1. The following list shows the supported values and actual enforced values:

<table style="margin-left: 20px">
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Account Type</th>
<th>Supported Values</th>
<th>Actual Enforced Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Mobile</p></td>
<td style="vertical-align:top"><p>1,2,3,4</p></td>
<td style="vertical-align:top"><p>Same as the value set</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Local Accounts</p></td>
<td style="vertical-align:top"><p> 1,2,3</p></td>
<td style="vertical-align:top"><p>3</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Desktop Microsoft Accounts</p></td>
<td style="vertical-align:top"><p>1,2</p></td>
<td style="vertical-align:top"><p2</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Domain Accounts</p></td>
<td style="vertical-align:top"><p>Not supported</p></td>
<td style="vertical-align:top">Not supported</p></td>
</tr>
</tbody>
</table>


<p style="margin-left: 20px">Enforced values for Local and Microsoft Accounts:

-   Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
-   Passwords for local accounts must meet the following minimum requirements:

    -   Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
    -   Be at least six characters in length
    -   Contain characters from three of the following four categories:

        -   English uppercase characters (A through Z)
        -   English lowercase characters (a through z)
        -   Base 10 digits (0 through 9)
        -   Special characters (!, $, \#, %, etc.)

<p style="margin-left: 20px">The enforcement of policies for Microsoft accounts happen on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<a href="" id="devicelock-mindevicepasswordlength"></a>**DeviceLock/MinDevicePasswordLength**  
<p style="margin-left: 20px">Specifies the minimum number or characters required in the PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for mobile devices and desktop. However, local accounts will always enforce a minimum password length of 6.
-   Not enforced.
-   The default value is 4 for mobile devices and desktop devices.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<a href="" id="devicelock-screentimeoutwhilelocked"></a>**DeviceLock/ScreenTimeoutWhileLocked**  
<<<<<<< HEAD
> **Note**  This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.
=======
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

>>>>>>> b576fa8... Changed notes to new style, fixed a few fields for the new DeliveryOptimization CSPs
 
<p style="margin-left: 20px">Allows an enterprise to set the duration in seconds for the screen timeout while on the lock screen of Windows 10 Mobile devices.

<p style="margin-left: 20px">Minimum supported value is 10.

<p style="margin-left: 20px">Maximum supported value is 1800.

<p style="margin-left: 20px">The default value is 10.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user end point for discovering cloud printers.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//cloudprinterdiscovery.contoso.com".

<a href="" id="enterprisecloudprint-cloudprintoauthauthority"></a>**EnterpriseCloudPrint/CloudPrintOAuthAuthority**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the authentication endpoint for acquiring OAuth tokens.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//azuretenant.contoso.com/adfs".

<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a GUID. For example, "E1CF1107-FF90-4228-93BF-26052DD2C714".

<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication.

<p style="margin-left: 20px">The datatype is a string. 

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".

<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Defines the maximum number of printers that should be queried from a discovery end point.

<p style="margin-left: 20px">The datatype is an integer. 

<p style="margin-left: 20px">For Windows Mobile, the default value is 20.

<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the Mopria discovery client during OAuth authentication.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MopriaDiscoveryService/CloudPrint".

<a href="" id="experience-allowcopypaste"></a>**Experience/AllowCopyPaste**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

<p style="margin-left: 20px">Specifies whether copy and paste is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowcortana"></a>**Experience/AllowCortana**  
<p style="margin-left: 20px">Specifies whether Cortana is allowed on the device. If you enable or don’t configure this setting, Cortana is allowed on the device. If you disable this setting, Cortana is turned off. When Cortana is off, users will still be able to use search to find items on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowdevicediscovery"></a>**Experience/AllowDeviceDiscovery**  
<p style="margin-left: 20px">Allows users to turn on/off device discovery UX.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">When set to 0 , the projection pane is disabled. The Win+P and Win+K shortcut keys will not work on.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowmanualmdmunenrollment"></a>**Experience/AllowManualMDMUnenrollment**  
<p style="margin-left: 20px">Specifies whether to allow the user to delete the workplace account using the workplace control panel.

> [!NOTE]
> The MDM server can always remotely delete the account.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowscreencapture"></a>**Experience/AllowScreenCapture**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether screen capture is allowed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowsimerrordialogpromptwhennosim"></a>**Experience/AllowSIMErrorDialogPromptWhenNoSIM**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether to display dialog prompt when no SIM card is detected.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – SIM card dialog prompt is not displayed.
-   1 (default) – SIM card dialog prompt is displayed.

<a href="" id="experience-allowsyncmysettings"></a>**Experience/AllowSyncMySettings**  
<p style="margin-left: 20px">Allows or disallows all Windows sync settings on the device. For information about what settings are sync'ed, see [About sync setting on Windows 10 devices](http://windows.microsoft.com/windows-10/about-sync-settings-on-windows-10-devices).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Sync settings is not allowed.
-   1 (default) – Sync settings allowed.

<a href="" id="experience-allowtaskswitcher"></a>**Experience/AllowTaskSwitcher**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Allows or disallows task switching on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Task switching not allowed.
-   1 (default) – Task switching allowed.

<a href="" id="experience-allowthirdpartysuggestionsinwindowsspotlight"></a>**Experience/AllowThirdPartySuggestionsInWindowsSpotlight**  
> [!NOTE]
> This policy is only available for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.


<p style="margin-left: 20px">Specifies whether to allow app and content suggestions from third-party software publishers in Windows spotlight features like lock screen spotlight, suggested apps in the Start menu, and Windows tips. Users may still see suggestions for Microsoft features, apps, and services.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Third-party suggestions not allowed.
-   1 (default) – Third-party suggestions allowed.

<a href="" id="experience-allowvoicerecording"></a>**Experience/AllowVoiceRecording**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether voice recording is allowed for apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowwindowsconsumerfeatures"></a>**Experience/AllowWindowsConsumerFeatures**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">This policy allows IT admins to turn on experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Experience/AllowWindowsConsumerFeatures** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Experience/AllowWindowsConsumerFeatures** to get the result.

 
<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowwindowsspotlight"></a>**Experience/AllowWindowsSpotlight**  
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


<p style="margin-left: 20px">Specifies whether to turn off all Windows spotlight features at once. If you enable this policy setting, Windows spotlight on lock screen, Windows Tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices. If you disable or do not configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="experience-allowwindowstips"></a>**Experience/AllowWindowsTips**  
Enables or disables Windows Tips / soft landing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Enabled.

<a href="" id="experience-configurewindowsspotlightonlockscreen"></a>**Experience/ConfigureWindowsSpotlightOnLockScreen**  
> [!NOTE]
> This policy is only available for Windows 10 Enterprise and Windows 10 Education.


<p style="margin-left: 20px">Allows IT admins to specify whether spotlight should be used on the user's lock screen. If your organization does not have an Enterprise spotlight content service, then this policy will behave the same as a setting of 1.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – None.
-   1 (default) – Windows spotlight enabled.
-   2 – placeholder only for future extension. Using this value has no effect.

<a href="" id="experience-donotshowfeedbacknotifications"></a>**Experience/DoNotShowFeedbackNotifications**  
<p style="margin-left: 20px">Prevents devices from showing feedback questions from Microsoft.

<p style="margin-left: 20px">If you enable this policy setting, users will no longer see feedback notifications through the Feedback hub app. If you disable or do not configure this policy setting, users may see notifications through the Feedback hub app asking users for feedback.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can control how often they receive feedback questions.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Feedback notifications are not disabled. The actual state of feedback notifications on the device will then depend on what GP has configured or what the user has configured locally.
-   1 – Feedback notifications are disabled.

<a href="" id="licensing-allowwindowsentitlementreactivation"></a>**Licensing/AllowWindowsEntitlementReactivation**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables or Disable Windows license reactivation on managed devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable Windows license reactivation on managed devices.
-   1 (default) – Enable Windows license reactivation on managed devices.

<a href="" id="licensing-disallowkmsclientonlineavsvalidation"></a>**Licensing/DisallowKMSClientOnlineAVSValidation**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enabling this setting prevents this computer from sending data to Microsoft regarding its activation state.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disabled.
-   1 – Enabled.

<a href="" id="lockdown-allowedgeswipe"></a>**LockDown/AllowEdgeSwipe**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the user to invoke any system user interface by swiping in from any screen edge using touch.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - disallow edge swipe.
-   1 (default, not configured) - allow edge swipe.

<p style="margin-left: 20px">The easiest way to verify the policy is to restart the explorer process or to reboot after the policy is applied. And then try to swipe from the right edge of the screen. The desired result is for Action Center to not be invoked by the swipe. You can also enter tablet mode and attempt to swipe from the top of the screen to rearrange. That will also be disabled.

<a href="" id="maps-enableofflinemapsautoupdate"></a>**Maps/EnableOfflineMapsAutoUpdate**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Disables the automatic download and update of map data.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force off auto-update.
-   1 – Enabled. Force on auto-update.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<a href="" id="maps-allowofflinemapsdownloadovermeteredconnection"></a>**Maps/AllowOfflineMapsDownloadOverMeteredConnection**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the download and update of map data over metered connections.

<p style="margin-left: 20px">The following list shows the supported values:

-   65535 (default) – Not configured. User's choice.
-   0 – Disabled. Force disable auto-update over metered connection.
-   1 – Enabled. Force enable auto-update over metered connection.

<p style="margin-left: 20px">After the policy is applied, you can verify the settings in the user interface in **System** &gt; **Offline Maps**.

<a href="" id="messaging-allowmessagesync"></a>**Messaging/AllowMessageSync**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables text message back up and restore and Messaging Everywhere. This policy allows an organization to disable these features to avoid information being stored on servers outside of their control.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 - message sync is not allowed and cannot be changed by the user.
-   1 - message sync is allowed. The user can change this setting.

<a href="" id="networkisolation-enterprisecloudresources"></a>**NetworkIsolation/EnterpriseCloudResources**  
<p style="margin-left: 20px">Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the **EnterpriseInternalProxyServers** policy. This domain list is a pipe-separated list of cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address. For example, **&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|**.

<a href="" id="networkisolation-enterpriseinternalproxyservers"></a>**NetworkIsolation/EnterpriseInternalProxyServers**  
<p style="margin-left: 20px">This is the comma-separated list of internal proxy servers. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They are considered to be enterprise network locations. The proxies are only leveraged in configuring the **EnterpriseCloudResources** policy to force traffic to the matched cloud resources through these proxies.

<a href="" id="networkisolation-enterpriseiprange"></a>**NetworkIsolation/EnterpriseIPRange**  
<p style="margin-left: 20px">Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of IPv4 and IPv6 ranges. For example:

``` syntax
10.0.0.0-10.255.255.255,157.54.0.0-157.54.255.255,
192.168.0.0-192.168.255.255,2001:4898::-2001:4898:7fff:ffff:ffff:ffff:ffff:ffff,
2001:4898:dc05::-2001:4898:dc05:ffff:ffff:ffff:ffff:ffff,
2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,
fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff
       
```

<a href="" id="networkisolation-enterpriseiprangesareauthoritative"></a>**NetworkIsolation/EnterpriseIPRangesAreAuthoritative**  
<p style="margin-left: 20px">Boolean value that tells the client to accept the configured list and not to use heuristics to attempt to find other subnets.

<a href="" id="networkisolation-enterprisenetworkdomainnames"></a>**NetworkIsolation/EnterpriseNetworkDomainNames**  
<p style="margin-left: 20px">This is the list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected These locations will be considered a safe destination for enterprise data to be shared to. This is a comma-separated list of domains, for example "contoso.sharepoint.com, Fabrikam.com".

> [!NOTE]
> The client requires domain name to be canonical, otherwise the setting will be rejected by the client.
 

<p style="margin-left: 20px">Here are the steps to create canonical domain names:

1.  Transform the ASCII characters (A-Z only) to lower case. For example, Microsoft.COM -&gt; microsoft.com.
2.  Call [IdnToAscii](https://msdn.microsoft.com/library/windows/desktop/dd318149.aspx) with IDN\_USE\_STD3\_ASCII\_RULES as the flags.
3.  Call [IdnToUnicode](https://msdn.microsoft.com/library/windows/desktop/dd318151.aspx) with no flags set (dwFlags = 0).

<a href="" id="networkisolation-enterpriseproxyservers"></a>**NetworkIsolation/EnterpriseProxyServers**  
<p style="margin-left: 20px">This is a comma-separated list of proxy servers. Any server on this list is considered non-enterprise. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59".

<a href="" id="networkisolation-enterpriseproxyserversareauthoritative"></a>**NetworkIsolation/EnterpriseProxyServersAreAuthoritative**  
<p style="margin-left: 20px">Boolean value that tells the client to accept the configured list of proxies and not try to detect other work proxies.

<a href="" id="networkisolation-neutralresources"></a>**NetworkIsolation/NeutralResources**  
<p style="margin-left: 20px">List of domain names that can used for work or personal resource.

<a href="" id="notifications-disallownotificationmirroring"></a>**Notifications/DisallowNotificationMirroring**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Boolean value that turns off notification mirroring.

<p style="margin-left: 20px">For each user logged into the device, if you enable this policy (set value to 1) the app and system notifications received by this user on this device will not get mirrored to other devices of the same logged in user. If you disable or do not configure this policy (set value to 0) the notifications received by this user on this device will be mirrored to other devices of the same logged in user. This feature can be turned off by apps that do not want to participate in Notification Mirroring. This feature can also be turned off by the user in the Cortana setting page.

<p style="margin-left: 20px">No reboot or service restart is required for this policy to take effect.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– disable notification mirroring.
-   1 – enable notification mirroring.

<a href="" id="privacy-allowautoacceptpairingandprivacyconsentprompts"></a>**Privacy/AllowAutoAcceptPairingAndPrivacyConsentPrompts**  
<p style="margin-left: 20px">Allows or disallows the automatic acceptance of the pairing and privacy user consent dialog when launching apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default)– Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="privacy-allowinputpersonalization"></a>**Privacy/AllowInputPersonalization**  
<p style="margin-left: 20px">Updated in the next major update of Windows 10. Allows the usage of cloud based speech services for Cortana, dictation, or Store applications. Setting this policy to 1, lets Microsoft use the user's voice data to improve cloud speech services for all users.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.
 
<a href="" id="privacy-disableadvertisingid"></a>**Privacy/DisableAdvertisingId**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Enables or disables the Advertising ID.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 – Enabled.
-   65535 (default)- Not configured.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="privacy-letappsaccessaccountinfo"></a>**Privacy/LetAppsAccessAccountInfo**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access account information.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessaccountinfo-forceallowtheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccessaccountinfo-forcedenytheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to account information. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccessaccountinfo-userincontroloftheseapps"></a>**Privacy/LetAppsAccessAccountInfo\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the account information privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessAccountInfo policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar"></a>**Privacy/LetAppsAccessCalendar**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the calendar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesscalendar-forceallowtheseapps"></a>**Privacy/LetAppsAccessCalendar\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar-forcedenytheseapps"></a>**Privacy/LetAppsAccessCalendar\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to the calendar. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscalendar-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCalendar\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the calendar privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCalendar policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory"></a>**Privacy/LetAppsAccessCallHistory**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access call history.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesscallhistory-forceallowtheseapps"></a>**Privacy/LetAppsAccessCallHistory\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are allowed access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory-forcedenytheseapps"></a>**Privacy/LetAppsAccessCallHistory\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are denied access to call history. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscallhistory-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCallHistory\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows apps. The user is able to control the call history privacy setting for the listed Windows apps. This setting overrides the default LetAppsAccessCallHistory policy setting for the specified Windows apps.

<a href="" id="privacy-letappsaccesscamera"></a>**Privacy/LetAppsAccessCamera**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the camera.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesscamera-forceallowtheseapps"></a>**Privacy/LetAppsAccessCamera\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscamera-forcedenytheseapps"></a>**Privacy/LetAppsAccessCamera\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the camera. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscamera-userincontroloftheseapps"></a>**Privacy/LetAppsAccessCamera\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the camera privacy setting for the listed apps. This setting overrides the default LetAppsAccessCamera policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts"></a>**Privacy/LetAppsAccessContacts**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access contacts.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesscontacts-forceallowtheseapps"></a>**Privacy/LetAppsAccessContacts\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts-forcedenytheseapps"></a>**Privacy/LetAppsAccessContacts\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to contacts. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccesscontacts-userincontroloftheseapps"></a>**Privacy/LetAppsAccessContacts\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the contacts privacy setting for the listed apps. This setting overrides the default LetAppsAccessContacts policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail"></a>**Privacy/LetAppsAccessEmail**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access email.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessemail-forceallowtheseapps"></a>**Privacy/LetAppsAccessEmail\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail-forcedenytheseapps"></a>**Privacy/LetAppsAccessEmail\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to email. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccessemail-userincontroloftheseapps"></a>**Privacy/LetAppsAccessEmail\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the email privacy setting for the listed apps. This setting overrides the default LetAppsAccessEmail policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation"></a>**Privacy/LetAppsAccessLocation**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access location.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesslocation-forceallowtheseapps"></a>**Privacy/LetAppsAccessLocation\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation-forcedenytheseapps"></a>**Privacy/LetAppsAccessLocation\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to location. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccesslocation-userincontroloftheseapps"></a>**Privacy/LetAppsAccessLocation\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the location privacy setting for the listed apps. This setting overrides the default LetAppsAccessLocation policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging"></a>**Privacy/LetAppsAccessMessaging**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can read or send messages (text or MMS).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessmessaging-forceallowtheseapps"></a>**Privacy/LetAppsAccessMessaging\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging-forcedenytheseapps"></a>**Privacy/LetAppsAccessMessaging\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to read or send messages (text or MMS). This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmessaging-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMessaging\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the messaging privacy setting for the listed apps. This setting overrides the default LetAppsAccessMessaging policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone"></a>**Privacy/LetAppsAccessMicrophone**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access the microphone.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessmicrophone-forceallowtheseapps"></a>**Privacy/LetAppsAccessMicrophone\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone-forcedenytheseapps"></a>**Privacy/LetAppsAccessMicrophone\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to the microphone. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmicrophone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMicrophone\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the microphone privacy setting for the listed apps. This setting overrides the default LetAppsAccessMicrophone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion"></a>**Privacy/LetAppsAccessMotion**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access motion data.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessmotion-forceallowtheseapps"></a>**Privacy/LetAppsAccessMotion\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion-forcedenytheseapps"></a>**Privacy/LetAppsAccessMotion\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to motion data. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessmotion-userincontroloftheseapps"></a>**Privacy/LetAppsAccessMotion\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the motion privacy setting for the listed apps. This setting overrides the default LetAppsAccessMotion policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications"></a>**Privacy/LetAppsAccessNotifications**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access notifications.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessnotifications-forceallowtheseapps"></a>**Privacy/LetAppsAccessNotifications\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications-forcedenytheseapps"></a>**Privacy/LetAppsAccessNotifications\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied access to notifications. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessnotifications-userincontroloftheseapps"></a>**Privacy/LetAppsAccessNotifications\_UserInControlOfTheseApps**   
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the notifications privacy setting for the listed apps. This setting overrides the default LetAppsAccessNotifications policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone"></a>**Privacy/LetAppsAccessPhone**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can make phone calls.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessphone-forceallowtheseapps"></a>**Privacy/LetAppsAccessPhone\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone-forcedenytheseapps"></a>**Privacy/LetAppsAccessPhone\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are not allowed to make phone calls. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessphone-userincontroloftheseapps"></a>**Privacy/LetAppsAccessPhone\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the phone call privacy setting for the listed apps. This setting overrides the default LetAppsAccessPhone policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios"></a>**Privacy/LetAppsAccessRadios**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps have access to control radios.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccessradios-forceallowtheseapps"></a>**Privacy/LetAppsAccessRadios\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios-forcedenytheseapps"></a>**Privacy/LetAppsAccessRadios\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to control radios. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccessradios-userincontroloftheseapps"></a>**Privacy/LetAppsAccessRadios\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the radios privacy setting for the listed apps. This setting overrides the default LetAppsAccessRadios policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices"></a>**Privacy/LetAppsAccessTrustedDevices**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can access trusted devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsaccesstrusteddevices-forceallowtheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices-forcedenytheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to trusted devices. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappsaccesstrusteddevices-userincontroloftheseapps"></a>**Privacy/LetAppsAccessTrustedDevices\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'trusted devices' privacy setting for the listed apps. This setting overrides the default LetAppsAccessTrustedDevices policy setting for the specified apps.

<a href="" id="privacy-letappsgetdiagnosticinfo"></a>**Privacy/LetAppsGetDiagnosticInfo**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Force allow, force deny or give user control of apps that can get diagnostic information about other running apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappsgetdiagnosticinfo-forceallowtheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<a href="" id="privacy-letappsgetdiagnosticinfo-forcedenytheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to diagnostic information about other running apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<a href="" id="privacy-letappsgetdiagnosticinfo-userincontroloftheseapps"></a>**Privacy/LetAppsGetDiagnosticInfo\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'get diagnostic info' privacy setting for the listed apps. This setting overrides the default LetAppsGetDiagnosticInfo policy setting for the specified apps.

<a href="" id="privacy-letappsruninbackground"></a>**Privacy/LetAppsRunInBackground**  

<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies whether Windows apps can run in the background.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control (default).
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.
> [!WARNING]
> Be careful when determining which apps should have their background activity disabled. Communication apps normally update tiles and notifications through background processes. Turning off background activity for these types of apps could cause text message, email, and voicemail notifications to not function. This could also cause background email syncing to not function properly.

<a href="" id="privacy-letappsruninbackground-forceallowtheseapps"></a>**Privacy/LetAppsRunInBackground\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are able to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<a href="" id="privacy-letappsruninbackground-forcedenytheseapps"></a>**Privacy/LetAppsRunInBackground\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps are denied the ability to run in the background. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<a href="" id="privacy-letappsruninbackground-userincontroloftheseapps"></a>**Privacy/LetAppsRunInBackground\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the background apps privacy setting for the listed apps. This setting overrides the default LetAppsRunInBackground policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices"></a>**Privacy/LetAppsSyncWithDevices**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether Windows apps can sync with devices.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – User in control.
-   1 – Force allow.
-   2 - Force deny.

<p style="margin-left: 20px">Most restricted value is 2.

<a href="" id="privacy-letappssyncwithdevices-forceallowtheseapps"></a>**Privacy/LetAppsSyncWithDevices\_ForceAllowTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices-forcedenytheseapps"></a>**Privacy/LetAppsSyncWithDevices\_ForceDenyTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. Listed apps will not have access to sync with devices. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="privacy-letappssyncwithdevices-userincontroloftheseapps"></a>**Privacy/LetAppsSyncWithDevices\_UserInControlOfTheseApps**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the 'sync with devices' privacy setting for the listed apps. This setting overrides the default LetAppsSyncWithDevices policy setting for the specified apps.

<a href="" id="search-allowindexingencryptedstoresoritems"></a>**Search/AllowIndexingEncryptedStoresOrItems**  
<p style="margin-left: 20px">Allows or disallows the indexing of items. This switch is for the Windows Search Indexer, which controls whether it will index items that are encrypted, such as the Windows Information Protection (WIP) protected files.

<p style="margin-left: 20px">When the policy is enabled, WIP protected items are indexed and the metadata about them are stored in an unencrypted location. The metadata includes things like file path and date modified.

<p style="margin-left: 20px">When the policy is disabled, the WIP protected items are not indexed and do not show up in the results in Cortana or file explorer. There may also be a performance impact on photos and Groove apps if there are a lot of WIP protected media files on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="search-allowsearchtouselocation"></a>**Search/AllowSearchToUseLocation**  
<p style="margin-left: 20px">Specifies whether search can leverage location information.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="search-allowusingdiacritics"></a>**Search/AllowUsingDiacritics**  
<p style="margin-left: 20px">Allows the use of diacritics.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="search-alwaysuseautolangdetection"></a>**Search/AlwaysUseAutoLangDetection**  
<p style="margin-left: 20px">Specifies whether to always use automatic language detection when indexing content and properties.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="search-disablebackoff"></a>**Search/DisableBackoff**  
<p style="margin-left: 20px">If enabled, the search indexer backoff feature will be disabled. Indexing will continue at full speed even when system activity is high. If disabled, backoff logic will be used to throttle back indexing activity when system activity is high. Default is disabled.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<a href="" id="search-disableremovabledriveindexing"></a>**Search/DisableRemovableDriveIndexing**  
<p style="margin-left: 20px">This policy setting configures whether or not locations on removable drives can be added to libraries.

<p style="margin-left: 20px">If you enable this policy setting, locations on removable drives cannot be added to libraries. In addition, locations on removable drives cannot be indexed.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, locations on removable drives can be added to libraries. In addition, locations on removable drives can be indexed.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Disable.
-   1 – Enable.

<a href="" id="search-preventindexinglowdiskspacemb"></a>**Search/PreventIndexingLowDiskSpaceMB**  
<p style="margin-left: 20px">Enabling this policy prevents indexing from continuing after less than the specified amount of hard drive space is left on the same drive as the index location. Select between 0 and 2147483647 MB.

<p style="margin-left: 20px">Enable this policy if computers in your environment have extremely limited hard drive space.

<p style="margin-left: 20px">When this policy is disabled or not configured, Windows Desktop Search automatically manages your index size.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<a href="" id="search-preventremotequeries"></a>**Search/PreventRemoteQueries**  
<p style="margin-left: 20px">If enabled, clients will be unable to query this computer's index remotely. Thus, when they are browsing network shares that are stored on this computer, they will not search them using the index. If disabled, client search requests will use this computer's index..

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disable.
-   1 (default) – Enable.

<a href="" id="search-safesearchpermissions"></a>**Search/SafeSearchPermissions**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies what level of safe search (filtering adult content) is required.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Strict, highest filtering against adult content.
-   1 (default) – Moderate filtering against adult content (valid search results will not be filtered).

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="security-allowaddprovisioningpackage"></a>**Security/AllowAddProvisioningPackage**  
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to install provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-allowautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**  
> [!NOTE]
> This policy has been deprecated in Windows 10, version 1607

<br>

> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-allowmanualrootcertificateinstallation"></a>**Security/AllowManualRootCertificateInstallation**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether the user is allowed to manually install root and intermediate CA certificates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="security-allowremoveprovisioningpackage"></a>**Security/AllowRemoveProvisioningPackage**  
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to remove provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="security-antitheftmode"></a>**Security/AntiTheftMode**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallow Anti Theft Mode on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Don't allow Anti Theft Mode.
-   1 (default) – Anti Theft Mode will follow the default device configuration (region-dependent).

<a href="" id="security-preventautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607 to replace the deprecated policy **Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**.

<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption enabled.
-   1 – Encryption disabled.

<a href="" id="security-requiredeviceencryption"></a>**Security/RequireDeviceEncryption**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile. In Windows 10 for desktop, you can query encryption status by using the [DeviceStatus CSP](devicestatus-csp.md) node **DeviceStatus/Compliance/EncryptionCompliance**.


<p style="margin-left: 20px">Allows enterprise to turn on internal storage encryption.

> [!IMPORTANT]
> Bitlocker must be enabled on the device before using this policy.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption is not required.
-   1 – Encryption is required.

<p style="margin-left: 20px">Most restricted value is 1.

> [!IMPORTANT]
> If encryption has been enabled, it cannot be turned off using this policy.


<a href="" id="security-requireprovisioningpackagesignature"></a>**Security/RequireProvisioningPackageSignature**  
<p style="margin-left: 20px">Specifies whether provisioning packages must have a certificate signed by a device trusted authority.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<a href="" id="security-requireretrievehealthcertificateonboot"></a>**Security/RequireRetrieveHealthCertificateOnBoot**  
<p style="margin-left: 20px">Specifies whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service (HAS) when a device boots or reboots.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<p style="margin-left: 20px">Setting this policy to 1 (Required):

-   Determines whether a device is capable of Remote Device Health Attestation, by verifying if the device has TPM 2.0.
-   Improves the performance of the device by enabling the device to fetch and cache data to reduce the latency during Device Health Verification.

> [!NOTE]
> We recommend that this policy is set to Required after MDM enrollment.
 

<p style="margin-left: 20px">Most restricted value is 1.

<a href="" id="settings-allowautoplay"></a>**Settings/AllowAutoPlay**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change Auto Play settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

> [!NOTE]
> Setting this policy to 0 (Not allowed) does not affect the autoplay dialog box that appears when a device is connected.


<a href="" id="settings-allowdatasense"></a>**Settings/AllowDataSense**  
<p style="margin-left: 20px">Allows the user to change Data Sense settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowdatetime"></a>**Settings/AllowDateTime**  
<p style="margin-left: 20px">Allows the user to change date and time settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-alloweditdevicename"></a>**Settings/AllowEditDeviceName**  
<p style="margin-left: 20px">Allows editing of the device name.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowlanguage"></a>**Settings/AllowLanguage**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change the language settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowpowersleep"></a>**Settings/AllowPowerSleep**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change power and sleep settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowregion"></a>**Settings/AllowRegion**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change the region settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowsigninoptions"></a>**Settings/AllowSignInOptions**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows the user to change sign-in options.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowvpn"></a>**Settings/AllowVPN**  
<p style="margin-left: 20px">Allows the user to change VPN settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowworkplace"></a>**Settings/AllowWorkplace**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows user to change workplace settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="settings-allowyouraccount"></a>**Settings/AllowYourAccount**  
<p style="margin-left: 20px">Allows user to change account settings.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="speech-allowspeechmodelupdate"></a>**Speech/AllowSpeechModelUpdate**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether the device will receive updates to the speech recognition and speech synthesis models. A speech model contains data used by the speech engine to convert audio to text (or vice-versa). The models are periodically updated to improve accuracy and performance. Models are non-executable data files. If enabled, the device will periodically check for updated speech models and then download them from a Microsoft service using the Background Internet Transfer Service (BITS).

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="start-forcestartsize"></a>**Start/ForceStartSize**  
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Forces the start screen size.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Do not force size of Start.
-   1 – Force non-fullscreen size of Start.
-   2 - Force a fullscreen size of Start.

<p style="margin-left: 20px">If there is policy configuration conflict, the latest configuration request is applied to the device.

<a href="" id="start-startlayout"></a>**Start/StartLayout**  
> [!IMPORTANT]
> This node is set on a per-user basis and must be accessed using the following paths:
> -   **./User/Vendor/MSFT/Policy/Config/Start/StartLayout** to configure the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Start/StartLayout** to query the current value of the policy.


<p style="margin-left: 20px">Allows you to override the default Start layout and prevents the user from changing it.

<p style="margin-left: 20px">This policy is described in [Start/StartLayout Examples](#startlayout-examples) later in this topic.

<a href="" id="system-allowbuildpreview"></a>**System/AllowBuildPreview**  
> [!NOTE]
> This policy setting applies only to devices running Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, Windows 10 Mobile, and Windows 10 Mobile Enterprise.


<p style="margin-left: 20px">This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. These controls are located under "Get Insider builds," and enable users to make their devices available for downloading and installing Windows preview software.

<p style="margin-left: 20px">If you enable or do not configure this policy setting, users can download and install Windows preview software on their devices. If you disable this policy setting, the item "Get Insider builds" will be unavailable.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software.
-   1 – Allowed. Users can make their devices available for downloading and installing preview software.
-   2 (default) – Not configured. Users can make their devices available for downloading and installing preview software.

<a href="" id="system-allowembeddedmode"></a>**System/AllowEmbeddedMode**  
<p style="margin-left: 20px">Specifies whether set general purpose device to be in embedded mode.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="system-allowexperimentation"></a>**System/AllowExperimentation**  
> [!NOTE]
> This policy is not supported in Windows 10, version 1607.

<p style="margin-left: 20px">This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Permits Microsoft to configure device settings only.
-   2 – Allows Microsoft to conduct full experimentations.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="system-allowlocation"></a>**System/AllowLocation**  
<p style="margin-left: 20px">Specifies whether to allow app access to the Location service.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Force Location Off. All Location Privacy settings are toggled off and greyed out. Users cannot change the settings, and no apps are allowed access to the Location service, including Cortana and Search.
-   1 (default) – Location service is allowed. The user has control and can change Location Privacy settings on or off.
-   2 – Force Location On. All Location Privacy settings are toggled on and greyed out. Users cannot change the settings and all consent permissions will be automatically suppressed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy.

<p style="margin-left: 20px">When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting.

<p style="margin-left: 20px">For example, an app's original Location setting is Off. The administrator then sets the **AllowLocation** policy to 2 (Force Location On.) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the **AllowLocation** policy back to 1 (User Control), the app will revert to using its original setting of Off.

<a href="" id="system-allowstoragecard"></a>**System/AllowStorageCard**  
<p style="margin-left: 20px">Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – SD card use is not allowed and USB drives are disabled. This setting does not prevent programmatic access to the storage card. 
-   1 (default) – Allow a storage card.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="system-allowtelemetry"></a>**System/AllowTelemetry**  
<p style="margin-left: 20px">Allow the device to send diagnostic and usage telemetry data, such as Watson.

<p style="margin-left: 20px">The following tables describe the supported values:

<table style="margin-left: 20px">
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 8.1 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>0 – Not allowed.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p> 1 – Allowed, except for Secondary Data Requests.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 (default) – Allowed.</p></td>
</tr>
</tbody>
</table>


<table style="margin-left: 20px">
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
<td style="vertical-align:top"><p>0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.</p>
<div class="alert">
<strong>Note</strong>  This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
</div>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.</p></td>
</tr>
</tbody>
</table>


> [!IMPORTANT]
> If you are using Windows 8.1 MDM server and set a value of 0 using the legacy AllowTelemetry policy on a Windows 10 Mobile device, then the value is not respected and the telemetry level is silently set to level 1.


<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="system-allowusertoresetphone"></a>**System/AllowUserToResetPhone**  
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether to allow the user to factory reset the phone by using control panel and hardware key combination.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed to reset to factory default settings.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**  
<p style="margin-left: 20px">Allows you to specify the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests. The format for this setting is *&lt;server&gt;:&lt;port&gt;*. The connection is made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if there is no proxy specified when this policy is enabled, the Connected User Experiences and Telemetry data will not be transmitted and will remain on the local device.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Connected User Experiences and Telemetry will go to Microsoft using the default proxy configuration.

<a href="" id="textinput-allowimelogging"></a>**TextInput/AllowIMELogging**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the user to turn on and off the logging for incorrect conversion and saving auto-tuning result to a file and history-based predictive input.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowimenetworkaccess"></a>**TextInput/AllowIMENetworkAccess**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the user to turn on Open Extended Dictionary, Internet search integration, or cloud candidate features to provide input suggestions that do not exist in the device's local dictionary.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowinputpanel"></a>**TextInput/AllowInputPanel**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the IT admin to disable the touch/handwriting keyboard on Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowjapaneseimesurrogatepaircharacters"></a>**TextInput/AllowJapaneseIMESurrogatePairCharacters**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese IME surrogate pair characters.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowjapaneseivscharacters"></a>**TextInput/AllowJapaneseIVSCharacters**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows Japanese Ideographic Variation Sequence (IVS) characters.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowjapanesenonpublishingstandardglyph"></a>**TextInput/AllowJapaneseNonPublishingStandardGlyph**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese non-publishing standard glyph.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowjapaneseuserdictionary"></a>**TextInput/AllowJapaneseUserDictionary**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the Japanese user dictionary.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowkoreanextendedhanja"></a>**TextInput/AllowKoreanExtendedHanja**  
<p style="margin-left: 20px">This policy has been deprecated.

<a href="" id="textinput-allowlanguagefeaturesuninstall"></a>**TextInput/AllowLanguageFeaturesUninstall**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the uninstall of language features, such as spell checkers, on a device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="textinput-allowlinguisticdatacollection"></a>**TextInput/AllowLinguisticDataCollection**  
<p style="margin-left: 20px">Allows sending to Microsoft user text input data samples (anonymized) are collected for future language model improvements.

> [!IMPORTANT]
> Text input entered using specific input scope fields such as email address, login name, passwords, and phone numbers are excluded from any sampling.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<a href="" id="textinput-excludejapaneseimeexceptjis0208"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 are filtered.

<a href="" id="textinput-excludejapaneseimeexceptjis0208andeudc"></a>**TextInput/ExcludeJapaneseIMEExceptJIS0208andEUDC**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except JIS0208 and EUDC are filtered.

<a href="" id="textinput-excludejapaneseimeexceptshiftjis"></a>**TextInput/ExcludeJapaneseIMEExceptShiftJIS**  
> [!NOTE]
> The policy is only enforced in Windows 10 for desktop.


<p style="margin-left: 20px">Allows the users to restrict character code range of conversion by setting the character filter.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – No characters are filtered.
-   1 – All characters except ShiftJIS are filtered.

<a href="" id="update-activehoursend"></a>**Update/ActiveHoursEnd**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursStart**) to manage a range of active hours where update reboots are not scheduled. This value sets the end time. There is a 12 hour maximum from start time.

<p style="margin-left: 20px">Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

<p style="margin-left: 20px">The default is 17 (5 PM).

<a href="" id="update-activehoursstart"></a>**Update/ActiveHoursStart**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin (when used with **Update/ActiveHoursEnd**) to manage a range of hours where update reboots are not scheduled. This value sets the start time. There is a 12 hour maximum from start time.

<p style="margin-left: 20px">Supported values are 0-23, where 0 is 12 AM, 1 is 1 AM, etc.

<p style="margin-left: 20px">The default value is 8 (8 AM).

<a href="" id="update-allowautoupdate"></a>**Update/AllowAutoUpdate**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to manage automatic update behavior to scan, download, and install updates.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Notify the user before downloading the update. This policy is used by the enterprise who wants to enable the end-users to manage data usage. With this option users are notified when there are updates that apply to the device and are ready for download. Users can download and install the updates from the Windows Update control panel.
-   1 – Auto install the update and then notify the user to schedule a device restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates immediately. If the installation requires a restart, the end-user is prompted to schedule the restart time. The end-user has up to seven days to schedule the restart and after that, a restart of the device is forced. Enabling the end-user to control the start time reduces the risk of accidental data loss caused by applications that do not shutdown properly on restart.
-   2 (default) – Auto install and restart. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This is the default behavior for unmanaged devices. Devices are updated quickly, but it increases the risk of accidental data loss caused by an application that does not shutdown properly on restart.
-   3 – Auto install and restart at a specified time. The IT specifies the installation day and time. If no day and time are specified, the default is 3 AM daily. Automatic installation happens at this time and device restart happens after a 15-minute countdown. If the user is logged in when Windows is ready to restart, the user can interrupt the 15-minute countdown to delay the restart.
-   4 – Auto install and restart without end-user control. Updates are downloaded automatically on non-metered networks and installed during "Automatic Maintenance" when the device is not in use and is not running on battery power. If automatic maintenance is unable to install updates for two days, Windows Update will install updates right away. If a restart is required, then the device is automatically restarted when the device is not actively being used. This setting option also sets the end-user control panel to read-only.
-   5 – Turn off automatic updates.

> [!IMPORTANT]
> This option should be used only for systems under regulatory compliance, as you will not get security updates as well.
 

<p style="margin-left: 20px">If the policy is not configured, end-users get the default behavior (Auto install and restart).

<a href="" id="update-allowmuupdateservice"></a>**Update/AllowMUUpdateService**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin to manage whether to scan for app updates from Microsoft Update.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed or not configured.
-   1 – Allowed. Accepts updates received through Microsoft Update.

<a href="" id="update-allownonmicrosoftsignedupdate"></a>**Update/AllowNonMicrosoftSignedUpdate**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Allows the IT admin to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found at the UpdateServiceUrl location. This policy supports using WSUS for 3rd party software and patch distribution.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed or not configured. Updates from an intranet Microsoft update service location must be signed by Microsoft.
-   1 – Allowed. Accepts updates received through an intranet Microsoft update service location, if they are signed by a certificate found in the "Trusted Publishers" certificate store of the local computer.

<p style="margin-left: 20px">This policy is specific to desktop and local publishing via WSUS for 3rd party updates (binaries and updates not hosted on Microsoft Update) and allows IT to manage whether Automatic Updates accepts updates signed by entities other than Microsoft when the update is found on an intranet Microsoft update service location.

<a href="" id="update-allowupdateservice"></a>**Update/AllowUpdateService**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Specifies whether the device could use Microsoft Update, Windows Server Update Services (WSUS), or Windows Store.

<p style="margin-left: 20px">Even when Windows Update is configured to receive updates from an intranet update service, it will periodically retrieve information from the public Windows Update service to enable future connections to Windows Update, and other services like Microsoft Update or the Windows Store

<p style="margin-left: 20px">Enabling this policy will disable that functionality, and may cause connection to public services such as the Windows Store to stop working.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Update service is not allowed.
-   1 (default) – Update service is allowed.

> [!NOTE]
> This policy applies only when the desktop or device is configured to connect to an intranet update service using the "Specify intranet Microsoft update service location" policy.


<a href="" id="update-branchreadinesslevel"></a>**Update/BranchReadinessLevel**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows the IT admin to set which branch a device receives their updates from.

<p style="margin-left: 20px">The following list shows the supported values:

-   16 (default) – User gets all applicable upgrades from Current Branch (CB).
-   32 – User gets upgrades from Current Branch for Business (CBB).

<a href="" id="update-deferfeatureupdatesperiodindays"></a>**Update/DeferFeatureUpdatesPeriodInDays**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
<p style="margin-left: 20px">Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Defers Feature Updates for the specified number of days.

<p style="margin-left: 20px">Supported values are 0-180.

<a href="" id="update-deferqualityupdatesperiodindays"></a>**Update/DeferQualityUpdatesPeriodInDays**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Defers Quality Updates for the specified number of days.

<p style="margin-left: 20px">Supported values are 0-30.

<a href="" id="update-deferupdateperiod"></a>**Update/DeferUpdatePeriod**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpdatePeriod for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to specify update delays for up to 4 weeks.

<p style="margin-left: 20px">Supported values are 0-4, which refers to the number of weeks to defer updates.

<p style="margin-left: 20px">In Windows 10 Mobile Enterprise version 1511 devices set to automatic updates, for DeferUpdatePeriod to work, you must set the following:

-   Update/RequireDeferUpgrade must be set to 1
-   System/AllowTelemetry must be set to 1 or higher

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the Allow Telemetry policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<table style="margin-left: 20px">
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
<td style="vertical-align:top"><p>OS upgrade</p></td>
<td style="vertical-align:top"><p>8 months</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>Upgrade - 3689BDC8-B205-4AF4-8D4A-A63924C5E9D5</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Update</p></td>
<td style="vertical-align:top"><p>1 month</p></td>
<td style="vertical-align:top"><p>1 week</p></td>
<td style="vertical-align:top"><div class="alert">
<strong>Note</strong>
If a machine has Microsoft Update enabled, any Microsoft Updates in these categories will also observe Defer / Pause logic.
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
<td style="vertical-align:top"><p>Other/cannot defer</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>No deferral</p></td>
<td style="vertical-align:top"><p>Any update category not specifically enumerated above falls into this category.</p>
<p>Definition Update - E0789628-CE08-4437-BE74-2495B842F43B</p></td>
</tr>
</tbody>
</table>


<a href="" id="update-deferupgradeperiod"></a>**Update/DeferUpgradePeriod**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
>
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use DeferUpgradePeriod for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to specify additional upgrade delays for up to 8 months.

<p style="margin-left: 20px">Supported values are 0-8, which refers to the number of months to defer upgrades.

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<a href="" id="update-excludewudriversinqualityupdate"></a>**Update/ExcludeWUDriversInQualityUpdate**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
> Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to exclude Windows Update (WU) drivers during updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Allow Windows Update drivers.
-   1 – Exclude Windows Update drivers.

<a href="" id="update-pausedeferrals"></a>**Update/PauseDeferrals**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use PauseDeferrals for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows IT Admins to pause updates and upgrades for up to 5 weeks. Paused deferrals will be reset after 5 weeks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Deferrals are not paused.
-   1 – Deferrals are paused.

<p style="margin-left: 20px">If the "Specify intranet Microsoft update service location" policy is enabled, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<p style="margin-left: 20px">If the "Allow Telemetry" policy is enabled and the Options value is set to 0, then the "Defer upgrades by", "Defer updates by" and "Pause Updates and Upgrades" settings have no effect.

<a href="" id="update-pausefeatureupdates"></a>**Update/PauseFeatureUpdates**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education.
<p style="margin-left: 20px">Since this policy is not blocked, you will not get a failure message when you use it to configure a Windows 10 Mobile device. However, the policy will not take effect.


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to pause Feature Updates for up to 60 days.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Feature Updates are not paused.
-   1 – Feature Updates are paused for 60 days or until value set to back to 0, whichever is sooner.

<a href="" id="update-pausequalityupdates"></a>**Update/PauseQualityUpdates**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows IT Admins to pause Quality Updates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Quality Updates are not paused.
-   1 – Quality Updates are paused for 35 days or until value set back to 0, whichever is sooner.

<a href="" id="update-requiredeferupgrade"></a>**Update/RequireDeferUpgrade**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise
>
> Don't use this policy in Windows 10, version 1607 devices, instead use the new policies listed in [Changes in Windows 10, version 1607 for update management](device-update-management.md#windows10version1607forupdatemanagement). You can continue to use RequireDeferUpgrade for Windows 10, version 1511 devices.


<p style="margin-left: 20px">Allows the IT admin to set a device to CBB train.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – User gets upgrades from Current Branch.
-   1 – User gets upgrades from Current Branch for Business.

<a href="" id="update-requireupdateapproval"></a>**Update/RequireUpdateApproval**  

> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise

<br>

> [!NOTE]
> If you previously used the **Update/PhoneUpdateRestrictions** policy in previous versions of Windows, it has been deprecated. Please use this policy instead.


<p style="margin-left: 20px">Allows the IT admin to restrict the updates that are installed on a device to only those on an update approval list. It enables IT to accept the End User License Agreement (EULA) associated with the approved update on behalf of the end-user. EULAs are approved once an update is approved.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not configured. The device installs all applicable updates.
-   1 – The device only installs updates that are both applicable and on the Approved Updates list. Set this policy to 1 if IT wants to control the deployment of updates on devices, such as when testing is required prior to deployment.

<a href="" id="update-scheduledinstallday"></a>**Update/ScheduledInstallDay**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to schedule the day of the update installation.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Every day
-   1 – Sunday
-   2 – Monday
-   3 – Tuesday
-   4 – Wednesday
-   5 – Thursday
-   6 – Friday
-   7 – Saturday

<a href="" id="update-scheduledinstalltime"></a>**Update/ScheduledInstallTime**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Enables the IT admin to schedule the time of the update installation.

<p style="margin-left: 20px">The data type is a string.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<p style="margin-left: 20px">Supported values are 0-23, where 0 = 12 AM and 23 = 11 PM.

<p style="margin-left: 20px">The default value is 3.

<a href="" id="update-updateserviceurl"></a>**Update/UpdateServiceUrl**  
> [!NOTE]
> This policy is available on Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, and Windows 10 Mobile Enterprise


<p style="margin-left: 20px">Allows the device to check for updates from a WSUS server instead of Microsoft Update. This is useful for on-premise MDMs that need to update devices that cannot connect to the Internet.

<p style="margin-left: 20px">Supported operations are Get and Replace.

<p style="margin-left: 20px">The following list shows the supported values:

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

<a href="" id="update-updateserviceurlalternate"></a>**Update/UpdateServiceUrlAlternate**  
> **Note**  This policy is available on Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education.

<p style="margin-left: 20px">Added in the January service release of Windows 10, version 1607. Specifies an alternate intranet server to host updates from Microsoft Update. You can then use this update service to automatically update computers on your network.

<p style="margin-left: 20px">This setting lets you specify a server on your network to function as an internal update service. The Automatic Updates client will search this service for updates that apply to the computers on your network.

<p style="margin-left: 20px">To use this setting, you must set two server name values: the server from which the Automatic Updates client detects and downloads updates, and the server to which updated workstations upload statistics. You can set both values to be the same server.  An optional server name value can be specified to configure Windows Update agent, and download updates from an alternate download server instead of WSUS Server.

<p style="margin-left: 20px">Value type is string and the default value is an empty string, "". If the setting is not configured, and if Automatic Updates is not disabled by policy or user preference, the Automatic Updates client connects directly to the Windows Update site on the Internet.

> [!Note]  
> If the "Configure Automatic Updates" Group Policy is disabled, then this policy has no effect.  
> If the "Alternate Download Server" Group Policy is not set, it will use the WSUS server by default to download updates.  
> This policy is not supported on Windows RT. Setting this policy will not have any effect on Windows RT PCs.

<a href="" id="wifi-allowautoconnecttowifisensehotspots"></a>**WiFi/AllowAutoConnectToWiFiSenseHotspots**  
<p style="margin-left: 20px">Allow or disallow the device to automatically connect to Wi-Fi hotspots.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="wifi-allowinternetsharing"></a>**WiFi/AllowInternetSharing**  
<p style="margin-left: 20px">Allow or disallow internet sharing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Do not allow the use of Internet Sharing.
-   1 (default) – Allow the use of Internet Sharing.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="wifi-allowmanualwificonfiguration"></a>**WiFi/AllowManualWiFiConfiguration**  
<p style="margin-left: 20px">Allow or disallow connecting to Wi-Fi outside of MDM server-installed networks.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – No Wi-Fi connection outside of MDM provisioned network is allowed.
-   1 (default) – Adding new network SSIDs beyond the already MDM provisioned ones is allowed.

<p style="margin-left: 20px">Most restricted value is 0.

> [!NOTE]
> Setting this policy deletes any previously installed user-configured and Wi-Fi sense Wi-Fi profiles from the device. Certain Wi-Fi profiles that are not user configured nor Wi-Fi sense might not be deleted. In addition, not all non-MDM profiles are completely deleted.


<a href="" id="wifi-allowwifi"></a>**WiFi/AllowWiFi**  
<p style="margin-left: 20px">Allow or disallow Wi-Fi connection.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Wi-Fi connection is not allowed.
-   1 (default) – Wi-Fi connection is allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<a href="" id="wifi-allowwifihotspotreporting"></a>**WiFi/AllowWiFiHotSpotReporting**  
<p style="margin-left: 20px">This policy has been deprecated.

<a href="" id="wifi-wlanscanmode"></a>**WiFi/WLANScanMode**  
<p style="margin-left: 20px">Allow an enterprise to control the WLAN scanning behavior and how aggressively devices should be actively scanning for Wi-Fi networks to get devices connected.

<p style="margin-left: 20px">Supported values are 0-500, where 100 = normal scan frequency and 500 = low scan frequency.

<p style="margin-left: 20px">The default value is 0.

<p style="margin-left: 20px">Supported operations are Add, Delete, Get, and Replace.

<a href="" id="windowsinkworkspace-allowwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowWindowsInkWorkspace**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies whether to allow the user to access the ink workspace.

<p style="margin-left: 20px">Value type is int. The following list shows the supported values:

-   0 - access to ink workspace is disabled. The feature is turned off.
-   1 - ink workspace is enabled (feature is turned on), but the user cannot access it above the lock screen.
-   2 (default) - ink workspace is enabled (feature is turned on), and the user is allowed to use it above the lock screen.

<a href="" id="windowsinkworkspace-allowsuggestedappsinwindowsinkworkspace"></a>**WindowsInkWorkspace/AllowSuggestedAppsInWindowsInkWorkspace**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Show recommended app suggestions in the ink workspace.

<p style="margin-left: 20px">Value type is bool. The following list shows the supported values:

-   0 - app suggestions are not allowed.
-   1 (default) -allow app suggestions.

<a href="" id="wirelessdisplay-allowprojectiontopc"></a>**WirelessDisplay/AllowProjectionToPC**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow turning off the projection to a PC.

<p style="margin-left: 20px">If you set it to 0 (zero), your PC is not discoverable and you cannot project to it. If you set it to 1, your PC is discoverable and you can project to it above the lock screen. The user has an option to turn it always on or always off except for manual launch. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

-   0 - projection to PC is not allowed. Always off and the user cannot enable it.
-   1 (default) - projection to PC is allowed. Enabled only above the lock screen.

<a href="" id="wirelessdisplay-requirepinforpairing"></a>**WirelessDisplay/RequirePinForPairing**  
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allow or disallow requirement for a PIN for pairing.

<p style="margin-left: 20px">If you turn this on, the pairing ceremony for new devices will always require a PIN. If you turn this off or do not configure it, a PIN is not required for pairing. In PCs that support Miracast, after the policy is applied you can verify the setting from the user interface in **Settings** &gt; **System** &gt; **Projecting to this PC**.

<p style="margin-left: 20px">Value type is integer. Valid value:

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

> [!NOTE]
> Apps that don't encode enough information in their secondary tiles may not be able to be used effectively in the **StartLayout** policy.


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

 






