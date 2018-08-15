---
author: themar
Description: Configure a Trusted Image Identifier for Windows Defender
ms.assetid: b55f681f-94d7-4800-a927-ec186dc046e2
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Configure a Trusted Image Identifier for Windows Defender
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Configure a Trusted Image Identifier for Windows Defender

Make your devices work faster right out of the box by adding a trusted image identifier to Windows Defender. 

Without an image identifier, when the device accesses a file for the first time, Windows Defender scans it. This is known as an on-access scan. Optimization mechanisms, such as caching, help reduce unnecessary scans of files that have already been scanned. When Windows Defender performs a quick scan or a full scan, the rest of the files on the system will be marked as safe.

With an image identifier, after your image has been deployed, Windows marks the files deployed as part of the image as safe. New or updated files will still be scanned.

**Note**  
If you deploy a series of devices and then later determine that there is a potential security problem with image, contact your Depth Project Manager (PM) within the Windows Ecosystem Engagement team. Provide the unique identifier of the image. Microsoft will add this unique identifier into Windows Update. After a device with that unique identifier receives updates from Windows Update, Windows Defender performs scans on all of the files on that device.

## <span id="Adding_a_Trusted_Image_Identifier"></span><span id="adding_a_trusted_image_identifier"></span><span id="ADDING_A_TRUSTED_IMAGE_IDENTIFIER"></span>Adding a Trusted Image Identifier

For optimal performance, we recommend that you add this setting when you prepare the device for final deployment, after you perform a full scan of the final image.

**To add a trusted image identifier**

1.  Create an answer file that you are going to use with Sysprep, and add the Security-Malware-Windows-Defender\\`TrustedImageIdentifier` setting. For more info, see [Use Answer Files with Sysprep](use-answer-files-with-sysprep.md).

2.  For the `TrustedImageIdentifier` setting, specify a unique identifier for the image, such as a GUID or other unique value (example: "Contoso Laptop Model 1 2018-07-31").

3.  Install Windows on the reference computer, and perform all updates that are described in the "Common Sysprep Scenarios" section of the [Sysprep (System Preparation) Overview](sysprep--system-preparation--overview.md) topic.

4.  Perform a scan of the image by using Windows Defender or another scanning tool. This can help make sure that the image is safe.

5.  When you run Sysprep for the final time, use the Sysprep command together with the /oobe and /unattend options, as follows:

    ```
    Sysprep /oobe /shutdown /unattend:Unattend.xml
    ```

6.  Perform other offline tasks, such as offline servicing of the image. Capture and apply the image to other devices, and then deliver the device to the customer.

    The next time that the device starts, Windows identifies all of the files currently on the system, and skips these files during subsequent scans.

## <span id="related_topics"></span>Related topics

[Sysprep Process Overview](sysprep-process-overview.md)

[Use Answer Files with Sysprep](use-answer-files-with-sysprep.md#bkmk_1)
