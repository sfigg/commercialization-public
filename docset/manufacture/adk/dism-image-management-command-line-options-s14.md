---
Description: 'DISM Image Management Command-Line Options'
MS-HAID: 'p\_adk\_online.dism\_image\_management\_command\_line\_options\_s14'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'DISM Image Management Command-Line Options'
---

# DISM Image Management Command-Line Options


Deployment Image Servicing and Management (DISM.exe) mounts a Windows image (.wim) file or virtual hard disk (.vhd or .vhdx) for servicing. You can also use the DISM image management command to list the image index numbers, to verify the architecture for the image that you are mounting, append an image, apply an image, capture an image and delete an image. After you update the image, you must unmount it and either commit or discard the changes that you have made.

This topic discusses DISM commands related to image management. To see other command-line options, see [Deployment Image Servicing and Management (DISM) Command-Line Options](deployment-image-servicing-and-management--dism--command-line-options.md). For more information about common DISM scenarios, see [What is DISM?](what-is-dism.md).

In addition to the command-line tool, DISM is available by using Windows PowerShell. For more information, see [Deployment Imaging Servicing Management (DISM) Cmdlets in Windows PowerShell](http://go.microsoft.com/fwlink/?LinkId=239926).

## <span id="DISM_Command-Line_Options"></span><span id="dism_command-line_options"></span><span id="DISM_COMMAND-LINE_OPTIONS"></span>DISM Command-Line Options


The following commands can be used to mount, unmount, capture, append, and delete and query .wim, .vhd and .vhdx files. These options are not case sensitive.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Option/Argument</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Option: <strong>/Append-Image</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p><strong>/CaptureDir:</strong>&lt;<em>source_directory</em>&gt;</p>
<p><strong>/Name:</strong>&lt;<em>image_name</em>&gt;</p>
<p>[<strong>/Description:</strong>&lt;<em>image_description</em>&gt;]</p>
<p>[<strong>/ConfigFile:</strong>&lt;<em>configurtion_file.ini</em>&gt;]</p>
<p>[<strong>/Bootable</strong>]</p>
<p><strong>/WIMBoot</strong></p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Verify</strong>]</p>
<p>[<strong>/NoRpFix</strong>]</p></td>
<td align="left"><p>Adds an additional image to a .wim file. <strong>/AppendImage</strong> compares new files to the resources in the existing .wim file specified by the <strong>/ImageFile</strong> argument, and stores only a single copy of each unique file so that each file is only captured once. The .wim file can have only one assigned compression type. Therefore, you can only append files with the same compression type.</p>
<p>This command-line option does not apply to virtual hard disk (VHD) files.</p>
<div class="alert">
<strong>Important</strong>  
<p>Ensure that you have enough disk space for the <strong>/Append-Image</strong> option to run. If you run out of disk space while the image is being appended, you might corrupt the .wim file.</p>
</div>
<div>
 
