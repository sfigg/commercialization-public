---
author: joshbax-msft
title: Bluetooth - Downlevel - Bluetooth Device Version Check Tests (Windows 8)
description: Bluetooth - Downlevel - Bluetooth Device Version Check Tests (Windows 8)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3ecc23f5-4435-4474-a574-cc692f2a9e73
---

# Bluetooth - Downlevel - Bluetooth Device Version Check Tests (Windows 8)


This automated test verifies that the remote radio connected to a Bluetooth controller is a Bluetooth 2.1-compliant radio.

**Caution**  
The test will fail if the Bluetooth controller is not at least Bluetooth 2.1 compliant.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.4LeSpecification Device.BusController.Bluetooth.Base.SpecificInformationParameters Device.BusController.Bluetooth.Base.SupportsBluetooth21AndEdr</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
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
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires two test computers (one acts as Primary, the other Secondary). The test computers must have the same operating system and have a Bluetooth 2.1 compliant radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

**Warning**  
This test checks whether it can connect to another known radio and then checks the device radio. The test does not apply to PC attached Bluetooth radios

 

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server.

You can run this test manually by using the command-line options with two computers (one primary and one secondary), as follows:

1.  On the primary computer, run **mjolnir.exe -c functional -t f8.1 -l &lt;logFileName&gt;**.

2.  On the secondary computer, run **mjolnir.exe -m &lt;PrimaryMachineName&gt;**.

3.  On the primary computer, make sure that the device is still paired, and then enter the Bluetooth Device address in the command window when prompted. Enter the device address in the format **xxxxxxxx**, using no punctuation and using only the characters 0,1,2,3,4,5,6,7,8,9,0,a,b,c,d,e,f,A,B,C,D,E,F.

When running this test, there will be a prompt on the primary machine to enter the device address. The address must then be manually entered. To find the device address, double-click the **Bluetooth** icon in the task bar, right-click the device under test, go to **Properties**, and then select the **Bluetooth** tab. The address of the device is listed in this tab as the unique identifier. Enter the unique identifier in the prompt without spaces, dots or dashes, using only the characters shown above.

**Warning**  
This test **times out in two minutes** so it does not block other tests from running. The test fails if a user does not enter the device address within two minutes.

 

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
<td><p>ENABLETRACING</p></td>
<td><p>Enables collection of ETW traces. If <strong>True</strong>, the ETW traces are enabled on the collection. If <strong>False</strong>, the ETW traces on the collection are turned off.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

 

 






