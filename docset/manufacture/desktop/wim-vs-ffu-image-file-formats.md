---
author: Justinha
MS-HAID: 'p\_adk\_online.wim\_vs\_ffu\_image\_file\_formats'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'WIM vs. VHD vs. FFU: comparing image file formats'
---

# WIM vs. VHD vs. FFU: comparing image file formats


Comparing .WIM, .VHD/.VHDX, and .FFU: These file formats are all used to deploy Windows to new devices. Here's how they compare:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"></td>
<td align="left">Windows image (.WIM)</td>
<td align="left">Virtual Hard Disk (.VHD/VHDX)</td>
<td align="left">Full Flash Update (.FFU)</td>
</tr>
<tr class="even">
<td align="left">Common uses</td>
<td align="left"><p>Fastest for testing and modifying Windows images.</p>
<p>Quickly mounting and modifying images.</p></td>
<td align="left"><p>Easiest for deploying Windows to virtual PCs.</p>
<p>You can boot a new device directly from a single VHD/VHDX file.</p></td>
<td align="left"><p>Fastest for capturing and deploying Windows on a factory floor.</p>
<p>Includes built-in security to verify signed images.</p></td>
</tr>
<tr class="odd">
<td align="left">Imaging style</td>
<td align="left">File-based</td>
<td align="left">Sector-based</td>
<td align="left">Sector-based</td>
</tr>
<tr class="even">
<td align="left">Compression</td>
<td align="left">Supports multiple types of compression</td>
<td align="left">None</td>
<td align="left">None</td>
</tr>
<tr class="odd">
<td align="left">What does it capture?</td>
<td align="left"><p>A set of files, up to an entire partition.</p></td>
<td align="left"><p>Captures the full set of drive information, including partitions.</p></td>
<td align="left"><p>Captures the full set of drive information, including partitions.</p></td>
</tr>
<tr class="even">
<td align="left">When I apply the image, what happens?</td>
<td align="left"><p>Adds the files and folders to the partition.</p>
<p>If there are existing files and folders with the same names, they're replaced. Otherwise, the existing files are kept.</p></td>
<td align="left"><p>Cleans the entire drive.</p></td>
<td align="left"><p>Cleans the entire drive.</p></td>
</tr>
<tr class="odd">
<td align="left">Can I deploy to different sizes of hard drives?</td>
<td align="left"><p>Yes.</p></td>
<td align="left"><p>Yes, though the new drive must be the same size or larger than the original.</p></td>
<td align="left"><p>Yes, though the new drive must be the same size or larger than the original.</p></td>
</tr>
<tr class="even">
<td align="left">Can I modify the images?</td>
<td align="left"><p>Yes. With tools like DISM, you can mount, modify, and unmount the image.</p></td>
<td align="left"><p>Yes, you can mount a VHD/VHDX as if it were removable media, and modify the files.</p></td>
<td align="left"><p>Yes, though it's limited to adding packages.</p></td>
</tr>
<tr class="odd">
<td align="left">Security</td>
<td align="left"></td>
<td align="left"></td>
<td align="left"><p>Includes a security header and image header to identify a secured image.</p>
<p>Includes a catalog and hash table to validate a signature upfront before flashing onto a device.</p></td>
</tr>
</tbody>
</table>

 

To learn more, see **/Apply-Image** in [DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md).

## <span id="related_topics"></span>Related topics


**DISM**
[Deployment Image Servicing and Management (DISM) Command-Line Options](deployment-image-servicing-and-management--dism--command-line-options.md)

**VHD/VHDX**
[Boot to VHD (Native Boot): Add a Virtual Hard Disk to the Boot Menu](boot-to-vhd--native-boot--add-a-virtual-hard-disk-to-the-boot-menu.md)

[Deploy Windows on a VHD (Native Boot)](deploy-windows-on-a-vhd--native-boot.md)

**FFU**
[Deploy Windows using Full Flash Update (FFU)](deploy-windows-using-full-flash-update--ffu.md)

[DISM Image Management Command-Line Options](dism-image-management-command-line-options-s14.md)

[FFU image format](p_phManuRetail.ffu_image_format)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20WIM%20vs.%20VHD%20%20vs.%20FFU:%20comparing%20image%20file%20formats%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




