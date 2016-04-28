---
author: joshbax-msft
title: Device.Imaging Testing
description: Device.Imaging Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7b846432-a754-493d-86d6-909659e1f99e
---

# Device.Imaging Testing


This section describes how to test imaging devices (printers or scanners) as part of the Windows Certification Program. To begin the testing part of the certification process, you must install and run the Windows Hardware Certification Kit (Windows HCK) and set up your testing environment. For information about how to install and configure Windows HCK, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

Examples of the types of products in the Device.Imaging category include the following:

-   Networked or stand-alone printers

-   Multi-function printers (printers that include scanning, faxing, or other capabilities)

-   Flatbed, photo or slide scanners.

**Note**  
The completion of bus-specific or networking-specific tests is required if the printer or scanner includes USB connections, network features, or support for Web Services on Devices (WSD).

 

In this section:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Printer Testing Prerequisites](printer-testing-prerequisites.md)</p></td>
<td><p>Describes the required setup procedures that you must follow before testing your printer.</p></td>
</tr>
<tr class="even">
<td><p>[Scanner Testing Prerequisites](scanner-testing-prerequisites.md)</p></td>
<td><p>Describes the required setup procedures that you must follow before testing your scanner.</p></td>
</tr>
<tr class="odd">
<td><p>[Web Services on Devices Testing Prerequisites](web-services-on-devices-testing-prerequisites.md)</p></td>
<td><p>Describes the required setup procedures that you must follow before testing a WSD-compliant device.</p></td>
</tr>
<tr class="even">
<td><p>[Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)</p></td>
<td><p>Describes general troubleshooting information for testing scanners or printers.</p></td>
</tr>
<tr class="odd">
<td><p>[Printer Tests](printer-tests.md)</p></td>
<td><p>Provides documentation for every printer test in the Windows HCK.</p></td>
</tr>
<tr class="even">
<td><p>[Scanner Tests](scanner-tests.md)</p></td>
<td><p>Provides documentation for every scanner test in the Windows HCK.</p></td>
</tr>
<tr class="odd">
<td><p>[Web Services on Devices Tests](web-services-on-devices-tests.md)</p></td>
<td><p>Provides documentation for the WSD tests in the Windows HCK.</p></td>
</tr>
</tbody>
</table>

 

To obtain certification for your printer or scanner, your device must support all of the features in a product type. If your test device includes both printing and scanning capabilities, you should review the prerequisite topics for printers, scanners, and WSD-compliant devices.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Device.Imaging%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




