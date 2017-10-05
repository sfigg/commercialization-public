---
title: Adaptive Hibernate
description: Adaptive hibernate provides triggers to allow the system to hibernate intelligently.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1D38C059-9D2A-46BC-A457-90361240457A
ms.author: alhopper
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Adaptive hibernate


Users can set the Hibernate option in their Windows devices to put the system into a low power state when the system is not in use. The current logic for hibernate relies on an OEM- or user-configured doze to hibernate timer. The most common timer value is 4 hours. A fixed doze timer doesn’t address rapid drain of battery, especially on Intel core processors, as they can spike to high power levels.

The timer-based logic has some significant user experience drawbacks. A fixed doze timer can result in the system fully draining the battery in standby if it happened within the doze timeout or cut short a modern standby experience by hibernating at doze timeout. The timer is generally not the best option when it comes to addressing the worst case battery drain and the system needs to be adaptive and hibernate based on user needs.

Windows 10, version 1607 provides triggers to allow the system to hibernate intelligently. These triggers provide the following benefits:

-   Eliminate resume to a dead battery.

-   Provide a great [Modern Standby](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/modern-standby) (MS) experience by ensuring that the system remains in MS for as long as possible.

To support the new triggers, the system is enabled with default values for Windows 10, version 1607 builds. However, OEMs can program these new triggers to ensure that machines hibernate to provide the best possible experience to users.

## <span id="System_requirements"></span><span id="system_requirements"></span><span id="SYSTEM_REQUIREMENTS"></span>System requirements


The new triggers apply to modern standby systems only.

## <span id="Default_behavior_on_new_Windows_10__version_1607_builds"></span><span id="default_behavior_on_new_windows_10__version_1607_builds"></span><span id="DEFAULT_BEHAVIOR_ON_NEW_WINDOWS_10__VERSION_1607_BUILDS"></span>Default behavior on new Windows 10, version 1607 builds


All new machines will have adaptive hibernate timeout enabled by default; however, OEMs can configure the settings using a provisioning package file. See the following sections for more information on how to do this.

## <span id="hibernate_triggers"></span><span id="HIBERNATE_TRIGGERS"></span>Hibernate triggers


Adaptive hibernate settings ([Standby budget setting](#standby-budget-settings) and [Reserve time setting](#reserve-time-settings)) are exposed as hidden power settings. The settings take into effect on DC only and are not applicable on AC.

### <span id="standby_budget_settings"></span><span id="STANDBY_BUDGET_SETTINGS"></span>Standby budget setting

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Budget setting</th>
<th>Definition</th>
<th>Exposed as</th>
<th>Powercfg command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[StandbyBudgetPercent](standbybudgetpercent.md)</p></td>
<td><p>Defines the battery drain percentage that the user is allowed in a standby session.</p></td>
<td><p>Power setting</p></td>
<td><p><code>powercfg /setdcvalueindex scheme_current sub_presence standbybudgetpercent</code></p></td>
</tr>
</tbody>
</table>

 

The following table lists the settings you can use to set the standby budget, which is the amount of battery the user is allowed to drain during standby.
You can also configure these settings using a custom provisioning package file for OEM images. For more information about powercfg, see [Powercfg command-line options](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/powercfg-command-line-options).

### <span id="reserve_time_settings"></span><span id="RESERVE_TIME_SETTINGS"></span>Reserve time setting

Reserve time is the amount of time the user is guaranteed to have the screen on. The following table lists the settings you can use to set the reserve time.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Budget setting</th>
<th>Definition</th>
<th>Exposed as</th>
<th>Powercfg command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[StandbyReserveTime](standbyreservetime.md)</p></td>
<td><p>Defines the screen on time, in seconds, that will be available to the user after standby exists and the screen turns on.</p></td>
<td><p>Power setting</p></td>
<td><p><code>powercfg /setdcvalueindex scheme_current sub_presence standbyreservetime</code></p></td>
</tr>
</tbody>
</table>

 

You can also configure these settings using a custom provisioning package file for OEM images. For more information about powercfg, see [Powercfg command-line options](https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/powercfg-command-line-options).

## <span id="Windows_provisioning_package_sample"></span><span id="windows_provisioning_package_sample"></span><span id="WINDOWS_PROVISIONING_PACKAGE_SAMPLE"></span>Windows provisioning package sample


You can configure the [hibernate triggers](#hibernate-triggers) using the Windows Provisioning framework. To configure the power settings using the [Windows provisioning framework](https://msdn.microsoft.com/library/windows/hardware/dn898375(v=vs.85).aspx), you must create a Windows provisioning answer file (WPAF) as one of the inputs to the [Windows Imaging and Configuration Designer](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-install-icd) (ICD) command-line to generate either a provisioning package or a Windows image that contains the power settings. For more information on how to use the Windows Imaging and Configuration Designer (ICD) CLI, see [Use the Windows ICD command-line interface](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-command-line).

The following example shows what your Windows provisioning answer file might look like after you've written it to configure adaptive hibernate settings.

```XML
<?xml version="1.0" encoding="utf-8"?> 
<WindowsCustomizatons> 
  <PackageConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Package-Config.v1.0"> 
    <ID>{XXXX GUID}</ID>  <!-- ID needs to be be unique GUID for the package --> 
    <Name>CustomOEM.Power.Settings.Control</Name> 
    <Version>1.0</Version> 
    <OwnerType>OEM</OwnerType> 
  </PackageConfig> 

  <Settings xmlns="urn:schemas-microsoft-com:windows-provisioning"> 
     <Customizations> 
        <Common> 
           <Power> 
              <Policy>  
                 <Settings> 
                    <AdaptivePowerBehavior>
                       <SchemePersonality> 
                          <Default SchemeAlias="Balanced"> 
                             <Setting>
                                <!-- Duration of time after sleep that the system automatically wakes and enters hibernate in seconds -->
                                <StandbyBudgetPercent>
                                   <DcValue></DcValue> 
                                </StandbyBudgetPercent>
                                <StandbyReserveTime> 
                                   <DcValue></DcValue>  
                                </StandbyReserveTime>
                             </Setting> 
                          </Default> 
                       </SchemePersonality> 
                    </AdaptivePowerBehavior>
                 </Settings> 
              </Policy> 
           </Power> 
        </Common> 
     </Customizations> 
  </Settings> 
```

## <span id="User_prediction"></span><span id="user_prediction"></span><span id="USER_PREDICTION"></span>User prediction


User prediction trigger uses one of the following methods to detect if the user is away:

-   Local prediction service

-   Static prediction (12 AM - 5 AM)

If the prediction service indicates that the user is away and the feature is turned on, the system will hibernate.

You cannot customize the user prediction setting using a provisioning package file, but you can enable or disable the setting through a hidden power setting. The setting is also exposed in the user interface on the power settings page.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Budget setting</th>
<th>Definition</th>
<th>Exposed as</th>
<th>Powercfg command</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>USERPRESENCEPREDICTION</p></td>
<td><p>Defines the screen on time that will be available to the user after standby exists and the screen turns on.</p></td>
<td><p>Power setting</p></td>
<td><p><code>powercfg /setdcvalueindex scheme_current sub_presence userpresenceprediction</code></p></td>
</tr>
</tbody>
</table>