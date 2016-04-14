---
Description: 'Bootsect Command-Line Options'
MS-HAID: 'p\_adk\_online.bootsect\_command\_line\_options\_auth\_8\_tech\_ref'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Bootsect Command-Line Options'
---

# Bootsect Command-Line Options


Bootsect.exe updates the master boot code for hard disk partitions to switch between Bootmgr and NT Loader (**NTLDR**). You can use this tool to restore the boot sector on your computer. This tool replaces **FixFAT** and **FixNTFS**.

## <span id="Bootsect_Commands"></span><span id="bootsect_commands"></span><span id="BOOTSECT_COMMANDS"></span>Bootsect Commands


Bootsect uses the following command-line options:

**bootsect {/help | /nt52 | /nt60} {SYS | ALL | &lt;DriveLetter:&gt;} \[/force\] /mbr**

For example, to apply the master boot code that is compatible with NTLDR to the volume labeled E, use the following command:

**bootsect /nt52 E:**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Command-line options</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>/help</strong></p></td>
<td align="left"><p>Displays these usage instructions.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/nt52</strong></p></td>
<td align="left"><p>Applies the master boot code that is compatible with NTLDR to <strong>SYS</strong>, <strong>ALL</strong>, or &lt;DriveLetter&gt;. The operating system installed on <strong>SYS</strong>, <strong>ALL</strong>, or &lt;DriveLetter&gt; must be older than Windows Vista.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/nt60</strong></p></td>
<td align="left"><p>Applies the master boot code that is compatible with Bootmgr to <strong>SYS</strong>, <strong>ALL</strong>, or &lt;DriveLetter&gt;. The operating system installed on <strong>SYS</strong>, <strong>ALL</strong>, or &lt;DriveLetter&gt; must be Windows 8, Windows® 7, Windows Vista, Windows Server® 2012, Windows Server 2008 R2, or Windows Server 2008.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>SYS</strong></p></td>
<td align="left"><p>Updates the master boot code on the system partition that is used to boot Windows.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>ALL</strong></p></td>
<td align="left"><p>Updates the master boot code on all partitions. The <strong>ALL</strong> option does not necessarily update the boot code for each volume. Instead, this option updates the boot code on volumes that can be used as Windows boot volumes, which excludes any dynamic volumes that are not connected with an underlying disk partition. This restriction is present because boot code must be located at the beginning of a disk partition.</p></td>
</tr>
<tr class="even">
<td align="left"><p>&lt;DriveLetter&gt;</p></td>
<td align="left"><p>Updates the master boot code on the volume associated with this drive letter. Boot code will not be updated if either:</p>
<ul>
<li><p>&lt;DriveLetter&gt; is not associated with a volume</p></li>
<li><p>&lt;DriveLetter&gt; is associated with a volume not connected to an underlying disk partition.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>/force</strong></p></td>
<td align="left"><p>Forcibly dismounts the volumes during the boot code update. You must use this option with caution.</p>
<p>If Bootsect.exe cannot gain exclusive volume access, then the file system may overwrite the boot code before the next reboot. Bootsect.exe always attempts to lock and dismount the volume before each update. When <strong>/force</strong> is specified, a forced dismount is tried if the initial lock attempt fails. A lock can fail, for example, if files on the destination volume are currently opened by other programs.</p>
<p>When successful, a forced dismount enables exclusive volume access and a reliable boot code update even though the initial lock failed. At the same time, a forced dismount invalidates all open handles to files on the destination volume. This can cause unexpected behavior from the programs that opened these files. Therefore, use this option with caution.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>/mbr</strong></p></td>
<td align="left"><p>Updates the master boot record without changing the partition table on sector 0 of the disk that contains the partition specified by <strong>SYS</strong>, <strong>ALL</strong>, or &lt;drive letter&gt;. When used with the <strong>/nt52</strong> option, the master boot record is compatible with operating systems older than Windows Vista. When used with the <strong>/nt60</strong> option, the master boot record is compatible with Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008 R2, or Windows Server 2008.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[BCDboot Command-Line Options](bcdboot-command-line-options-8-techref-di.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Bootsect%20Command-Line%20Options%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




