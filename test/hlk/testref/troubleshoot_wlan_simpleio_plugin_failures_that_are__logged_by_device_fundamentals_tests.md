---
title: Troubleshoot WLAN SimpleIO plugin failures that are  logged by Device Fundamentals tests
Description: Troubleshoot WLAN SimpleIO plugin failures that are  logged by Device Fundamentals tests
ms.assetid: e81a7a92-88c5-4464-9cef-c1d1acead9c5
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshoot WLAN SimpleIO plugin failures that are  logged by Device Fundamentals tests

Device Fundamentals tests in Windows Hardware Lab Kit (Windows HLK) and <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296487">Windows Drivers Kit (WDK)</b> use <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296367">Windows Device Testing Framework (WDTF)</b> <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296486">SimpleIO plugins</b> to test device-specific IO when they run. If a WDTF plugin exists for the type of device being tested, then the tests use the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299599">IWDTFSimpleIOStressAction2 interface</b> to test I/O on the device.

This article contains information that can help with troubleshooting failures that are logged by the WDTF WLAN SimpleIO plug-in when it is used to test IO on wireless network adapters during device and system testing in WDK and Windows HLK.

## Configuration requirements

The WLAN SimpleIO plug-in requires a basic WPA2-PSK wireless network that uses AES that it can connect to when it runs. The SSID and password of the wireless network must be passed in as parameters to the tests that require them. These parameters are named as follows in the tests that require them: **Wpa2PskAesSsid** and **Wpa2PskPassword**. The default values of the two parameters are **kitstestssid** and **password**, respectively.

## Test coverage overview

The WLAN SimpleIO plug-in performs the following tests on the wireless adapter under test:

1.  Finds the Wlan interface that is under test by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296597">WlanEnumInterfaces function</b>.

2.  Deletes the test profile that is named WDTFWlanTestProfile (if it exists) by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296598">WlanGetProfile() function</b> and the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296599">WlanDeleteProfile() function</b>.

3.  Creates a new test profile named **WDTFWlanTestProfile** by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296600">WlanSetProfile() function</b> and by using a profile XML. The profile uses the SSID and password of the wireless network as input parameters to the test.

4.  Connects to the newly created profile by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296601">WlanConnect() function</b>. Expect to receive a *connect complete* notification in 30 seconds.

5.  Checks for connectivity by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296604">INetworkListManager::GetConnectivity method</b> of the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296603">Network List Manager</b> API, and looks for <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296605">NLM\_CONNECTIVITY enumeration</b> NLM\_CONNECTIVITY\_IPV4\_INTERNET or NLM\_CONNECTIVITY\_IPV4\_LOCALNETWORK flags to be set. The plug-in calls the **GetConnectivity()** function several times (if required) as it waits for a connection, before it eventually times out and reports an error.

6.  Calls the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296606">GetAdaptersInfo() function</b> to determine the gateway address that corresponds to the test adapter.

7.  Opens an ICMP handle by calling <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296607">IcmpCreateFile() function</b>, and calls an internal function in a loop for several minutes that pings the IPv4 gateway address (by using the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296608">IcmpSendEcho() function</b> with one-second timeout) 500 times each time it is called, and logs an error message if at any time it is called, the failure rate is &gt;10%.

8.  Disconnects from the network by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296602">WlanDisconnect() function</b>.

9.  Deletes the test profile by calling the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296598">WlanGetProfile() function</b> and the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296599">WlanDeleteProfile() function</b>.

## Troubleshooting guidance

## Identify failures that are logged by the WLAN SimpleIO plugin

The error messages logged by the plug-in will contain the text “WirelessPlugin:”. The text that immediately follows “WirelessPlugin:” provides more context about the errors. For example:

<example>
`WDTF_SIMPLE_IO            : ERROR :  - Open(802.11n USB Wireless LAN Card USB\VID_XXXX&PID_XXXX\5&35DEE9D9&0&5 ) Failed : WirelessPlugin: ConnectToTestProfile() - Failed to connect to test profile; Reason string: "The specific network is not available." HRESULT=0x80004005`
</example>
## General troubleshooting guidance

We recommend that you follow troubleshooting steps in the listed order:

