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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20OXPS%20Security%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




