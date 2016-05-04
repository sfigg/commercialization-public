---
author: joshbax-msft
title: DocumentProperties Test (Ansi)
description: DocumentProperties Test (Ansi)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 563c16d5-73ba-4a02-a577-32b4880f3c7b
---

# DocumentProperties Test (Ansi)


This automated test exercises the printer driver's implementation of the **DocumentProperty** API. The test calls the API by using various data. The test then validates the returned values.

This document applies to the following test jobs:

-   DocumentProperties (ANSI) test job

-   DocumentProperties (Unicode) test job

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.DocumentProperties</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


The Document Properties test exercises a printer driver's user interface (UI) by using multiple well-formed and malformed parameters to call the **DocumentProperties** API and then validating the results.

The difference between the Document Properties ANSI test and the Document Properties Unicode test is that the buffers in the Document Properties ANSI test are based on ANSI characters (CHARs), and the buffers in the Document Properties Unicode test are based on Unicode wide characters (WCHARs).

For each test case, the test prints the parameters that the test uses in the log file. The printer driver passes this test if the log file does not contain any failures. The printer driver fails this test if the log file shows that one or more test cases failed.

The following code example shows a sample log file.

``` syntax
<StartTest                 Title="DocumentPropertiesTEST"                 TUID="" CA="259184628680" LA="259190331028" >                <rti id="2701157395" />                <ctx id="4071736938" /></StartTest><Msg                 UserText="Testing Parameters permutation:" CA="259184695528" LA="259191739244" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="ParentWindow handle = NULL" CA="259187152000" LA="259197116980" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="PrinterHandle   = 0008B13C" CA="259187274076" LA="259198369668" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="DevName                                         = BadPrinterName" CA="259189194348" LA="259202784116" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="OutDevMode                   = 00000000" CA="259194212632" LA="259205347188" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="InDevMode                      = 0026D838" CA="259194365944" LA="259207533880" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="fMode == 0x5E" CA="259195053008" LA="259208248332" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="DM_COPY | DM_PROMPT | DM_MODIFY | DM_ADVANCED | DM_USER_DEFAULT" CA="259199944896" LA="259209030276" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="Checking return from DocumentProperties():" CA="259578756012" LA="259579142928" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><Msg                 UserText="No Errors found" CA="259581819836" LA="259585130656" >                <rti id="2701157395" />                <ctx id="4071736938" /></Msg><EndTest                 Title="DocumentPropertiesTEST"                 TUID=""                 Result="Pass"                 Repro="SUCCESS: Variation: 0" CA="259582037324" LA="259586679184" >                <rti id="2701157395" />                <ctx id="4071736938" /></EndTest>
```

 

 






