---
author: joshbax-msft
title: Windows Certification Newsletter - December 18, 2012
description: Windows Certification Newsletter - December 18, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bcb8b24b-b6e1-4e5a-8c85-d9dc4a23cfd6
---

# Windows Certification Newsletter - December 18, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[UEFI POST TIME requirement relaxed for some all-in-one systems](#posttime)

[Happy holidays!](#holidays)

[Some HCK 2.0 errata extended, some set to expire](#hckerrata)

[WLK 1.6 active errata extended into 2015](#wlkerrata)

[UEFI submission review processes changed](#review)

## <a href="" id="posttime"></a>UEFI POST TIME requirement relaxed for some all-in-one systems


Based on industry feedback, we're relaxing the UEFI POST TIME requirement to enable large storage capacity in all-in-one systems.

Conditions:

-   PCs must be an all-in-one system with integrated displays.

-   Systems that have 3 TB or greater capacity must POST in 10 seconds or less.

-   Systems shipping after Jan 1, 2014, must meet the requirements published on [MSDN](http://msdn.microsoft.com/).

This delayed enforcement erratum begins April 15, 2013, when the [UEFI requirement Erratum 478 relaxation](http://msdn.microsoft.com/windows/hardware/jj679343.aspx) expires, and ends in October 2014.

To take advantage of this new delayed enforcement, Include ID 1250 in your README file starting April 15, 2013.

## <a href="" id="holidays"></a>Happy holidays!


All [Microsoft U.S. offices](http://www.microsoft.com/about/companyinformation/usaoffices/) will be closed on Monday and Tuesday, December 24–25, 2012, and January 1, 2013. We'll be processing submissions as usual around the holidays, but response times may be a little slower than average.

## <a href="" id="hckerrata"></a>Some HCK 2.0 errata extended, some set to expire


We've updated all active errata filters for [Hardware Certification Kit (HCK) 2.0](http://msdn.microsoft.com/windows/hardware/hh852359). All active errata that weren't fixed have been extended until March 1, 2013. We'll reevaluate active errata by March 1 and either extend or retire it, depending on whether we made fixes to the test kit. We didn't extend the errata that was already set to expired on January 1, 2013.

You can [check the status of all errata](https://sysdev.microsoft.com/Hardware/ec/) on the [Hardware Dashboard](https://sysdev.microsoft.com/hardware/member/). To narrow down the list, use the filters to view only active, expired, or expiring within 30 days. You can also search by ID and title.

Any extension date shouldn't be considered an indication of any retirement date.

## <a href="" id="wlkerrata"></a>WLK 1.6 active errata extended into 2015


We have updated all active errata filters for the [Windows Logo Kit (WLK) 1.6](http://msdn.microsoft.com/windows/hardware/gg487530.aspx) test kit. All errata that were fixed in the kit were expired. All active errata that weren't fixed have been extended until December 1, 2015. (This extension date shouldn't be considered an indication of the kit's retirement date.)

You can [check the status of all errata](https://sysdev.microsoft.com/Hardware/ec/) on the [Hardware Dashboard](https://sysdev.microsoft.com/hardware/member/). To narrow down the list, use the filters to view only active, expired, or expiring within 30 days. You can also search by ID and title.

## <a href="" id="review"></a>UEFI submission review processes changed


UEFI submissions will no longer go through an automated signing process. Instead, we'll review them manually twice a week. You can expect your submission to be processed in about 5 business days. To avoid delays, please follow the guidelines posted on the [UEFI submission page](https://sysdev.microsoft.com/Hardware/member/SubmissionWizard/CreateUefiSubmission.aspx) on the [Hardware Dashboard](https://sysdev.microsoft.com/hardware/member/). Remember when submitting to the [UEFI signing portal](http://msdn.microsoft.com/library/windows/desktop/hh973604) to:

-   Provide descriptive info when submitting content.

-   Submit only product-quality code.

-   Ensure that your code doesn't execute untrusted code.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







