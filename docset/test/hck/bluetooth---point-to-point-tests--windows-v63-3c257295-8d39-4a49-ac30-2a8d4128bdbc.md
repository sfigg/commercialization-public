---
author: joshbax-msft
title: Bluetooth - Point to Point Tests (Windows v6.3)
description: Bluetooth - Point to Point Tests (Windows v6.3)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9bd446c3-1c4b-461a-9302-6c46234a4852
---

# Bluetooth - Point to Point Tests (Windows v6.3)


This automated test checks the Bluetooth controller requirements and verifies that the system is using valid Bluetooth specifications.

The test succeeds or fails based on the result of each test case, which is printed in the log file at end of each test case. Each test case listed in the log file must pass for the overall result to be successful.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.Bluetooth.Base.4LeSpecification Device.BusController.Bluetooth.Base.SupportsBluetooth21AndEdr</p>
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


Before you run the test, complete the test setup as described in the test requirements: [Bluetooth Controller Testing Prerequisites](bluetooth-controller-testing-prerequisites.md).

-   This test requires two test computers (one acts as Primary, the other Secondary). The test computers must have the same operating system and have a Bluetooth 4.0 compliant LE radio. The primary test computer must have the radio being certified for logo (Device Under Test).

-   The Bluetooth radio must use the Microsoft Bluetooth Driver Stack for testing.

-   This test requires at least one discoverable device present when executing.

Tests are copied locally to the WTTJobsWorking directory and logs are copied to the default Logs server for WTT.

Enabling collection of Event Tracing for Windows (ETW) traces assists with diagnosing test failures.

These traces capture the HCI traffic sent to and from the Bluetooth stack. They can be decoded using Netmon and the Bluetooth ETW parsers. It is recommended to first investigate the issue internally using these traces or some other method of capturing over-the-air traces because many controller/stack inter-operability issues can be observed in these traces.

You can view the collected logs using Netmon and the Bluetooth NPL parsers. These parsers can be obtained through installing the WDK.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

The test fails if:

-   Authentication attempt fails.

-   Post-authentication data transfers fail.

-   Disconnect fails.

## More information


The Bluetooth host controller must meet the requirements that are outlined in the Specification of the Bluetooth System Version 2.1 + Enhanced Data Rate (EDR)

This section includes details for each test case initiated by this test.

**Warning**  
In the following test descriptions, local radio refers to the radio attached to the DTM master.

 

### hct32.1.1.01 - create and close socket test case

This test case verifies that Windows Bluetooth software is properly installed. This test does not interact with the Bluetooth radio.

**Overview**

The test case performs the following steps:

1.  Creates a Bluetooth socket.

2.  Closes the socket.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Create/close socket call fails.

### hct32.1.1.02 - bind socket test case

This test case verifies that Windows Bluetooth stack is properly installed. This test does not interact with the Bluetooth radio.

**Overview**

The test case performs the following steps:

1.  Creates a Bluetooth socket.

2.  Binds to the new socket.

3.  Closes the socket.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.2.0.01- SDP get device list

This test case performs an inquiry.

**Overview**

The test case performs the following steps:

-   Sends an inquiry command to the local radio.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Inquiry fails.

### hct32.2.1.01 - no response when not discoverable test case

This test case verifies that the radio can be placed in a non-discoverable state.

**Overview**

The test case performs the following steps:

1.  Remote radio checks that it can find the local radio when it is in a discoverable state.

2.  Local radio is placed into a non-discoverable state.

3.  Remote radio verifies that the local radio is no longer found on inquiry.

4.  Local radio is returned to discoverable state.

5.  Remote radio verifies that local radio is now being found with a new inquiry.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Cannot change the discoverability of the radio.

-   Cannot find the radio when discoverable.

-   The radio is found when not discoverable.

### hct32.2.2.01- find in-range devices test case

This test case verifies that the local radio can be found via inquiry and can find the remote radio.

**Overview**

The test case performs the following steps:

1.  Remote radio inquires for local radio and verifies it is found.

2.  Remote host inquires its local caches and verifies the local radio is found.

3.  Local radio inquires for remote radio and verifies it is found.

4.  Local radio checks local inquiry cache and verifies remote radio is listed.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Local radio is not found during inquiry.

-   Local radio does not find remote device via inquiry.

### hct32.2.3.01- find in-range devices test case

This test case verifies that the local radio can be found via inquiry and can find the remote radio. This test case is exactly the same of hct32.2.2.01.

**Overview**

The test case performs the following steps:

1.  Remote radio inquires for local radio and verifies it is found.

2.  Remote host inquires its local caches and verifies the local radio is found.

3.  Local radio inquires for remote radio and verifies it is found.

4.  Local radio checks local inquiry cache and verifies remote radio is listed.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Local radio is not found during inquiry.

-   Local radio does not find remote device via inquiry.

### hct32.2.4.01- respond when not connectable test case

This test case verifies that the remote radio is able to initiate connect when in non-connectable mode.

**Overview**

The test case performs the following steps:

1.  A connection is established and a small amount of data is transferred to validate the functionality between the two radios.

2.  The connection is disconnected.

