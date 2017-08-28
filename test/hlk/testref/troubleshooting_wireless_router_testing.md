---
title: Troubleshooting Wireless Router Testing
Description: Troubleshooting Wireless Router Testing
ms.assetid: d775cd34-7653-4864-b571-823376accb30
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Troubleshooting Wireless Router Testing

To troubleshoot issues that occur with Device.Network tests, follow these steps:

-   Review the <xref rid="p_hlk.troubleshooting_windows_hlk">Troubleshooting Windows HLK</b> topic.

-   Review the <xref hlink="http://go.microsoft.com/fwlink/?LinkID=236110">Windows HLK release notes</b> for current test issues.

-   For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

Use the following steps to test the ability of a computer to send higher bit rates over an Ethernet connection:

1.  Setup the hardware as shown below with only Ethernet connection.

2.  Assign the IP address to Machine **S** (for example: 10.0.0.2).

3.  Assign the IP address to Machine C (for example: 10.0.0.3).

4.  Open a command prompt and run Stats tool on Machine **C** with following parameters:

    **stats.exe –z DISCARD –i 20 –x 50 –y 30 –r 20000000 –c 3600 –l –h -u**

5.  Open the MS command prompt and run Stats tool at the Machine S with following parameters:

    <mark type="bullet_intro">stats.exe –d 10.0.0.3 –r 20000000 –c 4200 –l –h -u</b>

6.  Observe the output of steps 4 and Step 5.

![Ethernet Troubleshooting](../images/HCK_Win8_Wireless_Router_Troubleshooting.png)

If the output of either step 4 or step 5 shows any failures then your machines cannot make bit rates using wireless adapters.

To manually add a wireless profile, use the following command:

**netsh wlan add profile filename=&lt;xmlfilename&gt; i=\***

For example, to add the 802\_11n\_wpa-psk.xml wireless profile:

1.  Click **Start**, click **Run**, and enter **cmd.exe**.

2.  Type **netsh wlan add profile filename=802\_11n\_wpa-psk.xml i=\***.

3.  Click **OK**.

>[!NOTE]
Make sure that Wireless Profile XML file exists in the current directory or specify the full path.


<seealso> <xref rid="p_hlk_test.device_network_tests">Device.Network Testing</b> </seealso>



