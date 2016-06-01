---
author: joshbax-msft
title: Filter.Driver Testing
description: Filter.Driver Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d23c1677-ad99-46b0-8744-b33c26c00595
---

# Filter.Driver Testing


This section describes how to test filter drivers and certify them for use on Windows® as part of the Windows Certification Program. To begin the testing portion of the certification process, you must install and run the Windows Hardware Certification Kit (Windows HCK) and set up your testing environment. For information about how to install and configure Windows HCK, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

If you have drivers or software devices that are loaded by services that are set to demand-start, follow these steps for testing:

1.  On the client computer, open the **Service Control Manager**.

2.  Change the relevant service from **Automatic Delayed start** to **Automatic**.

3.  Restart the client computer.

4.  The drivers loaded by the service will now show up in the **software devices** list.

This section includes:

-   [Antivirus (AV) Testing](antivirus--av--testing.md)

-   [Early Launch Antimalware (ELAM) Testing](early-launch-antimalware--elam--testing.md)

-   [File System Testing](file-system-testing.md)

-   [NDISTest 6.5 - LWF Logo test](ndistest-65---lwf-logo-test1931f4b3-18b0-4495-bb65-0d5088bea7af.md)

-   [Setup Registry Test for Filter Driver Logo Win7](setup-registry-test-for-filter-driver-logo-win7e4098394-d563-4bd1-a444-894f53f0fd4f.md)

-   [Sleep and PNP (disable and enable) with IO Before and After (Certification - Software Device)](sleep-and-pnp--disable-and-enable--with-io-before-and-after--certification---software-device-06b6afc3-7c10-48a4-ab5e-f245b228feed.md)

-   [Windows Filtering Platform (WFP) Drivers Testing](windows-filtering-platform--wfp--drivers-testing.md)

 

 






