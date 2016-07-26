---
author: joshbax-msft
title: NDISTest 6.5 - WlanPacketFilters
description: NDISTest 6.5 - WlanPacketFilters
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 950a4a98-abef-4cac-ab9d-f2c12feaad06
---

# NDISTest 6.5 - WlanPacketFilters


This automated test verifies that the miniport driver supports the mandatory packet filters.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.Base.MeetPerformanceReq Device.Network.WLAN.Base.SupportFiltering32MulticastAddresses Device.Network.WLAN.Base.SupportPromiscuousAndMulticastPacketFiltering Device.Network.WLAN.CSBBase.MeetPerformanceReq Device.Network.WLAN.CSBBase.SupportFiltering32MulticastAddresses Device.Network.WLAN.CSBBase.SupportPromiscuousAndMulticastPacketFiltering</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~22 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

The following suites are available:

-   PacketFilters\_ext

The PacketFilters\_ext suite consists of the following:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>VerifySupportedPacketFilters</p></td>
<td><ul>
<li><p>Verify the DUT supports all mandatory packet filters.</p></li>
<li><p>Set each filter and destination combination from the table below and test connectivity.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>VerifyHibernateStandby</p></td>
<td><p>Verify the probe requests sent from DUT are broadcast and contain a wild card SSID when OID_DOT11_HIDDEN_NETWORK_ENABLED is set to FALSE.</p></td>
</tr>
</tbody>
</table>

 

The following lists the mandatory packet filters:

1.  NDIS\_PACKET\_TYPE\_DIRECTED

2.  NDIS\_PACKET\_TYPE\_MULTICASTReplaceThisText

3.  NDIS\_PACKET\_TYPE\_ALL\_MULTICAST

4.  NDIS\_PACKET\_TYPE\_BROADCAST

5.  NDIS\_PACKET\_TYPE\_PROMISCUOUS

6.  NDIS\_PACKET\_TYPE\_802\_11\_RAW\_DATA

7.  NDIS\_PACKET\_TYPE\_802\_11\_DIRECTED\_MGMT

8.  NDIS\_PACKET\_TYPE\_802\_11\_BROADCAST\_MGMT

9.  NDIS\_PACKET\_TYPE\_802\_11\_MULTICAST\_MGMT

10. NDIS\_PACKET\_TYPE\_802\_11\_ALL\_MULTICAST\_MGMT

11. NDIS\_PACKET\_TYPE\_802\_11\_PROMISCUOUS\_MGMT

12. NDIS\_PACKET\_TYPE\_802\_11\_RAW\_MGMT

13. NDIS\_PACKET\_TYPE\_802\_11\_DIRECTED\_CTRL

14. NDIS\_PACKET\_TYPE\_802\_11\_BROADCAST\_CTRL

15. NDIS\_PACKET\_TYPE\_802\_11\_PROMISCUOUS\_CTRL

The following lists the packet filters to test:

-   NDIS\_PACKET\_TYPE\_DIRECTED

-   NDIS\_PACKET\_TYPE\_MULTICAST

-   NDIS\_PACKET\_TYPE\_ALL\_MULTICAST

-   NDIS\_PACKET\_TYPE\_BROADCAST

-   NDIS\_PACKET\_TYPE\_PROMISCUOUS

-   NDIS\_PACKET\_TYPE\_802\_11\_RAW\_DATA

The following table lists the packet filter combinations that are tested:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Filter combination</th>
<th>Destination address type</th>
<th>Destination address</th>
<th>Expected range of packets received</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>NullFilter</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>NullFilter</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>NullFilter</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>NullFilter</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>NullFilter</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="even">
<td><p>Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>3-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>34-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Test address</p></td>
<td><p>08-ED-B9-83-FE-55</p></td>
<td><p>45-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Good multicast address</p></td>
<td><p>01-02-03-04-05-06</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Invalid multicast address</p></td>
<td><p>01-02-03-04-05-00</p></td>
<td><p>30-50</p></td>
</tr>
<tr class="odd">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Random address</p></td>
<td><p>00-01-02-04-08-0A</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>Directed | Multicast | AllMulticast | Broadcast | Promiscuous | RawData</p></td>
<td><p>Broadcast address</p></td>
<td><p>FF-FF-FF-FF-FF-FF</p></td>
<td><p>30-50</p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

 

 






