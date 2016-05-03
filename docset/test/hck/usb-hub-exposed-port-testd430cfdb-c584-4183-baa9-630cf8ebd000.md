---
author: joshbax-msft
title: USB Hub Exposed Port Test
description: USB Hub Exposed Port Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 91cd993e-8625-4d50-90f0-157aab51418d
---

# USB Hub Exposed Port Test


This test verifies that a USB 3.0 hub adheres to Section 10.1 of the [USB 3.0 Specification](http://www.usb.org/developers/docs/).

As per the specification, a USB 3.0 hub has two hub units: a SuperSpeed hub and a companion high-speed hub to handle USB 3.0 and 2.0 traffic, respectively. Ports on both of these hubs make connectors or physical ports. In this test, those ports are called exposed ports. This test checks the port mapping of SuperSpeed and high-speed hub units.

This test applies to USB 3.0 hubs only, and automatically passes for non-SuperSpeed-capable hubs.

In Windows 8.1, this test runs in two modes: *Legacy* and *Modern*. The mode is selected by using the **Parameters** option. In the Legacy mode, the test is manual. You can configure the hubs before or after you start the test. In the Modern mode, the test is automated and you must configure the required topologies before you start the test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Connectivity.UsbHub.IdentifyNumOfUserAccessiblePorts Device.Connectivity.UsbHub.MapPortsPerUsb3Specification</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


### Hardware list

-   The external USB 3.0 hub to test.

-   In the Legacy mode, you need at least one additional USB-IF compliant external USB 3.0 hubs. In the Modern mode, you need *n* additional USB 3.0 hubs, where *n* is the total count of connectors on the hub. In this topic, these hubs are also called *second-tier hubs*.

-   One eXtensible Host Controller Interface (xHCI) controller on the test computer.

-   SuperSpeed-capable USB cables.

### Before you run the test

Before you run the test, complete the test setup as described in the test requirements: [USB Device.Connectivity Testing Prerequisites](usb-deviceconnectivity-testing-prerequisites.md).

Verify that the container IDs of the USB 3.0 and 2.0 hub units match. You can verify the container IDs in Device Manager, as shown here:

Art placeholder

The order of port numbers of the two hub units must match. For example, if the USB 3.0 hub’s port numbers are 1, 2, 3, and 4, the USB 2.0 hub’s port numbers must also be 1, 2, 3, and 4.

The ports of USB 3.0 and 2.0 hubs that form a connector on the entire hub, must match. For example, if a USB 3.0 hub has four connectors and each connector has ports from each unit, the port numbers for a connector must be \[1, 1\] or \[2, 2\], and so on. Port number combination of \[1, 2\] is invalid.

### Required hub configuration

The required hub configuration is shown in the following figure:

Art placeholder

### <a href="" id="how-to-run-the-test---legacy-mode"></a>How to run the test – Legacy mode

1.  On the Windows Hardware Certification Kit (Windows HCK) Controller, open Windows HCK Studio and load the project.

2.  On the target computer, connect the USB 3.0 hub to test, to a root hub port of a USB 3.0 host controller.

3.  On the Windows HCK Controller, on the **Selection** tab, select **Device manager** and check the box for the hub to test from the list.

4.  On the Windows HCK Controller, click the Tests tab, select **USB Hub Exposed Port Test**, and click **Run Selected**.

5.  In the **Parameters** window, enter **Legacy** as the Testmode value.

6.  Start the test.

    The target computer might restart. On the test computer, **Administrator: Windows PowerShell** and **USB device viewer** windows will open.

7.  Connect the second-tier hub to a downstream connector of the hub under test. In **USB device viewer**, verify that the hub enumerates as **Generic SuperSpeed USB Hub** under **SuperSpeed** ports. If you have *n* hubs for *n* connectors, connect all hubs at the same time. Make sure that all hubs are detected on all connectors. Do not close the test UI, or, the test will fail.

8.  After all second-tier hubs are detected, the UI will close automatically. If it does not, close the test UI.

9.  Read the test results on the Windows HCK Controller.

### <a href="" id="how-to-run-the-test---modern-mode"></a>How to run the test – Modern mode

1.  On the Windows HCK Controller, open Windows HCK Studio and load the project.

2.  On the target computer, connect the USB 3.0 hub to test, to a root hub port of a USB 3.0 host controller.

3.  Connect all second-tier hubs to downstream connectors of the USB 3.0 hub under test.

4.  On the Windows HCK Controller, on the **Selection** tab, select **Device manager** and check the box for the hub to test from the list.

5.  On the Windows HCK Controller, click the **Tests** tab, select **USB Hub Exposed Port Test**, and click **Run Selected**.

6.  In the **Parameters** window, enter **Modern** as the Testmode value.

7.  Start the test.

    On the target computer a command prompt window opens; however, this mode requires no user interaction.

8.  After the test completes, read the test results on the Windows HCK Controller.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Connectivity Testing](troubleshooting-deviceconnectivity-testing.md).

If all second-tier hubs are attached to each port and the test UI remains on the screen, exit the window and examine the test logs. If the logs indicate that a USB 3.0 hub was not enumerated on the connectors of the USB 3.0 hub under test, it might show the following error strings:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error string</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Device under test is missing from system.</p></td>
<td><p>The USB 3.0 hub under test was removed after the test was started, but before the test ran on the target computer.</p></td>
</tr>
<tr class="even">
<td><p>No companion found!</p>
<p>Port # is super speed, but was not mapped to a companion port.</p></td>
<td><p>The USB 3.0 hub under test is not correctly implemented. The hub has a SuperSpeed hub unit but the companion hub was not detected.</p></td>
</tr>
<tr class="odd">
<td><p>Port # is unmapped.</p></td>
<td><p>A USB 3.0 hub was detected on the downstream connector, but a high-speed unit of that hub was not detected.</p></td>
</tr>
<tr class="even">
<td><p>Port # is reported as user removable, but no device was found. Please attach a device and rerun the test.</p></td>
<td><p>One or more downstream connectors was missing hub(s). Re-run the test and ensure that the second-tier hub(s) are attached to every exposed port of the hub under test.</p></td>
</tr>
<tr class="odd">
<td><p>Container ID: Fail.</p></td>
<td><p>The SuperSpeed hub under test or second-tier hub(s) in use are not correctly implemented. The hub must properly implement the container IDs so that the SuperSpeed and high speed components share the same container ID. Confirm the container ID implementation of the secondary hub by examining the device property in <strong>Device Manager</strong>.</p></td>
</tr>
</tbody>
</table>

 

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>TestMode</strong></p></td>
<td><p>String that indicates whether the test runs in manual or automated mode.</p>
<p>Modern: Uses WDTF to check USB port connections. The test runs automatically. Default value.</p>
<p>Legacy: Uses USB Device Viewer to check USB port connections. The test runs in manual mode.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Device.Connectivity Tests](deviceconnectivity-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Hub%20Exposed%20Port%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





