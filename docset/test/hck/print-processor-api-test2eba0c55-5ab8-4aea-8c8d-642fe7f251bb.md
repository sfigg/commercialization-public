---
author: joshbax-msft
title: Print Processor API Test
description: Print Processor API Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9b9858f6-b8d9-4e9d-8c10-bd254b857618
---

# Print Processor API Test


This automated test loads the print processor into its own memory space and verifies that all required interfaces are present. Furthermore, the test tries to call these interfaces to make sure that the print processor is robust.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.printProcessor</p>
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

**Warning**  
You must install all print processors on the system before you can test these processors. If you specify the print processor, the test evaluates the print processor and the default printer. If you do not install a printer, the test only evaluates whether the print processor supports the required interfaces.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


The Print Processor API test calls **LoadLibrary** function on the specified print processor to load it into its own process. It then calls **GetProcAddress** on the following six required endpoints:

-   **OpenPrintProcessor**

-   **ClosePrintProcessor**

-   **ControlPrintProcessor**

-   **EnumPrintProcessorDatatypesW**

-   **PrintDocumentOnPrintProcessor**

-   **GetPrintProcessorCapabilities**

If the test cannot find one of these required endpoints, the test logs a failure.

Because print processors are capable of running many functions, it is impossible to write an automated test that can test any particular print processor. It We recommend that you test the print processor’s functionality manually.

**Success**: The Print Processor API test passes if the rollup at the end of the log file contains no failures.

**Failure**: The Print Processor API test fails if the rollup at the end of the log file contains one or more failures.

 

 






