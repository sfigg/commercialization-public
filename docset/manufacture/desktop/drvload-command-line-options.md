---
author: Justinha
Description: 'Drvload Command-Line Options'
ms.assetid: d4e6f566-2763-4774-876e-24357f223a52
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Drvload Command-Line Options'
---

# Drvload Command-Line Options


The Drvload tool adds out-of-box drivers to a booted Windows Preinstallation Environment (Windows PE) image. It takes one or more driver .inf files as inputs. To add a driver to an offline Windows PE image, use the Deployment Image Servicing and Management (DISM) tool. For more information, see [Add and Remove Drivers to an Offline Windows Image](add-and-remove-drivers-to-an-offline-windows-image.md).

If the driver .inf file requires a reboot, Windows PE will ignore the request. If the driver .sys file requires a reboot, then the driver cannot be added with Drvload. For more information, see [Device Drivers and Deployment Overview](device-drivers-and-deployment-overview.md) and [DISM Driver Servicing Command-Line Options](dism-driver-servicing-command-line-options-s14.md).

Drivers added using the Drvload tool are marked as the preferred driver for that device. If you add an updated driver during Windows Setup, the driver that you added with Drvload takes precedence.

## <span id="Drvload_Command-Line_Options"></span><span id="drvload_command-line_options"></span><span id="DRVLOAD_COMMAND-LINE_OPTIONS"></span>Drvload Command-Line Options


The following command-line options are available for Drvload.

**drvload** *inf\_path* \[,*inf\_path* \[...\]\] \[**/?**\]

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/?</strong></p></td>
<td align="left"><p>Displays usage information.</p></td>
</tr>
<tr class="even">
<td align="left"><p><em>inf_path</em></p></td>
<td align="left"><p>Specifies the path to the driver .inf file. The path can contain environment variables.</p></td>
</tr>
</tbody>
</table>

 

If any drivers were not installed, then Drvload will return a non-zero status (%errorlevel%).

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Drvload%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




