---
title: UEFI firmware requirements
description: Provides guidance on what an OEM should do to enable UEFI
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 10/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# United Extensible Firmware Interface (UEFI) firmware requirements
When the devices starts, the firmware interface controls the booting process of the PC, and then passes control to Windows or another operating system.
UEFI is a replacement for the older BIOS firmware interface and the Extensible Firmware Interface (EFI) 1.10 specifications.
More than 140 leading technology companies participate in the Unified EFI Forum, including AMD, AMI, Apple, Dell, HP, IBM, Insyde, Intel, Lenovo, Microsoft, and Phoenix Technologies.

## UEFI benefits
Firmware that meets the UEFI 2.3.1 specifications provides the following benefits:
- Ability to support Windows 10 security features like Secure Boot, Windows Defender Device Guard, Windows Defender Credential Guard, and Windows Defender Exploit Guard. All require UEFI firmware.
- Faster boot and resume times.
- Ability to use security features such as Secure Boot that helps prevent untrusted code from running before the operating system is loaded. For more information, see [Secure boot](OEM-secure-boot.md).
- Ability to more easily support large hard drives (more than 2 terabytes) and drives with more than four partitions.
- Compatibility with legacy BIOS. Some UEFI-based PCs contain a Compatibility Support Module (CSM) that emulates earlier BIOS, providing more flexibility and compatibility for end users. To use the CSM, Secure Boot must be disabled. 
- Support for multicast deployment, which allows PC manufacturers to broadcast a PC image that can be received by multiple PCs without overwhelming the network or image server.
- Support for UEFI firmware drivers, applications, and option ROMs.



