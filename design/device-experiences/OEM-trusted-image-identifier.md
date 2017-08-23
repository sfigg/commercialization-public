---
title: Configure a trusted image identifier for Windows Defender
description: Provides guidance on what an OEM should do to configure a trusted image identifier
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Configure a trusted image identifier for Windows Defender

As the OEM, you can speed up the initial performance of a device by adding a trusted image identifier to Windows Defender. 

By default, Windows Defender performs a scan of each file on the computer when the computer accesses the file for the first time. This is known as an on-access scan. Optimization mechanisms, such as caching, help reduce unnecessary scans of files that have already been scanned. When Windows Defender performs a quick scan or a full scan (also known as on-demand scans), the rest of the files on the system will be marked as safe. 

For optimal performance, we recommend that you add this setting when you prepare the computer for final deployment, after you perform a full scan of the final image.

1. Create an answer file that you are going to use with Sysprep, and add the Security-Malware-Windows-Defender\TrustedImageIdentifier setting.
2. For the value of the TrustedImageIdentifier setting, specify a unique identifier, such as a GUID, for the image.
3. Install Windows on the reference computer, and perform all updates.
4. Perform a scan of the image by using Windows Defender to ensure that the image is safe.
5. When you run Sysprep for the final time, use the Sysprep command together with the /oobe and /unattend options, as follows:
Sysprep /oobe /shutdown /unattend:Unattend.xml
6. Perform other offline tasks, such as offline servicing of the image. Capture and apply the image to other computers, and then deliver the computer to the customer.

The next time that the computer starts, Windows identifies all of the previously scanned files currently on the system, and skips these files during subsequent scans.