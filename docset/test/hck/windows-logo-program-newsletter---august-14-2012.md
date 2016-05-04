---
author: joshbax-msft
title: Windows Logo Program Newsletter - August 14, 2012
description: Windows Logo Program Newsletter - August 14, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3e55d2c5-ba35-4fc2-8984-59ac7568a62f
---

# Windows Logo Program Newsletter - August 14, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Desktop certified motherboard submission policy](#mboard)

[Hardware Certification Program FAQ updated](#faq)

[MP3 AAC Offload Support enforcement deferred](#mp3aac)

[Logo Product List to be available Aug. 23](#logolist)

[How to handle a product type mismatch in HCK Studio](#mismatch)

[Logo artwork usage guidelines update for Windows 8](#logoart)

[Submission fee update](#fee)

## <a href="" id="mboard"></a>Desktop certified motherboard submission policy


System builders can use a previously certified motherboard to certify desktop systems for Windows 7 or Windows 8 without running the Audio Fidelity testing (AP Precision System Testing). Partners who choose to use a certified motherboard for Windows 7 or Windows 8 must meet all of the desktop requirements. The certified motherboard used for a desktop submission must be listed on the Logo'd Product List (LPL). The BIOS version used must match the one used for the motherboard submission, subject to the exceptions listed in the system family testing and updates policy that require a new submission.

When you make your desktop submission, include a Readme.doc file that references manual errata ID 738 and the name of the motherboard and submission ID used in the test system exactly as the motherboard name appears in the Logo'd Compatibility List. The inclusion of this information indicates that Audio Fidelity testing has already been satisfied by previous testing for motherboard certification. The submission ID number can be obtained from the Logo'd Compatibility List site.

## <a href="" id="faq"></a>Hardware Certification Program FAQ updated


We've updated the [Certification Program FAQ](http://msdn.microsoft.com/library/windows/hardware/gg463054) in the Windows Dev Center and highly recommended that all partners participating in the program read it.

## <a href="" id="mp3aac"></a>MP3 AAC Offload Support enforcement deferred


Based on feedback from our industry partners, and to give them more time to prepare their systems and the supply chain, we're delaying enforcement of MP3 and AAC Offload Support as a part of AudioHardwareOffloading requirement until Oct 26, 2013. Systems seeking certification on or after that date must meet Device.Audio.HardwareAudioProcessing.AudioHardwareOffloading as published in the Windows Hardware Certification requirements.

## <a href="" id="logolist"></a>Logo Product List to be available Aug. 23


Windows Logo Product List (LPL) is scheduled to go live for new Windows 8 product listings on August 23, 2012. If you have any products that need verification before then, please contact Logofb@microsoft.com. The Logofb alias is providing the product listing info in the meantime.

## <a href="" id="mismatch"></a>How to handle a product type mismatch in HCK Studio


Question: When I select my device, the Product types summary in the right pane doesn't display the product type that I want to certify. What should I do?

Answer: Sometimes, features that are required for a product type aren't automatically detected on a device. In those cases, you must manually select the missing feature(s) that correspond to your product type. After all of the features have been selected, the product type appears. When you add features to your selection, the tests that are required for those features are automatically added to your list of tests.

To manually configure a product type:

1.  Find your product type in the [Windows HCK Product Type Test Matrix](http://download.microsoft.com/download/2/3/6/23662F33-71E8-43C1-8547-5DE49B0374AB/windows-hck-product-type-matrix.zip).

2.  Determine the list of features that are required for your product type.

3.  In the Selection tab in HCK Studio, right-click your selection to see a list of features. The check boxes for features that have been automatically detected display as selected.

4.  Select the check box for any missing feature that corresponds to your product type.

## <a href="" id="logoart"></a>Logo artwork usage guidelines update for Windows 8


The following guidelines apply to use of the certification logos for Windows 8:

-   **On product packaging**, you can use the logo only if the product is shipped by the manufacturer after July 31, 2012. If the product ships earlier than that, you can use text treatment to showcase certification.

-   **In other content such as print or online materials**, you may not publicly display the logo before September 1, 2012. For materials that you publicly display earlier than that, you can use text treatment to showcase certification.

## <a href="" id="fee"></a>Submission fee update


No submissions fees are being charged for Windows RT or UEFI submissions.

We're updating the billing policy document to make this more clear.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







