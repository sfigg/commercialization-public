---
author: joshbax-msft
title: WiFi Direct Scenario Tests - OIDs, Statistics and Additional IEs
description: WiFi Direct Scenario Tests - OIDs, Statistics and Additional IEs
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4ff1c170-28ad-4a59-8144-12026bd81175
---

# WiFi Direct Scenario Tests - OIDs, Statistics and Additional IEs


The test validates that the 802.11 driver supports the following OIDs:

-   [OID\_DOT11\_SUPPORTED\_PHY\_TYPES](http://go.microsoft.com/fwlink/p/?linkid=296717)

-   [OID\_GEN\_PORT\_STATE](http://go.microsoft.com/fwlink/p/?linkid=296718)

-   [OID\_DOT11\_STATISTICS](http://go.microsoft.com/fwlink/p/?linkid=296719)

-   [OID\_DOT11\_MEDIA\_STREAMING\_ENABLED](http://go.microsoft.com/fwlink/p/?linkid=296720)

Implementation of these OIDs is required. The latter two are especially relevant for several Wi-Fi Direct Scenarios. The tests validate the behavior and data of these OIDs over the Wi-Fi Direct interface.

[OID\_DOT11\_STATISTICS](http://go.microsoft.com/fwlink/p/?linkid=296719) contains an array of the [DOT11\_PHY\_FRAME\_STATISTICS structure](http://go.microsoft.com/fwlink/p/?linkid=296721). The test verifies that only one corresponds to the active PhyType and report non-zero values. It also verifies that the counters inside this structure do not increment significantly when there is no traffic, and that when there is traffic the counters correspond to the traffic that was sent.

After media streaming mode is set to ON on the Wi-Fi Direct interface, the tests verify that the value of [OID\_DOT11\_MEDIA\_STREAMING\_ENABLED](http://go.microsoft.com/fwlink/p/?linkid=296720) is TRUE. The test also validates that when media streaming mode is turned OFF, value of this OID is queried as FALSE.

This test suite also confirms that the driver does not drop new *Information* elements that new Windows® APIs use.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.CSBWiFiDirect.SupportAtLeast4Clients Device.Network.WLAN.WiFiDirect.SupportAtLeast2WiFiDirectPortsConcurrently Device.Network.WLAN.WiFiDirect.SupportAtLeast4Clients</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
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

This test suite requires three computers (DUT, SUT, AP) that have Wi-Fi Direct capable WLAN network interface adapters. It also requires an 802.11ac router, two configurable Access Points and two gigabit Ethernet switches.

The following software is required for testing a Wi-Fi Direct capable device:

-   The Driver of the Wi-Fi Direct capable device.

-   The latest Windows HCK filters and updates.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md).

If you encounter Wi-Fi Direct Pairing issues, please use the Independent Hardrware Vendor (IHV) test tool to establish Wi-Fi Direct Pairing. To initiate Wi-Fi Direct Pairing by using the IHV tool, run the following commands (note that all \[including the IHV tool and ntttcp\] exist in the **WLANLogo** directory under the Windows system root):

-   On the support under test (SUT), run the following commands:

    ``` syntax
    IHV.WFDTestTool.exe>pda>b 1>a 1 12345670
    ```

-   On the device under test (DUT), run the following commands:

    ``` syntax
    IHV.WFDTestTool.exe>pda>d>p {DeviceAddressOfSut} 12345670
    ```

If pairing fails, uninstall and reinstall the Wi-Fi Driver by using Windows Device Manager and rerun the commands. If this fixes the issue, the problem is most likely in the driver. If pairing sometimes fails and sometimes passes, there is probably a reliability issue with the driver. If pairing fails or succeeds all the time, you should collect WAN **netsh** traces when you reproduce the pairing issue by using the IHV tool.

**To collect traces**

1.  Type **netsh trace start wlan\_dbg globallevel=0xff capture=yes** at a command line.

2.  Reproduce the failure.

3.  Type **netsh trace stop** at a command line.

4.  Copy the output ETL file (usually located at: **%systemdrive%:\\Users\\WFDAdmin\\AppData\\Local\\Temp\\NetTraces.etl**) and send it to us. For more information about Windows Hardware Certification Kit (Windows HCK) Support, see [Windows HCK Support](windows-hck-support.md).

The following table provides troubleshooting instructions for specific errors.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description and troubleshooting steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Device doesn't support: OID_*</p></td>
<td><p>Driver reports that it does not support a required OID. This is probably a driver issue. Collect driver logs and investigate.</p></td>
</tr>
<tr class="even">
<td><p>Media Streaming Mode is not enabled over the WiFi Direct Link after setting OID_802_11_MEDIA_STREAM_MODE_ENABLE media streaming mode to true.</p></td>
<td><p>Driver reports OID_DOT11_MEDIA_STREAMING_ENABLED as FALSE after setting media streaming mode to TRUE over the Wi-Fi Direct Interface. This is probably a driver issue. Collect driver logs and investigate.</p></td>
</tr>
<tr class="odd">
<td><p>Media Streaming Mode is enabled over the WiFi Direct Link after setting OID_802_11_MEDIA_STREAM_MODE media streaming mode to false.</p></td>
<td><p>Driver reports OID_DOT11_MEDIA_STREAMING_ENABLED as TRUE after setting media streaming mode to FALSE over the Wi-Fi Direct Interface. This is probably a driver issue. Collect driver logs and investigate.</p></td>
</tr>
<tr class="even">
<td><p>Value {<em>ValueName</em>} increased significantly even though no traffic was sent. {OriginalValueName}: {OriginalValue} {ValueName}: {Value}</p></td>
<td><p>Driver OID_DOT11_STATISTICS reports that values increased for no apparent reason, when no traffic was sent through the Wi-Fi Direct Link. This is probably a driver issue. Collect driver logs and investigate.</p></td>
</tr>
<tr class="odd">
<td><p>Value {<em>ValueName</em>} did not increase after traffic was send. {OriginalValueName}: {OriginalValue} {ValueName}: {Value}</p></td>
<td><p>Driver OID_DOT11_STATISTICS reports that values remained constant after sending traffic that should have cause the counter to increase. This is probably a driver issue. Collect driver logs and investigate.</p></td>
</tr>
<tr class="even">
<td><p>Value {<em>ValueName</em>} is not in a reasonable range according to the traffic sent. LowerEndValue: {LowerEndValue} HigherEndValue: {HihgerEndValue} {ValueName}: {Value}</p></td>
<td><p>Driver OID_DOT11_STATISTICS reports values that do not correspond to the traffic that ws sent through the Wi-Fi Direct interface. The value of the statistics that is reported is not within a15% error of what is logically expected based on the traffic. If this happens, depending on how close the value that is reported is to the lower end and higher end limits, additional information might be needed to diagnose the issue.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
If you contact Windows HCK Support, it is always useful to include WLAN **netsh** traces together with an explanation of the issue and the conclusion to which you have arrived. Windows HCK traces are available in the working directory where Windows HCK tests logs exist when tracing is enabled. We also recommend that you provide driver logs for each issue and a network capture to allow for a full understanding of what happened during the test, on the driver, and on the WLAN stack. In certain cases, it can be difficult to diagnose an issue even with all of this information; if this occurs, additional troubleshooting instructions will be provided to you.

 

## More information


### Command syntax

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
<td><p><strong>EnableTracing</strong></p></td>
<td><p>Determines whether to enable tracing. We recommend that you set this value to Yes for debugging purposes only.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[WiFi Direct Scenario Tests](wifi-direct-scenario-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WiFi%20Direct%20Scenario%20Tests%20-%20OIDs,%20Statistics%20and%20Additional%20IEs%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





