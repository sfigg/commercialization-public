---
title: Configure power settings
description: This section contains information about the power settings that you can configure using the Windows provisioning framework. Each power setting topic includes the identification GUID, allowed values, meaning, and common usage scenarios for the setting.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6FA47DE6-540E-4AA9-A76E-3A02025B5C58
ms.author: alhopper
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Configure power settings


This section contains information about the power settings that you can configure using the Windows provisioning framework. Each power setting topic includes the identification GUID, allowed values, meaning, and common usage scenarios for the setting.

## <span id="Use_Windows_provisioning_to_configure_power_settings"></span><span id="use_windows_provisioning_to_configure_power_settings"></span><span id="USE_WINDOWS_PROVISIONING_TO_CONFIGURE_POWER_SETTINGS"></span>Use Windows provisioning to configure power settings


To configure the power settings using the [Windows provisioning](p_customize_converged.windows_provisioning_xml) framework, you must create a [Windows provisioning answer file](p_customize_converged.windows_provisioning_answer_file) as one of the inputs to the Windows Imaging and Configuration Designer (ICD) command-line to generate either a provisioning package or a Windows image that contains the power settings. For information on how to use the Windows ICD CLI, see [Use the Windows ICD command-line interface](p_icd.use_the_windows_icd_command_line_interface).

The power settings are not visible in the Windows ICD UI but appear under the main `Common\Power` namespace. This namespace is further divided into various groups including:

-   `Policy\Settings ` which includes the following subgroups:

    -   `AdaptivePowerBehavior`
    -   `Processor`
    -   `Battery`
    -   `Button`
    -   `Display`
    -   `Disk`
    -   `EnergySaver`
    -   `PCIExpress`
    -   `Sleep`
    -   `Misc`

-   `Controls\Settings ` which includes the following settings:

    -   `LidNotificationsAreReliable`

See [In this section](#in-this-section) for more information about the settings in each namespace.

The following example shows what your Windows provisioning answer file might look like after you've written it.

```XML
<?xml version="1.0" encoding="utf-8"?> 
<WindowsCustomizatons> 
  <PackageConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Package-Config.v1.0"> 
    <ID>{7e5c6cb3-bd16-4c1a-aacb-98c9151d5f20}</ID>  <!-- ID needs to be be unique GUID for the package --> 
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
                <Sleep> 
                  <SchemePersonality> 
                    <Default SchemeAlias="Balanced"> 
                      <Setting>   
                      <!-- Duration of time after sleep that the system automatically wakes and 
                           enters hibernate in seconds --> 
                         <HibernateTimeout> 
                          <AcValue>1800</AcValue> <!-- 30 minutes --> 
                          <DcValue>1800</DcValue> <!-- 30 minutes --> 
                        </HibernateTimeout>      
                      </Setting> 
                    </Default> 
                   </SchemePersonality> 
                 </Sleep> 
                 <Misc>                              
                   <SchemePersonality> 
                     <Default SchemeAlias="Balanced"> 
                       <Setting> 
                       <!-- Enables/Disables only WiFi connection during standby --> 
                         <AllowWifiInStandby> 
                           <AcValue>0</AcValue> 
                           <DcValue>0</DcValue> 
                         </AllowWifiInStandby>   
                       </Setting> 
                     </Default> 
                   </SchemePersonality> 
                  </Misc> 
             </Settings> 
           </Policy> 
        </Power> 
      </Common> 
    </Customizations> 
  </Settings> 
</WindowsCustomizatons>  
```

## <span id="use_powercfg.exe_to_control_power_schemes_"></span><span id="USE_POWERCFG.EXE_TO_CONTROL_POWER_SCHEMES_"></span>Use Powercfg.exe to control power schemes


You can use the powercfg.exe tool to control power schemes by providing the GUID or alias for the setting. For more information on how to use this tool, see [Powercfg command-line options](p_weg_hardware.powercfg_command-line_options).

## <span id="in_this_section"></span><span id="IN_THIS_SECTION"></span>


## <span id="in_this_section"></span>In this section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Adaptive hibernate](adaptive-hibernate.md)</p></td>
<td><p>Windows 10, version 1607 provides new triggers to allow the system to hibernate intelligently. These triggers eliminate resume to a dead battery and provide a great modern standby experience by ensuring that the system remains in CS for as long as possible.</p></td>
</tr>
<tr class="even">
<td><p>[Power controls](power-controls.md)</p></td>
<td><p>Settings in this subgroup include settings that control the system's power and behavior.</p></td>
</tr>
<tr class="odd">
<td><p>[Processor power management options](configure-processor-power-management-options.md)</p></td>
<td><p>The Windows 10 processor power management (PPM) algorithms implement OS-level functionality that allows the OS to efficiently use the available processing resources on a platform by balancing the user's expectations of performance and energy efficiency.</p></td>
</tr>
<tr class="even">
<td><p>[Battery settings](battery-settings.md)</p></td>
<td><p>Settings in this subgroup control the customization of battery actions and thresholds.</p></td>
</tr>
<tr class="odd">
<td><p>[Power button and lid settings](power-button-and-lid-settings.md)</p></td>
<td><p>Settings in this subgroup control the customization of system button actions.</p></td>
</tr>
<tr class="even">
<td><p>[Display settings](display-settings.md)</p></td>
<td><p>Settings in this subgroup control the power management of the display.</p></td>
</tr>
<tr class="odd">
<td><p>[Disk settings](disk-settings.md)</p></td>
<td><p>Settings in this subgroup control the power management of disk devices.</p></td>
</tr>
<tr class="even">
<td><p>[Energy Saver settings](energy-saver-settings.md)</p></td>
<td><p>Settings in this subgroup control the battery threshold and brightness when Energy Saver is turned on.</p></td>
</tr>
<tr class="odd">
<td><p>[PCI Express settings](pci-express-settings.md)</p></td>
<td><p>Settings in this subgroup control the power management of PCI Express links.</p></td>
</tr>
<tr class="even">
<td><p>[Sleep settings](sleep-settings.md)</p></td>
<td><p>Settings in this subgroup control sleep, resume, and other related functionality.</p></td>
</tr>
<tr class="odd">
<td><p>[Other power settings](no-subgroup-settings.md)</p></td>
<td><p>Settings in this subgroup do not belong to any other subgroup.</p></td>
</tr>
<tr class="even">
<td><p>[Legacy configuration options](legacy-configuration-options.md)</p></td>
<td></td>
</tr>
</tbody>
</table>