1.  Review the test documentation to understand the test scenario.

2.  Review <xref local="ov">Test coverage overview</b> to understand how the plugin tests a device or driver.

3.  Carefully review log entries that precede the error message, and the error message itself, to understand the test scenario and the reason for the failure.

4.  Troubleshoot the router setup. Make sure that you can manually connect to the router, that you can ping the gateway address after making the connection, and that the router is in range to the test computer. If the router fails any of these tests, reset the router.

5.  Enable tracing in the test driver and review driver traces from the time when the test logged the error(s).

6.  Enable **WLAN OS tracing** and review traces that are logged from the time when the logged the error(s). For more information about WLAN OS tracing, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296757">Tools for Troubleshooting using Network Tracing in Windows 7</b>.

In some cases, it is helpful to run the failing test manually from a command line (without using Windows HLK or WDK), and then reviewing the plug-in’s WPP traces. See <xref local="cmd">How to run tests from the command line</b> and <xref local="view">View WLAN plug-in traces</b>.

## How to run tests from the command line

We recommend that you use a Windows HLK Client to run tests manually because Windows HLK clients have WDTF installed on them. Follow the steps in **How to run the Windows HLK device fundamentals tests on the command line**. Enable Driver Verifier on Ndis.sys and the test Wi-Fi driver.

## View WLAN plug-in traces

The WLAN plugin uses WPP tracing to trace information and errors that you might find useful when you investigate failures that are logged by the WLAN plug-in. See <xref rid="p_hlk_test.collect_and_view_windows_device_testing_framework__wdtf__traces">Collect and View Windows Device Testing Framework (WDTF) Traces</b> for instructions on how to collect and view WDTF traces.

>[!NOTE]
**WDTF\_Action\_SimpleIO\_Wireless** is the name of the provider that you can use for filtering.


## Sample trace output

