---
title: Office CSP
description: The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device. This CSP was added in Windows 10, version 1703.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Office CSP

The Office configuration service provider (CSP) enables a Microsoft Office client to be installed on a device via the Office Deployment Tool. For more information, see [Configuration options for the Office Deployment Tool](https://technet.microsoft.com/en-us/library/jj219426.aspx). 
This CSP was added in Windows 10, version 1703.

For additional information, see [Office DDF](office-ddf.md).

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


## Examples

Sample SyncML to install Office 365 Business Retail from current channel.

```syntax
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/0AA79349-F334-4859-96E8-B4AB43E9FEA0/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta> 
          <Data>&lt;Configuration&gt;&lt;Add OfficeClientEdition=&quot;32&quot; Channel=&quot;Current&quot;&gt;&lt;Product ID=&quot;O365BusinessRetail&quot;&gt;&lt;Language ID=&quot;en-us&quot; /&gt;&lt;/Product&gt;&lt;/Add&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```

To uninstall the Office 365 from the system:

```syntax
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Exec>
      <CmdID>7</CmdID>
        <Item>
          <Target>
            <LocURI>./Vendor/MSFT/Office/Installation/E24B23D8-94A8-4997-9E6E-8FF25025845B/install</LocURI>
          </Target>
          <Meta>
            <Format xmlns="syncml:metinf">chr</Format>
          </Meta> 
          <Data>&lt;Configuration&gt;&lt;Remove All=&quot;TRUE&quot;/&gt;&lt;Display Level=&quot;None&quot; AcceptEULA=&quot;TRUE&quot; /&gt;&lt;/Configuration&gt;</Data>
        </Item>
    </Exec>
    <Final/>
  </SyncBody>
</SyncML>
```