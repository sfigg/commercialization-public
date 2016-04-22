---
author: Justinha
Description: 'Deploy Windows on a VHD (Native Boot)'
ms.assetid: 0802bca0-646e-4453-b78c-6257f1ed7e80
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Deploy Windows on a VHD (Native Boot)'
---

# Deploy Windows on a VHD (Native Boot)


Create and deploy virtual hard disks (VHDs) with native-boot capabilities to test devices or to manage multiple operating systems on a device without repartitioning the drive.

### <span id="Creating_VHDs"></span><span id="creating_vhds"></span><span id="CREATING_VHDS"></span>Creating VHDs

You can create virtual hard disks (.vhd or .vhdx files) using the DiskPart tool or the Disk Management Microsoft Management Console (MMC). You can create .vhdx files from PowerShell when you have the Hyper-V Manager Role installed.

You can attach the VHD so that it appears as a system drive that you can partition, format, and apply your operating system to.

### <span id="Deploying_VHDs"></span><span id="deploying_vhds"></span><span id="DEPLOYING_VHDS"></span>Deploying VHDs

You can deploy a supported Windows image to an attached VHD using disk-imaging software such as the Deployment Image Servicing and Management (DISM) tool. The VHD can then be copied to one or more systems either to run in a virtual machine or for native boot.

For more information, see [Download and install Windows PE (WinPE) so you can boot from a USB flash drive or an external USB hard drive](download-and-install-windows-pe--winpe--so-you-can-boot-from-a-usb-flash-drive-or-an-external-usb-hard-drive.md).

On first native boot, the *specialize* configuration pass runs and computer-specific information is applied to the Windows operating system on the VHD. The instance of the VHD cannot be copied onto another system or run in a virtual machine after the specialize configuration pass is completed. The original VHD that has a Windows image can continue to be copied and deployed to multiple computers, if the image has already been prepared for installation using the Sysprep tool with the **/specialize** option. You can also use an answer file to prepare the image for installation by using the Microsoft-Windows-Deployment | Generalize setting. For more information about the **specialize** and **generalize** configuration passes, see [Windows Setup Configuration Passes](windows-setup-configuration-passes.md). For more information about how to use the Generalize setting in an answer file, see the Windows® Unattended Setup Reference.

The Windows Deployment Server role supports deployment of VHD image files in addition to .wim files. Windows Deployment Server automates the network deployment of VHD images for native-boot usage. Windows Deployment Server can be used to copy the VHD image to a local partition, and to configure the local Boot Configuration Data (BCD) for native boot from the VHD.

## <span id="In_This_Section"></span><span id="in_this_section"></span><span id="IN_THIS_SECTION"></span>In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>[Understanding Virtual Hard Disks with Native Boot](understanding-virtual-hard-disks-with-native-boot.md)</p></td>
<td align="left"><p>Includes common scenarios, requirements, and recommendations for installing Windows to a VHD with native boot.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Boot to VHD (Native Boot): Add a Virtual Hard Disk to the Boot Menu](boot-to-vhd--native-boot--add-a-virtual-hard-disk-to-the-boot-menu.md)</p></td>
<td align="left"><p>Create and deploy a VHD on a destination computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Download and install Windows PE (WinPE) so you can boot from a USB flash drive or an external USB hard drive](download-and-install-windows-pe--winpe--so-you-can-boot-from-a-usb-flash-drive-or-an-external-usb-hard-drive.md)</p></td>
<td align="left"><p>Update a computer that has a Windows 7 or Windows 8 boot environment and add a VHD to the BCD configuration.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[BCDboot Command-Line Options](bcdboot-command-line-options-techref-di.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Deploy%20Windows%20on%20a%20VHD%20%28Native%20Boot%29%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




