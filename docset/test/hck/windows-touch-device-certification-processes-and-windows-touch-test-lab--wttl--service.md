---
author: joshbax-msft
title: Windows Touch, Pen and Precision Touchpad Device Certification Process
description: Windows Touch, Pen and Precision Touchpad Device Certification Process
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 59007ebf-a505-44ac-a63b-172e106627c8
---

# Windows Touch, Pen and Precision Touchpad Device Certification Process


This article describes the Windows Touch, Precision Touchpad (PTP) and pen device certification process for vendors and manufacturers of digitizers. It contains guidelines about how to use Microsoft testing tools to certify the quality of a device to meet the [Windows Hardware Compatibility Program](https://msdn.microsoft.com/library/windows/hardware/dn922588.aspx) (formerly known as the Windows Hardware Certification Program) requirements.

This information applies for computers that run on Windows 8, Windows 8.1 and Windows 10.

Microsoft introduced Windows Touch for Windows 7 and extends Windows Touch in Windows 8 and adds Precision Touchpad to Windows 8.1 and introduces a whole new pen program in Windows 10 in order to give users control of Windows and applications by using touch, touchpad and pen input.

The [Windows 8 Hardware Certification Requirements document](http://go.microsoft.com/fwlink/p/?LinkID=626612) and the [Windows 10 Hardware Compatibility Requirements document](http://go.microsoft.com/fwlink/p/?LinkId=626614) both define the standards for devices and systems that support touch, Precision Touchpad and pen input. Because of the importance of the user experience, the [Windows Hardware Certification Kit](http://go.microsoft.com/fwlink/p/?LinkId=8705) (Windows HCK for Windows 8/Windows 8.1), and the [Windows Hardware Lab Kit](http://go.microsoft.com/fwlink/p/?LinkId=626615) (Windows HLK for Windows 10) includes automated tests for Windows touch, precision touchpad and pen in addition to a suite of manual tests that include tapping, gesturing, and drawing lines and arcs on the touch screen.

On January 1, 2014, Input device certification changed from full-test to a self-test model and the Windows Touch Test Lab (WTTL) was retired. Partners now submit devices for certification/compatibility without sending hardware to WTTL for full-test validation. The program is now fully self-test.

**Tip**  
We recommend that you visit the [Windows Hardware Certification blog](http://go.microsoft.com/fwlink/p/?linkid=285656) for up-to-date news about the Windows Hardware Compatibility Program.

 

## <a href="" id="windows-touch-device-certification-overview-"></a>Windows Touch device certification overview


**Self-Test Submission**. This submission option allows Touch hardware device to be tested at your testing facility, which is same process as other Windows Certification Programs. The expectation for the self-test submission is that the device is tested properly per testing guidance. Certification status is issued based on the Windows HCK submission package that you provide to Microsoft.

![self test certification steps](images/winb-hck-selfteststeps.png)

## <a href="" id="input-device-hardware--submission-requirements"></a>Input device hardware submission requirements


Microsoft does not test devices outside of the requirements for device certification/compatibility. To ensure that performance is properly tested on a submitted device, device submissions should meet the standards listed in the [Input Platform Submission Readiness Checklist](http://go.microsoft.com/fwlink/p/?LinkId=691145). Prior to submission, validate all the items that are on the **PTP Submission Checklist**. You must also completely and accurately fill out the **PTP Submission Template** tab of this workbook, and include it as part of the submission.

## How to submit a device for certification


Follow the process that is described on the **General Instructions** tab in the [Input Platform Submission Readiness Checklist](http://go.microsoft.com/fwlink/p/?LinkId=691145).

## Full-test validation process used by Windows Touch Test Lab (WTTL)


Microsoft uses the following process to validate devices for Windows hardware certification qualification:

1.  Set up the device according to the submitted instructions.

2.  Perform a clean install of Windows 8, Windows 8.1, or Windows 10 together with all necessary drivers.

3.  Load the Windows HCK or HLK software.

4.  Run the touch, PTP, or pen tests that are listed for the digitizer based device in the Windows HCK or HLK.

5.  Validate each test by following the instructions in [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md). Whenever possible, WTTL applies high-precision assistant jigs and 7 mm diameter round styluses to minimize human error.

6.  Test each item a maximum of two times. If all tests in the same category are successful on any attempt, WTTL generally proceeds to the next category of tests. If all tests are not successful, Microsoft will fail the submission.

7.  For verification of panning latency, WTTL categorizes the devices into 3 different sizes, as follows:

    -   Small form factor (smaller than 12”): run one time at the center of the digitizer.

    -   Medium size device (12” ~ 17”): run two times on the digitizer (left and right, respectively).

    -   Large size device (18” and above): Dissect the screen into three even sections and run panning latency one time on each region respectively (left, center and right).

    This methodology is for WTTL verification only. We expect partners to follow the instructions in the [How to measure Touch Panning Latency](how-to-measure-touch-panning-latency-win81.md) test methodology, and adhere to the requirement that applies to all areas of the display. The latency requirement must be met at any location each time the test is run; that is, you cannot take an average of the test runs at a specific location.

    If the test result is above 15 ms but passes the Windows HCK or HLK test, WTTL reruns the test at the same location and if Windows HCK or HLK passes the second test pass also, WTTL passes the test.

## Touch hardware quality assurance (THQA)


Windows 8 and Windows 8.1 touch devices must pass all hardware certification requirements for touch input to function. After a device has passed all of the tests, a hardware signature is issued, which allows Windows 8 and Windows 8.1 to identify the device as certified.

Prior to submission, Microsoft requires that a test signature be placed in firmware in the same location as the final release signature. This requirement guarantees that space is reserved for the release signature after it is granted, and provides a check that the signature is in the right location and can be read as expected. This is an important validation to perform, because the inability to read the release signature causes the device to not function. The tool to validate this is called **GetTHQABlob.exe**. The detail of sample BLOB injection as well as the **GetTHQABlob.exe** location and validation process can be found in **Notes to the checklist** in the [Input Platform Submission Readiness Checklist](http://go.microsoft.com/fwlink/p/?LinkId=691145)

**Important**  After October 15, 2015, the THQA blob is no longer required to be reported by the device for the device to function in Windows 8.1. This creates parity between Windows 8.1 and Windows 10 in regard to the THQA check, as Windows 10 does not restrict the function of the device if the blob is not present in the device.
All of the relevant tests must still be passed in order for the device to be listed as certified for Windows 8/8.1 and compatible for Windows 10.

As a prerequisite the user must download the latest update for Windows 8/8.1 from Windows Update. More information will be provided on the Windows Certification Blog page.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Touch,%20Pen%20and%20Precision%20Touchpad%20Device%20Certification%20Process%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




