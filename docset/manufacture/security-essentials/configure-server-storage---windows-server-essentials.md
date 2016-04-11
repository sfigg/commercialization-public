---
Description: 'Configure Server Storage - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.configure\_server\_storage\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Configure Server Storage - Windows Server Essentials'
---

# Configure Server Storage - Windows Server Essentials


## <span id="Sample_hard_disk_configurations"></span><span id="sample_hard_disk_configurations"></span><span id="SAMPLE_HARD_DISK_CONFIGURATIONS"></span>Sample hard disk configurations


The sample hard disk configurations in the following table are estimates based on typical usage and functionality. They do not address issues that affect optimal performance. You can use any type of supported hard disks for these configurations (such as SATA or SCSI), based on the preferences and needs of your customer.

**Important**  
We recommend creating two partitions on your operating system disk. Avoid using the system partition to store any business data.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server level</th>
<th align="left">Disk configuration with RAID</th>
<th align="left">Disk configuration with Storage Spaces</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Entry</p></td>
<td align="left"><ul>
<li><p>Two physical disks</p></li>
<li><p>Configured as a RAID 1 mirrored set that contains the following:</p>
<ul>
<li><p>C: volume — 60 GB</p></li>
<li><p>D: volume — 1000 GB</p></li>
</ul></li>
</ul></td>
<td align="left"><ul>
<li><p>Two physical disks</p></li>
<li><p>C: volume - 60 GB on one physical disk</p></li>
<li><p>D: volume - 1000 GB on a two way mirrored storage space (with the left space on the first physical disk and the whole space on the second physical disk)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Medium</p></td>
<td align="left"><ul>
<li><p>Three physical disks</p></li>
<li><p>Configured as a RAID 5 set that contains the following:</p>
<ul>
<li><p>C: volume — 60 GB</p></li>
<li><p>D: volume — 1500 GB</p></li>
</ul></li>
</ul></td>
<td align="left"><ul>
<li><p>Three physical disks</p></li>
<li><p>C: volume - 60 GB on one physical disk</p></li>
<li><p>D: volume - 2000 GB on a two way mirrored storage space (with the other two disks)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>High</p></td>
<td align="left"><ul>
<li><p>Five or more total physical disks</p></li>
<li><p>Two disks in a RAID 1 mirrored set that contains the C: volume — 100 GB</p></li>
<li><p>All remaining disks in a RAID 5 set that contains the following:</p>
<ul>
<li><p>D: volume — 1500 GB</p></li>
<li><p>E: volume — 1500 GB</p></li>
</ul></li>
</ul></td>
<td align="left"><ul>
<li><p>Five or more total physical disks</p></li>
<li><p>Two disks in a RAID 1 mirrored set that contains the C: volume - 100 GB</p></li>
<li><p>All remaining disks in a parity storage space that contains the following:</p>
<ul>
<li><p>D: volume – 2000 GB</p></li>
<li><p>E: volume – 2000 GB</p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

 

These recommendations take into account the size of the installed operating system, the average size of the data storage that the server uses, and the expected data storage growth over the lifetime of the server. The volumes can be partitions on a single physical disk or they can be placed on separate physical disks. Because the server stores important data for your customer, we recommend using multiple physical disks and hardware RAID or Storage Spaces to help protect your customer’s data.

## <span id="Customize_Disk_Partitions"></span><span id="customize_disk_partitions"></span><span id="CUSTOMIZE_DISK_PARTITIONS"></span>Customize Disk Partitions


To customize the partition configuration, pre-create the image using the unattend.xml file. We strongly recommended that a dedicated data partition is used in all configurations to ensure that the server can be easily backed-up and restored.

## <span id="Customize_Storage_Spaces"></span><span id="customize_storage_spaces"></span><span id="CUSTOMIZE_STORAGE_SPACES"></span>Customize Storage Spaces


To preconfigure Storage Spaces for a better customer experience, you can run the Storage Spaces configuration script from PostIC.cmd. This script must be run on the target computer, after you have completed the Windows Server Essentials installation. For more information about scripts that automate Storage Spaces management tasks, see [Deploy and Manage Storage Spaces with PowerShell](http://www.microsoft.com/download/confirmation.aspx?id=30125).

To hide the Storage Spaces configuration and management UI on the Dashboard, use the following procedure to set the registry key **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows Server\\Deployment\\StorageSpacesHidden** to 1.

**To add the StorageSpaceHidden registry key and set the value to 1**

1.  On the server, click **Start**, click **Run**, type **regedit** in the **Open** textbox, and then click **OK**.

2.  In the navigation pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, and then expand **Deployment**.

3.  Right-click **Deployment**, click **New**, and then click **DWORD Value**.

4.  For name, enter **StorageSpacesHidden**.

5.  Right-click the name, select **Modify**, enter **1** for the value data, and then click **OK**.

When this key is set, the Storage Spaces user interface will not be exposed through Dashboard or Launchpad. This allows you to apply other storage technologies like RAID.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Configure%20Server%20Storage%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




