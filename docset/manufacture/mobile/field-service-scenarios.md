---
Description: Field service scenarios
MS-HAID: 'p\_phManuRetail.field\_service\_scenarios'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Field service scenarios
---

# Field service scenarios


Scenarios can help to identify security vulnerabilities in field service processes. Each scenario should be reviewed to verify that a secure solution has been implemented by the OEM.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>Device refurbishing</p></td>
<td align="left"><p>Mobile operators and OEMs can refurbish devices by using a variety of approaches. The first refurbishment scenario occurs when customers return phones to the mobile operator for whatever reason. In this case, the devices are typically shipped to regional OEM service centers where they are reflashed with the current OEM image.</p>
<p>The second refurbishment scenario occurs when customers are experiencing problems with the operation of the device. The customer brings the device back to the mobile operator store, and the store associate runs basic diagnostics. The associate can attempt to reset the phone to factory settings or reflash the device OS by using flashing tools provided by Microsoft (FFU) or the OEM. If this fails, the store associate can decide to send the device to an OEM service center. Before the device leaves the control of the mobile operator and is returned to the OEM, some mechanism is used to remove all the customer data.</p>
<p>The renewal of the device at the OEM service center is the third refurbishment scenario. The device can be reflashed using whatever tools the OEM service center is equipped with. Some OEMs will use OS-level flashing technology, meaning they cannot reflash the device if the modem-level boot loader or software is broken. Others will be able to reflash the modem and OS partitions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Phone troubleshooting</p></td>
<td align="left"><p>Field test and diagnostics apps can be used by the mobile operator store, mobile operator service centers, and OEM service centers to perform specific tests on a phone in two different scenarios.</p>
<p>The first troubleshooting scenario is when the customer is experiencing difficulties with the device and a diagnostic test is run to gather information on the reported issue.</p>
<p>The second scenario is when the mobile operator or OEM service centers seek to establish quality status of a device. This scenario is the more general form of the previous troubleshooting scenario. This is because there could be more reasons than customer difficulties that would trigger the need for diagnostics and testing of retail phones. For example, to perform field quality measures, the test could be initiated to perform random-sample testing.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Engineering flashing</p></td>
<td align="left"><p>The engineering staffs of silicon vendors and OEMs need access to flashing technologies during development of hardware and software for the phones. This scenario is typically supported by low-level technologies such as JTAG, UEFI-based flashing, or OEM-specific flashing technologies. Which technology is selected depends on issues being worked on, development processes, and the supporting tools. The granularity of flashing options varies; lower-level tools have more flexibility in choosing which partitions can be flashed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Engineering diagnostics</p></td>
<td align="left"><p>The engineering staffs of silicon vendors and OEMs need access to diagnostics technologies during development of hardware and software for the phones. These scenarios are typically supported by technologies provided by the SV or OEM that will be disabled on retail devices. Some of the SV technologies provide a broad set of capabilities—including features that support reading and writing to flash memory—that must be disabled before the device is shipped.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Mobile operator trials</p></td>
<td align="left"><p>There may be a need to flash OS images to the device to support mobile operator trials.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Production manufacturing</p></td>
<td align="left"><p>The process of flashing phones during manufacturing varies per OEM. Some OEMs use gang programmers that can flash a number of units at a time; others use the flashing technology described in this documentation. For more info on the flashing process, see [Flashing tools](flashing-tools.md).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Rework manufacturing</p></td>
<td align="left"><p>Some OEMs have a process in place to rework phones that fail manufacturing quality control. Because the device is completely assembled, it may not be possible to use a gang programmer; this rework can be accomplished by using tethered flashing technologies similar to the customer return refurbishment scenario.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Remanufacturing</p></td>
<td align="left"><p>There can be a need to repurpose existing phone inventory for a different region or mobile operator by replacing the existing OS with one customized for the new market.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Manufacturing](manufacturing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Field%20service%20scenarios%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




