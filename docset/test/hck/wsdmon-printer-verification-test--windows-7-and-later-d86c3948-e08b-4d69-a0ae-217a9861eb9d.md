---
author: joshbax-msft
title: WSDMon Printer Verification Test (Windows 7 and later)
description: WSDMon Printer Verification Test (Windows 7 and later)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b9878046-3f66-4780-9ba0-d2cb6c58ab7c
---

# WSDMon Printer Verification Test (Windows 7 and later)


This automated test verifies that a print device complies with the Web Services on Devices Print Service Definition 1.0. The Print Service Definition can be found at [Implementing Web Services on Devices for Printing](http://go.microsoft.com/fwlink/?LinkId=232874). If the device under test is not a WSD device, the test exits without error.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.WSD.WSPrint</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

In addition, this test requires the following configuration:

-   The WSD printer that you want to test must be locally installed on the client. Do not use a print server. The client and printer must be on the same subnetwork. The device must be installed by using WSD (that is, by using WSDMon).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

If a failure occurs, examine the test log file to see which operation or event failed. Also, take a Netmon trace between the device and the test system host. The Web Service requests and responses can be visually inspected for errors. Typically, a test case fails because the device does not support a particular operation or event, or because the device responds with invalid XML.

Look at the test log and compare failures with the WS-Print specification for additional details. All "MUST BE IMPLEMENTED" items in the specification are exercised during this test. Review the print and scanner service definition documents, which are accessible from the [Implementing Web Services on Devices for Printing and Scanning](http://go.microsoft.com/fwlink/?LinkId=232874) webpage.

## More information


The test registers for the following WSD Print Service events:

-   **PrinterElementsChangeEvent**

-   **PrinterStatusSummaryEvent**

-   **PrinterStatusConditionEvent**

-   **PrinterStatusConditionClearedEvent**

-   **JobStatusEvent**

-   **JobEndStateEvent**

The test also attempts the following WSD Print Service operations:

1.  **GetPrinterElements - PrinterDescription**

2.  **GetPrinterElements - PrinterConfiguration**

3.  **GetPrinterElements - PrinterStatus**

4.  **GetPrinterElements - DefaultPrintTicket**

5.  **GetPrinterElements - PrinterCapabilities**

6.  **SetEventRate**

7.  **CreatePrintJob**

8.  **SendDocument**

9.  **CancelJob**

10. **GetJobElements - JobStatus**

11. **GetJobElements - PrintTicket**

12. **GetActiveJobs**

13. **GetJobHistory**

At the end of the test, a single page of output comes from the device under test. The output page contents will be "This is a sample print job created by the WSD Print logo test." in plain ASCII text.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WSDMon%20Printer%20Verification%20Test%20%28Windows%207%20and%20later%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




