---
title: IHV Attested Signing Service
Description: 
ms.assetid: 
MSHAttr: 
author: sapaetsc
ms.author: sapaetsc
ms.date: 01/23/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# IHV Attested Signing Service

For Windows 10, Microsoft is creating a new service for IHVs who just need to get a driver signed for production. IHVs can go to the Windows Dev Center - Hardware Dashboard and request a signed driver by attesting to the quality. This process does not require HLK test results. Under this process the IHV would affirm the following in order to get a Microsoft signed driver:

-   IHV attests that they have completely tested their driver
-   IHV attests that their product and driver will not break interoperability
-   IHV attests that they will monitor telemetry and remediate any issues (exact metrics to be determined at a later date)

When an IHV agrees to these terms, a signed driver will be returned. This signed driver can be distributed to end users, and eventually distributed via Windows Update. However, the driver cannot be used in a Compatibility Test System and the product will not be listed on the Certified Products List. The signature that is returned from this process is different than one that is returned after you submit HLK test results to Microsoft. However, functionally there is no difference between the two signatures.

This option is only available for Windows 10 Mobile and Windows 10 for desktop editions operating system. The IHV Attested Signing Service is not available for the next version of Windows Server.

For more details about building your system, see:

-   Minimum Hardware Specification - This specification defines the minimum hardware requirements necessary to:
    -   Boot and run Windows 10.
    -   Update and service Windows 10.
    -   Provide a baseline user experience that is comparable with similar devices and computers.
-   Windows Hardware Compatibility Specification - This specification defines the engineering requirements for passing the Windows Hardware Compatibility Program.
-   Windows Engineering Guidance - This document is focused on documenting guidance to build products that deliver the best in class user experience.

 

 
