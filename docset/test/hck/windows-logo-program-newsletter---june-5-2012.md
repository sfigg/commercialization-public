---
author: joshbax-msft
title: Windows Logo Program Newsletter - June 5, 2012
description: Windows Logo Program Newsletter - June 5, 2012
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 01055d8e-f1e3-46b1-8df3-669f29445305
---

# Windows Logo Program Newsletter - June 5, 2012


**New Windows Hardware Certification blog!**

The Windows Certification Newsletter has been replaced by the [Windows Hardware Certification blog](http://blogs.msdn.com/b/windows_hardware_certification/). Go to the blog for the updates and info you’re used to seeing in the newsletter. Subscribe today!

## In this issue


[Windows Certification Workshop for Connected Devices on Windows RT](#workshoprt)

[Special Discount for Early Windows 8 and Windows Server 2012 Submissions](#discount)

[New Hardware and Software Logo License Agreements Are Now Available](#license)

[New Logo Artwork Package Is Now Available](#newlogoart)

[Logo Artwork Usage Guidelines](#logoart)

[Testing Hint: How to Use Test-Signed Catalogs for Windows 8](#testsignedcats)

[File Upload to Dashboard Site May Fail with 32-Bit Internet Explorer](#uploadfail)

## <a href="" id="workshoprt"></a>Windows Certification Workshop for Connected Devices on Windows RT


We are excited to announce the next in a series of Windows Certification Workshops, to be held on June 26 – 29, 2012, at the Hyatt Regency Bellevue in Bellevue, Washington.

This event focuses on the programs, processes, and tests that you use to certify your connected devices for Windows RT. The workshop provides a hands-on experience working directly with Microsoft developers and testers, using Windows Hardware Certification Kit (HCK) to certify your hardware. You are encouraged to bring the connected devices that you are planning to certify. The workshop is an opportunity to certify your products directly on Windows RT systems available at the workshop.

There is no registration fee for this event. However, the event has limited space availability. The online [Windows Certification Workshops registration portal](http://www.windowscertificationworkshop.com/) is open for your registration.

Please note:

-   Space for this event is limited. We will notify you by email whether your registration is confirmed or not.

-   There is a limit of two participants per company or per division.

-   You are responsible for your own lodging. The Hyatt Regency Bellevue is offering a preferred rate to event attendees.

-   On the registration portal, please use the code “certfest” to register for the event.

-   For any issues with the registration, please email wincertwork@microsoft.com.

## <a href="" id="discount"></a>Special Discount for Early Windows 8 and Windows Server 2012 Submissions


The Windows Hardware Certification Program is now open for Windows 8 and Windows Server 2012 submissions. Take advantage of the early-bird submission prices. All Windows 8 and Windows Server 2012 submissions are only $100 (US) until General Availability of these operating systems.

You can download the new Windows Hardware Certification Kit at <http://go.microsoft.com/fwlink/p/?LinkID=241607>. Use this kit to create submissions for Windows 8 and Windows Server 2012.

You can download Windows 8 Release Preview at <http://windows.microsoft.com/windows-8/download?ocid=W_MSC_W8P_DevCenter_Hardware>.

## <a href="" id="license"></a>New Hardware and Software Logo License Agreements Are Now Available


The new Hardware Logo License Agreement (LLA) 2013 and Software Logo License Agreement (LLA) 1.6 are now available for review and signing on the [Windows Hardware Developer Dashboard](https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=12&ct=1389889743&rver=6.1.6206.0&wp=MBI_SSL&wreply=https:%2F%2Fsysdev.microsoft.com%2FWLID%2FSignIn.ashx%3FReturnURL%3D%252fen-US%252fhardware%252fmember%252f&lc=1033&id=281915&mkt=en-US&cbcxt=hardware) website. Both LLAs have been updated to include information about the Windows 8 and Windows Server 2012 operating systems.

**Note**  
You must sign the new Hardware LLA 2013 in order to upload any hardware logo program submissions. Likewise, you must sign the new Software LLA version 1.6 in order to upload any software logo program submissions. The Dashboard site will block any attempted submissions unless you have signed the appropriate new LLA for the type of submission you are attempting.

 

## <a href="" id="newlogoart"></a>New Logo Artwork Package Is Now Available


The new LLAs allow you to use the new Windows 8 logo on any products you test and certify following the new Windows 8 requirements test kits. A new logo artwork package is now available for download on the [Windows Hardware Developer Dashboard](https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=12&ct=1389889743&rver=6.1.6206.0&wp=MBI_SSL&wreply=https:%2F%2Fsysdev.microsoft.com%2FWLID%2FSignIn.ashx%3FReturnURL%3D%252fen-US%252fhardware%252fmember%252f&lc=1033&id=281915&mkt=en-US&cbcxt=hardware) website. The new artwork package contains artwork for Windows XP, Windows Server 2003, Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2, Windows 8, and Windows Server 2012.

## <a href="" id="logoart"></a>Logo Artwork Usage Guidelines


A new logo artwork package is now available for download on the [Windows Hardware Developer Dashboard](https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=12&ct=1389888808&rver=6.1.6206.0&wp=MBI_SSL&wreply=https:%2F%2Fsysdev.microsoft.com%2FWLID%2FSignIn.ashx%3FReturnURL%3D%252fen-US%252fhardware%252fmember%252f&lc=1033&id=281915&mkt=en-US&cbcxt=hardware) website. The new package contains artwork for both Windows 8 and Windows Server 2012. This new artwork may not be used publicly until after Windows 8 and Windows Server 2012 General Availability. We will provide more guidance on when and how to use the new Windows certification logos in future versions of this newsletter.

## <a href="" id="testsignedcats"></a>Testing Hint: How to Use Test-Signed Catalogs for Windows 8


The test-signing process still works for Windows 8, but you must manually install the test certificate. Previously, Windows Logo Kit (WLK) automatically installed the test-signing certificate on each client machine and the controller, as part of the WLK installation process. The new Hardware Certification Kit (HCK) is not signed with this certificate, so you must manually install the certificate from one of the signed catalog files that you obtain from the Test-Sign website.

**To manually install the test certificate**

1.  Double-click the test-signed catalog file.

2.  Click **View Signature**.

3.  In the new window, click **View Certificate**.

4.  In the new window, click the **Certification Path** tab.

5.  Select the **Microsoft Test Root Authority** certificate and click **View Certificate**.

6.  In the new window, click the **Details** tab and click **Copy to File**.

7.  Follow the instructions in the wizard to export the certificate to a file, making note of the file location.

8.  Locate the file that you just exported (it should be a .cer file) and double-click it to open it.

9.  Click **Install Certificate**.

10. Follow the instructions in the Certificate Import Wizard, ensuring that you place all certificates in the Trusted Root Certification Authorities certificate store.

This procedure installs the test-signing certificate so that test-signed catalogs work properly. Note that the method to have drivers test-signed and the acceptable uses for test-signed drivers are unchanged.

## <a href="" id="uploadfail"></a>File Upload to Dashboard Site May Fail with 32-Bit Internet Explorer


Partners using a 32-bit version of Internet Explorer (IE) cannot upload files larger than approximately 500 MB. Partners who want to upload files larger than 500 MB must use a 64-bit version of IE. This issue will be fixed soon.

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Logo%20Program%20Newsletter%20-%20June%205,%202012%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





