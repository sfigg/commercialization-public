---
title: Troubleshooting Device.Input Testing
Description: Troubleshooting Device.Input Testing
ms.assetid: af8b3b3b-3263-4739-9e38-2d53232b6259
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Device.Input Testing

## 

To troubleshoot issues that occur with Device.input tests, follow these steps:

1.  Review <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

2.  Review one of the following topics, depending on the type of input device that you are testing:

    -   <xref rid="p_hlk_test.fingerprint_reader_testing_prerequisites">Fingerprint Reader Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.game_controller_testing_prerequisites">Game Controller Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.keyboard_testing_prerequisites">Keyboard Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.mouse_or_other_pointing_device_testing_prerequisites">Mouse or other Pointing Device Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.sensor_device_testing_prerequisites">Sensor Device Testing Prerequisites</b>

    -   <xref rid="p_hlk_test.smart_card_reader_testing_prerequisites">Smart Card Reader Testing Prerequisites</b>

3.  Review the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=236110">Windows HLK release notes</b> for current test issues.

4.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

## Specific information about keyboard tests

The Device.Input test category does not include specific keyboard tests. However, there are tests in the Device.Fundamentals category that apply to keyboards. For more information, see <xref rid="p_hlk_test.device_devfund_tests">Device.DevFund Tests</b>.

## Specific information about mouse or other pointing device tests

The Device.Input test category does not include specific mouse tests. However, the Device.Fundamentals category includes tests that apply to mice.

## Specific information about sensor device tests

Currently, known sensor test issues are grouped into the following categories:

-   Test initialization failures

-   Operating system issues

-   Permissions issues

**Test initialization failures**

When the sensor tests start on a test computer, they perform several tests to verify that the environment can be used for testing. If you receive errors that have a TUID of A012D6BB-36BB-4088-AF3F-1BE3C5607928, verify the following:

-   The test computer must be running Windows 8 or Windows 7.

-   The test computer must currently have your test sensor device installed and the device must be operational.

-   The test sensor device must appear as a sensor device in the **Location and Other Sensors** Control Panel.

**Operating system issues**

The sensor tests are only valid on Windows 8 and Windows 7. The tests are not supported on any other version of Windows.

**Permissions issues**

The user who is logged into the client computer must have permissions to access the sensor device for some of the sensor logo tests. To check permissions, follow these steps:

1.  Open the **Location and Other Sensors** Control Panel.

2.  Grant all users access to the sensor device that is being tested. To do this, follow these steps:

    1.  In the **Location and Other Sensors** Control Panel, select the check box next to the sensor device that is being tested.

    2.  Click **Apply**.

>[!NOTE]
You must have administrator permissions on the test system to change the permissions for the sensor test device.


<seealso> <xref rid="p_hlk_test.device_input_tests">Device.Input Tests</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> </seealso>



