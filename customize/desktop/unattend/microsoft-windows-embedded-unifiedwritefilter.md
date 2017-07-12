---
title: Microsoft-Windows-Embedded-UnifiedWriteFilter
description: You can use unified write filter (UWF) in your enterprise device to help protect your physical storage media, including most standard writable storage types that are supported by the OS, such as physical hard disks, solid-state drives, internal USB devices, external SATA devices, and so on. You can also use UWF to make read-only media appear to the OS as a writeable volume.Important  You cannot use UWF to protect external USB devices or flash drives.� UWF intercepts all write attempts to a protected volume and redirects those write attempts to a virtual overlay. This improves the reliability and stability of your device and reduces the wear on write-sensitive media, such as flash memory media like solid-state drives.The overlay does not mirror the entire volume, but dynamically grows to keep track of redirected writes. Generally the overlay is stored in system memory, although you can cache a portion of the overlay on a physical volume.Note � UWF fully supports the NTFS system; however, during device startup, NTFS file system journal files can write to a protected volume before UWF has loaded and started protecting the volume. .
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DBF3BA52-582E-44CB-A843-EF4FBF3B4CB7
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Microsoft-Windows-Embedded-UnifiedWriteFilter


You can use unified write filter (UWF) in your enterprise device to help protect your physical storage media, including most standard writable storage types that are supported by the OS, such as physical hard disks, solid-state drives, internal USB devices, external SATA devices, and so on. You can also use UWF to make read-only media appear to the OS as a writeable volume.

**Important**  
You cannot use UWF to protect external USB devices or flash drives.

 

UWF intercepts all write attempts to a protected volume and redirects those write attempts to a virtual overlay. This improves the reliability and stability of your device and reduces the wear on write-sensitive media, such as flash memory media like solid-state drives.

The overlay does not mirror the entire volume, but dynamically grows to keep track of redirected writes. Generally the overlay is stored in system memory, although you can cache a portion of the overlay on a physical volume.

**Note**  
UWF fully supports the NTFS system; however, during device startup, NTFS file system journal files can write to a protected volume before UWF has loaded and started protecting the volume.

 

## Child elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Topic</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[AddAllVolume](microsoft-windows-embedded-unifiedwritefilter-addallvolume.md)</p></td>
<td><p>Specifies whether to protect all volumes with UWF.</p></td>
</tr>
<tr class="even">
<td><p>[Binding](microsoft-windows-embedded-unifiedwritefilter-binding.md)</p></td>
<td><p>Specifies whether to bind the physical volume by drive letter or by volume name.</p></td>
</tr>
<tr class="odd">
<td><p>[BootStatusPolicy](microsoft-windows-embedded-unifiedwritefilter-bootstatuspolicy.md)</p></td>
<td><p>Specifies the display policy of Windows boot loader errors.</p></td>
</tr>
<tr class="even">
<td><p>[DisableAutoDefrag](microsoft-windows-embedded-unifiedwritefilter-disableautodefrag.md)</p></td>
<td><p>Specifies whether to disable automatic disk defragmentation.</p></td>
</tr>
<tr class="odd">
<td><p>[DomainSecretKeyPersisted](microsoft-windows-embedded-unifiedwritefilter-domainsecretkeypersisted.md)</p></td>
<td><p>Specifies whether to persist the domain secret key on a device.</p></td>
</tr>
<tr class="even">
<td><p>[OverlayCriticalThreshold](microsoft-windows-embedded-unifiedwritefilter-overlaycriticalthreshold.md)</p></td>
<td><p>Specifies the critical threshold size, in MB, for the UWF overlay.</p></td>
</tr>
<tr class="odd">
<td><p>[OverlayMaximumSize](microsoft-windows-embedded-unifiedwritefilter-overlaymaximumsize.md)</p></td>
<td><p>Specifies the maximum overlay size, in MB, for the UWF overlay.</p></td>
</tr>
<tr class="even">
<td><p>[OverlayType](microsoft-windows-embedded-unifiedwritefilter-overlaytype.md)</p></td>
<td><p>Specifies the type of overlay storage used by UWF.</p></td>
</tr>
<tr class="odd">
<td><p>[OverlayWarningThreshold](microsoft-windows-embedded-unifiedwritefilter-overlaywarningthreshold.md)</p></td>
<td><p>Specifies the overlay warning threshold size, in MB, for UWF.</p></td>
</tr>
<tr class="even">
<td><p>[ProtectedVolumeList](microsoft-windows-embedded-unifiedwritefilter-protectedvolumelist.md)</p></td>
<td><p>Contains settings that you can configure for the volume protected by UWF.</p></td>
</tr>
<tr class="odd">
<td><p>[RegistryExceptionsUserDefined](microsoft-windows-embedded-unifiedwritefilter-registryexceptionsuserdefined.md)</p></td>
<td><p>Specifies the registry keys to exclude from being filtered. When a registry key is in the exclusion list, all writes to that registry key bypass UWF filtering and are written directly to the registry and persist after the device restarts.</p></td>
</tr>
<tr class="even">
<td><p>[TSCALPersisted](microsoft-windows-embedded-unifiedwritefilter-tscalpersisted.md)</p></td>
<td><p>Specifies whether the Terminal Services Client Access Licensing (TSCAL) registry key is in the UWF exclusion list.</p></td>
</tr>
</tbody>
</table>

 

## Applies to


To determine whether a component applies to the image you’re building, load your image into Windows SIM and search for the component or setting name. For information on how to view components and settings, see [Configure Components and Settings in an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915078).

 

 






