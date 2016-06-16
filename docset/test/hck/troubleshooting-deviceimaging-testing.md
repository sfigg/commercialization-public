---
author: joshbax-msft
title: Troubleshooting Device.Imaging Testing
description: Troubleshooting Device.Imaging Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c4827919-a9ea-43c0-a517-69b6b7eec7fd
---

# Troubleshooting Device.Imaging Testing


To troubleshoot issues that occur with Device.imaging tests, follow these steps:

1.  Review [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md).

2.  Review one of the following topics, depending on whether you are testing a printer or a scanner

    -   [Printer Testing Prerequisites](printer-testing-prerequisites.md)

    -   [Scanner Testing Prerequisites](scanner-testing-prerequisites.md)

    -   [Web Services on Devices Testing Prerequisites](web-services-on-devices-testing-prerequisites.md)

3.  Review the [Windows HCK release notes](http://go.microsoft.com/fwlink/p/?linkid=236110) for current test issues.

4.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

### Specific printer test information

When testing your printer over TCP/IP, if the Device.Imaging.Printer.Base feature is not being detected, you may need to go to the **Device Manager** view under **Selection** and manually select all of the devnodes that correspond to the print device.

## Related topics


[Device.Imaging Testing](deviceimaging-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 







