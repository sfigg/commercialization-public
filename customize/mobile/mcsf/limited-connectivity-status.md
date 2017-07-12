---
title: Limited connectivity status
description: Partners may override the default status message shown when a device is connected to a Wi-Fi access point.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c1d6cc28-12eb-4570-bcb0-06801feb62d9
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Limited connectivity status


Partners may override the default status message shown when a device is connected to a Wi-Fi access point.

By default, when the device is connected to a Wi-Fi access point (AP), it no longer shows the **No Internet access** status message below the AP name. Partners may choose to override this default behavior and show the status message instead.

In previous OS releases, this status message was shown even when the device is connected to a Wi-Fi AP or even when the user can browse the Internet. The message may cause user confusion because it is shown whenever a proxy is used as hotspot plug-in probes and data do not go through a proxy.

<a href="" id="constraints---none"></a>**Constraints:** None  

<a href="" id="instructions-"></a>**Instructions:**  
1.  Create a customization answer file using the contents shown in the following code sample.

    ``` syntax
    <?xml version="1.0" encoding="utf-8" ?>  
    <ImageCustomizations xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate"  
                         Name="LimitedConnectivityStatus"  
                         Description="Use to show the "No Internet access" status in the Wi-Fi settings page when connectivity is limited."  
                         Owner=""  
                         OwnerType="OEM"> 
      
      <Static>  
        <Settings Path="WiFi/Config">  
          <Setting Name="PublishLimitedConnectivity" Value="" />  
        </Settings>  
      </Static>

    </ImageCustomizations>
    ```

2.  Specify an `Owner`.

3.  Set `PublishLimitedConnectivity` to one of the following values:

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
    <td><p>0 or 'Disabled'</p></td>
    <td><p>Do not show the <strong>No Internet access</strong> status message below the AP name.</p>
    <p>This is the default OS behavior.</p></td>
    </tr>
    <tr class="even">
    <td><p>1 or 'Enabled'</p></td>
    <td><p>Show the <strong>No Internet access</strong> status message below the AP name.</p></td>
    </tr>
    </tbody>
    </table>

     

<a href="" id="testing-steps-"></a>**Testing steps:**  
1.  Flash the build that contains this customization to a device.

2.  Connect to a Wi-Fi access point.

3.  Depending on the value you set for `PublishLimtiedConnectivity`, verify whether the **No Internet access** status message is shown below the AP name.

 

 






