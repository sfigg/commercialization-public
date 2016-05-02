---
author: joshbax-msft
title: Troubleshooting Device.Media Testing
description: Troubleshooting Device.Media Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f9a5728c-8601-463c-b113-6883af2d26a2
---

# Troubleshooting Device.Media Testing


To troubleshoot issues that you encounter in Device.media device tests, perform the following:

1.  Review [Troubleshooting Windows HCK Test Failures](troubleshooting-windows-hck-test-failures.md).

2.  Review the following topic:

    -   [Digital Media Renderer Testing Prerequisites](digital-media-renderer-testing-prerequisites.md)

3.  Review the [Windows HCK release notes](http://go.microsoft.com/fwlink/p/?linkid=236110) for current test issues.

4.  For a test failure, look for usable information in the Windows HCK Studio test log. If you find usable information, resolve the issue and rerun the test.

### Specific information about Device.Media tests

When you run the tests individually, you can avoid pop-up dialogs on the Windows 7 Client if you fill in the NetMediaLogoTest.XML.

The XML file is located at `<drive>:\Program Files\Microsoft Driver Test Manager\ tests\x86fre\NTTest\multimediatest\sharing\netmedialogotests` where x86fre is the platform you are testing).

The XML contains the following fields that can be edited:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Text field</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>&lt;DigitalMediaServerUdn&gt;udn&lt;/DigitalMediaServerUdn&gt;</strong></p></td>
<td><p>Here the UDN is the unique identified ID of the server for testing. This should only be specified for DMS testing. The UDN must include the dashes.</p>
<p>For example: <code>4a96edf6-0aa0-11de-904a-00a0b0945bfb</code></p>
<p>Changing this value for DMR testing may cause failures in testing.</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;DigitalMediaRendererUdn&gt;udn&lt;/DigitalMediaRendererUdn&gt;</strong></p></td>
<td><p>Here the UDN is the unique identified ID of the server for testing. This should only be specified for DMR testing. The UDN must include the dashes.</p>
<p>For example: <code>4a96edf6-0aa0-11de-904a-00a0b0945bfb</code></p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;DLNACertificationID&gt;string&lt;/DLNACertificationID &gt;</strong></p></td>
<td><p>Here the string value is the certificate ID of the device to be tested.</p></td>
</tr>
<tr class="even">
<td><p><strong>&lt;DmsMhdCertified&gt;no&lt;/DmsMhdCertified&gt;</strong></p></td>
<td><p>This value specifies if the server is a mobile hand held device. Valid values are &quot;yes&quot; and &quot;no&quot;.</p></td>
</tr>
<tr class="odd">
<td><p><strong>&lt;DMR_AudioCapable&gt;no&lt;/DMR_AudioCapable &gt;</strong></p></td>
<td><p>This value specifies if the device supports volume control either via remote or physical device. Valid values are &quot;yes&quot; and &quot;no&quot;.</p></td>
</tr>
</tbody>
</table>

 

### Common problems to all devices

The following table list issues that are common to all Device.Media tests.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Error message</th>
<th>Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>The &lt;device&gt; could not be located.</p></td>
<td><p>If all of your NMD tests report &quot;The &lt;device&gt; could not be located,&quot; this generally means that you did not enter the UUID correctly in the Device Console. You can confirm this by reviewing the test log in the job explorer. Confirm that the UUID of the device that is discovered matches the one that the test was searching for.</p>
<p>To fix this problem, you must create a new submission and enter the correct data when prompted in the wizard.</p></td>
</tr>
<tr class="even">
<td><p>The media file &lt;name&gt; could not be found on the local DMS</p></td>
<td><p>If you encountered this error, you may have failed to copy the content to the DMS. To fix this, ensure that you have obtained the test content as specified in [Digital Media Renderer Testing Prerequisites](digital-media-renderer-testing-prerequisites.md). Also, ensure that you have copied the test content to the server, as specified in &quot;Running the Digital Media Server Tests&quot; and &quot;Running the Digital Media Renderer and Digital Media Controller Tests.</p></td>
</tr>
<tr class="odd">
<td><p>All LLTD tests fail</p></td>
<td><p>If you have implemented LLTD correctly, the failures are generally caused by your Windows HCK configuration. Errors can occur in testing if there are multiple network cards, and they are not configured correctly.</p></td>
</tr>
</tbody>
</table>

 

As part of the certification process, LLD2 test jobs are run. The LLD2 test jobs rely on the proper MAC address being entered for the device's wired LAN side. In Windows HCK, this address is added properly when setting the IGD\_Mac dimension in the router configuration job. If an LLD2 job stops responding (that is, "hangs"), and the Job Monitor window says "Scheduler" for the status, you likely do not have the LAN dimension set as True for the machines (test computers) that are connected to the LAN side of the IGD.

If the tests are running, but you are getting failures, try to run the test manually. Also, try running a network analyzer to help understand what is going on with the LLTD traffic.

**Verify that your LLTD responder is working correctly**

To verify that your LLTD responder is working correctly, complete the following steps:

1.  Go to the **Network and Sharing Center**. You can access this by typing **network and sharing center** in the search bar of the **Start** menu.

2.  Click **See full map**.

3.  Verify that your device appears correctly in the network map.

## Related topics


[Device.Media Testing](devicemedia-testing.md)

[Troubleshooting Windows HCK](troubleshooting-windows-hck.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Device.Media%20Testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