</div>
<p>Use <strong>/WIMBoot</strong> to append the image with Windows image file boot (WIMBoot) configuration. This only applies to Windows 8.1 images that have been captured or exported as a WIMBoot file.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p><strong>/ConfigFile</strong> specifies the location of a configuration file that lists exclusions for image capture and compress commands. For more information, see [DISM Configuration List and WimScript.ini Files](dism-configuration-list-and-wimscriptini-files-winnext.md).</p>
<p><strong>/Bootable</strong> marks a volume image as being a bootable image. This argument is available only for Windows Preinstallation Environment (WinPE) images. Only one volume image can be marked as bootable in a .wim file.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Verify</strong> checks for errors and file duplication.</p>
<p><strong>/NoRpFix</strong> disables the reparse point tag fix. A reparse point is a file that contains a link to another file on the file system. If <strong>/NoRpFix</strong> is not specified, reparse points that resolve to paths outside of the value specified by <strong>/ImageFile</strong> will not be captured.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Append-Image /ImageFile:install.wim /CaptureDir:D:\ /Name:Drive-D</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Apply-Image</strong></p>
<p>Arguments for WIM:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p>[<strong>/SWMFile:</strong>&lt;<em>pattern</em>&gt;]</p>
<p><strong>/ApplyDir:</strong>&lt;<em>target_directory</em>&gt;</p>
<p>{<strong>/Index:</strong>&lt; <em>image_index</em>&gt; | <strong>/Name:</strong>&lt;<em>image_name</em>&gt;}</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Verify</strong>]</p>
<p>[<strong>/NoRpFix</strong>]</p>
<p>[<strong>/ConfirmTrustedFile</strong>]</p>
<p>[<strong>/WIMBoot</strong> (deprecated)]</p>
<p>[<strong>/Compact</strong>]</p>
<p></p>
<p>Arguments for FFU:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p><strong>/ApplyDrive:</strong>&lt;<em>target_drive</em>&gt;</p>
<p>[<strong>/SFUFile:</strong>&lt;<em>pattern</em>&gt;]</p>
<p>[<strong>/SkipPlatformCheck</strong>]</p>
<p></p></td>
<td align="left"><p><strong>WIM: Applies a Windows image file (.wim) or a split Windows image (.swm) files to a specified partition.</strong></p>
<p>This option doesn’t support applying an image from a virtual hard disk (VHD), though you can use this command to apply images to a .vhdx file that's been attached, partitioned, and formatted.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Verify</strong> checks for errors and file duplication.</p>
<p><strong>/NoRpFix</strong> disables the reparse point tag fix. A reparse point is a file that contains a link to another file on the file system. If <strong>/NoRpFix</strong> is not specified, reparse points that resolve to paths outside the value specified by <strong>/ImageFile</strong> will not be captured.</p>
<p><strong>/SWMFile</strong> enables you to reference split .wim files (SWMs). <em>pattern</em> is the naming pattern and location of split files. You can also specify wildcard characters. For example, &quot;E:\image\install*.swm&quot; will apply all of the split files in the E:\image directory named install1.swm, install2.swm, and so on.</p>
<p><strong>/ConfirmTrustedFile</strong> validates the image for Trusted Desktop on a Windows 10, Windows 8.1, or Windows 8. This option can only be run on a computer running at least WinPE 4.0.</p>
<div class="alert">
<strong>Note</strong>  
<p>When using <strong>/Apply-Image</strong> with the <strong>/ConfirmTrustedFile</strong> option in WinPE, always specify the <strong>/ScratchDir</strong> option pointed to a physical media location. This ensures that short file names will always be available. See [DISM Global Options for Command-Line Syntax](dism-global-options-for-command-line-syntax.md) for more information about the default behavior of the <strong>/ScratchDir</strong> option.</p>
</div>
<div>
 
</div>
<p><strong>/WIMBoot</strong>: Windows 8.1 only: to apply the image with Windows image file boot (WIMBoot) configuration. This only applies to Windows 8.1 images that have been captured or exported as a WIMBoot file.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p><strong>/Compact</strong>: Applies an image in compact mode, saving drive space. Replaces WIMBoot. Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) only.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /apply-image /imagefile:install.wim /index:1 /ApplyDir:D:\</code></pre>
<pre class="syntax" space="preserve"><code>Dism /apply-image /imagefile:install.swm /swmfile:install*.swm /index:1 /applydir:D:\</code></pre>
<p></p>
<p><strong>FFU: Applies a full flash update (.ffu) image to a specified drive.</strong> Applies to Windows 10 only.</p>
<p>This option doesn’t support applying an image from a virtual hard disk (.vhdx) file, though you can use this command to apply a full image to a VHD.</p>
<p><strong>/ImageFile</strong> specifies the path of a .FFU file, example: flash.ffu.</p>
<p><strong>/ApplyDrive</strong> specifies the logical drive, using the DeviceID.</p>
<p>To get the device ID:</p>
<ul>
<li><p>From the command line: <code>wmic diskdrive list brief</code></p></li>
<li><p>From C: <code>system(&quot;wmic diskdrive list&quot;);</code></p></li>
</ul>
<p>Note: a VHD may appear with the name “PhysicalDrive” in the description, for example, \\.\PhysicalDrive2.</p>
<p>Use <strong>/SFUFile</strong> to reference split FFU files (SFUs). &lt;pattern&gt; is the naming pattern and location of split files.</p>
<p>Use <strong>/SkipPlatformCheck</strong> if the FFU file being applied is targeted for a device other than the device performing the application. A special FFU file is required.</p>
<p>Examples:</p>
<pre class="syntax" space="preserve"><code>DISM.exe /Apply-Ffu /ImageFile:flash.ffu
 /ApplyDrive:\\.\PhysicalDrive0</code></pre>
