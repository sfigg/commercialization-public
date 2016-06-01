---
author: joshbax-msft
title: Step 8 Create a submission package
description: Step 8 Create a submission package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e2e21925-eed8-492c-b12d-6f083a025194
---

# Step 8: Create a submission package


After the device passes all of the necessary tests, you can create a submission package (.hckx file) for submission.

Windows HCK Studio supports package creation, so you don't need to use a separate submission tool. It supports adding resource files (drivers, symbols, errata) necessary to complete certification. You can also merge multiple packages (.hckx files) into one single package.

The following image shows the Studio Package tab.

![hck studio package tab](images/hck-winb-studio-package-tab.png)

## To create a submission package


1.  Select the **Package** tab.

2.  If you used a special driver for a device (optional), submit it by doing this:

    1.  Click **Add Driver Folder** &gt; **Browse** to select the folder, and then click **OK**.

    2.  In the **Driver Properties** dialog box, select the appropriate **Products** and **Locales**, and then click **OK**.

3.  To add symbols (optional), right-click the driver folder, click **Add Symbols** &gt; **Browse** to select the folder, and then click **OK**.

4.  To add a supplemental folder (optional), such as a Readme file, contingency message, errata, or manual filter, click **Add Supplemental Folder** &gt; **Browse** to select the folder, and then click **OK**.

5.  Click **Create Package**.

6.  From the **Signing Options** dialog box, select one of these options:

    **Important**  
    All submissions must be digitally signed.

     

    -   **Do not sign** to create an unsigned package, for example, to send to Support for debugging or to later merge with other packages into a single submission package.

    -   **Use the certificate store** to create a digitally signed package—the most common scenario. This option requires an X509 certificate—for example a VeriSign certificate— to be installed on the computer running Windows HCK Studio. From the **Windows Security** dialog box, select the appropriate code signing certificate.

    -   **Use a certificate file** to create a digitally signed package by using a portable security file. This option asks you for an X509 certificate file (.cer file).

For additional information on packages like merging and viewing packages, see [HCK Studio - Package Tab](hck-studio---package-tab.md).

### Next steps

Congratulations, you have completed the end to end testing of your device using the Windows HCK. Submit the signed package (.hckx file) through the Hardware Dashboard on the Windows Dev Center. For more details, see [Dashboard Help](http://go.microsoft.com/fwlink/?LinkId=236060) in the Windows Dev Center.

 

 






