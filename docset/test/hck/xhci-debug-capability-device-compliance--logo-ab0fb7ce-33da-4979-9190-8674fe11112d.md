---
author: joshbax-msft
title: xHCI Debug Capability Device Compliance (Logo)
description: xHCI Debug Capability Device Compliance (Logo)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94fb6a5c-6044-44bc-952c-3a4619fdae05
---

# xHCI Debug Capability Device Compliance (Logo)


This test measures the ability of a test computer to support debug operations using an xHCI controller.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UsbController.XhciSupportDebuggingOnAllExposedPorts</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [USB Bus Controller Testing Prerequisites](usb-bus-controller-testing-prerequisites.md).

To complete this debug test, you must configure two computers. The computer that you are trying to certify is the *System under Test (SUT)*. The second computer is the *Host* on which the Windows debugger will run. These computers must meet the Windows HCK prerequisites and must be included in the same computer pool. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md). If the device being tested is an XHCI controller, an XHCI controller must be included in both computers. If the XHCI controller in the SUT has any user-accessible ports, the controller must have debug capability.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

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
<td><p>AccessiblePorts</p></td>
<td><p>If 0, an xHCI controller is present but is not physically wired to an external port. If <em>X</em>, An xHCI controller is present and <em>X</em> is the number of user-accessible ports provided by the controller.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

 In the Parameters window **Transport** field, enter USB. Provide the following additional parameters.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Transport type</th>
<th>Required parameters</th>
<th>Comments</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>USB</p></td>
<td><p>UsbTargetName</p></td>
<td><p>Default is default. If there's more than one USB host controller on the SUT computer, you must specify a <strong>BusParams</strong> value. Enter <strong>Busparams</strong> as <em>b.d.f</em> where <em>b</em>, <em>d</em>, and <em>f</em> are the bus number, device number, and function number of the USB host controller that you are using for debugging. These numbers are displayed in the USB host controller’s Properties window in Device Manager.</p>
<div class="alert">
<strong>Important</strong>  
<p>If you are using an EHCI host controller on the SUT computer, the debug cable must be connected to Port 1. You can use the UsbView tool to identify Port 1. USBView is included in the WDK.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20xHCI%20Debug%20Capability%20Device%20Compliance%20%28Logo%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