<pre class="syntax" space="preserve"><code>DISM.exe /Apply-Ffu /ImageFile:flash.sfu /SFUFile:flash*.sfu
 /ApplyDrive:\\.\PhysicalDrive0</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option:<strong>/Capture-CustomImage</strong></p>
<p>Arguments:</p>
<p><strong>/CaptureDir:</strong>&lt;<em>source_directory</em>&gt;</p>
<p>[<strong>/ConfigFile:</strong>&lt;<em>configuration_file.ini</em>&gt;]</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Verify</strong>]</p>
<p>[<strong>/ConfirmTrustedFile</strong>]</p></td>
<td align="left"><p><strong>/Capture-CustomImage</strong> captures the incremental file changes based on the specific <strong>install.wim</strong> file to a new file, <strong>custom.wim</strong> for a WIMBoot image. You can’t capture an empty directory.</p>
<p>The captured files are converted to pointer files. The <strong>custom.wim</strong> is placed in the same folder next to the <strong>install.wim</strong>.</p>
<div class="alert">
<strong>Important</strong>  
<ul>
<li><p><strong>/Capture-CustomImage</strong> only captures the customization files. It can’t be used to capture installation files into a new WIM.</p></li>
<li><p>Keep the <strong>install.wim</strong> and <strong>custom.wim</strong> files together. Don't switch out either the <strong>custom.wim</strong> file or the <strong>install.wim</strong> file.</p></li>
<li><p>You can only capture the custom image once. Don’t remove or recapture a custom.wim after capturing the incremental file changes.</p></li>
</ul>
</div>
<div>
 
</div>
<p><strong>/CaptureDir:</strong> specifies the directory to which the image was applied and customized.</p>
<p><strong>/ConfigFile</strong> specifies the location of a configuration file that lists exclusions for image capture and compress commands. For more information, see [DISM Configuration List and WimScript.ini Files](dism-configuration-list-and-wimscriptini-files-winnext.md).</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Verify</strong> checks for errors and file duplication.</p>
<p><strong>/ConfirmTrustedFile</strong> validates the image for Trusted Desktop on a Windows 10, Windows 8.1, or Windows 8. This option can only be run on a computer running at least WinPE 4.0.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Capture-CustomImage /CaptureDir:D:\</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option:<strong>/Capture-Image</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p><strong>/CaptureDir:</strong>&lt;<em>source_directory</em>&gt;</p>
<p><strong>/Name:</strong>&lt;<em>image_name</em>&gt;</p>
<p>[<strong>/Description:</strong>&lt;<em>image_description</em>&gt;]</p>
<p>[<strong>/ConfigFile:</strong>&lt;<em>configuration_file.ini</em>&gt;]</p>
<p>[<strong>/Compress:</strong>{<em>max</em>|<em>fast</em>|<em>none</em>}]</p>
<p>[<strong>/Bootable</strong>]</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Verify</strong>]</p>
<p>[<strong>/NoRpFix</strong>]</p>
<p>[<strong>/WIMBoot</strong>]</p></td>
<td align="left"><p>Captures an image of a drive to a new .wim file. Captured directories include all subfolders and data. You cannot capture an empty directory. A directory must contain at least one file.</p>
<p>You can capture the image as a Windows image (.wim) file or a set of split Windows image (.swm) files; this option doesn’t support capturing a virtual hard disk (.vhd/.vhdx) file or a full flash update (.ffu) image.</p>
<div class="alert">
<strong>Important</strong>  
<p>DISM will ignore extended attributes during a capture operation.</p>
</div>
<div>
 
