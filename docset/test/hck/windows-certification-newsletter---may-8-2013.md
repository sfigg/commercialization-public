---
author: joshbax-msft
title: Windows Certification Newsletter - May 8, 2013
description: Windows Certification Newsletter - May 8, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 50aad465-787d-4c8d-9e6d-5b2d2f2b7302
---

# Windows Certification Newsletter - May 8, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[How to submit multiple UEFI submissions at one time](#multiple)

[Desktop certified motherboard submission policy](#desktop)

[How to handle a product type mismatch in HCK Studio](#studio)

## <a href="" id="multiple"></a>How to submit multiple UEFI submissions at one time


If you have a large number of UEFI submissions for devices in the same family, you can combine them to save time and steps. For example, if you have the May 2013 release of UEFI GOP drivers for Video Card Family X, all of those EFI modules can be bundled into a single UEFI submission.

Here's an example of code you might use:

``` syntax
Cabarc.exe N 2013-05-GOP-X.cab *.efi
```

Then sign this single .cab file and create a UEFI submission with Product Name "Family X GOP drivers for May 2013". Bundling your submissions not only saves time up front, it also helps speed the approval process.

## <a href="" id="desktop"></a>Desktop certified motherboard submission policy


System builders can use a previously certified motherboard to certify desktop systems for Windows 7 or Windows 8 without running the Audio Fidelity testing (AP Precision System Testing). Partners who choose to use a certified motherboard for Windows 7 or Windows 8 must meet all of the desktop requirements. The certified motherboard used for a desktop submission must be listed on the Logo'd Product List (LPL). The BIOS version used must match the one used for the motherboard submission, subject to the exceptions listed in the system family testing and updates policy that require a new submission.

When you make your desktop submission, include a Readme.doc file that references manual errata ID 738 and the name of the motherboard and submission ID used in the test system exactly as the motherboard name appears in the Logo'd Compatibility List. The inclusion of this information indicates that Audio Fidelity testing has already been satisfied by previous testing for motherboard certification. The submission ID number can be obtained from the Logo'd Compatibility List site.

## <a href="" id="studio"></a>How to handle a product type mismatch in HCK Studio


**Question:** When I select my device, the Product types summary in the right pane doesn't display the product type that I want to certify. What should I do?

**Answer:** Sometimes, features that are required for a product type aren't automatically detected on a device. In those cases, you must manually select the missing feature(s) that correspond to your product type. After all of the features have been selected, the product type appears. When you add features to your selection, the tests that are required for those features are automatically added to your list of tests.

**To manually configure a product type**

1.  Find your product type in the [Windows HCK Product Type Test Matrix](http://click.email.microsoftemail.com/?qs=71f7c6f3c47ab36b1cca80defb04fbde5af60d6665fd105d7ff9c50d06ee426a522680580b5e48df).

2.  Determine the list of features that are required for your product type.

3.  In the **Selection** tab in HCK Studio, right-click your selection to see a list of features. The check boxes for features that have been automatically detected display as selected.

4.  Select the check box for any missing feature that corresponds to your product type.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 







