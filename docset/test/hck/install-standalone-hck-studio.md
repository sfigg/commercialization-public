---
author: joshbax-msft
title: Install standalone HCK Studio
description: Install standalone HCK Studio
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40bb0c30-09b4-42f0-aa39-25aa128b039b
---

# Install standalone HCK Studio


You can install a standalone Windows HCK Studio if you want to view .hckx certification packages (including logs/results), either in-progress or finished, without installing the Windows HCK Controller. Installation only takes a few seconds, and enables you to complete the following scenarios:

-   View log files from the package.

-   View test results in the package.

-   Regenerate the package.

-   Merge with another package.

-   Add additional drivers to the package.

-   Add a DUA driver update to the package.

## To install standalone Windows HCK Studio


1.  Download the Windows HCK from the [Windows Dev Center Download page](http://go.microsoft.com/fwlink/?LinkId=247519) to a location accessible to your test server.

2.  From HCKSetup.exe, select the **Studio Only** option.

3.  After installation, open HCK Studio.

4.  HCK Studio opens automatically on the **Connect** tab, which you can interact with just as you would with the full Windows HCK.

## Limitations


Installing a standalone HCK Studio also installs HCK Manager to your system. However, you won’t be able to access or use any of the features of HCK Manager.

Also, you should avoid installing a standalone HCK Studio on the same machine where a remote Studio (Studio installed from a Controller) has been installed. There are known limitations to this scenario, which may leave your system in an inoperable state.

 

 