</div>
<p><strong>/ConfigFile</strong> specifies the location of a configuration file that lists exclusions for image capture and compress commands. For more information, see [DISM Configuration List and WimScript.ini Files](dism-configuration-list-and-wimscriptini-files-winnext.md).</p>
<p><strong>/Compress</strong> specifies the type of compression used for the initial capture operation. The <strong>maximum</strong> option provides the best compression, but takes more time to capture the image. The <strong>fast</strong> option provides faster image compression, but the resulting files are larger than those compressed by using the <strong>maximum</strong> option. This is also the default compression type that is used if you do not specify the argument. The <strong>none</strong> option does not compress the captured image at all.</p>
<p><strong>/Bootable</strong> marks a volume image as being a bootable image. This argument is available only for Windows PE images. Only one volume image can be marked as bootable in a .wim file.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Verify</strong> checks for errors and file duplication.</p>
<p><strong>/NoRpFix</strong> disables the reparse point tag fix. A reparse point is a file that contains a link to another file on the file system. If <strong>/NoRpFix</strong> is not specified, reparse points that resolve to paths outside the value specified by <strong>/ImageFile</strong> will not be captured.</p>
<p>Use <strong>/WIMBoot</strong> to capture the image with Windows image file boot (WIMBoot) configuration. This only applies to Windows 8.1 images that you want to capture as a WIMBoot file.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Capture-Image /ImageFile:install.wim /CaptureDir:D:\ /Name:Drive-D</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Cleanup-Mountpoints</strong></p></td>
<td align="left"><p>Deletes all of the resources associated with a mounted image that has been corrupted. This command will not unmount images that are already mounted, nor will it delete images that can be recovered using the <strong>/Remount-Image</strong> command.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Cleanup-Mountpoints</code></pre>
<p>To learn more, see [Repair a Windows Image](repair-a-windows-image.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Commit-Image</strong></p>
<p>Arguments:</p>
<p><strong>/MountDir:</strong>&lt;<em>path_to_mount_directory</em>&gt;</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Append</strong>]</p></td>
<td align="left"><p>Applies the changes that you have made to the mounted image. The image remains mounted until the <strong>/Unmount-Image</strong> option is used.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations.<strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Append</strong> adds the modified image to the existing .wim file instead of overwriting the original image.</p>
<p>The <strong>/CheckIntegrity</strong> and <strong>/Append</strong> arguments do not apply to virtual hard disk (VHD) files.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Commit-Image /MountDir:C:\test\offline</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Delete-Image</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p>{<strong>/Index:</strong>&lt;<em>image_index</em>&gt; | <strong>/Name:</strong>&lt;<em>image_name</em>&gt;}</p>
<p>[<strong>/CheckIntegrity</strong>]</p></td>
<td align="left"><p>Deletes the specified volume image from a .wim file that has multiple volume images. This option deletes only the metadata entries and XML entries. It does not delete the stream data and does not optimize the .wim file.</p>
<p>This command-line option does not apply to virtual hard disk (VHD) files.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Delete-Image /ImageFile:install.wim /Index:1</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Export-Image</strong></p>
<p>Arguments:</p>
<p>{<strong>/SourceImageFile:</strong>&lt;<em>path_to_image_file</em>&gt; | <strong>/SWMFile:</strong>&lt;<em>pattern</em>&gt;}</p>
<p>{<strong>/SourceIndex:</strong>&lt;<em>image_index</em>&gt; | <strong>/SourceName:</strong>&lt;<em>image_name</em>&gt;}</p>
<p><strong>/DestinationImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p>[<strong>/DestinationName:</strong>&lt;<em>Name</em>&gt;]</p>
<p>[<strong>/Compress:</strong>{<em>fast</em>|<em>max</em>|<em>none</em>|<em>recovery</em>}]</p>
<p>[<strong>/Bootable</strong>]</p>
<p>[<strong>/WIMBoot</strong>]</p>
<p>[<strong>/CheckIntegrity</strong>]</p></td>
<td align="left"><p>Exports a copy of the specified image to another file. The source and destination files must use the same compression type. You can also optimize an image by exporting to a new image file. When you modify an image, DISM stores additional resource files that increase the overall size of the image. Exporting the image will remove unnecessary resource files.</p>
<p>This command-line option does not apply to virtual hard disk (VHD) files.</p>
<p><strong>/SWMFile</strong> enables you to reference split .wim files. <em>pattern</em> is the naming pattern and location of split files. You can also specify wildcard characters. For example, &quot;E:\image\install*.swm&quot; will export the split files in the E:\image directory named install1.swm, install2.swm, and so on.</p>
<p><strong>/Compress</strong> specifies the type of compression used for the initial capture operation. The <strong>/Compress</strong> argument does not apply when you export an image to an existing .wim file, you can only use this argument when you export an image to a new .wim file. The <strong>maximum</strong> option provides the best compression, but takes more time to capture the image. The <strong>fast</strong> option provides faster image compression, but the resulting files are larger than those compressed by using the <strong>maximum</strong> option. This is also the default compression type that is used if you do not specify the argument. Use the <strong>recovery</strong> option to export push-button reset images. The resulting files are much smaller in size, which in turn, greatly reduce the amount of disk space needed for saving the push-button reset image on a recovery drive. The destination file must be specified with an <strong>.esd</strong> extension. The <strong>none</strong> option does not compress the captured image at all.</p>
<p><strong>/Bootable</strong> marks a volume image as being a bootable image. This argument is available only for WinPE images. Only one volume image can be marked as bootable in a .wim file.</p>
<p>Use <strong>/WIMBoot</strong> to apply the image with Windows image file boot (WIMBoot) configuration. This only applies to Windows 8.1 images that you want to export as a WIMBoot file.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Export-Image /SourceImageFile:install.wim /SourceIndex:1 /DestinationImageFile:install2.wim</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Get-MountedImageInfo</strong></p></td>
<td align="left"><p>Lists the images that are currently mounted and information about the mounted image such as whether the image is valid, read/write permissions, mount location, mounted file path, and mounted image index.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Get-MountedImageInfo</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Get-ImageInfo</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image.wim</em>&gt;</p>
<p>[{<strong>/Index:</strong>&lt;<em>Image_index</em>&gt; | <strong>/Name:</strong>&lt;<em>Image_name</em>&gt;}]</p></td>
<td align="left"><p>Displays information about the images that are contained in the .wim, vhd or .vhdx file. When used with the <strong>/Index</strong> or <strong>/Name</strong> argument, information about the specified image is displayed, which includes if an image is a WIMBoot image, if the image is Windows 8.1, see [Take Inventory of an Image or Component Using DISM](take-inventory-of-an-image-or-component-using-dism.md). The <strong>/Name</strong> argument does not apply to VHD files. You must specify <strong>/Index:1</strong> for VHD files.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Get-ImageInfo /ImageFile:C:\test\offline\install.wim</code></pre>
<pre class="syntax" space="preserve"><code>Dism /Get-ImageInfo /ImageFile:C:\test\images\myimage.vhd /Index:1</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Get-WIMBootEntry</strong></p>
<p>Arguments:</p>
<p><strong>/Path:</strong>&lt;<em>volume_path</em>&gt;</p></td>
<td align="left"><p>Use <strong>/Get-WIMBootEntry</strong> to display WIMBoot configuration entries for the specified disk volume.</p>
<p>For more information about how to display WIMBoot configuration entries, see [Take Inventory of an Image or Component Using DISM](take-inventory-of-an-image-or-component-using-dism.md).</p>
<p>This only applies to Windows 8.1.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Get-WIMBootEntry /Path:C:\</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/List-Image</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p>{<strong>/Index:</strong>&lt;<em>image_index</em>&gt; | <strong>/Name:</strong>&lt;<em>image_name</em>&gt;}</p></td>
<td align="left"><p>Displays a list of the files and folders in a specified image.</p>
<p>This command-line option does not apply to virtual hard disk (VHD) files.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /List-Image /ImageFile:install.wim /Index:1</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Mount-Image</strong></p>
<p>Arguments:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image</em>&gt;</p>
<p>{<strong>/Index:</strong>&lt;<em>image_index</em>&gt; | <strong>/Name:</strong>&lt;<em>image_name</em>&gt; }</p>
<p></p>
<p></p>
<p><strong>/MountDir:</strong>&lt;<em>path_to_mount_directory</em>&gt;</p>
<p>[<strong>/ReadOnly</strong>]</p>
<p>[<strong>/Optimize</strong>]</p>
<p>[<strong>/CheckIntegrity</strong>]</p></td>
<td align="left"><p>Mounts an image from a .wim, .vhd or .vhdx file to the specified directory so that it is available for servicing.</p>
<p><strong>/ReadOnly</strong> sets the mounted image with read-only permissions. Optional.</p>
<div class="alert">
<strong>Note</strong>  
<p>An index or name value is required for most operations that specify a .wim file.</p>
</div>
<div>
 
