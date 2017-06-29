---
title: Digitally sign an .hlkx package
description: Digitally sign an .hlkx package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 99940710-A95F-47CE-A153-27B9A6191808
---

# Digitally sign an .hlkx package


HLK Studio supports three package types – one unsigned, two signed. All official submissions to Microsoft must be digitally signed. To create package:

1.  From HLK Studio, open a current project.

2.  Select **Package** tab, click **Create Package** and select the appropriate option.

    -   **Do not sign** - To create an unsigned package, for example to send to support for debugging purposes or to later merge with other packages into a single submission package.

    -   **Use the certificate store.** - To create a digitally signed package (most common scenario). This option requires an X509 certificate (i.e. VeriSign certificate) already installed on the computer running HLK Studio. From the **Windows Security** dialog, select the appropriate Code Signing certificate.

    -   **Use a certificate file** - To create a digitally signed package using a portable security file. This option will ask you for an X509 certificate file (.cer). If you want to use a password protected .pfx file, you must install the file on your system with the password and select the certificate via the certificate store.

## <span id="View_signability_results"></span><span id="view_signability_results"></span><span id="VIEW_SIGNABILITY_RESULTS"></span>View signability results


When you include a driver with your package, HLK checks the signability of the driver. The **Signability** column in the **Drivers Folder** list has a green check mark for passing, or a red X mark for failed. To see signability errors and warnings, right-click the driver package folder and select **Signability Results**.

The Signability of a driver is different from signing a package. Signing a package for an official submission is done to the .hlkx package to verify the owner of the package. Signability of a driver checks that the driver content added to the package is acceptable for the submission.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk\p_hlk%5D:%20Digitally%20sign%20an%20.hlkx%20package%20%20RELEASE:%20%286/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




