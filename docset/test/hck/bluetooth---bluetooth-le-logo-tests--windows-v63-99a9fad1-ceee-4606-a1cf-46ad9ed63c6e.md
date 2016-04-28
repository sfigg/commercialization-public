---
author: joshbax-msft
title: Bluetooth - Bluetooth LE Logo Tests (Windows v6.3)
description: Bluetooth - Bluetooth LE Logo Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fa832cac-44a1-49f3-9173-ceffcb041f2c
---

# Bluetooth - Bluetooth LE Logo Tests (Windows v6.3)


This automated test examines the Bluetooth Simultaneous BR+EDR and LE logo requirements and verifies that the controller that you’re testing is using valid Bluetooth 4.0 specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.4LeSpecification Device.BusController.Bluetooth.Base.LeStateCombinations Device.BusController.Bluetooth.Base.LeWhiteList Device.BusController.Bluetooth.Base.SimultaneousBrEdrAndLeTraffic</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~45 minutes</p></td>
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


Before you run the test, complete the test setup as described in [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires two test computers (one acts as Primary, the other Secondary). The test computers must have the same operating system and have a Bluetooth 4.0 Compliant LE radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server for WTT.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


To install the bthcsti driver, follow these steps:

1.  Copy the bthcsti.inf, bthcsti.sys, bthcsti.cat, bthcstisetup.exe, and devcon.exe files into a directory. Run the remaining steps from this directory.

2.  Run bthcstisetup.exe.

3.  Run devcon dp\_add bthcsti.inf.

4.  Restart the computer.

5.  In Device Manager, verify that the bthcsti driver is installed.

## Parameters


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
<td><p>ENABLETRACING</p></td>
<td><p>Enables collection of ETW traces. If <strong>True</strong>, the ETW traces are enabled on the collection. If <strong>False</strong>, the ETW traces on the collection are turned off.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

## Test case list


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Test case</strong></p></td>
<td><p><strong>Description</strong></p></td>
</tr>
<tr class="even">
<td><p>LOGOLE1.1.1</p></td>
<td><p>Verify minimum supported important and critical LE states</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE2.1.1</p></td>
<td><p>Ensure device supports minimum list size of 25</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE2.1.2</p></td>
<td><p>Fill list and verify we do not receive ADV from unpaired device</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE2.1.3</p></td>
<td><p>Receive ADV from paired device with full list</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE2.1.4</p></td>
<td><p>Receive ADV from device with disabled list</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE3.1.1</p></td>
<td><p>Verifies device claims to support Simultaneous BR/LE traffic</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE4.1.1</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2900)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE4.1.2</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2901)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE4.1.3</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2902)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE4.1.4</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2903)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE4.1.5</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2904)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE4.1.6</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Descriptor (2905)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE4.1.7</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 1 Custom Descriptor</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE4.1.8</p></td>
<td><p>Verify Descriptor (2904) outside and before Characteristic definition containing Descriptor (2905)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE4.1.9</p></td>
<td><p>Verify Descriptor (2904) outside and after Characteristic definition containing Descriptor (2905)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE4.1.10</p></td>
<td><p>Verify 1 UUID16 Primary Service with 1 Characteristic and 4 Descriptors</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE5.1.1</p></td>
<td><p>Verify ability to retrieve Included Services, single level</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE5.1.2</p></td>
<td><p>Verify ability to retrieve Included Services, single level</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE5.1.3</p></td>
<td><p>Verify ability to retrieve Included Services, single level</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE5.1.4</p></td>
<td><p>Verify ability to retrieve Included Services, multiple levels</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE6.1.1</p></td>
<td><p>Verify ability to set a short char value (Unsigned Write with Response)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE6.1.2</p></td>
<td><p>Verify ability to set a short char value (Unsigned Write without Response)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE6.1.3</p></td>
<td><p>Verify ability to set a long char value (Unsigned Write with Response)</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE6.1.4</p></td>
<td><p>Verify ability to set short desc value (Unsigned Write with Response)</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE6.1.5</p></td>
<td><p>Verify ability to begin and end reliable write on short Characteristic Values</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE6.1.6</p></td>
<td><p>Verify ability to begin and abort reliable write on short Characteristic Values</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE6.1.7</p></td>
<td><p>Verify ability to begin and end reliable write on long Characteristic Values</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE6.1.7</p></td>
<td><p>Verify ability to begin and end reliable write on long Characteristic Values</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE6.1.8</p></td>
<td><p>Verify ability to begin and abort reliable write on long Characteristic Values</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE8.1.1</p></td>
<td><p>Set up with ADV_IND and Verify simple data transfer over encrypted link</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE9.1.1</p></td>
<td><p>Verify ability to register and unregister for Characteristic Value notification over encrypted link</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE9.1.2</p></td>
<td><p>Verify ability to register and unregister for Characteristic Value indication over encrypted link</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE10.1.4</p></td>
<td><p>Verify ability to retrieve Included Services, multiple levels over encrypted link</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE11.1.5</p></td>
<td><p>Verify ability to begin and end reliable write on short Characteristic Values over encrypted link</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE11.1.6</p></td>
<td><p>Verify ability to begin and abort reliable write on short Characteristic Values over encrypted link</p></td>
</tr>
<tr class="odd">
<td><p>LOGOLE11.1.7</p></td>
<td><p>Verify ability to begin and end reliable write on long Characteristic Values over encrypted link</p></td>
</tr>
<tr class="even">
<td><p>LOGOLE11.1.8</p></td>
<td><p>Verify ability to begin and abort reliable write on long Characteristic Values over encrypted link</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Bluetooth%20-%20Bluetooth%20LE%20Logo%20Tests%20%28Windows%20v6.3%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