3.  The remote radio is put into non-discoverable and non-connectable mode.

4.  A connection is established from the remote radio and a small amount of data is transferred.

5.  The connection is disconnected.

6.  A connection is attempted from the local radio and expected to fail.

7.  The remote radio is returned to discoverable and connectable mode.

8.  A final connection is established and a small amount of data transferred.

9.  The final connection is disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   The radio fails to enter non-connectable mode

-   A connection is made to the non-connectable radio.

-   The non-connectable radio cannot initiate a connection to another radio.

### hct32.3.1.01- bonded connection test case

This test case verifies that the two radios are able to authenticate with each other.

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio.

2.  Local radio pairs to remote radio.

3.  Both sides do an inquiry, local radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  Some discoverability tests are run.

6.  The two radios are unpaired.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   The radios fail authentication.

### hct32.3.2.01- subordinate role request authentication to master role followed by connection test case

This test case verifies that the remote radio is able to authenticate to the local radio.

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio.

2.  Remote radio initiates authentication to local radio.

3.  Both sides do an inquiry, local radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  The local radio establishes an authenticated connection to the remote.

6.  The link is disconnected.

7.  The two radios are unpaired.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Authentication attempt fails.

-   Post-authentication connection attempt fails.

-   Disconnect fails.

### hct32.3.2.02- master role authenticate to subordinate role with connection test

This test case verifies that the local radio is able to authenticate to the remote radio

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio.

2.  Local radio initiates authentication to remote radio.

3.  Both sides do an inquiry, remote radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  The local radio establishes an authenticated connection to the remote.

6.  The link is disconnected.

7.  The two radios are unpaired.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Authentication attempt fails.

-   Post-authentication connection attempt fails

-   Disconnect fails.

### hct32.3.3.01- master role accept/subordinate role connect test case

This test case verifies that the local radio is able to accept a socket initiated connect from the remote.

**Overview**

The test case performs the following steps:

1.  Local radio binds to a socket and listens for an incoming connect.

2.  Remote radio attempts a connection.

3.  Both sides disconnect.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   The connect or disconnect fail.

### hct32.3.3.02- subordinate role accept/master role connect call test

This test case verifies that the remote radio is able to accept a socket initiated connect from the local host.

**Overview**

The test case performs the following steps:

1.  Remote radio binds to a socket and listens for an incoming connect.

2.  Local radio attempts a connection.

3.  Both sides disconnect.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   The connect or disconnect fail.

### hct32.3.3.03 - disconnect order test case

This test case verifies that multiple socket connections can be created and closed out of order.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on four sockets on the local radio host.

2.  Attempts connection on first socket and then closes that socket immediately upon connect.

3.  Attempts connection on remaining sockets.

4.  Closes remaining sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.3.3.04 - local closes DLC test case

This test case verifies that the local host can close a connection initiated by the remote.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host closes the socket.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.3.3.05 - remote closes DLC test case

This test case verifies that the remote host can close a connection initiated by the remote.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host closes the socket.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.3.3.06 - local closes rfcomm session test case

This test case verifies that the local host can close multiple socket connections initiated by the remote.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on two sockets on the local radio host.

2.  Remote host attempts to connect on both sockets.

3.  Local host closes the sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.3.3.07 - remote closes rfcomm session test case

This test case verifies that the remote host can close multiple socket connections initiated by the remote.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on two sockets on the local radio host

2.  Remote host attempts to connect on both sockets.

3.  Remote host closes the sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

### hct32.3.4.01 - connection test when non-connectable test case

This test case verifies that the remote radio is able to initiate connect when in non-connectable mode. This test is identical to hct32.2.4.01

**Overview**

The test case performs the following steps:

1.  A connection is established and a small amount of data is transferred to validate the functionality between the two radios.

2.  The connection is disconnected.

3.  The remote radio is put into non-discoverable and non-connectable mode.

4.  A connection is established from the remote radio and a small amount of data is transferred.

5.  The connection is disconnected.

6.  A connection is attempted from the local radio and expected to fail.

7.  The remote radio is returned to discoverable and connectable mode.

8.  A final connection is established and a small amount of data transferred.

9.  The final connection is disconnected.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   The radio fails to enter non-connectable mode.

-   A connection is made to the non-connectable radio.

-   The non-connectable radio cannot initiate a connection to another radio.

### hct32.4.1.01 - remote Xfer 10b w/ 1b chunk test case

This test case verifies the transfer of 10 1-byte chunks of data from the remote radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends 10 bytes of data, in one byte chunks.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.02 - complete recv after closesocket test case

This test case verifies that data is still received by the local socket when the remote socket is closed immediately after sending the data. The functionality being tested by this case does not actually affect the radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends 1024 bytes of data, in 500 byte chunks.

4.  Remote host closes its socket immediately after sending data.

5.  Local host verifies that it received all data correctly.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.03 - Xfer 10 bytes w/ 1 byte chunk test case

This test case verifies the transfer of 10 1-byte chunks of data from the local radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 10 bytes of data, in one byte chunks.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.04 - Xfer 30000 bytes w/ 30000 byte chunk test case

