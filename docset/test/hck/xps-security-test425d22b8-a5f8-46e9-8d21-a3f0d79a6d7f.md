---
author: joshbax-msft
title: XPS Security Test
description: XPS Security Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: baa1e811-4e58-4e73-ba3b-a2ca0bb86cf2
---

# XPS Security Test


This automated test attempts to load an invalid XPS document and print it to a specified printer.

**Note**  
This test cannot run on Windows Server 2008 unless you first install Microsoft .NET Framework version 3.0.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.XPS.XPS</p>
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

If a test failure occurs, log a relevant stack trace. Note the following:

-   Exceptions that have LoadObjectFromFile in the stack usually indicate problems with setup. Make sure that all necessary files have been copied for the test, and that WinFX is correctly installed.

-   Exceptions that have XpsDocumentWriter.Write in the stack usually indicate problems with printing. If the exception is a ComException instance, make note of that in the HResult field.

## More information


By using this test tool, you can generate jobs to send to a printer or to XPS serialization. This tool includes options for validating the XPS that the test produces or for selecting particular .xaml files. The tool exits after the tool prints each file once.

This test outputs a non-deterministic number of valid and invalid XPS documents. The driver may produce output, but no crashes or hangs may occur in the driver or device.

The main purpose of this tool is to find security holes in XPS consumers by creating fuzzed XPS files. The tool uses the following fuzzing mechanisms:

-   Fuzz Zip Layer (e.g., Compressed Size, Uncompressed Size, Signature, etc)

-   Fuzz XPS Layer (e.g., URI, Content Type, Relationship Type, etc)

The input file can be valid/invalid XPS file; however the input file should be a valid ZIP.

The test tool also has an auto-consume feature. When this feature is enabled, the desired consumer automatically consumes the fuzzed XPS files. XPS consumers must be robust, secure, and able to handle fuzzed XPS files gracefully. In other words, XPS consumers must catch and report every possible exception to the user.

This tool goes into a debugger state if an unhandled exception occurs. Currently, there are three supported consumers. These are FlexMusl, Reach Viewer, and XPS Viewer.

When the auto-consume feature is disabled, this tool produces fuzzed XPS files. You can use these files to validate against your XPS consumer.

 

 






