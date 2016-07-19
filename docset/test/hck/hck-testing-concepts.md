---
author: joshbax-msft
title: HCK Testing Concepts
description: HCK Testing Concepts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 551c0325-b4f4-4fe0-85b5-bd1813c1c3bd
---

# HCK Testing Concepts


Windows HCK testing is based on feature detection. Windows HCK determines what a part of a device needs to be certified by detecting the functionality of the device or system.

## Terminology


-   **Feature** – A feature is a Windows capability exposed by a device. When you connect a device to a Windows HCK environment, the kit searches for features on the device using a mechanism called *gatherers*. Starting with Windows 8, features are organized using a namespace style, for example, Device.Graphics.WDDM12, System.Client.BluetoothController.Base, and Filter.Driver.Network.LWF. A target device or system can detect many features.

-   **Requirement** – A requirement is the official specification that defines what a feature must do to qualify for Windows hardware certification. Starting with Windows 8, requirements are organized using a namespace style. For example Device.Imaging.Scanner.Base.RawFileFormat is a requirement for the Device.Imaging.Scanner.Basefeature. There can be many requirements associated with a single feature.

-   **Test** – Tests validate that features are implemented on a device or system in accordance with requirements. Each test has a pointer to the requirement(s) it validates.

-   **Product type** – A product that contains a predefined list of testable features. Product types replace the previous self-selection category system in Windows Logo Kit. To receive Windows Hardware Certification, a product must implement all of the features of at least one product type.

-   **Project** – A project is a submission that is sent to Microsoft that encompasses all of the architectures and platforms for the certification request. You can combine different projects into a larger project for submission through the process of creating a package.

-   **Product Instance** – A product instance is collection of devices on a single platform. Unlike a target family, which is a collection of effectively identical devices, devices in the product instance can be similar or dissimilar. Each platform must be tested individually, though you can use multiple machines to test in parallel with other product instances.

-   **Device Family** – A device family is a collection of hardware IDs that are cached in the datastore under a common name. A device family is used to define a family of similar devices that may have different hardware IDs. A device family is one of the criteria used to identify similar targets in a target family.

-   **Target Family** – A target family is a collection of targets within a single device family. For the purposes of testing, targets in a target family are treated as identical, allowing jobs to run in parallel across all targets in the target family. Unlike a product instance, which is a collection of dissimilar devices, a target family is a collection of effectively identical devices.

-   **Target** – A target is any hardware, software driver, or system that can be individually addressed and tested.

## How it works


In the following example, a multi-function printer device contains several features: It's a scanner, an Ethernet network port, a storage reader, and a printer. Windows HCK detects each feature, determines the associated requirements for it, and then runs a corresponding test to verify that the requirements are implemented correctly.

![windows hck feature detection process](images/hck-win8-feature-detection-process.gif)

## Best Practices


In addition to understanding the terminology and logic, consider these best practices:

-   Design your hardware using the Windows Hardware Requirements. If you fail to meet any of them, your device fails the testing process, which wastes valuable time.

-   Review the [Certification Test Reference](certification-test-reference.md) for your device before testing. Any Windows HCK test may require a specific configuration. The more complex the device, the more complex the test configuration.

-   Manual tests require more time and preparation. You should run manual steps separately from automated tests. When you connect a device to Windows HCK, you can sort detected test by automated and manual. To learn more about any test, select the test from Windows HCK Studio and press F1 for Help.

-   Ensure that your test server contains the latest QFE and filters. We periodically release updated tests. For more info, see [Windows Hardware Certification](http://go.microsoft.com/fwlink/p/?LinkID=236110) in the Windows Dev Center.

-   Use the test levels to test basic, functional, reliability and certification tests in that order as the different levels provide testing from basics to functionally complete devices.

## Testing Strategy


The complexity of a device determines the complexity of a test. It can be as simple as connecting the device and running the test, or it can require additional hardware resources, extensive configuration, and/or active use. Considering your knowledge of the device and previous versions of this kit, you can approach testing two ways:

-   Connect the device to a Windows HCK environment. Let the kit detect features and the corresponding tests to run against the device. Press F1 on each identified test to review any prerequisites for it.

-   Review the Windows HCK Users Guide in advance. Review the Test Reference section for the specific technologies implemented in your device, specifically the "Prerequisite" topic for each area.

-   Take advantage of multi-device and distributed testing features to reduce overall test time. For more information, see [Configuration Page - Machine Management](configuration-page---machine-management.md).

## Test Automation Support


For partners interested in automating their test environment, Windows HCK provides scripting and application programming interface (API) support.

-   [HCK Automation Tool](hck-automation-tool.md) – a scripting solution based on Windows PowerShell® that enables you to automate a test pass.

-   [HCK Developer Guide](hck-developer-guide.md) – a collection of Windows HCK API that enables you to automate any part of the certification test process. The API exposes all functionality of Windows HCK Studio, so you can use both Windows HCK Studio and automation in your certification test workflow.

## Test Levels


Windows HCK introduces a new feature called test levels. Test levels let you scope the testing from basic testing to an increasing level of functionality (that includes stress). Previous kits were only focused on one scenario--certification. This new kit now supports (6) six scenarios.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test Level</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Basic</p></td>
<td><p>These are simple and direct tests for developers to run quickly and catch fundamental issues early on.</p>
<p>For example, developers are actively working on their device/driver/systems and are in the process of adding functionality. Developers are expected to test their drivers intermittently during development with regression style tests.</p></td>
</tr>
<tr class="even">
<td><p>Functional</p></td>
<td><p>These are feature level test. At this stage, all functionality should be complete.</p>
<p>For example, partners are required to run more rigorous testing at this stage to test the full functionality of their device/driver/system. If their device/driver/system passes all feature tests, then the device/driver/system is considered <em>feature-complete</em>.</p></td>
</tr>
<tr class="odd">
<td><p>Reliability</p></td>
<td><p>These are stress level test. These tests may require special setup and requirements.</p>
<p>At this stage, your device/driver/systems are fully functional and should be tested under stress scenarios. The goal here is to ensure the reliability of the drivers/devices/systems.</p></td>
</tr>
<tr class="even">
<td><p>Certification</p></td>
<td><p>These are all test required for Windows Certification.</p>
<p>At this stage, you are ready to submit your drivers/devices/systems for certification. If you passed all previous levels (basic, functional, reliability), this stage should be simple.</p></td>
</tr>
<tr class="odd">
<td><p>Experiences</p></td>
<td><p>These are scenario specific test that validate an end-to-end experiences.</p>
<p>For example, partners can validate how devices and systems interact with other parts of the hardware/software. The experiences can be device stack specific and would be selectable based on the devices being tested or can be across various hardware in the case of a system.</p></td>
</tr>
<tr class="even">
<td><p>Optional</p></td>
<td><p>These tests contain optional validation that you can run as part of device or system testing.</p>
<p>These tests provide added value to you through diagnostic information or configuration. For example, some test collect failure data to make failure investigation easier.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[What's New in Windows Hardware Certification Kit](http://go.microsoft.com/fwlink/?LinkId=302048)

 

 