## Media installation considerations
To download Windows, see [the Windows 10 download page](https://www.microsoft.com/en-us/software-download/windows10). If you want to use media like a USB flash drive, a DVD, or an ISO, dowload the [Windows Media creation tool](https://www.microsoft.com/en-us/software-download/windows10?d2784474-fdb0-4e9d-9e47-5e88c0e053ec=True). 

## Boot requirements
<p>As the OEM, you must provide support for the features outlined in the [Hardware Compatibility Specification for Systems for Windows](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx), specifically the following items. </p>

- [System.Fundamentals.Firmware.UEFIBitLocker](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefibitlocker)
- [System.Fundamentals.Firmware.UEFICompatibility](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareueficompatibility)
- [System.Fundamentals.Firmware.UEFIDefaultBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefidefaultboot)
- [System.Fundamentals.Firmware.UEFILegacyFallback](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefilegacyfallback)
- [System.Fundamentals.Firmware.UEFISecureBoot](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefisecureboot)
- [System.Fundamentals.Firmware.UEFITimingClass](https://msdn.microsoft.com/en-us/library/windows/hardware/dn932805.aspx#systemfundamentalsfirmwareuefitimingclass)

## Runtime requirements
Windows minimizes its use of UEFI services during operating system runtime and, wherever possible, relies on runtime firmware such as ACPI and Windows drivers. Windows uses the following UEFI Runtime Services to manage NVRAM boot entries and hardware error records after ExitBootServices() is called.
- GetVariable
- GetNextVariableName
- SetVariable
- QueryVariableInfo

## Hibernation State (S4) transition requirements
Platform firmware must ensure that operating system physical memory is consistent across S4 sleep state transitions, in both size and location.
Operating system physical memory is defined according to the ACPI 3.0 specification as any memory that is described by the firmware system address map interface with a memory type other than AddressRangeReserved [2], AddressRangeUnusable [5], or Undefined [any value greater than 5].

On a UEFI platform, firmware runtime memory must be consistent across S4 sleep state transitions, in both size and location. Runtime memory is defined according to the UEFI specification as any memory that is described by the GetMemoryMap() boot service, with the attribute EFI_MEMORY_RUNTIME.

## BCD System Store Settings for UEFI
For a typical deployment scenario, you do not need to modify the BCD store, but there are three areas that you can modify. They are: Windows boot manager, Windows boot loader, and Windows memory tested. 

### Windows Boot Manager Settings for UEFI
Windows Boot Manager manages the boot process. UEFI-based systems contain a firmware boot manager, Bootmgfw.efi, that loads an EFI application that is based on variables that are stored in NVRAM.
The BCD settings for the device and path elements in Windows Boot Manager indicate the firmware boot manager. The template that is named BCD-template for Windows includes the following settings for Windows Boot Manager.

| Item | Description |
|------|-------------|
| identifier | {bootmgr} |
| device | partition=\Device\HarddiskVolume1 |
| path | \EFI\Microsoft\Boot\bootmgfw.efi
| description | Windows Boot Manager |

#### Device setting
The device element specifies the volume that contains Windows Boot Manager. For UEFI systems, the device element for Windows Boot Manager is set to the system partition volume letter. To determine the correct volume letter, use the Diskpart tool to view the disk partitions. The following example assumes that the system has a single hard drive that has multiple partitions, including a system partition that has been assigned a drive letter of S.

The following Diskpart commands select disk 0 and then list the details of the volumes on that disk, including their drive letters. It shows volume 2 as the system partition.

```
DISKPART> select disk 0
DISKPART> list volume

  Volume ###  Ltr  Label   Fs     Type        Size     Status     Info
  ----------  ---  ------  -----  ----------  -------  ---------  ------
  Volume 0     D           NTFS   Partition    103 GB  Healthy
  Volume 1     C           NTFS   Partition     49 GB  Healthy    Boot
  Volume 2     S           FAT32  Partition    200 MB  Healthy    System
```

If the system partition does not have an assigned drive letter, assign one by using the **Diskpart assign** command. The following example assumes that the system partition is volume 2 and assigns it S as the drive letter.

```
Diskpart
select disk 0
list volume
select volume 2   // assuming volume 2 is the system partition
assign letter=s
```

After you have determined the system partition volume, set the `device` element for Windows Boot Manager to the corresponding drive letter. The following example sets `device` to drive S.

```
Bcdedit /set {bootmgr} device partition=s:// system partition
```

#### Path setting
The path element specifies the location of the Windows Boot Manager application on that volume. For UEFI systems, `path` indicates the firmware boot manager, whose path is \\EFI\\Microsoft\\Boot\\Bootmgfw.efi.

You can confirm that BCD-template has the correct path by enumerating the values in the store, as follows:

```
bcdedit /store bcd-template /enum all
```

To explicitly set path to \\EFI\\Microsoft\\Boot\\Bootmgfw.efi, use the following command.

```
Bcdedit /set {bootmgr} path \efi\microsoft\boot\bootmgfw.efi
```

#### Windows boot loader settings
A BCD store has at least one instance, and optionally multiple instances, of the Windows boot loader. A separate BCD object represents each instance. Each instance loads one of the installed versions of Windows that has a configuration that the object's elements have specified. Each Windows boot loader object has its own identifier, and the object's `device` and `path` settings indicate the correct partition and boot application.

`BCD-template` for Windows has a single Windows boot loader object that has the following settings.

```
## Windows Boot Loader

identifier              {9f25ee7a-e7b7-11db-94b5-f7e662935912}
device                  partition=C:
path                    \Windows\system32\winload.efi
description             Microsoft Windows Server
locale                  en-US
inherit                 {bootloadersettings}
osdevice                partition=C:
systemroot              \Windows
```

The identifier for this Windows boot loader is {9f25ee7a-e7b7-11db-94b5-f7e662935912}. You can use this GUID on your system or let the BCDEdit tool generate a new GUID for you.

To simplify BCDEdit commands, you can specify one of the Windows boot loaders in the BCD system store as the default loader. You can then use the standard identifier (`{default}`) in place of the full GUID.The following example specifies the Windows boot loader for EFI as the default boot loader, assuming that it uses the identifier GUID from BCD-template.

```
Bcdedit /default {9f25ee7a-e7b7-11db-94b5-f7e662935912}
```

#### Device and OSDevice Settings
The following elements specify key locations:

The device element specifies the partition that contains the boot application.

The osdevice element specifies the partition that contains the system root.

For the Windows boot loader for EFI, both elements are usually set to the drive letter of the Windows system partition. However, if BitLocker is enabled or a computer has multiple installed versions of Windows, osdevice and device might be set to different partitions.BCD-template sets both elements to drive C, which is the typical value. You can also explicitly set the osdevice and device values, as shown in the following example. The example also assumes that you have specified the Windows boot loader for EFI as the default boot-loader object.

```
Bcdedit /set {default} device partition=c:
Bcdedit /set {default} osdevice partition=c:
```

#### Windows memory tester settings

The Windows memory tester (`{memdiag}`) runs memory diagnostics at boot time. The BCD settings for the application's `device` and `path` elements indicate the correct application.

**Note**  
Note: Intel Itanium computers do not include a Windows memory tester and do not require `{memdiag}` settings.

 

BCD-template for Windows has the following settings.

```
## Windows Memory Tester

identifier              {memdiag}
device                  partition=\Device\HarddiskVolume1
path                    \boot\memtest.exe
description             Windows Memory Diagnostic
```

#### Other settings
You should set Windows Boot Manager to be the first item in the display order of the UEFI firmware, as shown in the following example.

```
Bcdedit /set {fwbootmgr} displayorder {bootmgr} /addfirst
```

You should also specify the topmost Windows boot loader application in the Windows Boot Manager display order. The following example shows how to put a specified Windows boot loader at the top of the display order.

```
Bcdedit /set {bootmgr} displayorder {<GUID>} /addfirst
```

In the preceding example, &lt;GUID&gt; is the identifier for the specified Windows boot loader object. The next section discusses this identifier in greater detail.

**Note**  
A multiboot system that has multiple installed operating systems has multiple instances of the Windows boot loader. Each instance of the Windows boot loader has its own identifier. You can set the default Windows boot loader (`{default}`) to any of these identifiers.


## Related Topics
- [Validating Windows UEFI firmware update](OEM-validate-UEFI-update.md)