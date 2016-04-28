---
author: joshbax-msft
title: Windows Certification Newsletter - November 20, 2012
description: Windows Certification Newsletter - November 20, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f6f29e4a-12f2-42e7-8c01-d87a6332562b
---

# Windows Certification Newsletter - November 20, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows Hardware Certification policies updated](#whck)

[Linking your device to your app](#lilnk)

[HCK 2.0 RTM release is now required for submissions](#hckrtm)

[Please join us in our online forum](#forum)

[Logos posted for Windows 8 specific hotkeys](#hotkeys)

[Brightness control for Windows 8 to be implemented via WDDM](#brightness)

## <a href="" id="whck"></a>Windows Hardware Certification policies updated


We've updated the document explaining the program policies and processes. The updates include changes to billing, as well as more detailed info on testing and certifying Windows RT connected devices, and updated details for multifunction device testing. For systems, we've added a description of specialized PCs and clarified details on testing rules if a docking station exists for a certified system.

For help with Windows Store apps, check the forum or contact CSS.

**Download the document:**<http://msdn.microsoft.com/library/windows/hardware/hh852370>

## <a href="" id="lilnk"></a>Linking your device to your app


Now that Windows 8 is hitting the marketplace, more partners are beginning to grasp the potential of the Windows Store apps that are connected to your device. Although the experience is simple and seamless for end users, the process to create this linkage requires attention to details. We're finding that metadata submissions are failing because of minor issues.

The white paper "Windows Store Device App Lifecycle" details the .xml files that are needed to make the linkage, how to test the app and .xml files, and how to submit packages properly.

For help with Windows Store apps, check the forum or contact CSS.

**Download the white paper:**<http://msdn.microsoft.com/library/windows/hardware/hh833785>

## <a href="" id="hckrtm"></a>HCK 2.0 RTM release is now required for submissions


The Release Preview of the Windows Hardware Certification Kit (Windows HCK) has been retired. All submissions to the Hardware Dashboard must now use the Release to Market (RTM) version of the Windows HCK. Windows Logo Kit (WLK) 1.6 can still be used for Windows® XP, Windows Vista, Windows® 7, Windows Server 2003, and Windows Server 2008 R2 submissions until 90 days' notice is given.

**Download Windows HCK 2.0 RTM:**<http://msdn.microsoft.com/windows/hardware/hh852359>

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

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20November%2020,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





