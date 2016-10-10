---
title: CustomDeviceUI CSP
description: CustomDeviceUI CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 20ED1867-7B9E-4455-B397-53B8B15C95A3
---

# CustomDeviceUI CSP


**Note**  This configuration service provider only applies to Windows 10 IoT Core (IoT Core).

 

The CustomDeviceUI configuration service provider allows OEMs to implement their custom foreground application, as well as the background tasks to run on an IoT device running IoT Core. Only one foreground application is supported per device. Multiple background tasks are supported.
The following diagram shows the CustomDeviceUI configuration service provider in tree format as used by both the Open Mobile Alliance (OMA) Device Management (DM) and OMA Client Provisioning.

![customdeviceui csp](images/provisioning-csp-customdeviceui.png)

The following list shows the characteristics and parameters.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>./Vendor/MSFT/CustomDeviceUI</strong></p></td>
<td><p>The root node for the CustomDeviceUI configuration service provider. The supported operation is Get.</p></td>
</tr>
<tr class="even">
<td><p><strong>StartupAppID</strong></p></td>
<td><p>AppID string value is the default appid/AUMID to launch during startup. The supported operations are Get and Replace.</p></td>
</tr>
<tr class="odd">
<td><p><strong>BackgroundTasksToLaunch</strong></p></td>
<td><p>List of package names of background tasks that need to be launched on device startup. The supported operation is Get.</p></td>
</tr>
<tr class="even">
<td><p><strong>BackgroundTasksToLaunch/<em>BackgroundTaskPackageName</em></strong></p></td>
<td><p>Package Full Name of the App that needs be launched in the background. This can contain no entry points, a single entry point, or multiple entry points. The supported operations are Add, Delete, Get, and Replace.</p></td>
</tr>
</tbody>
</table>

 

## SyncML examples


**Set StartupAppID**

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>      
        <Replace>
          <CmdID>1</CmdID>
          <Item>
            <Target>
              <LocURI>./Vendor/MSFT/CustomDeviceUI/StartupAppID</LocURI>
            </Target>       
             <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>DefaultApp_cw5n1h2txyewy!App</Data>
        </Item>
        </Replace>        
     <Final/>
  </SyncBody>
</SyncML>
```

**Get all background tasks**

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>      
        <Get>
          <CmdID>1</CmdID>
          <Item>
            <Target>
                <LocURI>./Vendor/MSFT/CustomDeviceUI/BackgroundTaskstoLaunch?list=Struct</LocURI>
            </Target>
          </Item>
        </Get>        
     <Final/>
  </SyncBody>
</SyncML>
```

**Add background task**

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>      
        <Add>
          <CmdID>1</CmdID>
          <Item>
            <Target>
              <LocURI>./Vendor/MSFT/CustomDeviceUI/BackgroundTaskstoLaunch/BackgroundService1_1.3.0.1_neutral__8wekyb3d8bbwe</LocURI>
            </Target>
            <Meta>
                <Format xmlns="syncml:metinf">chr</Format>
            </Meta>
            <Data>0</Data>
          </Item>
        </Add>        
     <Final/>
  </SyncBody>
</SyncML>
```

 

 

10/10/2016




