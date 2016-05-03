---
author: joshbax-msft
title: USB Exposed Port System Test
description: USB Exposed Port System Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 75a87c04-e257-4637-a91c-d1b339bd419b
---

# USB Exposed Port System Test


This test validates the port mapping of all SuperSpeed capable connectors of the system. For each connector, the test checks these conditions for the SuperSpeed and high-speed ports that form the connector:

-   The SuperSpeed ports are mapped to their companion high speed ports of the same physical controller. The ports must be children of the same parent.

-   The port numbers of SuperSpeed and high-speed ports are contiguous. SuperSpeed port numbers are less than the high-speed port numbers, and mapped correctly. For example, if the controller has four SuperSpeed ports and four high-speed ports, they must be mapped as shown here:

    -   SuperSpeed Port 1-&gt; High-speed Port 5

    -   SuperSpeed Port 2-&gt; High-speed Port 6

    -   SuperSpeed Port 3-&gt; High-speed Port 7

    -   SuperSpeed Port 4-&gt; High-speed Port 8

-   If the ports are not mapped as shown in the preceding list, then the test assumes that the ACPI table contains definitions for physically-wired SuperSpeed and high speed ports. To map the ports, they must have identical physical location description (\_PLD). For more information, see [Using ACPI to Configure USB Ports on a Computer](http://go.microsoft.com/fwlink/p/?linkid=329752).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.SystemUSB.EHCIToXHCIControllerTransitions System.Fundamentals.SystemUSB.SuperSpeedCapableConnectorRequirements System.Fundamentals.SystemUSB.TestedUsingMicrosoftUsbStack System.Fundamentals.SystemUSB.USB3andUSB2PortsRoutedToSameXHCIController System.Fundamentals.SystemUSB.XHCIControllersMustHaveEmbeddedInfo</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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


This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

### Hardware list

In Windows 8.1, this test runs in two modes: *Legacy* and *Modern*. You can select the mode by using the **Parameters** option.

-   A target computer that has one or more SuperSpeed and/or high-speed connectors (exposed ports). In the Legacy mode, you need at least one USB-IF compliant external USB 3.0 hub. In the Modern mode, you need *n* USB 3.0 hubs, where *n* is the total count of connectors on the system.

-   SuperSpeed-capable USB cables.

### <a href="" id="how-to-run-the-test---legacy-mode"></a>How to run the test – Legacy mode

1.  On the Windows® Hardware Certification Kit (Windows HCK) Controller, open Windows HCK Studio and load the project.

2.  On the target computer, connect the USB 3.0 hub to a SuperSpeed or high-speed connector.

3.  On the Windows HCK Controller, on the **Selection** tab, select **System** and check the target computer from the list.

4.  On the Windows HCK Controller, click the **Tests** tab, view by **Functional** and **Certification**.

5.  Select **USB Exposed Port System Test** from the **Test Name** list and click **Run Selected**.

6.  In the **Parameters** window, enter **Legacy** as the **Testmode** value.

7.  Start the test.

    The target computer might restart. On the test computer, Administrator: Windows PowerShell and USB device viewer windows will open.

8.  In USB device viewer, verify that the hub enumerates as Generic SuperSpeed USB Hub under SuperSpeed ports. If you have *n* hubs for *n* connectors, connect all hubs at the same time. Otherwise, connect the hub to each connector one at a time. Make sure that all hubs are detected on all connectors. Do not close the test UI, or, the test will fail.

9.  After all second-tier hubs are detected, the UI will close automatically. If it does not, close the test UI.

10. Read the test results on the Windows HCK Controller.

### <a href="" id="how-to-run-the-test---modern-mode"></a>How to run the test – Modern mode

1.  On the Windows HCK Controller, open Windows HCK Studio and load the project.

2.  On the target computer, make sure every connector has a USB 3.0 hub attached downstream to connector.

3.  On the Windows HCK Controller, on the **Selection** tab, select **System** and check the target computer from the list.

4.  On the Windows HCK Controller, click the **Tests** tab, view by **Certification**.

5.  Select **USB Exposed Port System Test** from the **Test Name** list and click **Run Selected**.

6.  In the **Parameters** window, enter **Modern** as the **Testmode** value.

7.  Start the test.

    On the target computer a command prompt window opens; however, this mode requires no user interaction.

8.  After the test completes, read the test results on the Windows HCK Controller.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

Most common reasons for failing this test are:

-   The SuperSpeed ports of an xHCI controller are mapped to high speed ports of another xHCI or EHCI controller.

-   The ACPI table does not contain proper port mapping.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Connected: Fail</p></td>
<td><p>USB 3.0 hubs were not detected on all connectors. You must connect hubs to all connectors.</p></td>
</tr>
<tr class="even">
<td><p>Mapped: Fail</p></td>
<td><p>One of the ports that form the connector is SuperSpeed but was not mapped to a companion high-speed port in ACPI.</p></td>
</tr>
<tr class="odd">
<td><p>Port # is reported as user removable, but no device was found. Attach a device and rerun the test.</p></td>
<td><p>The port is not wired to a connector but in the ACPI table <strong>_UPC.PortIsConnectable</strong> byte is not set to 0xFF or the <strong>_PLD.UserVisible</strong> bit is set to 0.</p></td>
</tr>
</tbody>
</table>

 

## More information


### Parameters

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
<td><p>TestMode</p></td>
<td><p>Default value: Modern</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>USBViewTest.exe</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\driverstest\usb\LogoKit\</p></td>
</tr>
<tr class="even">
<td><p>devicetopology.vbs</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\driverstest\usb\LogoKit\</p></td>
</tr>
<tr class="odd">
<td><p>hubexposedport.vbs</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\driverstest\usb\LogoKit\</p></td>
</tr>
<tr class="even">
<td><p>alternatemode.vbs</p></td>
<td><p><em>[TestBinRoot]</em>\nttest\driverstest\usb\LogoKit\</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%20Exposed%20Port%20System%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





