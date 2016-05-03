---
author: joshbax-msft
title: Device.Connectivity Testing
description: Device.Connectivity Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 706af458-01c8-4986-92a7-acbccfcfa293
---

# Device.Connectivity Testing


This section describes how to test the connectivity capabilities of PCI-based or USB-based devices (including USB hubs) and certify them for use on Windows® as part of the Windows Certification Program. This test category also verifies support for the Web Services on Devices API. To begin the testing portion of the certification process, you must install and run the Windows Hardware Certification Kit (Windows HCK) and set up your testing environment. For information about how to install and configure Windows HCK, see [Step 1: Install Controller and Studio on the test server](step-1-install-controller-and-studio-on-the-test-server.md).

This section includes the following topics.

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
<td><p>[PCI Device.Connectivity Testing Prerequisites](pci-deviceconnectivity-testing-prerequisites.md)</p></td>
<td><p>Provides information about prerequisites for testing and about specific setup procedures that you must follow before you test connectivity for your PCI-based device.</p></td>
</tr>
<tr class="even">
<td><p>[Proximity Controller Testing Prerequisites](proximity-controller-testing-prerequisites.md)</p></td>
<td><p>Provides information about prerequisites for testing and about specific setup procedures that you must follow before you test proximity features of a device.</p></td>
</tr>
<tr class="odd">
<td><p>[USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md)</p></td>
<td><p>Provides information about prerequisites for testing and about specific setup procedures that you must follow before you test connectivity for your USB-based device.</p></td>
</tr>
<tr class="even">
<td><p>[USB Hub.Connectivity Testing Prerequisites](usb-hubconnectivity-testing-prerequisites.md)</p></td>
<td><p>Provides information about prerequisites for testing and about specific setup procedures that you must follow before you test connectivity for your USB hub.</p></td>
</tr>
<tr class="odd">
<td><p>[Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md)</p></td>
<td><p>Provides overall Device.Connectivity troubleshooting information.</p></td>
</tr>
<tr class="even">
<td><p>[Device.Connectivity Tests](deviceconnectivity-tests.md)</p></td>
<td><p>Includes documentation for every connectivity test in the Windows HCK.</p></td>
</tr>
</tbody>
</table>

 

For test-specific prerequisites or details about troubleshooting, review individual test topics.

**Note**  
To obtain best practices for Windows HCK testing, and to obtain tips for avoiding common failures, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

 

## Testing embedded USB devices


Some of the USB device tests are dependent on the embedded status of the device under test.  The test may require a specific USB Host Controller, or physical access to the device that isn’t practical for testing embedded devices.  These tests will execute a different code path, or may be skipped entirely for embedded devices.

The Windows HCK will detect if a device is embedded by examining its container ID. If the device container ID matches the system container ID, the device is internally embedded.  If the device container ID does not match the system container ID, it is assumed to be an external device. If the device container ID is set properly (visible in **Device Manager**) there is no need to set the IsEmbeddedUSBDevice parameter.  However, if the device-under-test is internally embedded in the system but its container ID is not set properly, the IsEmbeddedUSBDevice parameter will override the automatic detection in the Windows HCK. The test will then execute in embedded mode, but will fail with an error indicating that the system port mapping did not match the user input.

## Marking USB devices as embedded devices


The system’s ACPI information must be correct in order to pass the USB tests on embedded devices, even if the user sets the IsEmbeddedUSBDevice parameter. In ACPI, PortIsConnectable must be set correctly in each port’s UPC object in accordance the following document: [Using ACPI to Configure USB Ports on a Computer](http://go.microsoft.com/fwlink/?LinkId=234485).

It is also recommended that embedded USB hubs (if any) and USB host controller root hubs set the removable bit correctly for each port. For hubs, refer to the Universal Serial Bus Specification, revision 2.0 (USB 2), and Universal Serial Bus 3.0 Specification, revision 1.0 (USB 3). These specifications are available from the [USB website](http://go.microsoft.com/fwlink/?LinkId=231399).

For host controllers, only the eXtensible Host Controller Interface (xHCI) currently supports reporting which ports are removable.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Device.Connectivity%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




