---
author: joshbax-msft
title: NDISTest 6.5 - 2 Machine - QosPriorityFlowControl
description: NDISTest 6.5 - 2 Machine - QosPriorityFlowControl
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b5f36f3f-754e-4ca3-b69a-664ead43f8df
---

# NDISTest 6.5 - 2 Machine - QosPriorityFlowControl


This test validates PFC in accordance with IEEE specification and the disparity between CEE and IEEE PFC configuration specification may result in test failures if this requirement is not met.

Adapter Configuration: DUT - QOS capable adapter SUT - Network adapter capable of working at DUT's line rate.

Test Cases:

-   CheckConnectivity: Ensures that the m\_Dut and m\_Sut can send and receive traffic respectively and the bandwidth monitor is able to see the traffic received at m\_Sut PFC Control Frame is sent with.

-   PriorityEnableVector: Set to zero

-   Time\[all elements\] -: Set to zero

-   TestPfc: Ensures that m\_Dut Responds to PFC Frames by Pausing Traffic Fabricate PFC MAC Control Frame with - - Correct Bit Set on Priority Enable Vector - Max quanta value in Time Vector

-   TestPfcDisabled: Ensures that m\_Dut does Not Respond to PFC Frames when PFC is Disabled Fabricate PFC MAC Control Frame with - - Correct Bit Set on Priority Enable Vector - Max quanta value in Time Vector

-   TestPfcPriorityEnableVectorBitsReset: Ensures that m\_Dut does Not Pause Traffic for PFC Frames with All Priority Enable Vector Bits Reset Fabricate PFC MAC Control Frame with - - All Priority Enable Vector Bits Reset - Max quanta value in Time Vector for Correct Priorities

-   TestPfcTimeVectorZeroQuanta: Ensures that m\_Dut does Not Respond to PFC Frames All Time vector entries Set to Zero Quanta Fabricate PFC MAC Control Frame with - - Correct Priority Enable Vector Bits Set - All Zero quanta values in all Time Vector entries

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.LAN.DCB.DCB</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

If the device under test follows CEE specific DCBX PFC configuration, ensure that DCBX is turned off on the system under test before running this test or replace the system under test with a non-DCB capable adapter.

 

 






