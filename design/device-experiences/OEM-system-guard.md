
---
title: Windows Defender System Guard hardware requirements
description: Provides guidance on what an OEM should do to enable System Guard
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 07/20/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Defender System Guard hardware requirements
System Guard maintains system integrity at boot and at runtime, and continues to validate system integrity at runtime.  It contains three distinct areas: 
1. UEFI Secure Boot and Trusted Boot. These features continue to function as they have but are now considered part of the System Guard feature set.
2. VBS for trustlets and trustlet data. 
3. DHA capability on the client.
In addition to this baseline functionality, System Guard provides advanced protection for Windows Hello by isolating, using hardware, Windows Hello’s biometric capabilities and the user’s biometric data. Window Defender System Guard provides advanced protection for Windows authentication by isolating, using hardware, Credential Guard and it’s authentication capabilities and data.

As an OEM, you provide the hardware necessary to enable System Guard.  



## Related Topics
- [Windows Defender Device Guard hardware requirements](OEM-device-guard.md)
- [Windows Defender Credential Guard hardware requirements](OEM-credential-guard.md)
- [Bitlocker device encryption](OEM-device-encryption.md)
