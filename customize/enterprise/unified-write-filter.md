---
title: Unified Write Filter (UWF) feature
description: Unified Write Filter (UWF) feature
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 05f82dbf-64e7-4ed2-8932-9abcfad59598
author: kpacquer
ms.author: kenpacq
ms.date: 10/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Unified Write Filter (UWF) feature

Unified Write Filter (UWF) helps to protect your drives by intercepting and redirecting any writes to the drive (app installations, settings changes, saved data) to a virtual overlay. The virtual overlay is a temporary location that is usually cleared during a reboot or when a guest user logs off. 

Benefits:

* Provides a clean experience for shared workspaces, thin clients, or workspaces that have frequent guests, like school, library or hotel computers. Guests can install software and use the device, then after the device reboots, the next guest receives a clean experience. 

* Increases security and reliability for kiosks, IoT-embedded devices, or other devices where new apps are not expected to be frequently added.

* Can be used to reduce wear on solid-state drives and other write-sensitive media.

UWF replaces the Windows 7 Enhanced Write Filter (EWF) and the File Based Write Filter (FBWF).

## Features

* UWF can protect most standard writable storage types that are supported by Microsoft Windows, such as physical hard disks, solid-state drives, internal USB devices, external SATA devices, and so on. You cannot use UWF to protect external removable drives, USB devices or flash drives. 

* You can use UWF to make read-only media appear to the OS as a writable volume.

