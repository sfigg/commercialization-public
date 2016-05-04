---
author: joshbax-msft
title: Bluetooth - Downlevel - Scatternet Tests (Windows 8)
description: Bluetooth - Downlevel - Scatternet Tests (Windows 8)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bfb6114a-857c-4ed9-ad85-8cb6e9fbf6ac
---

# Bluetooth - Downlevel - Scatternet Tests (Windows 8)


This automated test checks the Bluetooth's scatternet requirements and verifies that the system that you are testing is using valid Bluetooth specifications.

The test succeeds or fails based on the result of each test case. These results are included in the log file after each test case. Each test case must pass for the overall result to be successful.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.4LeSpecification Device.BusController.Bluetooth.Base.Scatternet</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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

-   This test requires three test computers (one acts as Primary, the other two Secondary). The test computers must have the same operating system and have a Bluetooth 2.1 compliant radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## More information


The Bluetooth host controller must support at least two concurrent piconets (also known as a scatternet). The host controller must also be able to allow the host to join a device that is requesting a connection to the existing piconet when the local radio is the master of that piconet.

You can run this test manually by using the command-line options with three computers (one primary computer and two secondary computers), as follows

1.  On the primary computer, run **Mjolnir -c Scatternet -S 2 -l &lt;logFileName&gt;**.

2.  On the secondary computer, run **Mjolnir -m &lt;PrimaryMachineName&gt;**.

To debug test failures, you will need complete log files. The test will generate a text log file that you specify (in the &lt;logFileName&gt; parameter). Please include this file with any questions about failing results. You might also need to include a kernel debugger remote session

This section includes details for each test case initiated by this test.

**Overview**

### c6.1.1 - Basic scatternet 1 test with 512K data transfer

This test verifies that the radio under test is able to become the subordinate role in one piconet while already the master role in another and sustain these roles while transferring data.

**Overview**

The test case performs the following steps:

1.  Remote 1 attempts to connect to the radio under test.

2.  Radio under test accepts, requesting the master role.

3.  Radio under test attempts to connect to Remote 2.

4.  Remote 2 accepts, requesting the master role.

5.  1 MB of data (512 KB read and 512 KB written) to each of the remote radios.

6.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The data transfers do not complete successfully.

-   Disconnect fails.

### c6.1.2 - Basic scatternet 1 test with inquiry

This test verifies that the radio under test is able to become the subordinate role in one piconet while already the master role in another and sustain these roles while inquiring for other devices.

**Overview**

The test case performs the following steps:

1.  Remote 1 attempts to connect to the radio under test.

2.  Radio under test accepts, requesting the master role.

3.  Radio under test attempts to connect to Remote 2.

4.  Remote 2 accepts, requesting the master role.

5.  Radio under test inquires for Remote 1.

6.  Radio under test inquires for Remote 2.

7.  Remote radios 1 and 2 inquire for the radio under test.

8.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The inquiries fail to find the expected remote device.

-   Disconnect fails.

### c6.2.1 - Basic scatternet 2 test with 512K data transfer

This test verifies that the radio under test is able to become the master role in one piconet while already the subordinate role in another and sustain these roles while transferring data.

**Overview**

The test case performs the following steps:

1.  Radio under test attempts to connect to Remote 1.

2.  Remote 1 accepts, requesting the master role.

3.  Remote 2 attempts to connect to the radio under test.

4.  Radio under test accepts, requesting the master role.

5.  1 MB of data (512 KB read and 512 KB written) to each of the remote radios.

6.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The data transfers do not complete successfully.

-   Disconnect fails.

### c6.2.2 - Basic scatternet 2 test with inquiry

This test verifies that the radio under test is able to become the master role in one piconet while already the subordinate role in another and sustain these roles while inquiring for other devices.

**Overview**

The test case performs the following steps:

1.  Radio under test attempts to connect to Remote 1.

2.  Remote 1 accepts, requesting the master role.

3.  Remote 2 attempts to connect to the radio under test.

4.  Radio under test accepts, requesting the master role.

5.  Radio under test inquires for Remote 1.

6.  Radio under test inquires for Remote 2.

7.  Remote radios 1 and 2 inquire for the radio under test.

8.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The inquiries fail to find the expected remote device.

-   Disconnect fails.

### c6.3.1 - Basic scatternet 3 test with 512K data transfer

This test verifies that the radio under test is able to become the subordinate role in one piconet while already the subordinate role in another and sustain these roles while transferring data.

**Overview**

The test case performs the following steps:

1.  Radio under test attempts to connect to Remote 1.

2.  Remote 1 accepts, requesting the master role.

3.  Radio under test attempts to connect to Remote 2.

4.  Remote 2 accepts, requesting the master role.

5.  1 MB of data (512 KB read and 512 KB written) to each of the remote radios.

6.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The data transfers do not complete successfully.

-   Disconnect fails.

### c6.3.2 - Basic scatternet 3 test with inquiry

This test verifies that the radio under test is able to become the subordinate role in one piconet while already the subordinate role in another and sustain these roles while inquiring for other devices.

**Overview**

The test case performs the following steps:

1.  Radio under test attempts to connect to Remote 1.

2.  Remote 1 accepts, requesting the master role.

3.  Radio under test attempts to connect to Remote 2.

4.  Remote 2 accepts, requesting the master role.

5.  Radio under test inquires for Remote 1.

6.  Radio under test inquires for Remote 2.

7.  Remote radios 1 and 2 inquire for the radio under test.

8.  The links are disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the connection attempts fail.

-   Any radio is not in the expected role after the connections are established.

-   The inquiries fail to find the expected remote device.

-   Disconnect fails.

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

 

 

 






