---
title: Windows updates during OOBE
description: Describes the types of updates that will download during a user's Out of Box Experience
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 12/13/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Windows updates during OOBE

Critical driver updates, and critical Windows zero-day patch (ZDP) updates, will begin downloading automatically during OOBE as soon as the user has [connected to a network](connect-to-network.md). The user can't opt-out of these critical updates, as they are required for the device to operate.

A user can choose to download non-critical Windows updates at the end of OOBE. If a newer version of Windows is available than the version that shipped with the device, the user will see the **Your PC has an update waiting** page.

![Your PC has an update waiting](images/wu-oobe.png)

This page informs the user of the size of the update, and warns that internet access fees may apply. If the user clicks the **Update** button to opt-in to the download, the new version of Windows will begin downloading.

![Windows Update during OOBE experience](images/wu-oobe-experience.png)

The user can choose **Go to my desktop while my PC updates** to get to their desktop and begin using their new device. The update will continue downloading in the background.

![Windows Update during OOBE desktop experience](images/wu-oobe-desktop-experience.png)

Depending on the size of the update, and the strength of the user's network connection, this download may be time-consuming and may impact device performance.

If the user does not download non-critical Windows Updates during OOBE, they can download them at any time of their choosing once they reach the desktop from the **Settings** app.