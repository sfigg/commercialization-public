---
title: DeveloperSetup CSP
description: The DeveloperSetup configuration service provider (CSP) is used to configure developer mode on the device. This CSP was added in the next major update of Windows 10.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 
---

# DeveloperSetup CSP

> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The DeveloperSetup configuration service provider (CSP) is used to configure developer mode on the device. This CSP was added in Windows 10, version 1703. 

The following diagram shows the DeveloperSetup configuration service provider in tree format.

![developersetup csp diagram](images/provisioning-csp-developersetup.png)

<a href="" id="developersetup"></a>**DeveloperSetup**  
<p style="margin-left: 20px">The root node for the DeveloperSetup configuration service provider.

<a href="" id="enabledevelopermode"></a>**EnableDeveloperMode**  
<p style="margin-left: 20px">A Boolean value that is used to enable developer mode on the device. The default value is false.

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal"></a>**DevicePortal**   
<p style="margin-left: 20px">The node for the Windows device portal.   

<a href="" id="deviceportal-authentication"></a>**DevicePortal/Authentication**  
<p style="margin-left: 20px">The node that specifies the characteristics of the authentication mechanism used for the Windows device portal.  

<a href="" id="deviceportal-authentication-mode"></a>**DevicePortal/Authentication/Mode**   
<p style="margin-left: 20px">An integer value that describes the mode of authentication that is used when making requests to the Windows device portal.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-authentication-basicauth"></a>**DevicePortal/Authentication/BasicAuth**   
<p style="margin-left: 20px">The node that describes the credentials used for basic authentication.  

<a href="" id="deviceportal-authentication-username"></a>**DevicePortal/Authentication/BasicAuth/Username**   
<p style="margin-left: 20px">A string value that describes the username to use when performing basic authentication with the Windows device portal.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-authentication-password"></a>**DevicePortal/Authentication/BasicAuth/Password**   
<p style="margin-left: 20px">A string value that describes the password to use when authenticating requests against the Windows device portal.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-connection"></a>**DevicePortal/Connection**  
<p style="margin-left: 20px">The node for configuring connections.   

<a href="" id="deviceportal-connection-httpport"></a>**DevicePortal/Connection/HttpPort**   
<p style="margin-left: 20px">An integer value that is used to configure the HTTP port for incoming connections to the device portal service.  

<p style="margin-left: 20px">The only supported operation is Replace.

<a href="" id="deviceportal-connection-httpsport"></a>**DevicePortal/Connection/HttpsPort**   
<p style="margin-left: 20px">An integer value that is used to configure the HTTPS port for incoming connections to the device portal service.  

<p style="margin-left: 20px">The only supported operation is Replace.