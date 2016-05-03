---
author: joshbax-msft
title: Troubleshooting Wireless LAN (802.11) Tests
description: Troubleshooting Wireless LAN (802.11) Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 64b61e60-235e-4a71-aba9-4d9ade8e1a4c
---

# Troubleshooting Wireless LAN (802.11) Tests


This topic describes some common troubleshooting tips for WLAN testing. To begin:

1.  Review [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md).

2.  Review the [Windows HCK release notes](http://go.microsoft.com/fwlink/p/?linkid=236110) for current test issues.

3.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

## Changes that you made to devices on HCK clients machines are not reflected in HCK Studio. For example, the machine is expected to be in the Ready state but it is not.


1.  Open a Command Prompt window on the client machine, and then run **net stop wttsvc**.

2.  Run **net start wttsvc**. This command will update the C:\\wtt\\JobsWorkingDir\\AssetCfg\\Log\\ directory.

3.  Restart the HCK Studio. You might have to wait several minutes for the HCK controller to poll the client machine for changes in its device list.

## Machines have not been discovered for the machine pool.


1.  Open the **Job Monitor** window in HCK Manager.

2.  Select the **Show Query Builder** button at the top of the screen.

3.  Click the **Machine Query** tab.

4.  Define search parameters for the machines that you are looking for. Typically, you can set a single rule such as "DataStore equals 'Controller Name'".

5.  Right-click the rule that you just defined, and then click **Execute**. An extensive list of machines should populate the **Machines** list below the query fields that you defined.

6.  Drag any machines in the **Machines** list into new machine pools that you created.

## Machines do not seem to run jobs that are scheduled for them.


1.  Check the names of the NICs on the DUT, SUT and AP machines.  They must be MessageDevice for the Ethernet and SupportDevice0 and SupportDevice1 for the WLAN NICs. If not rename them manually.

2.  Make sure that for each machine in the pool, status is **Ready**.

    1.  Open the **Job Monitor** window in HCK Manager.

    2.  In the **Machine Pool** tab, select the machine pool that you expect to be running jobs.

    3.  If a machine's status is not **Ready**, right-click the machine, point to **Change Status**, and then click **Reset**.

    4.  After a few minutes, refresh the screen and the status will change to **Ready**.

3.  Schedule and start the jobs again.

## Problems with installing the Test SoftAP driver on the topology: Device Manager reports code 52


Do not install the x64 Test SoftAP driver before installing the HCK client. When the HCK client is installed, the Root Certificate is installed. Because the Test SoftAP driver signing depends on installation of the Root Certificate, the device manager reports device code 52.

## Configuring NDISTest for stand-alone execution


Installing NDISTest separate from HCK Studio enables you to execute individual tests. A DUT, SUT, and Test SoftAP need to be configured to enable stand-alone execution.

**Note**  
All test machines must use the same processor architecture.

 

**Note**  
To troubleshoot the NDISTest, try attaching a debugger to the test machine.

 

## Configuring a Support Device Under Test (SUT)


1.  Copy all NDISTest binaries and sub directories from the following HCK controller:

    \\\\&lt;ControllerName&gt;\\tests\\&lt;architecture&gt;\\nttest\\nettest\\ndis\\ndistest.net\\&lt;ControllerName&gt; is the name of the HCK controller computer and &lt;architecture&gt; is either **x86** (for x86-based processors) or **amd64** (for x64-based processors).

2.  Launch NDISTest.exe from the install directory. When the main form opens, select **Server** from the **File** menu to launch the server form.

3.  Select the message device from the **Message Device** list. This device must be IP-enabled and on the same subnet as the client message device that will be set up later.

4.  Select SUT device(s) from **Support Devices**. The support device selected on this server from will be visible to the client after the server is started.

5.  Select the "server" job from **Jobs**. This is the server side test that will be launched after you click the start button.

After all the options have been selected, click **Start** to start the server.

## Configuring a Test Software Access Point (Test SoftAP)


1.  Copy all NDISTest binaries and sub directories from the following HCK controller:

    \\\\&lt;ControllerName&gt;\\tests\\&lt;architecture&gt;\\nttest\\nettest\\ndis\\ndistest.net\\

    &lt;ControllerName&gt; is the name of the HCK controller computer and &lt;architecture&gt; is either **x86** (for x86-based processors) or **amd64** (for x64-based processors).

2.  Install SoftAP driver for both of the Atheros WLAN devices on the Test SoftAP. You can install this driver from Device Manager, which you can open by running **devmgmt.msc** from a command prompt. Complete the following step:

    -   In Device Manager, install the driver for SoftAP stations from \\\\&lt;ControllerName&gt;\\Tests\\&lt;architecture&gt;\\nttest\\nettest\\ndis\\NDISTest.net\\SoftAPMiniport\\

        &lt;ControllerName&gt; is the name of the HCK controller computer and &lt;architecture&gt; is either x86 (for x86-based processors) or amd64 (for x64-based processors), depending on the processor architecture of the HCK client machine that have the SoftAP devices.

3.  Launch NDISTest.exe from the install directory. When the main form opens, select **Server** from the **File** menu to launch the server form.

4.  Select the message device from the **Message Device** list. This device must be IP-enabled device and on the same subnet as the client message device that will be set up later.

5.  Select the AP device(s) from **AP Devices**. AP devices selected on this server will be visible to the client after the server is started.

6.  Select the "server" job from **Jobs**. This is the server side test that will be launched after you click the start button.

After all the options have been selected, click **Start** to start the server.

## Configuring the Device Under Test (DUT)


1.  Copy all NDISTest binaries and sub directories from the following HCK controller:

    \\\\&lt;ControllerName&gt;\\tests\\&lt;architecture&gt;\\nttest\\nettest\\ndis\\ndistest.net\\

    &lt;ControllerName&gt; is the name of the HCK controller computer and &lt;architecture&gt; is either x86 (for x86-based processors) or amd64 (for x64-based processors).

2.  Launch NDISTest.exe from the install directory. When the main form opens, select **Client** from the **File** menu to launch the client form.

3.  Select the test target from the **Test Target** list. For network device, this test target should be **Miniport**.

4.  Select the test device from the **Test Device** list. This must be a vendor-specific test device.

5.  Select a message device from the **Message Device** list. This should be an IP-enabled device that is on the same subnet as the server message device. After the message device has been selected, the AP device section should be displayed and the server AP device should be available in the list.

6.  Select a support device from **Support Devices**. This must be a vendor-specific support device.

7.  Select an AP device from **AP Devices**. This must be the AP device that was select on the server side.

8.  Select the tests from the **Jobs** section that will be run after the client is launched.

After all the options have been selected, click Start to start the client. Any jobs that were selected will begin execution. Test results will be stored on the client in the following logging sub-folder:

&lt;NDISTestRootFolder&gt;/logs/&lt;AdapterName&gt;/

## Configuring Client Packet Capture


1.  Configure a test topology for stand-alone execution. For more information, go to "Configuring NDISTest for stand-alone execution."

2.  Setup a second SUT. For more information, go to "Configuring a Support Device Under Test (SUT)."

3.  Launch NDISTest.exe from the install directory. When the main form opens, select **Debug** from the **View** menu to launch the **Packet Capture** section on the client.

4.  Select a Capture device from **Packet Capture**. This must be a Support device that was selected on the server side.

5.  From **Jobs**, select the tests that will be run after the client is launched.

6.  After all of the options have been selected, click **Start** to start the client.

7.  Packet captures corresponding to the Tests will be generated on the Server with the capture device. The logs will be in the following logging sub-folder:

    &lt;NDISTestRootFolder&gt;/logs/&lt;AdapterName&gt;/

## Troubleshooting when the Packet Capture section does not show up on client


Verify that the message center user interface is closed. If the NDISTest user interface is not maximized, the **Packet Capture** section may be hidden behind the message center user interface.

## I want to open a bug. What should I include in the bug:


-   Create a .hckx package containing the failed tests – see the “Creating a Package” section and attach it to the bug.

-   Failing Logs –Please gather the ndistest logs from the test run and include them with the package in the bug.  The logs can be found by doing the following:

1.  Open the HCK Manager

2.  Choose **Explorers&gt; Job Monitor**

3.  Choose the **Machine Pool** that you scheduled the tests on.

4.  In the right pane choose the DUT machine.

5.  Under **Job Execution Status** right click the Job name of the test you ran and select **Browse Job logs**.

6.  This will open up an explorer window with an AP, Server, and Test directories.  Zip these directories and attach them to the bug.

## <a href="" id="how-do-i-reset-my-machines-after-a-failed-run---"></a>How do I reset my machines after a failed run?


Below is a chart with common problems and solutions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Symptom</strong></p></td>
<td><p><strong>Solution</strong></p></td>
</tr>
<tr class="even">
<td><p>The VAN UI doesn’t show any networks</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>When I connect my WLAN device to a DHCP enabled network I don’t get an IP.</p></td>
<td><p>2</p></td>
</tr>
<tr class="even">
<td><p>I get strange &quot;Back Channel&quot; failures</p></td>
<td><p>2</p></td>
</tr>
<tr class="odd">
<td><p>The (SUT, DUT, or AP) machine crashed and now all tests are failing</p></td>
<td><p>1,2,3</p></td>
</tr>
<tr class="even">
<td><p>NDISTest isn’t auto finding my test adapter when running through the HCK</p></td>
<td><p>3</p></td>
</tr>
<tr class="odd">
<td><p>The HCK test is failing to populate either a MessageDevice or SupportDevice</p></td>
<td><p>3</p></td>
</tr>
<tr class="even">
<td><p>I updated my HCK Controller and not my clients and now I am seeing strange crashes and failures that I have never seen before</p></td>
<td><p>When moving to a new controller you should also rebuild your clients. In the event that is not feasible you will need to remove <strong>ndprot630.sys</strong> from all three machines and athr.sys and softap.sys from the AP machine. All these files are in the c:\windows\system32\drivers directory. <strong>Ndprot630.sys</strong> will be automatically re-loaded when NDISTest is run, but not overwritten. <strong>ather.sys</strong> and <strong>Sofap.sys</strong> will need to be copied over from the new controller.</p></td>
</tr>
<tr class="odd">
<td><p>My physical AP's don’t seem to be working like before</p></td>
<td><p>You may have to reset/reboot your physical ap. If you factory reset it make sure you set the channel and radio per the setup instructions.</p></td>
</tr>
<tr class="even">
<td><p>I have tried all the steps above but nothing worked</p></td>
<td><p>If you have tried the above steps and are still seeing issues you can uninstall then reinstall the WLAN adapter. Make sure when you are done to rename the adapter SupportDevice0.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Device.Network Testing](devicenetwork-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Wireless%20LAN%20%28802.11%29%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





