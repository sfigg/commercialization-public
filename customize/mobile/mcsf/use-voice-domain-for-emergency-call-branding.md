---
title: Use voice domain for emergency call branding
description: To meet mobile operator requirements, OEMs can enable the voice domain to decide whether to use Emergency calls only or No service in the phone UI branding.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b7956175-e79d-4a15-b001-544e474191d4
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Use voice domain for emergency call branding


To meet mobile operator requirements, OEMs can enable the voice domain to decide whether to use **Emergency calls only** or **No service** in the phone UI branding.

<a href="" id="constraints---firstvariationonly"></a>**Constraints:** FirstVariationOnly  

<a href="" id="instructions-"></a>**Instructions:**  
1.  Create a customization answer file using the contents shown in the following code sample.

    ``` syntax
    <?xml version="1.0" encoding="utf-8" ?>  
    <ImageCustomizations xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate"  
                         Name="UseVoiceDomainForEmergencyCallBranding"  
                         Description="Use to let the voice domain decide whether to use 'Emergency calls only' or 'No service' in the
                                      phone UI branding. "  
                         Owner=""  
                         OwnerType="OEM"> 
      
      <Static>  

        <Settings Path="Phone/PhoneSettings">  
          <Setting Name="UseVoiceDomainForEmergencyCallBranding" Value="" />
        </Settings>  

      </Static>

    </ImageCustomizations>
    ```

2.  Specify an `Owner`.

3.  Set the `UseVoiceDomainForEmergencyCallBranding` setting to one of the following values:

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
    <td><p>0 or 'False'</p></td>
    <td><p>The OS inspects the registration state to decide the emergency call branding.</p>
    <p>This is the default OS behavior.</p></td>
    </tr>
    <tr class="even">
    <td><p>1 or 'True'</p></td>
    <td><p>The voice domain decides the emergency call branding.</p></td>
    </tr>
    </tbody>
    </table>

     

    If `UseVoiceDomainForEmergencyCallBranding` is set to 1, the phone will not display **Emergency calls only** in the following cases. Instead, it will display **No service**.

    -   If the system type [RILSYSTEMTYPE] is NONE, which means there is no signal.

    -   If the system type is LTE but there is no voice domain. This situation can occur in these cases:

        -   In LTE networks being used by a non-VoLTE capable device without 3G coverage.

        -   In forbidden LTE networks.

    However, if you do not set `UseVoiceDomainForEmergencyCallBranding` to 1, or the setting is missing, the device may display **Emergency calls only** in the above situations.

<a href="" id="testing-steps-"></a>**Testing steps:**  
Work with your mobile operator partner to test this customization on their network.

 

 






