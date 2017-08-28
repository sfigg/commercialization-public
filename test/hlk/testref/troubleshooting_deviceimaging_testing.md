---
title: Troubleshooting Device.Imaging Testing
Description: Troubleshooting Device.Imaging Testing
ms.assetid: d4903340-2c4e-485c-9dc2-ada99d5e5a0d
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Imaging Testing

To troubleshoot issues that occur with Device.imaging tests, follow these steps:

1.  Review <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

2.  Review one of the following topics, depending on whether you are testing a printer or a scanner

    -   <xref rid="p_hlk_test.printer_testing_prerequisites">Printer Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.scanner_testing_prerequisites">Scanner Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.web_services_on_devices_testing_prerequisites">Web Services on Devices Testing Prerequisites</b>

3.  Review the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=236110">Windows HLK release notes</b> for current test issues.

4.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

## Specific printer test information

When testing your printer over TCP/IP, if the Device.Imaging.Printer.Base feature is not being detected, you may need to go to the **Device Manager** view under **Selection** and manually select all of the devnodes that correspond to the print device.

<seealso> <xref rid="p_hlk_test.device_imaging_tests">Device.Imaging Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



