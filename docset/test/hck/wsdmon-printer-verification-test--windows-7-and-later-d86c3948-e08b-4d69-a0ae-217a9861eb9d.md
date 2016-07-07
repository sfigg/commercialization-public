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

 

 






