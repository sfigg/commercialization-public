---
author: Justinha
Description: Hard Disk Location Path Format
MS-HAID: 'p\_adk\_online.hard\_disk\_location\_path\_format'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Hard Disk Location Path Format
---

# Hard Disk Location Path Format


This topic describes the hard disk location-path format. This format is used to identify each disk in the DiskPart tool by using the location path. The location-path format is based on the physical connection to the computer.

For instructions that describe how to configure Windows® to identify a drive based on the location-path format, see [Configure Multiple Hard Drives](configure-multiple-hard-drives.md).

## <span id="LocationPathFormat"></span><span id="locationpathformat"></span><span id="LOCATIONPATHFORMAT"></span>Location-Path Format


The basic syntax for the location path for disks that have a Small Computer System Interface (SCSI), Serial Attached SCSI (SAS), or Redundant Array of Independent Disks (RAID) bus type is as follows:

&lt;*PnP location path of the adapter*&gt;**\#**&lt;*Bus Type*&gt;(**P**&lt;*Path ID*&gt;**T**&lt;*Target ID*&gt;**L**&lt;*LUN ID*&gt;)

The basic syntax for the location path for disks that have an Advanced Technology Attachment (ATA) or Serial ATA (SATA) bus type is as follows:

&lt;*PnP location path of the adapter*&gt;**\#**&lt;*Bus Type*&gt;(**C**&lt;*Channel ID*&gt;**T**&lt;*Target ID*&gt;**L**&lt;*LUN ID*&gt;)

The following table defines the elements in the location path.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Element</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>&lt;<em>PnP location path of the adapter</em>&gt;</p></td>
<td align="left"><p>Path of the adapter. Retrieve the path by calling the SetupDiGetDeviceProperty with the DEVPKEY_Device_LocationPaths property.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>#</strong>&lt;<em>Bus Type</em>&gt;</p></td>
<td align="left"><p>One of the following types: ATA, SCSI, SAS, or RAID.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>P</strong>&lt;<em>Path ID</em>&gt;</p></td>
<td align="left"><p>PathId field of SCSI_ADDRESS. Retrieve the PathID by calling IOCTL_SCSI_GET_ADDRESS.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>C</strong>&lt;<em>Channel ID</em>&gt;</p></td>
<td align="left"><p>PathId field of SCSI_ADDRESS. Retrieve the PathID by calling IOCTL_SCSI_GET_ADDRESS.</p>
<div class="alert">
<strong>Note</strong>  
<p>For disks that use the ATA/SATA bus type, the Channel ID refers to the same field as PathID. The prefix C is still used.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>T</strong>&lt;<em>Target ID</em>&gt;</p></td>
<td align="left"><p>TargetId field of SCSI_ADDRESS. Retrieve the TargetId by calling IOCTL_SCSI_GET_ADDRESS.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>L</strong>&lt;<em>LUN ID</em>&gt;</p></td>
<td align="left"><p>Logical Unit Number (LUN) field of SCSI_ADDRESS. Retrieve the LUN by calling IOCTL_SCSI_GET_ADDRESS.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Examples"></span><span id="examples"></span><span id="EXAMPLES"></span>Examples


The following table gives an example of a location path for each bus or disk type:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Bus or disk type</th>
<th align="left">Location path</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Integrated Development Environment (IDE), ATA, Parallel ATA (PATA), or SATA</p></td>
<td align="left"><p>PCIROOT(0)#PCI(0100)#ATA(C01T03L00)</p></td>
</tr>
<tr class="even">
<td align="left"><p>SCSI</p></td>
<td align="left"><p>PCIROOT(0)#PCI(1C00)#PCI(0000)#SCSI(P00T01L01)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SAS</p></td>
<td align="left"><p>PCIROOT(1)#PCI(0300)#SAS(P00T03L00)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Peripheral Component Interconnect (PCI) RAID</p></td>
<td align="left"><p>PCIROOT(0)#PCI(0200)#PCI(0003)#PCI(0100)#RAID(P02T00L00)</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Configure Multiple Hard Drives](configure-multiple-hard-drives.md)

[DiskPart Command-Line Syntax](http://go.microsoft.com/fwlink/?LinkId=128458)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Hard%20Disk%20Location%20Path%20Format%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




