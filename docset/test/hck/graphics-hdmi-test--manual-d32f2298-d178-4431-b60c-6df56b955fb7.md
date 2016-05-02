---
author: joshbax-msft
title: Graphics HDMI Test (Manual)
description: Graphics HDMI Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ecdc1d03-8e1d-4245-8a08-6ae156ec5839
---

# Graphics HDMI Test (Manual)


This manual test verifies multichannel and non-PCM audio streaming over HDMI.

The Intel HD Audio HDMI DCN details the method to support multichannel and non-PCM audio streaming over HDMI, as well as how to expose the HDMI sink information to the audio stack. In order to achieve this, both the audio and graphics sub-systems need to interact together. If there is an Intel HD Audio HDMI audio solution on the system, this test validates if the graphics driver properly responds to the necessary events.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM.Display.HDMIorDPDCNs.DCNCompliance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~20 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

In addition, this test requires the following software and hardware.

-   HDMI audio or video source solution that implement the Intel HD Audio HDMI Solution

-   HDMI sink device to plug into the HDMI source on the computer (To make testing easier, it is preferable but not necessary that this device be a second monitor.)

-   HDMI cable

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

This test will always return Pass or Fail. However, if there are no HDMI devices that implement Intel HD Audio HDMI DCN, then the test will pass silently without running any tests. To review test details, review the test log from the DTM Studio.

Possible troubleshooting reasons that may cause unexpected failure:

1.  Some event was caused that didn’t allow HDMI sink device to be set to power saving mode. (Mouse moved/clicked or keyboard pressed).

2.  Administrator settings on the machine that don’t allow the test to change the monitor sleep timeout.

## More information


This test begins by installing a test audio function driver on all HD Audio codecs. It will use the test function drivers to directly query the codecs and enumerate all audio pin complexes that appear to implement verbs that are specific to the Intel HD Audio HDMI DCN. If nothing enumerates, the test will pass quietly and return the system to the original state.

After detecting audio devices, the test will enumerate graphics HDMI devices and try to pair them with the audio devices that were enumerated. If there are audio devices that are enumerated but unpaired with graphics devices, the test will fail because audio should not appear without a video matching pair in HDMI.

### Test cases

The test currently exposes 3 test cases:

1.  **Check Device Pairing**: This test case validates that all audio pins that are enumerated have a corresponding graphics device.

2.  This test case checks to make sure that the graphics driver updates the necessary registers (Presence Detect / ELD Valid) on the audio side in response to plug/unplug events. The test case will do the following:

    1.  It begins by expecting the HDMI Sink device to be connected to the computer and validates that it is.

    2.  A message box will appear requesting that the HDMI Sink device be unplugged. First unplug the HDMI sink device, then press **OK** or **Enter** to dismiss the message box.

        **Note**  
        If you are only using one monitor and that monitor is your HDMI sink device also, when you unplug it you will not see the Message Box anymore. You can still press enter on the keyboard as long as the focus was on the test windows to continue testing.

         

    3.  The test case will validate that the graphics driver properly updated the audio device on the unplug event.

    4.  A message box will appear requesting that the HDMI Sink device be plugged back in. First plug the HDMI sink device, then press **OK** or **Enter** to dismiss the message box.

        **Note**  
        If you are only using one monitor and that monitor is your HDMI sink device also, at this point you would not be able to see the Message Box. In case everything is working properly, you can wait approximately 5-10 seconds and then plug the HDMI monitor back in. You will then see the message box and can click on it to continue the final step.

         

        The test case will validate that the graphics driver properly updated the audio device on the plug event.

3.  **Power Management Events**: This test case will check to see that the graphics driver properly updates the necessary registers (Presence Detect / ELD Valid) on the audio side in response to power management events. The test case will set the monitor sleep timeout to 30 seconds and wait for the HDMI device to go to sleep. During this time, make sure that no events are generated that could wake up the HDMI device (i.e., do not move the mouse or press any keys on the keyboard). After the test case completes, it returns the test computer to the original settings.

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>GraphicsHDMITest</strong></p></td>
<td><p>Without any options, the test enumerates devices.</p></td>
</tr>
<tr class="even">
<td><p><strong>-c [string]</strong></p></td>
<td><p>Starts the application and runs the test cases that are specified in the .profile file.</p></td>
</tr>
<tr class="odd">
<td><p><strong>-h [string]</strong></p></td>
<td><p>Specifies the Plug and Play (PnP) identifier (ID) of the device to be tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>logo_win7_GraphicsHdmiTest.pro</strong></p></td>
<td><p>The .profile file of test cases to be run.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>GraphicsHDMITest.exe</p></td>
<td><p>[testbinroot]\nttest\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="even">
<td><p>UAATest.exe</p></td>
<td><p>[testbinroot]\nttest\multimediatest\AVCore\Audio\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>t_hdaud.sys</p></td>
<td><p>[testbinroot]\nttest\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="even">
<td><p>t_hdaud.inf</p></td>
<td><p>[testbinroot]\nttest\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="odd">
<td><p>t_hdaud.ca</p></td>
<td><p>[testbinroot]\nttest\multimediatest\AVCore\Audio\bin\</p></td>
</tr>
<tr class="even">
<td><p>logo_win7_graphicshdmitest.pro</p></td>
<td><p>[testbinroot]\nttest\ multimediatest\AVCore\Audio\profiles\logo\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Graphics%20HDMI%20Test%20%28Manual%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




