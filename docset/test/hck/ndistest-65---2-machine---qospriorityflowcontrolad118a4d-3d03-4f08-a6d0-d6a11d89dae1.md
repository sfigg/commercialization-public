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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%202%20Machine%20-%20QosPriorityFlowControl%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




