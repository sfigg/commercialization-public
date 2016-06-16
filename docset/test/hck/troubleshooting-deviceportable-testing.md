---
author: joshbax-msft
title: Troubleshooting Device.Portable Testing
description: Troubleshooting Device.Portable Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 77770e43-c853-4a0b-b9d8-04e171707481
---

# Troubleshooting Device.Portable Testing


To troubleshoot issues that occur with Device.Portable tests, follow these steps:

1.  Review the following Windows Hardware Certification Kit (Windows HCK) topics:

    -   [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md)

    -   [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md)

2.  Make sure that the device appears in **Device Manager** under **Portable Devices**.

3.  Some tests require that you log on to the computer as an Administrator. An Administrator account is needed if a test uses a test driver and then needs to revert to the original driver.

4.  Verify that you have installed the latest Windows HCK filters and kit updates. For more information, see [Windows Hardware Certification Kit Filters](windows-hardware-certification-kit-filters.md).

5.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

6.  If you cannot obtain a successful test result, contact [Windows HCK Support](windows-hck-support.md).

## Related topics


[Device.Portable Testing](deviceportable-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 