</div>
<p>You can use <strong>/Optimize</strong> to reduce initial mount time.</p>
<div class="alert">
<strong>Important</strong>  
<p>When using the <strong>/optimize</strong> argument, processes that are ordinarily performed during a mount will instead be completed the first time that you access a directory. As a result, there may be an increase in the time that is required to access a directory for the first time after mounting an image using the <strong>/optimize</strong> argument.</p>
</div>
<div>
 
</div>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Mount-Image /ImageFile:C:\test\images\myimage.wim /index:1 /MountDir:C:\test\offline</code></pre>
<pre class="syntax" space="preserve"><code>Dism /Mount-Image /ImageFile:C:\test\images\myimage.vhd /index:1 /MountDir:C:\test\offline /ReadOnly</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/Optimize-Image</strong> <strong>/WIMBoot</strong></p></td>
<td align="left"><p>Performs specified configurations to an offline image.</p>
<p>Use <strong>/WIMBoot</strong> to configure an offline image for installing on a Windows image file boot (WIMBoot) system.</p>
<p><strong>/Optimize-Image /WIMBoot</strong> only applies to Windows 8.1 images that have been captured or exported as a WIMBoot file.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<div class="alert">
<strong>Important</strong>  
<p>Only use <strong>/Optimize-Image</strong> with images that will be used for WIMBoot supported systems. If <strong>/Optimize-Image</strong> is used with a non-WIMBoot supported system image, Windows may not work as expected, after installation on a non-WIMBoot supported device.</p>
</div>
<div>
 
