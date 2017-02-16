---
title: DynamicManagement CSP
description: DynamicManagement CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# DynamicManagement CSP


> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

TBD. This CSP was added in Windows 10, version 1703.

The following diagram shows the DynamicManagement configuration service provider in tree format.

![dynamicmanagement csp](images/provisioning-csp-dynamicmanagement.png)

<a href="" id="dynamicmanagement"></a>**DynamicManagement**  
<p style="margin-left: 20px">The root node for the DynamicManagement configuration service provider.</p>

<a href="" id="notificationsenabled"></a>**NotificationsEnabled**  
<p style="margin-left: 20px">Boolean value for sending notification to the user of a context change.</p>
<p style="margin-left: 20px">Default values is False. Supported operations are Get and Replace.</p>

<a href="" id="activelist"></a>**ActiveList**  
<p style="margin-left: 20px">A string containing the list of all active ContextIDs on the device.  Delimeter is unicode character 0xF000..</p>
<p style="margin-left: 20px">Supported operation is Get.</p>  

<a href="" id="contexts"></a>**Contexts**  
<p style="margin-left: 20px">Node for context information.</p>
<p style="margin-left: 20px">Supported operation is Get.</p>

<a href="" id="contextid"></a>***ContextID***  
<p style="margin-left: 20px">Node created by the server to define a context.  Maximum amount of characters allowed is 38..</p>
<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="signaldefinition"></a>**SignalDefinition**  
<p style="margin-left: 20px">Signal Definition XML.</p>
<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.

<a href="" id="settingspack"></a>**SettingsPack**  
<p style="margin-left: 20px">Settings that get applied when the Context is active.</p>
<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.

<a href="settingspackresponse" id=""></a>**SettingsPackResponse**  
<p style="margin-left: 20px">Response from applying a Settings Pack that contains information on each individual action..</p>
<p style="margin-left: 20px">Value type is string. Supported operation is Get.</p>

<a href="contextstatus" id=""></a>**ContextStatus**  
<p style="margin-left: 20px">Reports status of the context.  If there was a failure, SettingsPackResponse should be checked for what exactly failed..</p>
<p style="margin-left: 20px">Value type is integer. Supported operation is Get.</p>

<a href="altitude" id=""></a>**Altitude**  
<p style="margin-left: 20px">A value that determines how to handle resolution of applying multiple contexts on the device. This is required and must be distinct of other priorities..</p>
<p style="margin-left: 20px">Value type is integer. Supported operations are Add, Get, Delete, and Replace.</p>

<a href="alertsenabled" id=""></a>**AlertsEnabled**  
<p style="margin-left: 20px">A Boolean value for sending an alert to the server when a context fails.</p>
<p style="margin-left: 20px">Supported operations are Get and Replace.</p>
