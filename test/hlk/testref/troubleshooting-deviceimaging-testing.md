---
title: Troubleshooting Device.Imaging Testing
description: Troubleshooting Device.Imaging Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d4903340-2c4e-485c-9dc2-ada99d5e5a0d
---

# Troubleshooting Device.Imaging Testing


To troubleshoot issues that occur with Device.imaging tests, follow these steps:

1.  Review [Troubleshooting Windows HLK Test Failures](p_hlk.troubleshooting_windows_hlk_test_failures).

2.  Review one of the following topics, depending on whether you are testing a printer or a scanner

    -   [Printer Testing Prerequisites](printer-testing-prerequisites.md)

    -   [Scanner Testing Prerequisites](scanner-testing-prerequisites.md)

    -   [Web Services on Devices Testing Prerequisites](web-services-on-devices-testing-prerequisites.md)

3.  Review the [Windows HLK release notes](http://go.microsoft.com/fwlink/?LinkID=236110) for current test issues.

4.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

### <span id="Specific_printer_test_information"></span><span id="specific_printer_test_information"></span><span id="SPECIFIC_PRINTER_TEST_INFORMATION"></span>Specific printer test information

When testing your printer over TCP/IP, if the Device.Imaging.Printer.Base feature is not being detected, you may need to go to the **Device Manager** view under **Selection** and manually select all of the devnodes that correspond to the print device.

## <span id="related_topics"></span>Related topics


[Device.Imaging Tests](device-imaging-tests.md)

[Troubleshooting Windows HLK](p_hlk.troubleshooting_windows_hlk)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Troubleshooting%20Device.Imaging%20Testing%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