</div>
<p>Examples:</p>
<pre class="syntax" space="preserve"><code>DISM.exe /Image:C:\test\offline /Optimize-Image /WIMBoot</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Remount-Image</strong></p>
<p>Arguments:</p>
<p><strong>/MountDir:</strong>&lt;<em>path_to_mount_directory</em>&gt;</p></td>
<td align="left"><p>Remounts a mounted image that has become inaccessible and makes it available for servicing.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Remount-Image /MountDir:C:\test\offline</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Split-Image</strong></p>
<p>Arguments for WIM:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p><strong>/SWMFile:</strong>&lt;<em>path_to_swm</em>&gt;</p>
<p><strong>/FileSize:</strong>&lt;<em>MB-Size</em>&gt;</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>Arguments for FFU:</p>
<p><strong>/ImageFile:</strong>&lt;<em>path_to_image_file</em>&gt;</p>
<p><strong>/SFUFile:</strong>&lt;<em>pattern</em>&gt;</p>
<p><strong>/FileSize:</strong>&lt;<em>MB-Size</em>&gt;</p></td>
<td align="left"><p><strong>WIM: Splits an existing .wim file into multiple read-only split .swm files.</strong></p>
<p>This option creates the .swm files in the specified directory, naming each file the same as the specified <em>path_to_swm</em>, but with an appended number. For example, if you set <em>path_to_swm</em> as <code>c:\Data.swm</code>, this option creates a Data.swm file, a Data2.swm file, a Data3.swm file, and so on, defining each portion of the split .wim file and saving it to the C:\ directory.</p>
<p>This command-line option does not apply to virtual hard disk (VHD) files.</p>
<p><strong>/FileSize</strong> specifies the maximum size in megabytes (MB) for each created file.</p>
<div class="alert">
<strong>Note</strong>   If a single file is larger than the value specified in the <strong>/FileSize</strong> option, one of the split .swm files that results will be larger than the value specified in the <strong>/FileSize</strong> option, in order to accommodate the large file.
</div>
<div>
 
