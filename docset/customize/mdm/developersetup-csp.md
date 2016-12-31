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
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The DeveloperSetup configuration service provider (CSP) is used to configure developer mode on the device. This CSP was added in the next major update of Windows 10. 

The following diagram shows the DeveloperSetup configuration service provider in tree format.

![developersetup csp diagram](images/provisioning-csp-developersetup.png)

<a href="" id="developersetup"></a>**DeveloperSetup**  
Root node.

<a href="" id="enabledevelopermode"></a>**EnableDeveloperMode**  
Enables developer mode on the device.

<a href="" id="deviceportal"></a>**DevicePortal**   
Node for the Windows device portal.   

<a href="" id="deviceportal-authentication"></a>**DevicePortal/Authentication**  
Specifies characteristics of the authentication mechanism used for the Windows device portal.  

<a href="" id="deviceportal-authentication-mode"></a>**DevicePortal/Authentication/Mode**   
Describes the mode of authentication used when making requests to the Windows device portal.  

<a href="" id="deviceportal-authentication-basicauth"></a>**DevicePortal/Authentication/BasicAuth**   
Describes credentials used for basic authentication.  

<a href="" id="deviceportal-authentication-username"></a>**DevicePortal/Authentication/BasicAuth/Username**   
Describes the username to use when performing basic authentication with the Windows device portal.  

<a href="" id="deviceportal-authentication-password"></a>**DevicePortal/Authentication/BasicAuth/Password**   
Describes the password to use when authenticating requests against the Windows device portal.  

<a href="" id="deviceportal-connection"></a>**DevicePortal/Connection**  
Node for configuring connections.   

<a href="" id="deviceportal-connection-httpport"></a>**DevicePortal/Connection/HttpPort**   
Configures the HTTP port for incoming connections to the device portal service.  

<a href="" id="deviceportal-connection-httpsport"></a>**DevicePortal/Connection/HttpsPort**   
Configures the HTTPS port for incoming connections to the device portal service.  