<example>
`                               -->this(047BB318):?FinalConstruct@CWirelessImpl@@QEAAJXZ(void)                                <--this(047BB318):?FinalConstruct@CWirelessImpl@@QEAAJXZ(): S_OK                                o->this(047BB318):?SetTarget@CWirelessImpl@@UEAAJPEAUITarget@@UtagVARIANT@@@Z(pMainTarget = 0476BBAC, MoreTargets = 8)                                     INFO:Calling WlanOpenHandle() function                                     INFO:Calling WlanEnumInterfaces() function to find wlan interface under test: N300 USB Network Adapter" ({4138C082-E821-433C-ABB8-6FF864BF80B5})"                                     INFO:Found 1 wlan interfaces in total                                     INFO:Processing wlan interface: N300 USB Network Adapter""                                     INFO:Found the wlan interface under test!                                     INFO:Interface information: Interface Guid: {4138C082-E821-433C-ABB8-6FF864BF80B5}; Interface State: disconnected""                                o<-this(047BB318):?SetTarget@CWirelessImpl@@UEAAJPEAUITarget@@UtagVARIANT@@@Z(): S_OK            o->this(047BB318):?Open@CWirelessImpl@@UEAAJXZ(void)                 INFO:Calling WlanOpenHandle() function                 -->this(047BB318):?FindAndDeleteTestProfile@CWirelessImpl@@AEAAJXZ(void)                      INFO:Test profile WDTFWlanTestProfile" doesn't exist"                 o<-this(047BB318):?FindAndDeleteTestProfile@CWirelessImpl@@AEAAJXZ(): S_OK                 -->this(047BB318):?CreateTestProfile@CWirelessImpl@@AEAAJXZ(void)                      INFO:Calling WlanSetProfile() with a profile XML to create a profile with name: WDTFWlanTestProfile"                 o<-this(047BB318):?CreateTestProfile@CWirelessImpl@@AEAAJXZ(): S_OK                 -->this(047BB318):?ConnectToTestProfile@CWirelessImpl@@AEAAJXZ(void)                      INFO:Calling WlanRegisterNotification() to get notified of connect complete event                      INFO:Calling WlanConnect() to connect to test profile with name: WDTFWlanTestProfile""                      INFO:Waiting to receive connect complete notification                      INFO:Received connect complete notification: 0                      INFO:Calling WlanRegisterNotification() to unregister from notifications                 o<-this(047BB318):?ConnectToTestProfile@CWirelessImpl@@AEAAJXZ(): S_OK                 INFO:Calling an internal helper function to check for the connectivity state of the network connection                 -->this(047BB318):?CheckForConnectivity@CWirelessImpl@@AEAAJPEA_N@Z(void)                      INFO:Creating an instance of the NLM COM object                      INFO:Calling NLM GetNetworkConnections() to get a list of network connections                      INFO:Iterating through the network connections found looking for the connection corresponding to the test adapter ({4138C082-E821-433C-ABB8-6FF864BF80B5})                      INFO:Calling NLM GetAdapterId() on a network connection found                      INFO:Calling NLM GetAdapterId() on a network connection found                      INFO:Found a network connection using the test adapter!                      INFO:Calling NLM GetConectivity() on a network connection using the test adapter                      INFO:NLM GetConectivity() reported the following connectivity state: 66                      INFO:NLM GetConectivity() reported IPv4 connectivity!                 o<-this(047BB318):?CheckForConnectivity@CWirelessImpl@@AEAAJPEA_N@Z(): S_OK                 -->this(047BB318):?RefreshIPInfo@CWirelessImpl@@AEAAJXZ(void)                      INFO:Calling GetAdaptersInfo() function to find IP address info for adapter {4138C082-E821-433C-ABB8-6FF864BF80B5}""                      INFO:Found the adapter we are looking for!                      INFO:Adapter Info: Index: 4, IPv4 Address: 192.168.1.147, Gateway Address: 192.168.1.1                 o<-this(047BB318):?RefreshIPInfo@CWirelessImpl@@AEAAJXZ(): S_OK                 INFO:Calling IcmpCreateFile() function                 INFO:Pinging gateway (192.168.1.1) 10 times                 -->this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(numPings: 10)                      INFO:Calling IcmpSendEcho() to ping gateway (192.168.1.1) 10 times with a random input buffer of size 255 and a timeout value of 1000 milliseconds                 o<-this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(): S_OK            o<-this(047BB318):?Open@CWirelessImpl@@UEAAJXZ(): S_OK            o->this(047BB318):?RunIO@CWirelessImpl@@UEAAJXZ(void)                 -->this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(numPings: 500)                      INFO:Calling IcmpSendEcho() to ping gateway (192.168.1.1) 500 times with a random input buffer of size 255 and a timeout value of 1000 milliseconds                 o<-this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(): S_OK            o<-this(047BB318):?RunIO@CWirelessImpl@@UEAAJXZ(): S_OK            o->this(047BB318):?RunIO@CWirelessImpl@@UEAAJXZ(void)                 -->this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(numPings: 500)                      INFO:Calling IcmpSendEcho() to ping gateway (192.168.1.1) 500 times with a random input buffer of size 255 and a timeout value of 1000 milliseconds                 o<-this(047BB318):?TestPingGateway@CWirelessImpl@@AEAAJHH@Z(): S_OK            o<-this(047BB318):?RunIO@CWirelessImpl@@UEAAJXZ(): S_OK ... ... ...            o->this(047BB318):?Close@CWirelessImpl@@UEAAJXZ(void)                 -->this(047BB318):?DisconnectFromTestProfile@CWirelessImpl@@AEAAJXZ(void)                      INFO:Calling WlanDisconnect() to disconnect                 o<-this(047BB318):?DisconnectFromTestProfile@CWirelessImpl@@AEAAJXZ(): S_OK                 -->this(047BB318):?FindAndDeleteTestProfile@CWirelessImpl@@AEAAJXZ(void)                      INFO:Calling WlanDeleteProfile() to delete the previously created test profile with name WDTFWlanTestProfile""                 o<-this(047BB318):?FindAndDeleteTestProfile@CWirelessImpl@@AEAAJXZ(): S_OK            o<-this(047BB318):?Close@CWirelessImpl@@UEAAJXZ(): S_OK`
</example>
<seealso> <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> <xref rid="p_hlk.windows_hlk_support">Windows HLK Support</b> </seealso>



