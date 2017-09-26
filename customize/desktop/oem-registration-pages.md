---
title: OEM registration pages
description: Add your OEM registration pages to OOBE
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 09/27/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# OEM registration pages

Adding your registration pages enables you to gather user information, and introduce offers, during the Windows out of box experience. If you choose to implement the optional registration pages, we recommend that you use them to provide information and opportunities that benefit your customers. The Windows 10 OOBE is designed to maximize customer engagement by creating pages that focus on one thing at a time. As a result, OEM registration is divided between two separate pages, each of which has customizable aspects.

The two OEM registration pages appear as follows:

![OEM registration page 1](images/oem-registration-page1.png)

![OEM registration page 2](images/oem-registration-page1.png)

The OEM registration pages work with the Microsoft Account (MSA) to help customers sign in only once during OOBE. If a customer signs up for an MSA or signs in with their existing MSA, the customer's first and last name, their email address for the MSA, and their region, if provided, will be filled in on the OEM registration pages and the customer can consent to share this information with you and your partners.

If the customer has not used an MSA, you can ask them for their information on the registration pages, if desired.

The OEM Registration pages are the last screens in the OOBE flow, after the user goes through all other steps in OOBE (Language, Legal, Connectivity, Account, NGC, OneDrive, Cortana, and Settings).

## In this section

The following topics describe how to add your registration pages to OOBE.

| Topic                                     | Description                                                                        |
|:------------------------------------------|:-----------------------------------------------------------------------------------|
| [Design your registration pages](design-registration-pages.md)   | Guidance on customizing the HTML of your registration pages. |
| [Configure OOBE.xml](oem-registration-oobexml.md)                | Create a custom Oobe.xml file or files as determined by the languages and regions where you ship your company's PCs. You can use multiple Oobe.xml files for language- and region-specific terms and settings so users see the correct language as soon as they start their PCs.                                                         |
| [Manage and upload user data](manage-user-data.md)               | Generate a public/private key pair for customer data encryption and decryption. To protect customer privacy, Windows encrypts the customer data that's generated through participation in, and completion of, the Registration pages. If the OEM doesn't store a public key appropriately, the Registration pages aren't shown.     |
| [Test your implementation](test-registration-pages.md)           | Create and preinstall a Windows Store app, or write a service to run after first sign-in, to collect the encrypted customer data, and pload that data set to your server for decryption and use. |
