---
author: joshbax-msft
title: Troubleshooting WiFi Direct Data Performance Tests
description: Troubleshooting WiFi Direct Data Performance Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 33b86620-9b01-4e5b-b570-7a82f8f4f741
---

# Troubleshooting WiFi Direct Data Performance Tests


This topic describes some common troubleshooting tips for Windows Hardware Certification Kit (Windows HCK) Wi-Fi Direct Data testing.

**Note**  
All binaries discussed in this article (including the IHV tool and NTtTcp) exist in the **WLANLogo** directory under the Windows system root.

 

If you encounter Wi-Fi Direct Pairing issues, please use IHV test tool to establish Wi-Fi Direct Pairing.To initiate Wi-Fi Direct Pairing with the IHV tool, run the following commands (note that all (including the IHV tool and ntttcp) exist in the **WLANLogo** directory under the Windows system root).

**Important**  
The **NTtTcp** version that ships with the Windows HCK is different from the publicly available version. This version supports new commands that are not available in the public version: make sure that you use the NTtTcp tool that ships with the Windows HCK.

 

-   On the system under test (SUT), run the following commands:

    ``` syntax
    IHV.WFDTestTool.exe
    >pda
    >b 1
    >a 1 12345670
    ```

-   On the device under test (DUT), run the following commands:

    ``` syntax
    IHV.WFDTestTool.exe
    >pda
    >d
    >p {DeviceAddressOfSut} 12345670
    ```

If pairing fails, uninstall and reinstall the Wi-Fi Driver by using Windows Device Manager and rerun the commands. If this fixes the issue, the problem is most likely in the driver. If pairing sometimes fails and sometimes passes, there is probably a reliability issue with the driver. If pairing fails or succeeds all the time, you should collect WAN **netsh** traces when you reproduce the pairing issue by using the IHV tool.

**To collect traces**

1.  Type **netsh trace start wlan\_dbg globallevel=0xff capture=yes** at a command line.

2.  Reproduce the failure.

3.  Type **netsh trace stop** at a command line.

4.  Copy the output ETL file (usually located at: **%systemdrive%:\\Users\\WFDAdmin\\AppData\\Local\\Temp\\NetTraces.etl**) and send it to us. For more information about Windows Hardware Certification Kit (Windows HCK) Support, see [Windows HCK Support](windows-hck-support.md).

**Note**  
If you contact Windows HCK Support, it is always useful to include WLAN **netsh** traces together with an explanation of the issue and the conclusion to which you have arrived. Windows HCK traces are available in the working directory where Windows HCK tests logs exist. We also recommend that you provide driver logs for each issue and a network capture to allow for a full understanding of what happened during the test, on the driver, and on the WLAN stack. In certain cases, it can be difficult to diagnose an issue even with all of this information; if this occurs, additional troubleshooting instructions will be provided to you.

 

The following instructions should be followed if a failure reports any of the following errors:

-   **Wi-Fi Direct link average throughput didn't not meet the minimum throughput requirements of 108.3 mbps. Average Throughput: 103.178 mbps.**

-   **Wi-Fi Direct link maximum consecutive dropped packets didn't not meet the requirement of 3. MaxConsecutiveDroppedPackets: 9**

-   **Wi-Fi Direct link maximum Jitter didn't not meet the requirement of 30 ms. Percentile Jitter: 38.513 ms**

Use the IHV test tool to establish a Wi-Fi Direct connection and then execute **NTtTcp** (or other performance tool) by itself over the Wi-Fi Direct link to determine whether the measurements match those that are causing the test to fail. Start the task manager and select the Wi-Fi Direct interface under the performance tab. The task manager will graphically show instantaneous throughput on the WLAN interface.

To troubleshoot STA connection performance measurements, you must first make sure that the WHCK 802.11ac AP local network is configured in the same subnet as the WAN IP addresses of the other WHCK access points and the back channel on the Access Point (AP) machine. Connect the DUT to the 802.11ac AP and configure a valid IP address in the same subnet.

To run NTtTcp for throughput over the STA link, run the following commands (this example uses 192.168.2.137 for an IP address):

-   On the DUT, run the following command:

    ``` syntax
    NTttcp.exe -r -l 65536 -n 20000 -p 5001 -a 16 -t 60 -wu 5 -cd 5 -lm -icp 4 -xml StaticRouteClientPerf.xml -m 1,0,192.168.2.137
    ```

-   On the AP, run the following command:

    ``` syntax
    NTttcp.exe -s -l 65536 -n 20000 -p 5001 -a 16 -t 60 -wu 5 -cd 5 -lm -icp 4 -qos 4 -xml StaticRouteClientPerf.xml -m 1,0,192.168.2.137
    ```

To run NTtTcp for throughput over the Wi-Fi Direct link, run the following commands (this example uses 192.168.2.137 for an IP address):

-   On the DUT, run the following command:

    ``` syntax
    NTttcp.exe -r -l 65536 -n 20000 -p 50011 -a 6 -t 30 -wu 5 -cd 5 -icp 4 -xml Device_1WfdGOThroughput.xml -m 1,0,192.168.173.1
    ```

-   On the SUT, run the following command:

    ``` syntax
    NTttcp.exe -s -l 65536 -n 20000 -p 50011 -a 6 -t 30 -wu 5 -cd 5 -icp 4 –qos 4 -xml Device_1WfdGOThroughput.xml -m 1,0,192.168.173.1
    ```

View the **Device\_1WfdGOThroughput.xml** XML file for the throughput metric node in mbps.

To execute **NTtTcp** for Jitter/PacketLoss, run the following commands:

-   On the DUT, run the following command:

    ``` syntax
    NTttcp.exe -r -l 1000 -n 20000 -p 50011 -u -t 30 -wu 5 -cd 5 -icp 1 -jm Device_2WfdGOPerformance.csv -xml Device_2WfdGOPerformance.xml -m 1,0,192.168.173.1
    ```

-   On the SUT, run the following command:

    ``` syntax
    NTttcp.exe -s -l 1000 -n 20000 -p 50011 -u -t 30 -wu 5 -cd 5 -icp 1 -qos 4 -jm -ps 30 –xml Device_1WfdClientPerformance.xml -m 1,0,192.168.173.1
    ```

For throughput data, look at the output xml file. For Jitter and packet loss, look at the CSV file to analyze the behavior of the packets and identify if packets were lost or even if the packet spacing between two packets is too big. (Although it is probably not necessary, you can write a tool to parse the CSV file and calculate the jitter by using the formulas contained in this article, to verify the values that are obtained during the tests.)

The steps listed above are also useful to troubleshoot issues that arise when **NTtTcp** fails to connect. **NttTcp** time-out errors occur when the data sender fails to connect to the data receiver. After the test instantiates **NTtTcp** to collect performance measurements, the test has no control over **NTtTcp** inner processing. Therefore, Microsoft has implemented code to stop the **NTtTcp** process if it does not return with a result after a given period of time. If you encounter this problem, perform the following troubleshooting steps:

1.  Verify that the Windows HCK topology and AP configurations are correct and that relevant IP addresses are valid and in the same subnet.

2.  Disable firewall on all devices and retry the test. To disable the firewall, run the following command at a command prompt that has administrative privileges:

    ``` syntax
    netsh advfirewall set allprofiles state off
    ```

3.  If you cannot correct the problem by using these steps, contact [Windows HCK Support](windows-hck-support.md).

## Related topics


[WiFi Direct Data Performance Tests](wifi-direct-data-performance-tests.md)

[Troubleshooting Wireless LAN (802.11) Tests](troubleshooting-wireless-lan--80211--tests.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 







