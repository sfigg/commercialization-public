---
author: joshbax-msft
title: OXPS Print API Set Test (MANUAL)
description: OXPS Print API Set Test (MANUAL)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c7e44e19-0268-4f98-94a7-1f9c01390169
---

# OXPS Print API Set Test (MANUAL)


This is a version of the XPS Print API Set (Manual) test that is designed to validate printer capabilities for Open XML Paper Specification (XPS) documents.

WLK printing via XPS Print API, using the XgcPrint7 tool. Uses the public print api to print a representative sample of XPS rendering features. Covers business documents, text, graphics, composition, and advanced XPS high fidelity graphics. Applicable to XPS Print Pipeline based print drivers, and v3 print drivers such as Unidrv and Postscript drivers.

For information about this manual test, see [XPS Print API Set Test (MANUAL)](xps-print-api-set-test--manual-f568f4fe-7f45-43c9-ab97-f9e4083582b9.md).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.OXPS.OXPS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

In addition, if the device is using an in-box driver, you’ll need to specify "/MS" for the "Inbox" parameter.

Instructions

1.  a print queue must be installed on the target machine, and a user logged in with access to print to that printer

2.  execute the job, and verify it produces a pass result

3.  finally, gather the print output and compare to reference master images, noting errors such as:

    -   all content printed, no missing content

    -   all pages are present

    -   all text appears consistent, that fonts are not different

Masters

You can open the listed XPS files on the windows build share, in the test bin folder, under the paths: \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\PreExisting\\OXPSDocs\\small.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb01.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb02.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb03.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb04.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb05.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb07.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb08.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\QualityLogic\\OXPSDocs\\mb09.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\dcx\\viewer\\testdocs\\rendering\\office2007\\excel\\saveasxps\\aligned\_saveas.oxps \[WTT\\TestBinRoot\]\\NTTest\\PrintScanTest\\Printing\\Rendering\\RenderingData\\PreExisting\\OXPSDocs\\avaprint\_base\_set.oxps

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

 

 






