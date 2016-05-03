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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Print%20Processor%20API%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




