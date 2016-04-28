---
author: joshbax-msft
title: NDISTest 6.5 - 1 Machine - QosCapabilities
description: NDISTest 6.5 - 1 Machine - QosCapabilities
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 08778157-30a2-456f-954e-74f323ac7279
---

# NDISTest 6.5 - 1 Machine - QosCapabilities


This test is automated.

**Note**  
Adapter Configuration: DUT - QoS capable adapter

Test Cases:

-   Capability Test

    -   Ensure that QoS keyword is advertised and OID\_QOS\_HARDWARE\_CAPABILITIES returns valid values.

-   Keyword (Disable-Enable) Test

    -   QoS is enabled when the QoS keyword is enabled.

    -   QoS is disabled when the QoS keyword is disabled.

    -   QoS is disabled when the QoS keyword is set to an invalid enum value.

    -   QoS is disabled when the QoS keyword is missing.

<!-- -->

-   Checks enforced (in each of the following cases, assume QoS capable adapter):

    -   NUM\_TRAFFIC\_CLASSES\_MIN\_VALUE = 3 through 8

        -   No error is flagged if this value is greater than 8

    -   NUM\_ETS\_CAPABLE\_TRAFFIC\_CLASSES = 2 or more, no higher bound check

    -   NUM\_PFC\_ENABLED\_TRAFFIC\_CLASSES = 1 or more, no higher bound check

    -   If \*QOS keyword is absent, QoS is assumed as disabled.

    -   If \*QOS keyword has invalid setting value, QoS is assumed as disabled.

    -   When QoS is disabled, miniport driver must -

        -   Return NDIS\_STATUS\_SUCCESS for OID\_QOS\_HARDWARE\_CAPABILITIES and valid capability data in NDIS\_QOS\_CAPABILITIES structure

        -   Return NDIS\_STATUS\_SUCCESS for OID\_QOS\_CURRENT\_CAPABILITIES and ZEROED data in NDIS\_QOS\_CAPABILITIES structure

    -   NDIS\_QOS\_CAPABILITIES\_STRICT\_TSA\_SUPPORTED is advertised

    -   Only known capability flags are advertised

        -   NDIS\_QOS\_CAPABILITIES\_STRICT\_TSA\_SUPPORTED

        -   NDIS\_QOS\_CAPABILITIES\_MACSEC\_BYPASS\_SUPPORTED

        -   NDIS\_QOS\_CAPABILITIES\_CEE\_DCBX\_SUPPORTED

        -   NDIS\_QOS\_CAPABILITIES\_IEEE\_DCBX\_SUPPORTED

 

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


Before you run the test, complete the test setup as described in the test requirements: [LAN Testing Prerequisites](lan-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting LAN Testing](troubleshooting-lan-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%201%20Machine%20-%20QosCapabilities%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




