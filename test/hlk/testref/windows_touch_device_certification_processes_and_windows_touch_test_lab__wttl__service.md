---
title: Windows Touch Device Certification Processes and Windows Touch Test Lab (WTTL) Service
Description: Windows Touch Device Certification Processes and Windows Touch Test Lab (WTTL) Service
ms.assetid: 7484dfcc-0680-404e-a10a-fc109a573ce4
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Touch Device Certification Processes and Windows Touch Test Lab (WTTL) Service

This article describes the Windows Touch device certification processes and the Microsoft Windows Touch Test Lab (WTTL) service for vendors and manufacturers of touch digitizers. It contains guidelines about how to use Microsoft testing facilities to certify the touch quality of a device to meet <xref rid="p_hlk.windows_hardware_compatibility_program_overview">Windows Hardware Compatibility Program</b> (formerly known as the Windows Certification/Logo Program) requirements.

This information applies for computers that run on Windows 8 and Windows 8.1.

Microsoft introduced Windows Touch for Windows® 7 and extends Windows Touch in Windows 8 and Windows 8.1 to give users control of Windows and applications by using touch input. The WTTL is a Microsoft facility that is established to help partners ensure that their touch devices deliver high-quality touch experiences.

The **Windows 8 Hardware Certification Requirements** document defines Windows touch as a set of standards for devices and systems that support touch input. Because of the importance of the touch user experience, the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=8705">Windows Hardware Lab Kit (Windows HLK)</b> includes automated tests for Windows touch in addition to a suite of manual tests that include tapping, gesturing, and drawing lines and arcs on the touch screen.

On January 1, 2014, Touch device certification changes from full-test to self-test model. Partners can submit Touch device for certification without sending hardware to WTTL for full-test validation. However, we highly recommend that you continue to utilize the WTTL service as part of development validation step to ensure consistency of testing touch quality. WTTL services remain free of charge.

<note type="tip">
We recommend that you visit the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=285656">Windows Hardware Certification blog</b> for up-to-date news about the Windows Hardware Certification Program.


## Windows Touch device certification overview

We provide two independent options for Touch device certification:

1.  **Self-Test Submission**. This submission option allows Touch hardware device to be tested at your testing facility, which is same process as other Windows Certification Programs. The expectation for the self-test submission is that the device is tested properly per testing guidance. Certification status is issued based on the Windows HLK submission package that you provide to Microsoft.

    ![Self Test Certification Steps](../images/WinB_HCK_SelfTestSteps.png)

2.  **WTTL Full-Test Submission**. By using this option, you have opportunity to have Microsoft WTTL validate Touch device before obtaining the touch device certification. We highly recommend new partners or new technology use this option to ensure consistency of testing quality and to help you to discover potential issues.

    Before you can receive touch device certification for a device, you must generate a Windows HLK submission package by performing the touch tests in the Windows HLK. After you generate and submit a passing Windows HLK package, the WTTL runs a complete set of Windows touch tests by using the Windows HLK. During this testing, the WTTL uses high-precision assistant tools whenever possible to minimize human error. It tries each test item a maximum of two times.

    If the device passes all tests, the WTTL passes the submission for certification of the touch device. If any tests fail, the WTTL stops the Windows HLK test and issues a report that lists the failed tests. You can choose whether to leave the device at the WTTL for future submissions.

    WTTL sends an email receipt message when it receives a device. The Service Level Agreement is ten business days for WTTL to complete the certification on the condition that the submitted device does not have reliability or setup issues. Device issues that cause device setup or installation failures, or any unstable/unreliable device that prevents WTTL from completing certification tests, automatically results in a submission failure. We recommend that you reserve reasonable time in your product development cycle for both in-house touch testing and for the hardware certification process for devices and systems.

    Microsoft provides the WTTL testing and certification service free of any additional charge. Microsoft will not make any details of the hardware, drivers, test results, or any other information about the submission available to any other company without your prior written approval. Microsoft returns submitted hardware upon request.

    ![Full Submission Certification Steps](../images/WinB_HCK_FullSubmissionSteps.png)

## Touch device hardware submission requirements