</div>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Split-Image /ImageFile:install.wim /SWMFile:split.swm /FileSize:650</code></pre>
<p><strong>FFU: Splits an existing full-flash update (.ffu) file into multiple read-only split .sfu files.</strong></p>
<p>This option creates the .sfu files in the specified directory, naming each file the same as the specified <strong>/SFUFile</strong>, but with an appended number. For example, if you use <code>c:\flash.sfu</code>, you'll get a flash.sfu file, a flash2.ffu file, a flash3.sfu file, and so on, defining each portion of the split .sfu file and saving it to the C:\ directory.</p>
<p><strong>/ImageFile</strong> specifies the path of a .FFU file, example: flash.ffu.</p>
<p>Use <strong>/SFUFile</strong> to reference split FFU files (SFUs). &lt;pattern&gt; is the naming pattern and location of split files.</p>
<p><strong>/FileSize</strong> specifies the maximum size in megabytes (MB) for each created file.</p>
<p>Examples:</p>
<pre class="syntax" space="preserve"><code>DISM.exe /Split-Ffu /ImageFile:flash.ffu /SFUFile:flash.sfu /FileSize:650</code></pre>
<p>Applies to: Windows 10 for desktop editions only.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Option: <strong>/Unmount-Image</strong></p>
<p>Arguments:</p>
<p><strong>/MountDir:</strong>&lt;<em>path_to_mount_directory</em>&gt;</p>
<p>{<strong>/Commit</strong> | <strong>/Discard</strong>}</p>
<p>[<strong>/CheckIntegrity</strong>]</p>
<p>[<strong>/Append</strong>]</p></td>
<td align="left"><p>Unmounts the .wim, .vhd or .vhdx file and either commits or discards the changes that were made when the image was mounted.</p>
<p>You must use either the <strong>/commit</strong> or <strong>/discard</strong> argument when you use the <strong>/Unmount-Image</strong> option.</p>
<p><strong>/CheckIntegrity</strong> detects and tracks .wim file corruption when used with capture, unmount, export, and commit operations. <strong>/CheckIntegrity</strong> stops the operation if DISM detects that the .wim file is corrupted when used with apply and mount operations.</p>
<p><strong>/Append</strong> adds the modified image to the existing .wim file instead of overwriting the original image.</p>
<p>The <strong>/CheckIntegrity</strong> and <strong>/Append</strong> arguments do not apply to virtual hard disk (VHD) files.</p>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>Dism /Unmount-Image /MountDir:C:\test\offline /commit</code></pre>
<pre class="syntax" space="preserve"><code>Dism /Unmount-Image /MountDir:C:\test\offline /discard</code></pre></td>
</tr>
<tr class="even">
<td align="left"><p>Option: <strong>/Update-WIMBootEntry</strong></p>
<p>Arguments:</p>
<p><strong>/Path:</strong>&lt;<em>Volume_path</em>&gt;</p>
<p><strong>/DataSourceID:</strong>&lt;<em>Data_source_id</em>&gt;</p>
<p><strong>/ImageFile:</strong>&lt;<em>Renamed_image_path</em>&gt;</p></td>
<td align="left"><p>Use <strong>/Update-WIMBootEntry</strong> Updates the WIMBoot configuration entry, associated with the specified data source ID, with the renamed image file or moved image file path.</p>
<div class="alert">
<strong>Note</strong>  
<p><strong>/Update-WIMBootEntry</strong> requires a restart in order for any updates to take effect.</p>
</div>
<div>
 
</div>
<p>Use <strong>/Path</strong> to specify the disk volume of the WIMBoot configuration.</p>
<p>Use <strong>/DataSourceID</strong> to specify the data source ID as displayed by <strong>/Get-WIMBootEntry</strong>.</p>
<p>This only applies to Windows 8.1.</p>
<div class="alert">
<strong>Important</strong>  
<p>This feature isn't supported in Windows 10.</p>
</div>
<div>
 
</div>
<p>Example:</p>
<pre class="syntax" space="preserve"><code>DISM.exe /Update-WIMBootEntry /Path:C:\ /DataSourceID:0 /ImageFile:R:\Install.wim</code></pre></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[DISM - Deployment Image Servicing and Management Technical Reference for Windows](dism---deployment-image-servicing-and-management-technical-reference-for-windows.md)

[What is DISM?](what-is-dism.md)

[DISM Global Options for Command-Line Syntax](dism-global-options-for-command-line-syntax.md)

[Deploy Windows using Full Flash Update (FFU)](deploy-windows-using-full-flash-update--ffu-.md)

[WIM vs. VHD vs. FFU: comparing image file formats](wim-vs-ffu-image-file-formats.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Image%20Management%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




