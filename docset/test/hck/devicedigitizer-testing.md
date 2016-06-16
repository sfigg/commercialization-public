---
author: joshbax-msft
title: Device.Digitizer Testing
description: Device.Digitizer Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 19922dd7-c8d5-4eab-bcd4-305157cbce9f
---

# Device.Digitizer Testing


This section describes how to test devices and certify them for use on Windows® as part of the Windows Certification Program. To begin the testing part of the certification process, you must install and run the Windows Hardware Certification Kit (Windows HCK), and then set up your test environment. For information about how to install and configure the Windows HCK, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

The Device.Digitizer testing category includes both external devices, such as touch display, and fully integrated touch devices, such as the tablet PC.

The touch device consists of key components that are integrated together, which allows for physical user input and interactions to be interpreted and communicated to the system by using a bus. Touch devices depend on a high degree of integration between many components. Although the Windows operating system interoperates with the touch controller, a good touch controller might not produce a good end user experience if it is paired with other components, such as a touch sensor or panel, or improper industrial design. To certify the touch devices that reflect the actual end user experience, touch devices must be submitted as the fully integrated external devices or systems that represent the final product design in shipping condition. No external controller board and wire should be externally exposed from the housing of the touch device, and the touch solution must be integrated well in a device or a system.

This section includes these topics:

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
<td><p>[Digitizer Testing Prerequisites](digitizer-testing-prerequisites.md)</p></td>
<td><p>Provides information about test prerequisites and specific setup procedures that you must follow before you test your digitizer.</p></td>
</tr>
<tr class="even">
<td><p>[Windows Touch Testing Prerequisites](windows-touch-testing-prerequisites.md)</p></td>
<td><p>Provides information about test prerequisites and specific setup procedures that you must follow before you test a Windows Touch–capable device.</p></td>
</tr>
<tr class="odd">
<td><p>[Device.Digitizer Tests](devicedigitizer-tests.md)</p></td>
<td><p>Includes documentation for every digitizer test in the Windows HCK, except system-specific digitizer tests.</p></td>
</tr>
<tr class="even">
<td><p>[Additional Digitizer Resources](additional-digitizer-resources.md)</p></td>
<td><p>Provides additional digitizer testing resources.</p></td>
</tr>
</tbody>
</table>

 

For test-specific prerequisites or troubleshooting details, review individual test topics.

**Note**  
For best practices for Windows HCK testing, and tips to avoid common failures, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

 

 

 






