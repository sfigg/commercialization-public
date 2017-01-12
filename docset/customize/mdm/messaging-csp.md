---
title: Messaging CSP
description: Messaging CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Messaging CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

The Messaging configuration service provider is used to . This CSP was added in Windows 10, version 1703.

The following diagram shows the AppLocker configuration service provider in tree format.

![messaging csp](images/provisioning-csp-messaging.png)

<a href="" id="--user-msft-applocker"></a>**./User/Vendor/MSFT/Messaging**  

<p style="margin-left: 20px">Root node for the Messaging configuration service provider.</p>

<a href="" id="auditinglevel"></a>**AuditingLevel**  
<p style="margin-left: 20px">Turns on the 'Text' auditing feature.</p>
<p style="margin-left: 20px">Supporter values</p>
<ul>
<li>0 - off</li>
<li>1 - on</li>
</ul>
<p style="margin-left: 20px">Supported operations are Get and Replace.</p>

<a href="" id="auditing"></a>**Auditing**  
<p style="margin-left: 20px">Node for messages.</p>
<p style="margin-left: 20px">Supprted operation is Get.</p>

<a href="" id="messages"></a>**Messages**  
<p style="margin-left: 20px">Node for messages.</p>
<p style="margin-left: 20px">Supprted operation is Get.</p>

<a href="" id="count"></a>**Count**  
<p style="margin-left: 20px">Number of messages to return in the Data element</p>
<p style="margin-left: 20px">Supported operations are Get and Replace.</p>

<a href="" id="revisionid"></a>**RevisionId**  
<p style="margin-left: 20px">Retrieves messages whose revision ID is greater than RevisionId.</p>
<p style="margin-left: 20px">Supported operations are Get and Replace.</p>

<a href="" id="data"></a>**Data**  
<p style="margin-left: 20px">JSON string of text messages on the device.</p>
<p style="margin-left: 20px">Supported operations are Get and Replace.</p>

