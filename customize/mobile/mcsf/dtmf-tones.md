---
title: DTMF tones
description: Partners can configure the following DTMF tone settings when VoLTE calls are supported Duration of the DTMF toneDelay, or pause, between DTMF digits.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d5ddfb83-3706-4e37-8d09-e83d348a8c94
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# DTMF tones


Partners can configure the following DTMF tone settings when VoLTE calls are supported:

-   Duration of the DTMF tone

-   Delay, or pause, between DTMF digits

<a href="" id="constraints---none"></a>**Constraints:** None  
This customization supports: **per-IMSI** value

<a href="" id="instructions-"></a>**Instructions:**  
1.  Create a customization answer file using the contents shown in the following code sample.

    ``` syntax
    <?xml version="1.0" encoding="utf-8" ?>  
    <ImageCustomizations xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate"  
                         Name="DTMFTones"  
                         Description="Use to configure settings for DTMF tones."  
                         Owner=""  
                         OwnerType="OEM"> 

        <Settings Path="CellCore/PerDevice/General">  
          <Setting Name="DTMFOnTime" Value="" /> 
          <Setting Name="DTMFOffTime" Value="" />      
        </Settings>
    </ImageCustomizations>
    ```

2.  Specify an `Owner`.

3.  To specify the length of time, in milliseconds, to generate the DTMF tone, set `DTMFOnTime` to a value between 64 and 1000 (inclusive).

    For example, a value of 160 specifies 0.16 second.

4.  To specify the length of time, in milliseconds, to pause between DTMF digits, set `DTMFOffTime` to a value between 64 and 1000 (inclusive).

    For example, a value of 120 specifies 0.12 second.

<a href="" id="testing-"></a>**Testing:**  
Work with your mobile operator to fully test this customization on their network.

1.  Flash the build containing this customization to a phone that has VoLTE enabled.

2.  Make a VoLTE call to a service where DTMF tones can be used.

3.  Verify that DTMF tones are recognized correctly. Depending on the values you specified, verify the duration of the DTMF tone and the delay between DTMF digits.

 

 