* You can manage UWF locally or remotely from Intune using the [UnifiedWriteFilter CSP](https://docs.microsoft.com/windows/client-management/mdm/unifiedwritefilter-csp) or by using the [UWF WMI](https://docs.microsoft.com/windows-hardware/customize/enterprise/uwf-wmi-provider-reference).


## Requirements
Windows 10 Enterprise or Windows 10 Education

## Limitations

UWF fully supports the NTFS file system; however, during device startup, NTFS file system journal files can write to a protected volume before UWF has loaded and started protecting the volume.

The overlay does not mirror the entire volume, but dynamically grows to keep track of redirected writes.

## Should you use a RAM overlay or a disk overlay?

* **RAM overlay (default)**: The virtual overlay is stored in RAM, and is cleared after a reboot. 

  * By writing to RAM, you can reduce the wear on write-sensitive media like solid-state drives.
  * RAM is often more limited than drive space. As the drive overlay fills up the available RAM, device performance could be reduced, and users will eventually be prompted to reboot the device. If your users are expected to make many large writes to the overlay, consider using a disk overlay instead.

* **Disk overlay**: The virtual overlay is stored in a temporary location on the drive. By default, the overlay is cleared on reboot. 

  * You can use intelligent overlay consumption using [free-space pass-through](#freespacepassthrough).
  * On Windows 10, version 1803, we've added the [persistant overlay](#persistentoverlay) feature so you can save work in the virtual overlay even after a reboot.
 
## Overlay size

The default overlay size is 1GB. When planning device rollouts, we recommend optimizing the overlay size to fit your needs. 

As the drive overlay fills up the available RAM, device performance can be reduced. Users will eventually be prompted to reboot the device or to run a script to clear the overlay. After the overlay is cleared, all writes/changes made after the overlay was applied will be gone. 

Figuring out the right size for the overlay depends on:
* Device usage patterns
* Apps that can be accessed. (Some apps have high write volumes and will fill up the overlay much faster.)
* Time between resets. 

We recommend enabling UWF on a test device, installing the necessary apps, and putting the device through usage simulations. You can use this Powershell script to find out which files are consuming space: 

```powershell
$wmiobject = get-wmiobject -Namespace "root\standardcimv2\embedded" -Class UWF_Overlay 
$files = $wmiobject.GetOverlayFiles("c:") 
$files.OverlayFiles | select-object -Property FileName,FileSize  | export-csv -Path D:\output.csv 
```

### Overlay warnings and critical events 

* **Warning level**: by default, occurs when 512MB are used in the overlay. Set with `uwfmgr overlay set-warningthreshold`.
  
* **Critical level**: by default, occurs when 1024MB are used. Set with `uwfmgr overlay set-criticalthreshold`.

If either the warning or critical threshold is reached, the suggested course of action is to clear the contents on the overlay. You can do this by rebooting the device, or running a script to clear the contents of the overlay. 

Both events are logged into the system event log. You can use these events to trigger an event in Task Scheduler, warning the user to wrap up their usage on the device so they do not lose their content before the overlay is cleared. Event log codes:

| Overlay usage       | Source  |  Level      | Event ID |
|---------------------|---------|-------------|----------|
| Warning threshold   | uwfvol  | Warning     | 1        |
| Critical threshold  | uwfvol  | Error       | 2        |
| Back to normal      | uwfvol  | Information | 3        |

### <span id="freespacepassthrough"></span> Free-space passthrough (recommended) 
On devices with a disk overlay, you can configure free space passthrough to save overlay space and increase device uptime. With free space passthrough, only overwrites take up space on the overlay. All other writes are sent to free bits on disk. Over time, the overlay will grow slower and slower, because overwrites will just keep replacing one another.

### <span id="persistentoverlay"></span> Persistent overlay

>!NOTE
> This feature is still in beta and not yet fully supported. Test before deploying through your organization.

On devices with a disk overlay, you can choose to keep working using the overlay data, even after a reboot. Note, this mode is experimental, and we recommend thoroughly testing it before deploying. 

This give your IT department more control over when the overlay is wiped, however it will require a few more steps to configure. 

This option is not used by default.


## Terminology

* **Turn on, enable:** To make the setting available to the device and optionally apply the settings to the device. Generally *turn on* is used in the user interface or control panel, whereas *enable* is used for command line.

* **Configure:** To customize the setting or sub-settings.

## Turn on and configure UWF

UWF is an optional component and is not enabled by default in Windows 10. It must be turned on prior to configuring. You can turn on and configure UWF in a customized Windows 10 image (.wim) if Windows has not been installed. If Windows has already been installed and you are applying a provisioning package to configure UWF, you must first turn on UWF in order for a provisioning package successfully apply.

### Turn on UWF by using Control Panel

1. In the **Search the web and Windows** field, type **Programs and Features** and either press **Enter** or tap or click **Programs and Features** to open it.
1. In the **Programs and Features** window, click **Turn Windows features on or off**.
1. In the **Windows Features** window, expand the **Device Lockdown** node, and check or clear the checkbox for **Unified Write Filter**.
1. Click **OK**. The **Windows Features** window indicates Windows is searching for required files and displays a progress bar. Once found, the window indicates Windows is applying the changes. When completed, the window indicates the requested changes are completed.
1. Click **Close** to close the **Windows Features** window.

This example uses a Windows image called install.wim, but you can use the same procedure to apply a provisioning package. For more information on DISM, see [What Is Deployment Image Servicing and Management](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/what-is-dism).

When you create the WIM, you configure the settings.

### Turn on and configure UWF by using DISM

1. Open a command prompt with administrator privileges.
1. Copy install.wim to a temporary folder on hard drive (in the following steps, we'll assume it's called C:\\wim).
1. Create a new directory.

   ```cmd
   md c:\wim
   ```

1. Mount the image.

   ```cmd
   dism /mount-wim /wimfile:c:\bootmedia\sources\install.wim /index:1 /MountDir:c:\wim
   ```

1. Enable the feature.

   ```cmd
   dism /image:c:\wim /enable-feature /featureName:Client-UnifiedWriteFilter
   ```

1. Commit the change.

   ```cmd
   dism /unmount-wim /MountDir:c:\wim /Commit
   ```

If Windows has already been installed and you are applying a provisioning package to configure UWF, you must first turn on UWF in order for a provisioning package to be successfully applied.

### Turn on and configure UWF by using Windows Configuration Designer

1. Create a provisioning package in Windows Configuration Designer by following the instructions in [Create a provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-create-package).

   > [!Note]
   > When setting the file exclusion in Windows Configuration Designer, you do not need to specify the drive letter since that is already input via the Volume protection setting. For example, if the file being excluded is C:\\testdir\\test.txt, after adding a drive in Volume protection, you only need to input \\testdir\\test.txt to add this file exclusion.

1. In the Available customizations page, select **Runtime settings** &gt; **SMISettings** and then set the value for the unified write filter setting.
1. Once you have finished configuring the settings and building the provisioning package, you can apply the package to the image deployment time or runtime. See [Apply a provisioning package](https://docs.microsoft.com/en-us/windows/configuration/provisioning-packages/provisioning-apply-package) for more information. Note that the process for applying the provisioning package to a Windows 10 Enterprise image is the same.

### Turn on and configure UWF by using Windows Management Instrumentation (WMI)

If Windows has already been installed and you do not want to use a provisioning package, you can also configure UWF by using the Windows Management Instrumentation (WMI) providers. To turn on UWF using WMI, you can use the [UWF\_Filter](uwf-filter.md) function, specifically the [UWF\_Filter.Enable](uwf-filterenable.md) method. You can do this in one of the following ways:

* Use the WMI providers directly in a PowerShell script.
* Use the WMI providers directly in an application.
* Use the command line tool, [uwfmgr.exe](uwfmgrexe.md).

You must restart your device after you turn on or turn off UWF before the change takes effect.

The first time you enable UWF on your device, UWF makes the following changes to your system to improve the performance of UWF:

* Paging files are disabled.
* System restore is disabled.
* SuperFetch is disabled.
* File indexing service is turned off.
* Fast boot is disabled.
* Defragmentation service is turned off.
* BCD setting **bootstatuspolicy** is set to **ignoreallfailures**.

You can change these settings after you turn on UWF if you want to. For example, you can move the page file location to an unprotected volume and re-enable paging files.

> [!Important]
> If you add UWF to your image by using SMI settings in an unattend.xml file, turning on UWF only sets the **bootstatuspolicy** BCD setting and turns off the defragmentation service. In this case, you must manually turn off the other features and services if you want to increase the performance of UWF.

All configuration settings for UWF are stored in the registry. UWF automatically excludes these registry entries from filtering.

UWF maintains configuration settings in the registry for the current session and for the next session after a device restart. Static configuration changes do not take effect until after a device restart, and these changes are saved in the registry entries for the next session. Dynamic configuration changes occur immediately and persist after a device restart.

For more information about UWF WMI providers, see [Unified Write Filter WMI provider reference](uwf-wmi-provider-reference.md).

For more information about the command line tool for configuring UWF, see [uwfmgr.exe](uwfmgrexe.md).

## UWF overlay

In UWF, an overlay is a virtual storage space that keeps track of changes made to the underlying protected volumes.

UWF intercepts all modifications to any sector on a protected volume. A sector is the smallest unit that can be changed on a storage volume. Any time the file system attempts to modify a protected sector, UWF instead copies the sector from the protected volume to the overlay, and then modifies the overlay instead. If an application attempts to read from that sector, UWF returns the data from the overlay instead, so that the system maintains the appearance of having written to the volume, while the volume remains unchanged.

You can increase the uptime of a system by configuring UWF to use a disk-backed overlay. This causes UWF to cache a portion of the overlay on the system volume, which generally enables a significantly greater maximum overlay size. If your device is write-sensitive, you can configure UWF to maintain the overlay entirely in system memory.

UWF also supports the use of paging to increase virtual memory, if the page file exists on an unprotected volume. When paging is used together with a RAM-based overlay, the uptime of the system can be significantly increased.

UWF does not support the use of fast startup when shutting down your device. If fast startup is turned on, shutting down the device does not clear the overlay. You can disable fast startup in Control Panel by navigating to **Control Panel** &gt; **All Control Panel Items** &gt; **Power Options** &gt; **System Settings** and clearing the checkbox next to **Turn on fast startup (recommended)**.

For more information about overlays in UWF, see [Overlay for Unified Write Filter (UWF)](uwfoverlay.md).

## Volumes

A volume is a logical unit that represents an area of persistent storage to the file system that is used by the OS. A volume can correspond to a single physical storage device, such as a hard disk, but volumes can also correspond to a single partition on a physical storage device with multiple partitions, or can span across multiple physical storage devices. For example, a collection of hard disks in a RAID array can be represented as a single volume to the OS.

UWF supports all fixed volume types (except for external USB volumes), including master boot record (MBR) volumes and GUID partition table (GPT) volumes.

> [!Important]
> UWF does not support Storage Spaces. For more information, see [Storage Spaces Overview](http://go.microsoft.com/fwlink/?LinkId=690587).

When you configure UWF to protect a volume, you can specify the volume by using either a drive letter or the volume device identifier. To determine the device identifier for a volume, query the **DeviceID** property in the **Win32\_Volume**WMI class.

If you specify a volume using a drive letter, UWF uses *loose binding* to recognize the volume. By using loose binding, drive letters can be assigned to different volumes if the hardware or volume configuration changes. If you specify a volume using the volume device identifier, UWF uses *tight binding* to recognize the volume. By using tight binding, the device identifier is unique to the storage volume and is independent from the drive letter assigned to the volume by the file system.

## Exclusions

If you want to protect a volume with UWF while excluding specific files, folders, or registry keys from being filtered by UWF, you can add them to an exclusion list.

> [!Note]
> On non-NTFS file system and non-FAT volumes, for example, Extended File Allocation Table (exFAT) volumes, you can protect the volume, but cannot create file exclusions or do file commit operations on the volume. Note that writes to excluded files still influence the growth of the Overlay.

### File and folder exclusions

You can add specific files or folders on a protected volume to a file exclusion list to exclude those files and folders from being filtered by UWF. When a file or folder is in the exclusion list for a volume, all writes to that file or folder bypass UWF filtering, and are written directly to the protected volume and persist after the device restarts.

You must use an administrator account to add or remove file or folder exclusions during run time, and you must restart the device for new exclusions to take effect.

> [!Important]
> You cannot add exclusions for the following items:
>
> * \\Windows\\System32\\config\\DEFAULT
> * \\Windows\\System32\\config\\SAM
> * \\Windows\\System32\\config\\SECURITY
> * \\Windows\\System32\\config\\SOFTWARE
> * \\Windows\\System32\\config\\SYSTEM
> * \\Users\\*&lt;User Name&gt;*\\NTUSER.DAT
>
> You also cannot add exclusions for the following items:
>
> * The volume root. For example, C: or D:.
> * The \\Windows folder on the system volume.
> * The \\Windows\\System32 folder on the system volume.
> * The \\Windows\\System32\\Drivers folder on the system volume.
> * Paging files.
>
> However, you can exclude subdirectories and files under these items.

You cannot rename or move a file or folder from a protected location to an unprotected location, or vice versa. When write filters are active and you attempt to delete an excluded file or folder in Windows Explorer, the system attempts to move the file or folder to the Recycle Bin. This causes an error, because you cannot move files that are not filtered to a location that is write filter protected.

To work around this, you can disable the Recycle Bin. Alternatively, the user can press Ctrl+Shift and then left-click on the file to directly delete the excluded file, bypassing the Recycle Bin, or the user can delete the excluded file directly from a command prompt. You must restart the device for new exclusions to take effect.

For more information about common file exclusions, see [Common write filter exclusions](uwfexclusions.md).

### Virtual Hard Disk (VHD) file exclusions

When you deploy a Windows 10 Enterprise image with UWF on a VHD boot disk, you can protect the volume that contains the VHD file by adding a file exclusion for the VHD file before enabling UWF and protecting the volume.

To add a file exclusion for the VHD file, at an administrator command prompt, type the following:

```cmd
uwfmgr.exe file add-exclusion <drive containing VHD file>:\<path to VHD file>\<VHD file name>.vhd
```

For example:

```cmd
uwfmgr.exe file add-exclusion E:\VHD\test.vhd
```

### Registry exclusions

You can add specific registry keys to an exclusion list to exclude those keys from being filtered by UWF. When a registry key is in the exclusion list, all writes to that registry key bypass UWF filtering and are written directly to the registry and persist after the device restarts.

You must use an administrator account to add or remove registry exclusions during run time, and you must restart the device for new exclusions to take effect.

If you exclude a registry key, all its subkeys are also excluded from filtering. You can exclude registry subkeys only under the following registry keys:

* HKEY\_LOCAL\_MACHINE\\BCD00000000
* HKEY\_LOCAL\_MACHINE\\SYSTEM
* HKEY\_LOCAL\_MACHINE\\SOFTWARE
* HKEY\_LOCAL\_MACHINE\\SAM
* HKEY\_LOCAL\_MACHINE\\SECURITY
* HKEY\_LOCAL\_MACHINE\\COMPONENTS

> [!Note]
> UWF automatically excludes certain registry keys from being filtered. These registry keys are primarily related to UWF configuration settings and cannot be removed from the exclusion list.

For more information about common registry exclusions, see [Common write filter exclusions](uwfexclusions.md).

## UWF servicing mode

When a device is protected with UWF, you must use UWF servicing mode commands to service the device and apply updates to an image. You can use UWF servicing mode to apply Windows updates, antimalware signature file updates, and custom software or third-party software updates.

For more information about how to use UWF servicing mode to apply software updates to your device, see [Service UWF-protected devices](service-uwf-protected-devices.md).

## Troubleshooting UWF

UWF uses Windows Event Log to log events, errors and messages related to overlay consumption, configuration changes, and servicing.

For more information about how to find event log information for troubleshooting problems with Unified Write Filter (UWF), see [Troubleshooting Unified Write Filter (UWF)](uwftroubleshooting.md).

## Related topics

[Unbranded Boot](unbranded-boot.md)

[Custom Logon](custom-logon.md)

[Shell Launcher](shell-launcher.md)

[Assigned access](assigned-access.md)
