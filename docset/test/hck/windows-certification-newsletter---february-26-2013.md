---
author: joshbax-msft
title: Windows Certification Newsletter - February 26, 2013
description: Windows Certification Newsletter - February 26, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 97ec185b-a793-469a-beb6-08bd5e711d48
---

# Windows Certification Newsletter - February 26, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Some errata in the HCK extended](#errata)

[More updates to UEFI POST time relaxations for some all-in-one systems](#allinone)

[Choose the right USB 3 hub for HCK testing](#usbhub)

[Logo License style guidelines updated](#style)

## <a href="" id="errata"></a>Some errata in the HCK extended


We've updated all active errata filters for the Windows Hardware Certification Kit (Windows HCK) 2.0. Any errata still indicating they're expiring on 3/1/2013 are either delayed enforcements with expired grace periods or were fixed in a QFE with a fix you need to incorporate into your testing environment. All active errata that weren't fixed in the test kit are now extended until 9/30/2013.

We'll reevaluate active errata again about 3 months before the new expiration dates. We'll either retire errata or extend it again, depending on whether fixes are in place for the test issues. A few errata are set to expire between 3/1 and 9/30 by design for delayed enforcement reasons. Those errata won't be extended again.

You can check the status of all errata anytime on the Hardware Dashboard. To narrow down the list, use the filters to view only active, expired, or expiring within 30 days. You can also search by ID and title.

Any extension date shouldn't be considered an indication of any retirement date.

## <a href="" id="allinone"></a>More updates to UEFI POST time relaxations for some all-in-one systems


Based on industry feedback, we're further relaxing the UEFI POST time requirement to enable all-in-one systems with large storage capacity.

Conditions:

-   PCs must be all-in-one systems with integrated displays.

-   AIO Systems must meet the POST Time Boundary depicted in this chart. For example, systems with a disk capacity that's greater than or equal to 1 TB but less than 2 TB must POST in 7 seconds or less.

-   Systems shipping after October 31, 2014, must meet the requirements published on MSDN.

![post time boundary](images/uefiposttimeboundary.jpg)

This delayed enforcement erratum begins April 15, 2013, when the UEFI requirement Erratum 478 relaxation expires, and ends in October 2014. To take advantage of this new delayed enforcement, Include ID 1250 in your README file starting April 15, 2013.

## <a href="" id="usbhub"></a>Choose the right USB 3 hub for HCK testing


The HCK erratum 339 and 526, which require USB 3 hubs for testing purposes, are being extended until 6/30/2013. This is the final extension for these errata. After June 30, all products must pass the test without the use of these errata.

Right now, you have your choice of 2 USB 3 hubs:

-   TI TUSB8040EVM

    -   [On TI.com](http://www.ti.com/tool/tusb8040aevm)

    -   [On DgiKey.com](http://www.digikey.com/product-search/en/programmers-development-systems/eval-and-demo-boards-and-kits/2622039?k=TUSB8040A)

-   Via 812

    -   [On Plugable.com](http://plugable.com/products/USB3-HUB81X4)

    -   On Via-Labs.com

For hubs to qualify, we require two simple things:

-   It's USB-IF certified. (Does it display the USB logo?)

-   It's HCK certified. (Does it have a Windows 8 logo?)

These criteria ensure that the hub has gone through rigorous testing and will hold up to Windows Hardware Certification Kit (Windows HCK) device testing. If a hub meets both criteria, it should be safe to use in this test.

## <a href="" id="style"></a>Logo License style guidelines updated


To support flexibility for logo placement and clarify logo size and greyscale info, the style specifications for the Windows Logo License Agreement for Hardware Version 2013 were recently revised with the following updates:

-   A corrected size -- 19.5 millimeters x 19.5 millimeters -- for the Windows logo on PCs that haven't passed the Windows hardware certification program requirements. Note: This label is procured by a secure print vendor who has all size and artwork requirements.

-   A new logo placement option for the Windows hardware certification logo on a power cord wrap. This option applies only when the casing contains no logos, labels, engravings, advertising, designs, or text readily visible to the user, other than:

    -   The licensee's own brand or logo.

    -   The PC's series, line, or model number.

    -   The PC's unique system identifier.

    -   Any other text, including regulatory markings, that's explicitly required on the casing by local law or regulations.

-   Greyscale options for the Windows symbol keys or buttons, including the minimum requirement of 7:1 contrast ratio of the symbol to the background.

-   The updated style specifications are also scheduled to be posted on the certification website by the end of this month.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







