---
author: joshbax-msft
title: Device.BusController Testing
description: Device.BusController Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: db0901ab-f697-4086-8ebb-196c7ac12d5e
---

# Device.BusController Testing


This section describes how to test USB or Bluetooth bus controllers and certify them for use on Windows® as part of the Windows Certification Program. To begin the testing part of the certification process, you must install and run the Windows Hardware Certification Kit (Windows HCK) and set up your testing environment. For information about how to install and configure Windows HCK, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

This section includes:

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
<td><p>[Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md)</p></td>
<td><p>This topic describes testing prerequisites and specific setup procedures that you must follow before you test your Bluetooth controller.</p></td>
</tr>
<tr class="even">
<td><p>[Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md)</p></td>
<td><p>This topic describes testing prerequisites and specific setup procedures that you must follow before you test your proximity controller.</p></td>
</tr>
<tr class="odd">
<td><p>[Secure Digital Host Controller Testing Prerequisites](secure-digital-host-controller-testing-prerequisites.md)</p></td>
<td><p>This topic describes testing prerequisites and specific setup procedures that you must follow before you test your secure digital host controller.</p></td>
</tr>
<tr class="even">
<td><p>[USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md)</p></td>
<td><p>This topic describes testing prerequisites and specific setup procedures that you must follow before you test your USB host controller.</p></td>
</tr>
<tr class="odd">
<td><p>[Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md)</p></td>
<td><p>This topic provides overall Device.BusController troubleshooting information.</p></td>
</tr>
<tr class="even">
<td><p>[Device.BusController Tests](devicebuscontroller-tests.md)</p></td>
<td><p>This section includes documentation for every bus controller test in the Windows HCK.</p></td>
</tr>
<tr class="odd">
<td><p>[WITT I2C Testing Prerequisites](witt-i2c-testing-prerequisites.md)</p></td>
<td><p>This topic provides set up instructions for WITT I2C tests.</p></td>
</tr>
</tbody>
</table>

 

For test-specific prerequisites or troubleshooting details, review individual test topics.

**Note**  
For Windows HCK testing best practices and tips to avoid common failures, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Device.BusController%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




