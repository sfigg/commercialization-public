---
title: Troubleshooting Device.Portable Testing
Description: Troubleshooting Device.Portable Testing
ms.assetid: 05f3b097-bc9a-499e-a5a2-31e12c88c8ae
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Portable Testing

## 

To troubleshoot issues that occur with Device.Portable tests, follow these steps:

1.  Review the following Windows Hardware Lab Kit (Windows HLK) topics:

    -   <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>

    -   <xref rid="p_hlk_test.deviceportable_testing_prerequisites">Device.Portable Testing Prerequisites</b>

2.  Make sure that the device appears in **Device Manager** under **Portable Devices**.

3.  Some tests require that you log on to the computer as an Administrator. An Administrator account is needed if a test uses a test driver and then needs to revert to the original driver.

4.  Verify that you have installed the latest Windows HLK filters and kit updates. For more information, see <xref rid="p_hlk.windows_hardware_lab_kit_filters">Windows Hardware Lab Kit Filters</b>.

5.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

6.  If you cannot obtain a successful test result, contact <xref rid="p_hlk.windows_hlk_support">Windows HLK Support</b>.

<seealso> <xref rid="p_hlk_test.device_portable_tests">Device.Portable Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



