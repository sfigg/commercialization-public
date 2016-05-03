---
author: joshbax-msft
title: Windows Certification Newsletter - January 29, 2013
description: Windows Certification Newsletter - January 29, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ee32d5f7-8ed4-4439-a447-4f780420b530
---

# Windows Certification Newsletter - January 29, 2013


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[UEFI submission review process revised](#reviewprocess)

[How to submit multiple UEFI submissions at one time](#multiple)

[Logo License Agreement updates are coming](#license)

[Windows Touch Test Lab closed for Chinese New Year](#wttl)

[Please join us in our online forum](#forum)

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

## <a href="" id="multiple"></a>How to submit multiple UEFI submissions at one time


If you have a large number of UEFI submissions for devices in the same family, you can combine them to save time and steps. For example, if you have the May 2013 release of UEFI GOP drivers for Video Card Family X, all of those EFI modules can be bundled into a single UEFI submission.

Here's an example of code you might use:

``` syntax
Cabarc.exe N 2013-05-GOP-X.cab *.efi
```

Then sign this single .cab file and create a UEFI submission with Product Name "Family X GOP drivers for May 2013". Bundling your submissions not only saves time up front, it also helps speed the approval process.

## <a href="" id="license"></a>Logo License Agreement updates are coming


A new Logo License Agreement 2013 Style Guidelines specification is scheduled to release at the end of February. Watch for more info in the February 26 newsletter.

## <a href="" id="wttl"></a>Windows Touch Test Lab closed for Chinese New Year


We'd like to remind our partners that [Windows Touch Test Lab](http://msdn.microsoft.com/library/windows/hardware/hh872970) will be closed from February 9–17 for Chinese New Year. There will be no device delivery or submission processing during those 9 days.

Partners who want to ensure device certification prior to the holiday should:

-   Email the lab at tab-ext@microsoft.com with submission ID and stack-up details.

-   Submit physical hardware to the lab no later than January 31, 2013.

Submissions made or devices delivered after January 31 might not be processed before the holiday. We also expect submission volume to be heavy, so plan for a 5–10 business day turnaround, in addition to the holiday break.

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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20January%2029,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





