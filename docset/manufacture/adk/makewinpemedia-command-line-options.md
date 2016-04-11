---
Description: 'Makewinpemedia Command-Line Options'
MS-HAID: 'p\_adk\_online.makewinpemedia\_command\_line\_options'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Makewinpemedia Command-Line Options'
---

# Makewinpemedia Command-Line Options


The **Makewinpemedia** tool is new for Windows 8. You can use **Makewinpemedia** to create bootable Windows Preinstallation Environment (Windows PE) media. Running the **Copype** tool is a prerequisite for creating bootable media. **Copype** creates a directory structure for Windows PE files and copies the necessary Windows PE media files. For more information, see [Copype Command-Line Options](p_adk_online.copype_command_line_options_blue) and [WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md).

## <span id="Makewinpemedia_Command-Line_Options"></span><span id="makewinpemedia_command-line_options"></span><span id="MAKEWINPEMEDIA_COMMAND-LINE_OPTIONS"></span>Makewinpemedia Command-Line Options


The **Makewinpemedia** tool uses the following command-line options.

**Makewinpemedia** {*/ufd* | */iso*} \[*/f*\] *&lt;WorkingDirectory&gt; &lt;DestinationLocation&gt;*

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-line option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/ufd</strong></p></td>
<td align="left"><p>Specifies a USB flash drive as the type of media to create. For example:</p>
<pre class="syntax" space="preserve"><code>Makewinpemedia /ufd C:\winpe_amd64 F:</code></pre>
<p>where F is the drive letter of the USB flash drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/iso</strong></p></td>
<td align="left"><p>Specifies a .iso file (CD or DVD) as the type of media to create. For example:</p>
<pre class="syntax" space="preserve"><code>Makewinpemedia /iso C:\winpe_amd64 C:\winpe_x64\winpe_amd64.iso</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/f</strong></p></td>
<td align="left"><p>Optional. Suppresses the confirmation message that appears before you format the USB flash drive or overwrite an existing .iso file. For example:</p>
<pre class="syntax" space="preserve"><code>Makewinpemedia /ufd /f C:\winpe_amd64 F:</code></pre>
<p>where F is the drive letter of the USB flash drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>&lt;WorkingDirectory&gt;</em></p></td>
<td align="left"><p>Specifies the name of the working directory where the <strong>Copype</strong> tool creates the Windows PE directory structure and copies the necessary files for creating bootable media. For example:</p>
<pre class="syntax" space="preserve"><code>C:\winpe_amd64</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p><em>&lt;DestinationLocation&gt;</em></p></td>
<td align="left"><p>Specifies the drive letter of the USB flash drive if you are using the <strong>/ufd</strong> option, or the name of the .iso file if you are using the <strong>/iso</strong> option.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

[Oscdimg Command-Line Options](oscdimg-command-line-options-auth-8-tech-ref.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Makewinpemedia%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




