---
author: joshbax-msft
title: Windows Certification Newsletter - October 23, 2012
description: Windows Certification Newsletter - October 23, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 0986f7bc-b8f9-4994-9bbc-b8c165b20be2
---

# Windows Certification Newsletter - October 23, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Please join us in our online forum](#forum)

[Logos posted for Windows 8 specific hotkeys](#hotkeys)

[Brightness control for Windows 8 to be implemented via WDDM](#brightness)

[FAQ: How can I sign legal agreements?](#legal)

[Submission policy for desktops using a certified motherboard](#desktops)

[How to handle a product type mismatch in HCK Studio](#hckstudio)

## <a href="" id="forum"></a>Please join us in our online forum


We'd like to invite you to the brand new [Windows Hardware Testing and Certification forum](http://social.msdn.microsoft.com/Forums/en-US/whck/threads) on MSDN.

The forum is a place for engineers testing and certifying Windows hardware, drivers, and systems to share knowledge, get questions answered, and learn from shared experiences. To begin leveraging the collective knowledge of the community, just post a question on your topic of interest.

The forums are public, so please don't post questions or comments about prerelease versions of the Hardware Certification Kit. As with all other online discussions, be mindful of your privacy — never post info that can personally identify you, like your email address or company name.

We monitor the forum, so if you have any suggestions or feedback for us on the kit, tests, or certification process, please feel free to post that, too!

## <a href="" id="hotkeys"></a>Logos posted for Windows 8 specific hotkeys


Special Windows hotkeys now have logo assets associated with them. The addendum for use of Windows 8 hotkey glyphs is optional for signing and enables you to use the Windows glyphs for hotkeys. Note that you must sign the addendum if you intend to use these glyphs. You can use the glyphs right away upon signing. The glyphs will also be integrated into the next release of the Logo Licensing Agreement (LLA).

For more info and access to the Windows 8 hotkey glyphs, email WHQLegal@microsoft.com.

## <a href="" id="brightness"></a>Brightness control for Windows 8 to be implemented via WDDM


OEMs that use an Embedded Control (EC) design to control brightness via ACPI may not pass certification and should move to a PWM design going forward. Implementing brightness control via WDDM enables the delivery of great experiences to customers and provides more flexibility to make changes. This change will help drive a consistent implementation and experience. However, we understand that removing EC design for brightness control constitutes a hardware requirement change. OEMs who are currently using EC should email LogoFB@microsoft.com for a waiver. The Windows 8 brightness requirements are published in the Microsoft WDDM requirements documents.

## <a href="" id="legal"></a>FAQ: How can I sign legal agreements?


To sign legal agreements, your account must have permission to do so. To check your settings, sign in to the **Hardware Dashboard &gt; Administration &gt; Your Profile &gt; Permissions**. Make sure that the **Sign Master Legal Agreements** check box is selected. Sign out and then sign back in again for the change to take effect. If you can't update the setting, contact your account administrator.

**To sign a legal agreement**

1.  Sign in to the **Hardware Dashboard &gt; Administration &gt; Legal Agreements**.

2.  Click the Logo License Legal agreement that you want to sign.

3.  Copy the signature block with your name and date.

4.  Paste the name and date, and then click **Submit**.

## <a href="" id="desktops"></a>Submission policy for desktops using a certified motherboard


System builders can use a previously certified motherboard to certify desktop systems for Windows® 7 or Windows 8 without running the Audio Fidelity testing (AP Precision System Testing). Partners who choose to use a certified motherboard for Windows 7 or Windows 8 must meet all of the desktop requirements. The certified motherboard used for a desktop submission must be listed on the Logo'd Product List (LPL). The BIOS version used must match the one used for the motherboard submission, subject to the exceptions listed in the system family testing and updates policy that require a new submission.

When you make your desktop submission, include a Readme.doc file that references manual errata ID 738 and the name of the motherboard and submission ID used in the test system exactly as the motherboard name appears in the Logo'd Compatibility List. The inclusion of this information indicates that Audio Fidelity testing has already been satisfied by previous testing for motherboard certification. The submission ID number can be obtained from the Logo'd Compatibility List site.

## <a href="" id="hckstudio"></a>How to handle a product type mismatch in HCK Studio


**Question:** When I select my device, the **Product types** summary in the right pane doesn't display the product type that I want to certify. What should I do?

**Answer:** Sometimes, features that are required for a product type aren't automatically detected on a device. In those cases, you must manually select the missing feature(s) that correspond to your product type. After all of the features have been selected, the product type appears. When you add features to your selection, the tests that are required for those features are automatically added to your list of tests.

**To manually configure a product type**

1.  Find your product type in the [Windows HCK Product Type Test Matrix](http://download.microsoft.com/download/2/3/6/23662F33-71E8-43C1-8547-5DE49B0374AB/windows-hck-product-type-matrix.zip).

2.  Determine the list of features that are required for your product type.

3.  In the **Selection** tab in HCK Studio, right-click your selection to see a list of features. The check boxes for features that have been automatically detected display as selected.

4.  Select the check box for any missing feature that corresponds to your product type.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20October%2023,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





