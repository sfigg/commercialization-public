---
author: Justinha
Description: 'Copype Command-Line Options'
ms.assetid: 3342c1d4-7dff-4e0b-ab86-1f28d5057f12
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Copype Command-Line Options'
---

# Copype Command-Line Options


The **Copype** tool creates a working directory that contains a standard set of Windows Preinstallation Environment (Windows PE) files. You use these files to customize images and (together with the **Makewinpemedia** script) to create bootable media. For more information, see [Makewinpemedia Command-Line Options](makewinpemedia-command-line-options.md).

## <span id="Copype_Command-Line_Options"></span><span id="copype_command-line_options"></span><span id="COPYPE_COMMAND-LINE_OPTIONS"></span>Copype Command-Line Options


**Copype** uses the following command-line options.

**Copype.cmd** architecture WorkingDirectory

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
<td align="left"><p><em>architecture</em></p></td>
<td align="left"><p>Copies the boot files and the Windows PE base image (Winpe.wim) to <em>&lt;WorkingDirectory&gt;</em>\Media.</p>
<p>Values include <strong>amd64</strong>, <strong>x86</strong>, or <strong>arm</strong>.</p>
<p>The x86 version of Windows PE can boot 32-bit UEFI, 32-bit BIOS, or 64-bit BIOS-based PCs.</p>
<p>The amd64 version of Windows PE can boot either 64-bit BIOS-based or 64-bit UEFI-based PCs.</p>
<p>The arm version of Windows PE can boot ARM-based PCs.</p>
<p>For more information about running Windows PE on PCs with different architectures, see [Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>WorkingDirectory</em></p></td>
<td align="left"><p>Specifies the name of the working directory where <strong>Copype</strong> creates the directory structure and copies the Windows PE files. For example:</p>
<pre class="syntax" space="preserve"><code>copype amd64 C:\winpe_amd64</code></pre>
<p><strong>Copype</strong> creates the following directory structure.</p>
<pre class="syntax" space="preserve"><code>&lt;WorkingDirectory&gt;
&lt;WorkingDirectory&gt;\media
&lt;WorkingDirectory&gt;\mount</code></pre>
<p>When <strong>Copype</strong> copies the Windows PE base image to the <em>&lt;WorkingDirectory&gt;</em>\Media\Sources folder, it renames the base image from Winpe.wim to Boot.wim.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Create USB Bootable drive](winpe-create-usb-bootable-drive.md)

[Makewinpemedia Command-Line Options](makewinpemedia-command-line-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Copype%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




