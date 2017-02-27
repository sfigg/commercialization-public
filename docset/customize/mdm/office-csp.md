---
title: Office CSP
description: The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device. This CSP was added in Windows 10, version 1703.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Office CSP

> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool. For more information, see [Configuration options for the Office Deployment Tool](https://technet.microsoft.com/en-us/library/jj219426.aspx). 
This CSP was added in Windows 10, version 1703.

The following diagram shows the Office configuration service provider in tree format.

![Office CSP diagram](images/provisioning-csp-office.png)

<a href="" id="office"></a>**Office**

<p style="margin-left: 20px">The root node for the Office configuration service provider.</p>

<a href="" id="installation"></a>**Installation**  

<p style="margin-left: 20px">Specifies the options for the Microsoft Office installation.

<p style="margin-left: 20px">The supported operations are Add, Delete, Get, and Replace.

<a href="" id="id"></a>**id**  

<p style="margin-left: 20px">Specifies a unique identifier that represents the ID of the Microsoft Office product to install. 

<p style="margin-left: 20px">The supported operations are Add, Delete, Get, and Replace.

<a href="" id="install"></a>**Install**  

<p style="margin-left: 20px">Installs office by using the XML data specified in the configuration.xml file. 

<p style="margin-left: 20px">The supported operations are Get and Execute.

<a href="" id="status"></a>**Status**  

<p style="margin-left: 20px">The Microsoft Office installation status. 

<p style="margin-left: 20px">The only supported operation is Get.

