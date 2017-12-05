---
title: Exclusive apps
description: OEMs can work with software developers to target OEM devices for apps to appear exclusively on, based on values set in the registry.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 12/5/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Exclusive apps

By forming relationships with developers, you can work together to publish exclusive apps onto your devices. You have the flexibility based on the contracts you establish with developers to ensure that these apps are available exclusively on your Windows 10-based devices (as identified by OEM Store ID) and don't appear in the general catalog on any other devices. Your exclusive apps must be submitted to the Microsoft Store by a developer that you are in an exclusive relationship with, as defined in the Microsoft Store OEM Program enrollment form. You may also set up your own exclusive developer account where apps published from that account are automatically designated as exclusive.

The process to follow to set up your account for submitting exclusive apps to include on your Windows 10 image are in the **Microsoft Store OEM Program Guide**, available for download on myOEM.

> [!Note]
> Exclusive app accounts are only available to OEM developer accounts unless you have been granted an exception.

## Set your OEM Store ID and SCM ID

You must insert a combination of unique identifiers into your images to facilitate exclusive apps features. These features rely on the OEM Store ID (previously referred to as the OEM ID) and optionally the Store Content Modifier ID (SCM ID). The OEM Store ID and the Store Content Modifier (SCM) will be provided by the Microsoft Store Partner Operations team at your request.

### OEM Store ID

The OEM Store ID (OEM ID) is required for you to create your OEM Store in the Microsoft Store and for app exclusivity. Here are the characteristics of an OEM Store ID:

1. Assignment is a one-time operation; each OEM should have one and only one unique OEM Store ID.
1. You must populate your OEM Store ID to the registry field specified in the "Registry Fields Requirements" table below.
1. OEM Store ID is set during manufacturing and cannot be changed later.

### SCM ID

The Store Content Modifier ID (SCM ID) is optional. You can use it in addition to your OEM Store ID, but never instead of the OEM Store ID. Here are the characteristics of an SCM ID:

* SCM IDs are used to differentiate between different sub-brands, devices, and/or device groups belonging to a given OEM for specialized OEM Store or exclusive app experiences.
* Each OEM can have multiple SCM IDs; however, each specified segment (devices/brands/devices groups) must be identified by a single, unique SCM ID populated on all devices belonging to the given target segment.
* Depending on your business needs and objectives, you decide what level of granularity you want to use for your SCM IDs. However, consider that additional SCM IDs add more complexity and will take more work and resources to support. The table below describes some possible options.

  | OEM-ID         | SCM ID                | Description                                                               |
  |:---------------|:----------------------|:--------------------------------------------------------------------------|
  | FABRIKAM       | Fabrikam_Enterprise   | Device group - segementing devices geared towards enterprise customers.   |
  | FABRIKAM       | Fabrikam_Proseware    | Brand - grouping of the "Proseware" branded devices.                      |
  | FABRIKAM       | Fabrikam_ProsewareX2  | Device - device-specific segment, Fabrikam Proseware model X2.            |

  > [!Note]
  > If you do not currently have an SCM or chose not to differentiate your OEM Store by using a SCM, contact the Microsoft Store Partner Operations Team for instructions on setting up an OEM Store using only an OEM Store ID. If you have an SCM ID that was created for your Windows 8.1 devices, you can still use that SCM ID for your Windows 10-based device.  If you do so, you will still need to obtain your OEM Store ID from the Microsoft Store Partner Operations Team and insert that into your Windows 10 image.

* Each device can have at most one SCM ID.
* You populate the SCM ID to the registry field specified in the "Registry Fields Requirements" table below.
* The SCM ID is set during manufacturing and cannot be changed later.