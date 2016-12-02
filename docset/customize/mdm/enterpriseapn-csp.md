---
title: EnterpriseAPN CSP
description: The EnterpriseAPN configuration service provider is used by the enterprise to provision an APN for the Internet.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: E125F6A5-EE44-41B1-A8CC-DF295082E6B2
---

# EnterpriseAPN CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

The EnterpriseAPN configuration service provider (CSP) is used by the enterprise to provision an APN for the Internet.

> [!Note]
Starting in the next major update to Windows 10, the CellularSettings CSP is supported in Windows 10 Home, Pro, Enterprise, and Education editions.

The following image shows the EnterpriseAPN configuration service provider in tree format.

![enterpriseapn csp](images/provisioning-csp-enterpriseapn-rs1.png)

<a href="" id="enterpriseapn"></a>**EnterpriseAPN**  
<p style="margin-left: 20px"> </p>The root node for the EnterpriseAPN configuration service provider.

<a href="" id="enterpriseapn-connectionname"></a>**EnterpriseAPN/****_ConnectionName_**  
<p style="margin-left: 20px"> </p>Name of the connection as seen by Windows Connection Manager.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-apnname"></a>**EnterpriseAPN/*ConnectionName*/APNName**  
<p style="margin-left: 20px"> </p>Enterprise APN name.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-iptype"></a>**EnterpriseAPN/*ConnectionName*/IPType**  
<p style="margin-left: 20px"> </p>This value can be one of the following:

-   IPv4 - only IPV4 connection type
-   IPv6 - only IPv6 connection type
-   IPv4v6 (default)- IPv4 and IPv6 concurrently.
-   IPv4v6xlat - IPv6 with IPv4 provided by 46xlat

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-isattachapn"></a>**EnterpriseAPN/*ConnectionName*/IsAttachAPN**  
<p style="margin-left: 20px"> </p>Boolean value that indicates whether this APN should be requested as part of an LTE Attach. Default value is false.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-classid"></a>**EnterpriseAPN/*ConnectionName*/ClassId**  
<p style="margin-left: 20px"> </p>GUID that defines the APN class to the modem. This is the same as the OEMConnectionId in CM\_CellularEntries CSP. Normally this setting is not present. It is only required when IsAttachAPN is true and the attach APN is not only used as the Internet APN.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-authtype"></a>**EnterpriseAPN/*ConnectionName*/AuthType**  
<p style="margin-left: 20px"> </p>Authentication type. This value can be one of the following:

-   None (default)
-   Auto
-   PAP
-   CHAP
-   MSCHAPv2

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-username"></a>**EnterpriseAPN/*ConnectionName*/UserName**  
<p style="margin-left: 20px"> </p>User name for use with PAP, CHAP, or MSCHAPv2 authentication.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-password"></a>**EnterpriseAPN/*ConnectionName*/Password**  
<p style="margin-left: 20px"> </p>Password corresponding to the username.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-iccid"></a>**EnterpriseAPN/*ConnectionName*/IccId**  
<p style="margin-left: 20px"> </p>Integrated Circuit Card ID (ICCID) associated with the cellular connection profile. If this node is not present, the connection is created on a single-slot device using the ICCID of the UICC and on a dual-slot device using the ICCID of the UICC that is active for data.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-alwayson"></a>**EnterpriseAPN/*ConnectionName*/AlwaysOn**  
<p style="margin-left: 20px"> </p>Added in Windows 10, version 1607. Boolean value that specifies whether the CM will automatically attempt to connect to the APN when a connection is available.

<p style="margin-left: 20px"> </p>The default value is true.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-connectionname-enabled"></a>**EnterpriseAPN/*ConnectionName*/Enabled**  
<p style="margin-left: 20px"> </p>Added in Windows 10, version 1607. Boolean that specifies whether the connection is enabled.

<p style="margin-left: 20px"> </p>The default value is true.

<p style="margin-left: 20px"> </p>Supported operations are Add, Get, Delete, and Replace.

<a href="" id="enterpriseapn-settings"></a>**EnterpriseAPN/Settings**  
<p style="margin-left: 20px"> </p>Added in Windows 10, version 1607. Node that contains global settings.

<a href="" id="enterpriseapn-settings-allowusercontrol"></a>**EnterpriseAPN/Settings/AllowUserControl**  
<p style="margin-left: 20px"> </p>Added in Windows 10, version 1607. Boolean value that specifies whether the cellular UX will allow users to connect with other APNs other than the Enterprise APN.

<p style="margin-left: 20px"> </p>The default value is false.

<p style="margin-left: 20px"> </p>Supported operations are Get and Replace.

<a href="" id="enterpriseapn-settings-hideview"></a>**EnterpriseAPN/Settings/HideView**  
<p style="margin-left: 20px"> </p>Added in Windows 10, version 1607. Boolean that specifies whether the cellular UX will allow the user to view enterprise APNs. Only applicable if AllowUserControl is true.

<p style="margin-left: 20px"> </p>The default value is false.

<p style="margin-left: 20px"> </p>Supported operations are Get and Replace.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






