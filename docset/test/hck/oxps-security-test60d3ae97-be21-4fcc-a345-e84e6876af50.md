---
author: joshbax-msft
title: OXPS Security Test
description: OXPS Security Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8851d3fe-89ca-4d44-b623-4011a18bac6b
---

# OXPS Security Test


This is a version of the XPS Security test that is designed to validate printer capabilities for Open XML Paper Specification (XPS) documents.

The main purpose of this tool is to find security holes in XPS consumers by creating fuzzed XPS files. It utilizes the following fuzzing mechanism:

-   Fuzz Zip Layer (eg: Compressed Size, Uncompressed Size, Signature, etc)

-   Fuzz XPS Layer (eg: URI, Content Type, Relationship Type, etc)

The input file can be valid/invalid XPS file; however the input file should be a valid ZIP.

This tool also has auto-consume feature. When this feature is enabled, the fuzzed XPS files will automatically be consumed by the desired consumer. The main goal is to have robust and secure XPS consumers, which are able to handle fuzzed XPS files in a nice manner. In other words, XPS consumers should catch every possible exception and report nicely to user.

This tool will go into debugger state if unhandled exception is thrown. Currently, there are three supported consumers, which are FlexMusl, Reach Viewer and XPS Viewer.

When auto-consume feature is disabled, this tool will produce fuzzed XPS files. These files can be used to validate against your XPS consumer.

For information about this automated test, see [XPS Security Test](xps-security-test425d22b8-a5f8-46e9-8d21-a3f0d79a6d7f.md).

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

 

 

 






