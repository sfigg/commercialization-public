---
title: Implement server-side support for mobile application management on Windows 
description: The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP).
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---


# Implement server-side support for mobile application management on Windows 


> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

The Windows version of mobile application management (MAM) is a lightweight solution for managing company data access and security on personal devices. MAM support is built into Windows on top of Windows Information Protection (WIP).  

## Integration with Azure Active Directory

MAM on Windows is integrated with Azure Active Directory (Azure AD) identity service. The MAM service supports Azure AD integrated authentication for the user and the device during enrollment and the downloading of MAM policies. MAM integration with Azure AD is similar to [mobile device management (MDM) integration](azure-active-directory-integration-with-mdm.md).  

MAM enrollment is integrated with adding a work account flow to a personal device. If both MAM and Azure AD integrated MDM services are provided in an organization, a users’ personal devices will be enrolled to MAM or MDM depending on the user’s actions. If a user adds their work or school Azure AD account as a secondary account to the machine, their device will be enrolled to MAM. If a user joins their device to Azure AD, it will be enrolled to MDM.  In general, a device that has a personal account as its primary account is considered a personal device and should be enrolled to MAM. An Azure AD join, and enrollment to MDM, should be used to manage corporate devices.  

On personal devices, users can add an Azure AD account as a secondary account to the device while keeping their personal account as primary. Users can add an Azure AD account to the device from a supported Azure AD integrated application, such as the next update of Microsoft Office 365 or Microsoft Office Mobile. Alternatively, users can add an Azure AD account from Settings>Accounts>Access work or school.  

Regular non-admin users can enroll to MAM.  

## Integration with Windows Information Protection 

MAM on Windows takes advantage of [built-in Windows Information Protection (WIP) policies](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/protect-enterprise-data-using-wip) to protect company data on the device. To protect user-owned applications on personal devices, MAM limits enforcement of WIP policies to [enlightened apps](https://technet.microsoft.com/en-us/itpro/windows/keep-secure/enlightened-microsoft-apps-and-wip) and WIP-aware applications. Enlightened apps can differentiate between corporate and personal data, correctly determining which to protect based on WIP policies. WIP-aware apps indicate to Windows that they do not handle personal data, and therefore it is safe for Windows to protect data on their behalf.  

To make applications WIP-aware, app developers need to include the following data in the app resource file:  

``` syntax
// Mark this binary as Allowed for WIP (EDP) purpose  
    MICROSOFTEDPAUTOPROTECTIONALLOWEDAPPINFO EDPAUTOPROTECTIONALLOWEDAPPINFOID 
     BEGIN 
         0x0001 
     END  
```

## Configuring an Azure AD tenant for MAM enrollment

MAM enrollment requires integration with Azure AD. The MAM service provider needs to publish the Management MDM app to the Azure AD app gallery. Starting with Azure AD in Windows 10, version 1703, the same cloud-based Management MDM app will support both MDM and MAM enrollments. If you have already published your MDM app, it needs to be updated to include MAM Enrollment and Terms of use URLs. The screenshot below illustrates the Management app for an IT admin configuration.  

![Mobile application management app](images/implement-server-side-mobile-application-management.png)

MAM and MDM services in an organization could be provided by different vendors. Depending on the company configuration, IT admin typically needs to add one or two Azure AD Management apps to configure MAM and MDM policies. For example, if both MAM and MDM are provided by the same vendor, then an IT Admin needs to add one Management app from this vendor that will contain both MAM and MDM policies for the organization. Alternatively, if the MAM and MDM services in an organization are provided by two different vendors, then two Management apps from the two vendors need to be configured for the company in Azure AD: one for MAM and one for MDM. Please note: if the MDM service in an organization is not integrated with Azure AD and uses auto-discovery, only one Management app for MAM needs to be configured.  

## MAM enrollment 

MAM enrollment is based on the MAM extension of [[MS-MDE2] protocol](https://msdn.microsoft.com/en-us/library/mt221945.aspx). MAM enrollment supports Azure AD federated authentication as the only authentication method.  

Below are protocol changes for MAM enrollment:  
- MDM discovery is not supported  
- APPAUTH node in DMAcc CSP is optional
- MAM enrollment variation of [MS-MDE2] protocol does not support the client authentication certificate, and therefore, does not support the [MS-XCEP] protocol. Servers must use an Azure AD token for client authentication during policy syncs. Policy sync sessions must be performed over one-way SSL using server certificate authentication. 

Here is an example provisioning XML for MAM enrollment.  

``` syntax
<wap-provisioningdoc version="1.1"> 
  <characteristic type="APPLICATION"> 
    <parm name="APPID" value="w7"/> 
    <parm name="PROVIDER-ID" value="MAM SyncML Server"/> 
    <parm name="NAME" value="mddprov account"/> 
    <parm name="ADDR" value="http://localhost:88"/> 
    <parm name="DEFAULTENCODING" value="application/vnd.syncml.dm+xml" /> 
  </characteristic> 
</wap-provisioningdoc> 
```

