---
author: joshbax-msft
title: Digitally sign an .hckx package
description: Digitally sign an .hckx package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c46dfcc9-aab3-4f30-941d-61c9356f2413
---

# Digitally sign an .hckx package


HCK Studio supports three package types – one unsigned, two signed. All official submissions to Microsoft must be digitally signed. To create package:

1.  From HCK Studio, open a current project.

2.  Select **Package** tab, click **Create Package** and select the appropriate option.

    -   **Do not sign** - To create an unsigned package, for example to send to support for debugging purposes or to later merge with other packages into a single submission package.

    -   **Use the certificate store.** - To create a digitally signed package (most common scenario). This option requires an X509 certificate (i.e. VeriSign certificate) already installed on the computer running HCK Studio. From the **Windows Security** dialog, select the appropriate Code Signing certificate.

    -   **Use a certificate file** - To create a digitally signed package using a portable security file. This option will ask you for an X509 certificate file (.cer). If you want to use a password protected .pfx file, you must install the file on your system with the password and select the certificate via the certificate store.

## View signability results


When you include a driver with your package, HCK checks the signability of the driver. The **Signability** column in the **Drivers Folder** list has a green check mark for passing, or a red X mark for failed. To see signability errors and warnings, right-click the driver package folder and select **Signability Results**.

The Signability of a driver is different from signing a package. Signing a package for an official submission is done to the .hckx package to verify the owner of the package. Signability of a driver checks that the driver content added to the package is acceptable for the submission.

 

 






