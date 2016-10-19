---
title: SecureAssessment CSP
description: SecureAssessment CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6808BE4B-961E-4638-BF15-FD7841D1C00A
---

# SecureAssessment CSP


The SecureAssessment configuration service provider is used to provide configuration information for the secure assessment browser.

The following diagram shows the SecureAssessment configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

![secureassessment](images/secureassessment-csp.png)

<a href="" id="--vendor-msft-secureassessment"></a>**./Vendor/MSFT/SecureAssessment**  
The root node for the SecureAssessment configuration service provider.

The supported operation is Get.

<a href="" id="launchuri"></a>**LaunchURI**  
URI Link to an assessment that's automatically loaded when the secure assessment browser is launched.

The supported operation is Add, Delete, Get, and Replace.

<a href="" id="testeraccount"></a>**TesterAccount**  
The user name of the test taking account.

-   To specify a domain account, use domain\\user.
-   To specify an AAD account, use username@tenant.com.
-   To specify a local account, use the username.

The supported operation is Add, Delete, Get, and Replace.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






