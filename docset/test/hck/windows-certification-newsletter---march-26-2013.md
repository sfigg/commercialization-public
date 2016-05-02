---
author: joshbax-msft
title: Windows Certification Newsletter - March 26, 2013
description: Windows Certification Newsletter - March 26, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ad15323f-31b8-4990-be4f-7af379c2d84e
---

# Windows Certification Newsletter - March 26, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows 8 touch test jigs updated](#jigs)

[System.Client.Tablet.Graphics.MinimumResolution relaxed for Windows 8](#minres)

[Tablet screen size now peaks at 17"](#peak)

[Choose the right USB 3 hub for HCK testing](#usbhub)

## <a href="" id="jigs"></a>Windows 8 touch test jigs updated


The Windows 8 Touch Test Jigs — Precision Touch Test Tool (PT3) and Rotation and Acoustic Tool (RA) — now are available from two sources to support both capacitive-based and optical-based touch technologies.

For detailed test specifications and availability, please contact one of these certified jig vendors:

-   **Triex Technologies, Inc.**

    Tim Wright, Timw@triextech.com, +1 (206) 940-0943

-   **Industrial Technology Research Institute**

    Sen-Yih Chou, Senyih@itri.org.tw, +886 (03) 5743887

## <a href="" id="minres"></a>System.Client.Tablet.Graphics.MinimumResolution relaxed for Windows 8


We're changing the System.Client.Tablet.Graphics.MinimumResolution requirement to create a consistent minimum resolution of 1024 x 768 at a depth of 32 bits across all Windows 8 system form factors. The physical dimensions of the display panel must still match the aspect ratio of the native resolution. This doesn't imply that we're encouraging partners to regularly use a lower screen resolution. In fact, we see customers embracing the higher resolution screens that make a great Windows experience. We understand that partners exploring designs for certain markets could find greater design flexibility helpful.

The lower resolution would disable snap, a feature that allows two Windows Store apps to be viewed simultaneously side by side. To avoid potential consumer disappointment, OEMs need to disclose the loss of snap.

To achieve certification with a sub-1366 x 768 panel, OEMs must explain how they will provide appropriate, clear, and conspicuous disclaimers that customers can see before they buy their PCs. For example, OEMs may use ads, websites, packaging, and/or point-of-purchase materials. This disclaimer must disclose that the system doesn't support snap. OEMs can also disclose what's needed to get snap to work, like connecting an external display that meets the standard minimum display resolution requirement of 1366 x 768. That part is optional, but providing a solution tells people that snap can be used, with some system modifications. Plus, it's a nice thing to do.

When creating their own disclaimers, OEMs should do something like this:

*The integrated display resolution of this system is below the threshold for snap, a feature that lets people view two Windows Store apps at the same time. App snapping will work if you attach an external display that supports a screen resolution of 1366 x 768 or higher.*

The disclosure must use the same localized language that the system does.

### Submission process

Ask Sysdev@microsoft.com for a copy of the screen relaxation form. Use the form to describe how you will handle the disclosure. On submission, include the completed form in your Readme folder, kind of how you would include a reference to a manual errata. The reviewers check to see if the form is all filled out. If you have questions on the process or need to discuss your disclosure plans with us before submission, email Sysdev@microsoft.com, or whatever you normally use to make submissions.

## <a href="" id="peak"></a>Tablet screen size now peaks at 17"


We evaluate feedback from partners as they propose new designs, and we've found that the current definition of tablets also applies to touch all-in-ones that have a battery. That's not what we intended. These larger systems aren't really designed to be handheld and mobile, so the tablet features aren't appropriate for them. For certification purposes, we're tightening the definition of tablet by restricting it to systems with a screen size of 17" or less. Above that size, touch systems without batteries and attached accessible keyboards don't need to meet all of the tablet requirements.

If you have questions about your design, email Sysdev@microsoft.com.

## <a href="" id="usbhub"></a>Choose the right USB 3 hub for HCK testing


The HCK erratum 339 and 526, which require USB 3 hubs for testing purposes, are being extended until 6/30/2013. This is the final extension for these errata. After June 30, all products must pass the test without the use of these errata.

Right now, you have your choice of 2 USB 3 hubs:

-   TI TUSB8040EVM

    -   [On TI.com](http://www.ti.com/tool/tusb8040aevm)

    -   [On DgiKey.com](http://www.digikey.com/product-search/en/programmers-development-systems/eval-and-demo-boards-and-kits/2622039?k=TUSB8040A)

-   Via 812

    -   [On Plugable.com](http://plugable.com/products/USB3-HUB81X4)

    -   [On Via-Labs.com](On Via-Labs.com)

For hubs to qualify, we require two simple things:

-   It's USB-IF certified. (Does it display the USB logo?)

-   It's HCK certified. (Does it have a Windows 8 logo?)

These criteria ensure that the hub has gone through rigorous testing and will hold up to Windows Hardware Certification Kit (Windows HCK) device testing. If a hub meets both criteria, it should be safe to use in this test.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20March%2026,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





