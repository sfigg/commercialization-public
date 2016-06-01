---
author: joshbax-msft
title: Debug Capability Test (Logo)
description: Debug Capability Test (Logo)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5e56f70f-9724-42b1-bf49-0dae01edb490
---

# Debug Capability Test (Logo)


This test measures the ability of a test computer to support debug operations using an xHCI controller, EHCI controller, serial port, 1394 controller, or a network adapter. The test validates that at least one debug port is available.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.DebugPort.SystemExposesDebugInterface</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
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
<td><p>Basic Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


To complete this debug test, you must configure two computers. The computer that you are trying to certify is the *System under Test (SUT)*. The second computer is the *Host* on which the Windows debugger will run. These computers must meet the Windows HCK prerequisites and must be included in the same computer pool. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md). If the device being tested is an XHCI controller, an XHCI controller must be included in both computers. If the XHCI controller in the SUT has any user-accessible ports, the controller must have debug capability.

**Important**  
You must have a cable that is appropriate for the debug transport that is being verified.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

This test returns Pass or Fail. To review test details, review the test log from HCK Studio.

## More information


### Command syntax

 In the Parameters window **Transport** field, enter one transport type (NET, 1394, USB, or Serial). Based on the transport you entered, you must provide the following additional parameters.

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
<td><p>NET</p></td>
<td><p>NetHostIP</p></td>
<td><p>You must specify a Host IP. If there's more than one controller on the SUT computer, you must specify a <strong>BusParams</strong> value. Enter <strong>Busparams</strong> as <em>b.d.f</em> where <em>b</em>, <em>d</em>, and <em>f</em> are the bus number, device number, and function displayed in the device's properties window in Device Manager.</p></td>
</tr>
<tr class="even">
<td><p>1394</p></td>
<td><p>1394Channel</p></td>
<td><p>Default is 1. If there's more than one controller on the SUT computer, you must specify a <strong>BusParams</strong> value. Enter <strong>Busparam</strong> as <em>b.d.f</em> where <em>b</em>, <em>d</em>, and <em>f</em> are the bus number, device number, and function displayed in the device's properties window in Device Manager.</p></td>
</tr>
<tr class="odd">
<td><p>USB</p></td>
<td><p>UsbTargetName</p></td>
<td><p>Default is default. If there's more than one USB host controller on the SUT computer, you must specify a <strong>BusParams</strong> value. Enter <strong>Busparams</strong> as <em>b.d.f</em> where <em>b</em>, <em>d</em>, and <em>f</em> are the bus number, device number, and function number of the USB host controller that you are using for debugging. These numbers are displayed in the USB host controller’s Properties window in Device Manager.</p>
<div class="alert">
<strong>Important</strong>  
<p>If you are using an EHCI host controller on the SUT computer, the cable must be connected to Port 1 of the controller. You can use the UsbView tool to identify Port 1. USBView is included in the WDK.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>Serial</p></td>
<td><p>Not required</p></td>
<td><p>Default values are sufficient. If necessary, adjust any serial parameter as needed (prefix Serial_).</p></td>
</tr>
</tbody>
</table>

 

 

 






