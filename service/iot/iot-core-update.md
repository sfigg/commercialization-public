---
author: kpacquer
Description: 'Windows 10 IoT Core (IoT Core) devices will automatically receive OS updates via Windows Update when connected to the internet.'
ms.assetid: d8298c99-6fa7-4825-a0b8-181b99e40975
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: IoT Core OS Updates
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IoT Core OS Updates


Windows 10 IoT Core (IoT Core) devices can automatically receive OS updates via Windows Update when connected to the internet.

Microsoft publishes OS updates at regular intervals and the IoT Core OS updates are classified as 
* **Feature Updates** - containing new features/improvements, at a half yearly cadence
* **Quality Updates** - containing security related fixes and critical bug fixes, at a monthly cadence

Read [Windows as a Service Overview](https://docs.microsoft.com/windows/deployment/update/waas-overview) for more details on the OS updates and servicing branches supported by Windows.

[Windows 10 release information](https://technet.microsoft.com/windows/release-info.aspx) provides an up to date history of the various updates released along with the KB article link that provides an overview of the changes included in the specific update.


## <span id="OS_updates_only"></span><span id="os_updates_only"></span><span id="OS_UPDATES_ONLY"></span>OS updates only

An IoT Core device can be set to receive OS updates only directly from Microsoft by using **IoT\_GENERIC\_POP** feature in the OemInput XML.
