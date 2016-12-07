---
title: Wi-Fi Sense
description: Partners can change the default settings for Wi-Fi Sense.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0900eb56-c120-41e8-9193-240b1e7d1fae
---

# Wi-Fi Sense


Partners can change the default settings for **Wi-Fi Sense**.

Wi-Fi Sense automatically connects you to Wi-Fi so you can get online quickly in more places. It can connect you to open Wi-Fi hotspots that it knows about through crowdsourcing, or to Wi-Fi networks that your contacts have shared with you by using Wi-Fi Sense.

Wi-Fi Sense can discover your device location even when location is turned off for your user account. This is true whenever Wi-Fi Sense is turned on. Wi-Fi Sense uses your location to find suggested open Wi-Fi hotspots.

**Important**  
All Wi-Fi Sense default settings must be on (1 or ‘Enabled’) unless Microsoft executive approval has been granted for specific mobile operator requests, or for the exempt countries listed below.

 

Wi-Fi Sense features include auto-connect to Wi-Fi hotspots and credential sharing. When enabled, the **Wi-Fi Sense** button is displayed in the **Settings** &gt; **Wi-Fi** screen. When Wi-Fi Sense is disabled, the **Wi-Fi Sense** button is hidden in the UI and all Wi-Fi Sense features are disabled.

<a href="" id="constraints---imagetimeonly"></a>**Constraints:** ImageTimeOnly  

<a href="" id="instructions-"></a>**Instructions:**  
1.  Create a customization answer file using the contents shown in the following code sample.

    ``` syntax
    <?xml version="1.0" encoding="utf-8" ?>  
    <ImageCustomizations xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate"  
                         Name="WiFiSense"  
                         Description="Use to enable Wi-Fi Sense and display the UI to the user for configuring or opting into Wi-Fi Sense features."  
                         Owner=""  
                         OwnerType="OEM"> 
      
      <Static>  

        <Settings Path="WiFi/FirstBoot">  
          <Setting Name="AutoConnectAllowed" Value="" />    
          <Setting Name="DefaultAutoConnectState" Value="" />  
          <Setting Name="DefaultWiFiSharingState" Value="" />  
       </Settings>  

      </Static>

    </ImageCustomizations>
    ```

2.  Specify an `Owner`.

3.  Set the value of `AutoConnectAllowed` to one of the following values:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Value</th>
    <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>1 or 'Enabled'</p></td>
    <td><p>Use to enable Wi-Fi Sense and display the <strong>Wi-Fi Sense</strong> button in the <strong>Settings</strong> &gt; <strong>Wi-Fi</strong> screen. When enabled, users can opt-in to Wi-Fi Sense features.</p>
    <p>This is the default OS value.</p></td>
    </tr>
    <tr class="even">
    <td><p>0 or 'Disabled'</p></td>
    <td><p>Use to disable Wi-Fi sense and all Wi-Fi Sense features. This also hides the <strong>Wi-Fi Sense</strong> button in the <strong>Settings</strong> &gt; <strong>Wi-Fi</strong> screen.</p></td>
    </tr>
    </tbody>
    </table>

     

4.  Set the value of `DefaultAutoConnectState` to one of the following values:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Value</th>
    <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>1 or 'Enabled'</p></td>
    <td><p>Sets the checkbox for <strong>Automatically connect to Wi-Fi networks and accept terms for me</strong> during initial phone setup.</p>
    <p>This is the default OS value.</p></td>
    </tr>
    <tr class="even">
    <td><p>0 or 'Disabled'</p></td>
    <td><p>Clears the checkbox for <strong>Automatically connect to Wi-Fi networks and accept terms for me</strong> during initial phone setup.</p></td>
    </tr>
    </tbody>
    </table>

     

5.  Set the value of `DefaultWiFiSharingState` to one of the following values:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Value</th>
    <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>1 or 'Enabled'</p></td>
    <td><p>Sets the checkbox for <strong>Allow me to exchange Wi-Fi network access with my contacts</strong> during initial phone setup.</p>
    <p>This is the default OS value.</p></td>
    </tr>
    <tr class="even">
    <td><p>0 or 'Disabled'</p></td>
    <td><p>Clears the checkbox for <strong>Allow me to exchange Wi-Fi network access with my contacts</strong> during initial phone setup.</p></td>
    </tr>
    </tbody>
    </table>

     

<a href="" id="testing-steps-"></a>**Testing steps:**  
1.  Flash a build containing this customization to a phone.

2.  Go through initial phone setup.

    -   If `AutoConnectAllowed` is set to 1 or 'Enabled', verify if the checkboxes in the **Wi-Fi Sense** screen during initial phone setup are selected or cleared depending on the values you set for `DefaultAutoconnectState` and `DefaultWiFiSharingState`.

    -   If `AutoConnectAllowed` is set to 0 or 'Disabled', during initial phone setup, verify that you cannot see the Wi-Fi Sense screen.

3.  Go to the **Settings** &gt; **Wi-Fi** screen. Depending on the value you specified for `AutoConnectAllowed`, verify the following:

    -   If enabled, verify that the **Wi-Fi Sense** button is displayed. Tap the button to go to the **Wi-Fi Sense** settings screen, which lets you opt-in to Wi-Fi Sense features.

    -   If disabled, verify that the **Wi-Fi Sense** button is hidden and all Wi-Fi Sense features are disabled.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phCustomization\p_phCustomization%5D:%20Wi-Fi%20Sense%20%20RELEASE:%20%289/7/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




