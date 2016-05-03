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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Filter.Driver%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




