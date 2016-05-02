---
author: joshbax-msft
title: Windows Certification Newsletter - October 1, 2013
description: Windows Certification Newsletter - October 1, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 647adf61-b011-4548-83e1-7c49f6edcaf4
---

# Windows Certification Newsletter - October 1, 2013


This newsletter provides up-to-date news about the Windows Certification (formerly Logo) Program and often provides info you can't get anywhere else. Did you get this from a friend? [Subscribe now](http://go.microsoft.com/fwlink/p/?linkID=313282) so you don't miss any important updates or changes.

## In this issue


[Digital signatures available for legacy operating systems in the new HCK for Windows 8.1](#digital926)

[Windows XP and Windows Vista standalone digital signatures no longer available after November 30th](#windows926)

[HCK QFE 03 for Windows 8.1 RTM now available](#hck926)

## <a href="" id="digital926"></a>Digital signatures available for legacy operating systems in the new HCK for Windows 8.1


### <a href="" id="hck-for-windows-8-1-usage-scenarios-"></a>HCK for Windows 8.1 usage scenarios

The new Windows HCK for Windows 8.1 supports certifications for these operating systems:

-   Windows 7

-   Windows 8

-   Windows 8.1

-   Windows Server 2008 R2

-   Windows Server 2012

-   Windows Server 2012 R2

### <a href="" id="wlk-1-6-usage-scenarios-"></a>WLK 1.6 usage scenarios

WLK 1.6 supports certifications for these operating systems:

-   Windows Server 2003

-   Windows Server 2008

-   Windows Server 2008 R2

### <a href="" id="digital-signatures-for-legacy-operating-systems-"></a>Digital signatures for legacy operating systems

When you successfully complete testing for a client certification of Windows 7, Windows 8, or Windows 8.1, use the [Windows Dev Center hardware dashboard](http://sysdev.microsoft.com/) to create a submission package for uploading - the same process that you’ve used in the past. And, if you’re using a uniform driver that’s properly decorated to include Windows Vista and Windows XP, the dashboard has check boxes for free digital signatures.

And when you successfully complete testing for a server certification of Windows Server 2008 R2, Windows Server 2012, or Windows Server 2012 R2, you can also use the [dashboard](http://sysdev.microsoft.com/) to create a submission package for uploading. Again, this is the same process that you’ve used in the past. And similarly, if you’re using a uniform driver that’s properly decorated to include Windows Server 2003 and Windows Server 2008, the dashboard has check boxes for free digital signatures. You can select the check boxes only if the driver being submitted was previously fully tested for certification with an earlier version of the HCK. If you select these check boxes, you must add to the supplemental folder a Readme file that includes the previous submission IDs for the Windows Server 2008 and Windows Server 2003 certification testing. All submissions for which you select these check boxes will go into the manual review queue so that the previous certification for Windows Server 2008 and Windows Server 2003 can be confirmed. If no Readme file is provided for the certification testing for Windows Server 2008 and Windows Server 2003, the submission will be canceled.

## <a href="" id="windows926"></a>Windows XP and Windows Vista standalone digital signatures no longer available after November 30th


With the retirement of HCK 2.0 on November 30, 2013, Windows XP and Windows Vista standalone digital signatures will no longer be available. The only way to obtain a Windows XP or Windows Vista digital signature after this date will be to test by using HCK for Windows 8.1 on Windows 7, Windows 8, or Windows 8.1 with a uniform driver that uses the same driver binaries as the higher level operating system. If you do this, a check box will appear that will let you add a Windows XP or Windows Vista signature to the submission.

## <a href="" id="hck926"></a>HCK QFE 03 for Windows 8.1 RTM now available


For information about QFE updates, see [Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md).

To get the latest QFEs for the Windows HCK, run [HCKSetup.exe](http://msdn.microsoft.com/windows/hardware/bg127147). The Windows HCK download includes all previous QFE updates.

[Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md)

[Download and install HCK to get the QFE](http://msdn.microsoft.com/windows/hardware/bg127147)

[Download the QFE now](http://msdn.microsoft.com/windows/hardware/bg127147)

**Note**  
Before applying the QFE, close all active DTM Studio sessions. Applying this QFE might affect in-progress submissions, so please complete any submissions before applying the QFE. After installing this QFE, you'll need to regenerate any affected submission that was generated before the QFE was installed.

 

## <a href="" id="new-certification-kit-support-matrix-available-"></a>New Certification Kit Support Matrix available


Want to know which version of the Windows HCK to use to certify a specific version of Windows? The [Certification Kit Support Matrix](certification-kit-support-matrix.md) shows you which versions of the kit can be used to certify each version of Windows.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20October%201,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





