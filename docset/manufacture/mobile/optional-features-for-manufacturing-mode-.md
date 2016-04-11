---
Description: 'The following features can be used with devices running in Manufacturing Mode.'
MS-HAID: 'p\_phManuRetail.optional\_features\_for\_manufacturing\_mode\_'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Optional features for Manufacturing Mode
---

# Optional features for Manufacturing Mode


The following features can be used with devices running in Manufacturing Mode.

**Note**  All optional features included with Windows 10 Mobile can be used, too. For more info about the other optional features, see [Optional features for building images](https://msdn.microsoft.com/library/windows/hardware/dn756780).

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>BCDEDIT</p></td>
<td align="left"><p>Adds bcdedit.exe to the image for development support. This should not be included in final retail images.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MFGMODEBCD</p></td>
<td align="left"><p>Adds the BCD entry to enable Manufacturing Mode in the full OS Image. You should remove this before the device leaves the factory floor.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MFGSTARTUP</p></td>
<td align="left"><p>Adds startup.bsc file to the Manufacturing Mode image and is needed whenever the MOBILECOREBOOTSH feature is used.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MFGDEVTOOLS</p></td>
<td align="left"><p>Adds a collection of useful developer tools to the Manufacturing Mode image, such as tlist.exe, sc.exe, shutdown.exe. This should not be included in the final Manufacturing Mode image.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MFGTELNETFTP</p></td>
<td align="left"><p>Adds Telnet and TFTP servers to the Manufacturing Mode image. You can leave them in the final image for servicing since they only run when the device is in Manufacturing Mode.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MFGTSHELL</p></td>
<td align="left"><p>Adds TShell capability to the Manufacturing Mode image. You can leave it in the final image for servicing since it only runs when the device is in Manufacturing Mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MOBILECOREBOOTSH</p></td>
<td align="left"><p>Enables the bootsh service (bootshscv) so that features in startup.bsc, such as telnet and ftp, can be used. This is required when the MFGTELNETFTP feature is specified. You can leave it in the image for servicing since it only runs when the device is in Manufacturing Mode.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Optional%20features%20for%20Manufacturing%20Mode%20%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