Microsoft does not test devices outside of the requirements for device certification. To ensure that touch performance is properly tested on a submitted device, device submissions should meet the standards listed in the <xref hlink="http://download.microsoft.com/download/7/9/7/79783DA4-9CA3-4612-BB6E-C61310458DBC/WTTL Submission Readiness Checklist .xlsx">WTTL Submission Workbook</b>. Prior to submission, validate all the items that are on the **Submission Readiness Checklist** tab of the **WTTL Submission Workbook**. You must also completely and accurately fill out the **WTTL Submission Template** tab of this workbook, and include it as part of the submission.

## How to submit a touch device for certification

Follow the process that is described on the **Directions** tab in the <xref hlink="http://download.microsoft.com/download/7/9/7/79783DA4-9CA3-4612-BB6E-C61310458DBC/WTTL Submission Readiness Checklist .xlsx">WTTL Submission Workbook</b>.

## WTTL full-test validation process

The WTTL uses the following process to validate devices for Windows touch hardware certification qualification:

1.  Set up the device according to the submitted instructions.

2.  Perform a clean install of Windows 8 or Windows 8.1 together with all necessary drivers.

3.  Load the Windows HLK software.

4.  Run the touch tests that are listed for the touch device in the Windows HLK.

5.  Validate each test by following the instructions in <xref rid="p_hlk_test.how_to_run_the_windows_hck_tests_for_touch_and_pen_devices">How to run the Windows HLK Tests for Touch and Pen Devices</b>. Whenever possible, Microsoft applies high-precision assistant jigs and 9 mm diameter round styluses to minimize human error.

6.  Test each item a maximum of two times. If all tests in the same category are successful on any attempt, WTTL proceeds to the next category of tests. If all tests are not successful, WTTL fails the submission.

7.  For verification of panning latency, WTTL categorizes the devices into 3 different sizes, as follows:

    -   Small form factor (smaller than 12”): run one time at the center of the digitizer.

    -   Medium size device (12” ~ 17”): run two times on the digitizer (left and right, respectively).

    -   Large size device (18” and above): Dissect the screen into three even sections and run panning latency one time on each region respectively (left, center and right).

    This methodology is for WTTL verification only. We expect partners to follow the instructions in the <xref rid="p_hlk_test.how_to_measure_touch_panning_latency_win81">How to measure Touch Panning Latency</b> test methodology, and adhere to the requirement that applies to all areas of the display. The latency requirement must be met at any location each time the test is run; that is, you cannot take an average of the test runs at a specific location.

    If the test result is above 15 ms but passes the Windows HLK test, WTTL reruns the test at the same location and if Windows HLK passes the second test pass also, WTTL passes the test.

## Touch hardware quality assurance

Windows 8 and Windows 8.1 touch devices must pass all hardware certification requirements for touch input to function. After a device has passed all of the tests, a hardware signature is issued, which allows Windows 8 and Windows 8.1 to identify the device as certified.

Prior to submission, Microsoft requires that a test signature be placed in firmware in the same location as the final release signature. This requirement guarantees that space is reserved for the release signature after it is granted, and provides a check that the signature is in the right location and can be read as expected. This is an important validation to perform, because the inability to read the release signature causes the device to not function. The tool to validate this is called **GetTHQABlob.exe**. The detail of sample BLOB injection as well as the **GetTHQABlob.exe** location and validation process can be found in **Notes to the checklist** in the <xref hlink="http://download.microsoft.com/download/7/9/7/79783DA4-9CA3-4612-BB6E-C61310458DBC/WTTL Submission Readiness Checklist .xlsx">WTTL Submission Workbook</b>

<seealso> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286930">Learn About Windows Hardware Design and Development</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286928">Windows Certification Program Policies and Processes</b> <xref rid="p_hlk_test.windows_touch_testing_prerequisites">Windows Touch Testing Prerequisites</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286929">Windows Dev Center - Hardware Dashboard Services</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286931">How to Use the Precision Touch Testing Tool</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286932">Overview of Measuring Touch Down Hardware Latency</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286933">Overview of Measuring Touch Panning Hardware Latency</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286934">How to Measure Touch Panning Latency</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=286935">How to Measure Touch Down Latency</b> </seealso>



