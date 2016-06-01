---
author: joshbax-msft
title: Print Driver Device Capabilities Test (PrDeviceCapabilities) 2
description: Print Driver Device Capabilities Test (PrDeviceCapabilities) 2
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6a73e85a-82a0-4560-be14-f4f664bc56d2
---

# Print Driver Device Capabilities Test (PrDeviceCapabilities) 2


This automated test queries the driver to ensure that the driver returns the correct information for the **GetDeviceCapabilities** API call.

The output is a XML file that is named prdevcaptest.xml. This file contains the pass or fail information. This test does not produce any output to the physical printer.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.deviceCapabilities</p>
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

The expected exit code is 0. The pass/fail of the job is determined by the log.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

Failure of this test can be identified if the debugger breaks in, or the log file indicate a failure.

The following are the log files for this test:

-   prdevcaps.xml

-   prdevcaps\_DeviceLogger.xml

 

 






