---
author: joshbax-msft
title: Windows Certification Newsletter - February 12, 2013
description: Windows Certification Newsletter - February 12, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b75ecfe0-78c5-4853-9c09-8f4d2af21715
---

# Windows Certification Newsletter - February 12, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[More updates to UEFI POST time relaxations for some all-in-one systems](#allinone)

[How to submit multiple UEFI submissions at one time](#multiple)

[UEFI submission review process revised](#reviewprocess)

[Logo License Agreement updates are coming](#license)

[Windows Touch Test Lab closed for Chinese New Year](#wttl)

[Please join us in our online forum](#forum)

## <a href="" id="allinone"></a>More updates to UEFI POST time relaxations for some all-in-one systems


Based on industry feedback, we're further relaxing the UEFI POST time requirement to enable all-in-one systems with large storage capacity.

Conditions:

-   PCs must be all-in-one systems with integrated displays.

-   AIO Systems must meet the POST Time Boundary depicted in this chart. For example, systems with a disk capacity that's greater than or equal to 1 TB but less than 2 TB must POST in 7 seconds or less.

-   Systems shipping after October 31, 2014, must meet the requirements published on MSDN.

![post time boundary](images/uefiposttimeboundary.jpg)

This delayed enforcement erratum begins April 15, 2013, when the UEFI requirement Erratum 478 relaxation expires, and ends in October 2014. To take advantage of this new delayed enforcement, Include ID 1250 in your README file starting April 15, 2013.

## <a href="" id="multiple"></a>How to submit multiple UEFI submissions at one time


If you have a large number of UEFI submissions for devices in the same family, you can combine them to save time and steps. For example, if you have the May 2013 release of UEFI GOP drivers for Video Card Family X, all of those EFI modules can be bundled into a single UEFI submission.

Here's an example of code you might use:

``` syntax
Cabarc.exe N 2013-05-GOP-X.cab *.efi
```

Then sign this single .cab file and create a UEFI submission with Product Name "Family X GOP drivers for May 2013". Bundling your submissions not only saves time up front, it also helps speed the approval process.

## <a href="" id="reviewprocess"></a>UEFI submission review process revised


UEFI submissions no longer go through an automated signing process. Instead, submissions are reviewed manually twice a week and take about 5 business days to complete. To avoid delays, please follow the guidelines posted on the UEFI submission page on the Hardware Dashboard.

Remember when submitting to the UEFI signing portal to follow the package requirements:

-   Products must have production names, like "XYZ123 GOP Driver".

-   Modules must be ship-quality and should have already been tested using the [Secure Boot Windows HCK manual tests](secure-boot-manual-logo-test9741a26f-8249-48bd-8135-152eb3f87590.md).

-   Modules must not allow untrusted code to execute.

-   Modules must not be licensed under GPLv3 or similar open source licenses.

-   UEFI Secure Boot isn't supported by Windows for Itanium platforms, so signing IPF drivers via the Hardware Development Center isn't required.

-   By clicking "Submit", you agree that your submission adheres to package requirements.

If your company is new to UEFI submissions, you also need to provide some extra info. After you create your submission, answer these questions in a text file and email it to Sysdev@mnicrosoft.com.

-   Does your company have an external website? If so, include the URL.

-   Does the UEFI submission contain product-quality code?

-   What's the purpose or goal for the submission?

-   Is the submission associated with another program?

-   Does the submission include license terms that would mandate the transmission of keys used for signing, like GPLv3?

-   Does your submission load and execute any other code prior to ExitBootServices()? If so, how the code is loaded, authorized, and executed? For example, "All images are loaded by EFI LoadImage() and executed by EFI StartImage(), and a prompt is displayed to the user requesting authorization (see attached screenshot)."

-   What's the submission ID?

## <a href="" id="license"></a>Logo License Agreement updates are coming


A new Logo License Agreement 2013 Style Guidelines specification is on the way. Watch for more info in the February 26 newsletter.

## <a href="" id="wttl"></a>Windows Touch Test Lab closed for Chinese New Year


The [Windows Touch Test Lab](http://msdn.microsoft.com/library/windows/hardware/hh872970) is closed until February 17 for Chinese New Year.

We expect submission volume to be heavy when we return, so turnaround might take longer than usual. Please plan on 5–10 business days.

## <a href="" id="forum"></a>Please join us in our online forum


We'd like to invite you to the brand new [Windows Hardware Testing and Certification forum](http://social.msdn.microsoft.com/Forums/en-US/whck/threads) on MSDN.

The forum is a place for engineers testing and certifying Windows hardware, drivers, and systems to share knowledge, get questions answered, and learn from shared experiences. To begin leveraging the collective knowledge of the community, just post a question on your topic of interest.

The forums are public, so please don't post questions or comments about prerelease versions of the Hardware Certification Kit. As with all other online discussions, be mindful of your privacy — never post info that can personally identify you, like your email address or company name.

We monitor the forum, so if you have any suggestions or feedback for us on the kit, tests, or certification process, please feel free to post that, too!

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](windows-certification-newsletter-archive.md)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20February%2012,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





