---
author: joshbax-msft
title: Bluetooth - Downlevel - Inband SCO Tests (Windows 8)
description: Bluetooth - Downlevel - Inband SCO Tests (Windows 8)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cbb63bcf-92a2-441c-8c7b-1c433ea56bd7
---

# Bluetooth - Downlevel - Inband SCO Tests (Windows 8)


This automated test examines the Bluetooth logo requirements and verifies that the system that you are testing is using valid Bluetooth specifications.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.USB.ScoDataTransportLayer</p>
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


Before you run the test, complete the test setup as described in [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires two test computers (one acts as Primary, the other Secondary). The test computers must have the same operating system, support In-Band SCO and have a Bluetooth 2.1 compliant radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

-   Install Bluetooth Test Driver (BTHCSTI) on both machines (this is done automatically when scheduling through the WHCK Studio).

-   Radio needs to support in-band SCO. Computers which do not support in-band SCO will be skipped.

Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server for WTT.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

If the SCO data tests fail because of higher than expected error rates, make sure that the radios are in the same line of sight and are within a few feet of each other.

To debug test failures, you must have complete log files. The test will generate a text log file that you specify in the *&lt;logFileName&gt;* parameter. Include this file together with any questions about failing results. You might also have to include a kernel debugger remote session.

## <a href="" id="bkmk-moreinformation"></a>More information


You can run this test manually by using the command-line options only after you install bthcsti (the test driver) and restart all of the computers. This test requires two computers, one primary computer and one secondary computer. You can run the test as follows:

1.  On the primary computer, at a command prompt, run the following command:

    `Mjolnir -c SCO_HCT -l <logFileName>`

2.  On the secondary computer, at a command prompt, run the following command:

    `Mjolnir -m <PrimaryMachineName>`

To install the bthcsti driver, follow these steps:

1.  Copy the bthcsti.inf, bthcsti.sys, bthcsti.cat, bthcstisetup.exe, and devcon.exe files into a directory. Run the remaining steps from this directory.

2.  Run bthcstisetup.exe.

3.  Run devcon dp\_add bthcsti.inf.

4.  Restart the computer.

5.  In Device Manager, verify that the bthcsti driver is installed.

This section includes details for each test case that this test initiates.

### SCO1.1.1.1 - Create and close SCO Cxn test case

This test case verifies that the radio can create a single SCO channel.

**Overview**

The test case performs the following steps:

1.  Tries to open a single SCO channel.

2.  Disconnects.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The disconnect operation fails.

### <a href="" id="sco1-1-3-2---create-sco-cxn-with-sco-cf-link-encrypted--master-role-sets-flag"></a>SCO1.1.3.2 - Create SCO Cxn with SCO\_CF\_LINK\_ENCRYPTED, master role sets Flag

This test case verifies that the radio under test can establish an SCO channel on an authenticated or encrypted link.

**Overview**

The test case performs the following steps:

1.  The test unpairs the remote device if the device is currently paired.

2.  The test master role tries to create an ACL link.

3.  The test master role tries to authenticate and encrypt the ACL link.

4.  The test master role tries to open an SCO channel on the encrypted link.

5.  The test disconnects.

6.  The test unpairs the remote device.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The attempt to authenticate or encrypt the link fails.

-   The disconnect operation fails.

### <a href="" id="sco1-2-3-2---create-sco-cxn-with-sco-cf-link-encrypted--subordinate-role-sets-flag"></a>SCO1.2.3.2 - Create SCO Cxn with SCO\_CF\_LINK\_ENCRYPTED, subordinate role sets Flag

This test case verifies that the radio under test can establish an SCO channel on an authenticated or encrypted link.

**Overview**

The test case performs the following steps:

1.  The test unpairs the remote device if the device is currently paired.

2.  The test master role tries to create an ACL link.

3.  The test master role tries to open an SCO channel.

4.  The test subordinate role tries to authenticate and encrypt the link after the subordinate role accepts the SCO connection request.

5.  The test disconnects.

6.  The test unpairs the remote device.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The attempt to authenticate or encrypt the link fails.

-   The disconnect operation fails.

### SCO2.3.3.1 - Disconnect both sides simultaneously

This test case tries to disconnect the ACL link from both sides at the same time.

**Overview**

The test case performs the following steps:

1.  Tries to open a single SCO channel.

2.  Disconnects both sides at the same time.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The disconnect operation fails.

**Note**  
The information about the following data verification tests helps the qualifying customers to troubleshoot any failures they may experience when they run these tests. In the following data verification tests, data that is sent across the air uses the following repeated pattern:

 

``` syntax
typedef struct _TEST_UNIT{USHORT Header; // 0xDEADUSHORT Size; // The actual size of the test unit, including data. size from callerUSHORT Sequence; // Identifier (count) for a stream of test units.USHORT Crc16; // This is not currently used as CRC. It is a complement of the sequence and is made up of 1s.USHORT Data; // The variable size. This starts with a lower byte of the sequence and is incremented.USHORT Footer; // 0xBEEF} TEST_UNIT, *PTEST_UNIT;
```

**Note**  
The sequence value is incremented for every test unit that is sent across the air. If necessary, these packets can be easily picked out in an air trace and decoded manually.

 

### SCO1.5.5.1 - Full duplex read and write test case, 700 kb, clear data

This test case verifies that the radio under test can send and receive SCO data without error.

**Overview**

The test case performs the following steps:

1.  The test tries to open a single SCO channel.

2.  The test triesto send approximately 700 kilobits (kb) of data and receive an equal amount at the same time.

3.  The test validates the data after receipt.

4.  The test disconnects.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The amount of dropped data or errors is more than 10% of the total transferred.

-   The average throughput of the data transmissions deviates from 64 kilobits per second (kbps) by more than 2 kbps.

-   The disconnect operation fails.

### SCO1.5.11.2 - Full duplex read and write test case with ACL data, 700 kb, mu-Law

This test case verifies that the radio under test can send and receive SCO data without error when an active ACL link in the background is also transmitting data.

**Overview**

The test case performs the following steps:

1.  Creates a single L2CAP channel.

2.  Tries to open a single SCO channel.

3.  Starts transferring L2CAP data back and forth in the background.

4.  Tries to send approximately 700 kb of data while receiving an equal amount.

5.  Validates the SCO data after receipt.

6.  Disconnects both L2CAP and SCO channels.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The amount of dropped SCO data or errors is more than 10% of the total transferred.

-   The average throughput of the SCO data transmissions deviates from 64 kbps by more than 2 kbps.

-   The L2CAP channel fails any data transfers or is prematurely lost.

-   The disconnect operation fails.

### SCO1.5.14.1 - Full duplex read and write test case with Inquiries, 700 kb, clear data

This test verifies that the radio under test can send and receive SCO data without error while the radio is inquiring for remote devices.

**Overview**

The test case performs the following steps:

1.  Tries to open a single SCO channel.

2.  Starts requesting inquiries, in a loop, on both master role and subordinate role radios.

3.  Tries to send approximately 700 kb of SCO data while receiving an equal amount.

4.  Validates the SCO data after receipt.

5.  Disconnects.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The amount of dropped SCO data or errors is more than 10% of the total transferred.

-   The average throughput of the SCO data transmissions deviates from 64 kbps by more than 2 kbps.

-   Any inquiry requests fail.

-   The disconnect operation fails.

### SCO1.5.30.2 - Loopback latency measurement, 700 kb, mu-Law

This test case verifies that the round-trip latency of Bluetooth transfers that use the radio under test is in an acceptable range.

**Overview**

The test case performs the following steps:

1.  The subordinate role test computer is set up to receive SCO data and immediately reflect the same data back to the master role test computer.

2.  A single SCO channel is created.

3.  The master role computer streams 10,000 72-byte blocks to the radio. Every tenth block consists of a specific byte value (the "token" value) repeated over the 72 bytes. That token value is incremented for every tenth block and wraps around after 255. All other blocks are zero. A timestamp is taken when each tenth block is sent.

    At the same time, the master role side listens for these token blocks in a separate thread. The master role computer takes a timestamp when the computer receives each token block. The time delta divided by two is the approximate latency in one direction.

    A sniffer trace shows blocks of data that resemble the following (each byte is repeated 72 times, but is just listed one time here):

    01, 00, 00, 00, 00, 00, 00, 00, 00, 00, 02, ... 03, ... 04, ... and then much later ... FF, ... 01 and so on...

    The receiving thread only waits to find a small chunk of this data before the thread takes the timestamp and increments the token.

4.  After the master test computer receives all 10,000 blocks, the test disconnects the links.

**Results Interpretation**

The test case writes the pass/fail results to a log file.

The test case fails if:

-   The SCO connection attempt fails.

-   The amount of dropped token data packets is more than 30% of the total transferred.

-   The average throughput of the SCO data transmissions deviates from 64 kbps by more than 2 kbps.

-   The one-way latency is more than 50 milliseconds (ms) for any single token packet transfer.

-   The disconnect operation fails.

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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Bluetooth%20-%20Downlevel%20-%20Inband%20SCO%20Tests%20%28Windows%208%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