This test case verifies the transfer of one 30,000 byte chunk of data from the local radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 30000 bytes of data, in one 30000 byte chunk.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.05 - Xfer 65535 bytes w/ 30000 byte chunk test case

This test case verifies the transfer of 65,535 bytes of data in 30,000 byte chunks from the local radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 65535 bytes of data, in 30000 byte chunks.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.06 - Xfer 0 bytes payload test case

This test case attempts to send a 0 byte packet via winsock. The functionality being tested by this case does not actually affect the radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host attempts to send a zero byte packet.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.07 - full duplex data Xfer test case, 1000 bytes total

This test case verifies the transfer of 1,000 bytes of data in 100 byte chunks from the local radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Both local and remote hosts send 1000 bytes of data, in 100 byte chunks.

4.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.08 - read 1K bytes, 100 byte chunk, 2 parts test case

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 1000 bytes of data, in 100 byte chunks.

4.  Remote host reads data in 2 chunks.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.09 - read 1K bytes, 100 byte chunk, 3 parts

This test case verifies that Windows is able to read socket data in multiple parts.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 1000 bytes of data, in 100 byte chunks

4.  Remote host reads data in 3 chunks.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.10 - read 1K bytes, 100 byte chunk, 5 parts test case

This test case verifies that Windows is able to read socket data in multiple parts.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Local host sends 1000 bytes of data, in 100 byte chunks.

4.  Remote host reads data in 5 chunks.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.12 - async Xfer 10 byte, 1 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 10 bytes, in 1 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail

-   Data transfer fails.

### hct32.4.1.13 - async Xfer 100 byte, 10 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 100 bytes, in 10 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.14 - async Xfer 1K byte, 10 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 1000 bytes, in 10 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.15 - async Xfer 10K byte, 100 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 10000 bytes, in 10 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail

-   Data transfer fails.

### hct32.4.1.16 - async Xfer 30K byte, 10K byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 30000 bytes, in 10000 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.17 - async Xfer 30K byte, 30K byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 30000 bytes, in a 30000 byte chunk

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail

-   Data transfer fails.

### hct32.4.1.18 - async Xfer 65535 byte, 30000 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 65535 bytes, in 30000 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.4.1.19 - async Xfer 65535 byte, 65535 byte chunk test case

This test case verifies that Windows Bluetooth is able to send and receive data of different sizes.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 65535 bytes, in one 65535 byte chunk.

4.  Local host reads data and then sends it back to the remote host.

5.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails

### hct32.4.1.20 - overlapped I/O-completion routine test case

This test case verifies that Windows Bluetooth stack is properly installed. This test does not interact with the Bluetooth radio.

**Overview**

The test case performs the following steps:

1.  Creates, binds, listens, and accepts on a socket on the local radio host.

2.  Remote host attempts a connect.

3.  Remote host sends a total of 1000 bytes, in 1 byte chunks.

4.  Local host reads data and then sends it back to the remote host.

5.  Repeat steps 3 and 4 nine more times.

6.  Both sides close their sockets.

**Results interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Any of the socket calls fail.

-   Data transfer fails.

### hct32.5.1.01 - Subordinate role authenticate to Master role

This test verifies that the remote radio is able to authenticate to the local radio. This test is the same as hct32.3.3.01, except this test does not attempt a connection after the authentication.

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio.

2.  Remote radio initiates authentication to local radio.

3.  Both sides do an inquiry, local radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  The two radios are unpaired.

**Results Interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Authentication attempt fails

-   Disconnect fails.

### hct32.5.2.01 - Master role authenticate to Subordinate role

This test verifies that the local radio is able to authenticate to the remote radio. This test is the same as hct32.3.3.02, except this test does not attempt a connection after the authentication.

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio

2.  Local radio initiates authentication to remote radio.

3.  Both sides do an inquiry, remote radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  The two radios are unpaired.

**Results Interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Authentication attempt fails.

-   Disconnect fails.

### hct32.5.2.02 - Authenticate with multiple connections

This test verifies that the local radio is able to authenticate to the remote radio. Multiple data transfers are then completed on an authenticated link.

**Overview**

The test case performs the following steps:

1.  Unpair any previous pairing with remote radio.

2.  Local radio initiates authentication to remote radio.

3.  Both sides do an inquiry, remote radio first.

4.  Both sides verify that the pairing was completed successfully.

5.  The local radio establishes an authenticated connection to the remote via 4 separate socket connections.

6.  The first socket is immediately closed.

7.  1024 bytes of data is transferred on the second socket in one 1024 byte chunk and then the socket is closed.

8.  At the same time, 2048 bytes of data is transferred on the second socket in 1024 byte chunks and then the socket is closed.

9.  At the same time, 3072 bytes of data is transferred on the second socket in 1024 byte chunks and then the socket is closed.

10. The link is disconnected.

11. The two radios are unpaired

**Results Interpretation**

The test case writes the pass/fail results to a log file

The test case fails if:

-   Authentication attempt fails.

-   Post-authentication data transfers fail.

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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Bluetooth%20-%20Point%20to%20Point%20Tests%20%28Windows%20v6.3%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




