---
title: EnterpriseAppVManagement CSP
description: EnterpriseAppVManagement CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# EnterpriseAppVManagement CSP


> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The EnterpriseAppVManagement configuration service provider (CSP) is used to manage virtual applications in Windows 10 PCs (Enterprise and Education editions). This CSP was added in Windows 10, version 1703.

The following diagram shows the EnterpriseAppVManagement configuration service provider in tree format.

![enterpriseappvmanagement csp](images/provisioning-csp-enterpriseappvmanagement.png)

**./Vendor/MSFT/EnterpriseAppVManagement**  
<pre>   Root node for the EnterpriseAppVManagement configuration service provider.</pre>

**AppVPackageManagement**  
<pre>   Used to query App-V package information (post-publish).</pre> 

**AppVPackageManagement/EnterpriseID**  
<pre>   Used to query package information. Value is always "HostedInstall".</pre>

**AppVPackageManagement/EnterpriseID/PackageFamilyName**  
<pre>   Package ID of the published App-V package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_**  
<pre>   Version ID of the published App-V package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Name**  
<pre>   Name specified in the published AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Version**  
<pre>   Version specified in the published AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Publisher**  
<pre>   Publisher as specified in the published asset information of the AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/InstallLocation**  
<pre>   Local package path specified in the published asset information of the AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/InstallDate**  
<pre>   Date the app was installed, as specified in the published asset information of the AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/Users**  
<pre>   Registered users for app, as specified in the published asset information of the AppV package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVPackageId**  
<pre>   Package ID of the published App-V package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVVersionId**  
<pre>   Version ID of the published App-V package.</pre>

**AppVPackageManagement/_EnterpriseID_/_PackageFamilyName_/_PackageFullName_/AppVPackageUri**  
<pre>   Package URI of the published App-V package.</pre>