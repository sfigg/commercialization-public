---
author: themar
Description: 'Windows Setup Command-Line Options'
ms.assetid: 16001d04-db9f-4953-abc7-37903ef47fd1
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Windows Setup Command-Line Options'
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Windows Setup Command-Line Options


The following command-line options are available for Windows Setup. Beginning with Windows 10, version 1607, you can use a setupconfig file as an alternative to passing paramters to Windows Setup on a command line. For more information, see [Windows Setup Automation Overview](windows-setup-automation-overview.md).

**setup.exe** 

[\[**/1394debug:***&lt;channel&gt;* \[**baudrate:***&lt;baudrate&gt;*\]\]](#1394debugltchannelgt-baudrateltbaudrategt)

[\[**/addbootmgrlast**\]](#addbootmgrlast)

[\[**/Auto** {**Clean** | **DataOnly** | **Upgrade**}\]](#auto-clean--dataonly--upgrade)

[\[**/busparams:***&lt;bus.device.function&gt;*\]](#busparamsltbusdevicefunctiongt)

[\[**/CompactOS** {**Enable** | **Disable**}\]](#compactos-enable--disable)

[\[**/Compat** {**IgnoreWarning** | **ScanOnly**}\]](#compat-ignorewarning--scanonly)

[\[**/CopyLogs***&lt;location&gt;*\]](#copylogsltlocationgt)

[\[**/debug:***&lt;channel&gt;* \[**baudrate:***&lt;baudrate&gt;*\]\]](#debugltportgt-baudrateltbaudrategt)

[\[**/DiagnosticPrompt** {**Enable** | **Disable**}\]](#diagnosticprompt-enable--disable)

[\[**/DynamicUpdate** {**enable** | **disable**}\]](#dynamicupdate-enable--disable)

[\[**/emsport:** {**COM1** | **COM2** | **usebiossettings** | **off**} \[**/emsbaudrate:***&lt;baudrate&gt;*\]\]](#emsport-com1--com2---off-emsbaudrateltbaudrategt)

[\[**/InstallDrivers***&lt;location&gt;*\]](#installdriversltlocationgt)

[\[**/installfrom** *&lt;path&gt;*\]](#installfrom-ltpathgt)

[\[**/InstallLangPacks***&lt;location&gt;*\]](#installlangpacksltlocationgt)

[\[**/m:***&lt;folder\_name&gt;*\] \[**/noreboot**\]](#mltfoldernamegt)

[\[**/MigrateDrivers** {**all** | **none**}\]](#migratedrivers-all--none)

[\[**/netdebug**:hostip=&lt;*w.x.y.z*&gt;,port=&lt;*n*&gt;,key=&lt;*q.r.s.t*&gt;\[,nodhcp\]\[,busparams=*n.o.p*\]\]](#netdebughostipltwxyzgtportltngtkeyltqrstgtnodhcpbusparamsnop)

[\[**/NoReboot**\]](#noreboot)

[\[**/PKey** *&lt;product key&gt;*\]](#pkey-ltproduct-keygt)

[\[**/PostOOBE***&lt;location&gt;*\[**\\setupcomplete.cmd**\]\]](#postoobeltlocationgtsetupcompletecmd)

[\[**/PostRollback***&lt;location&gt;*\[**\\setuprollback.cmd**\]\]](#postrollbackltlocationgtsetuprollbackcmd)

[\[**/Quiet** \]](#quiet)

[\[**/ReflectDrivers***&lt;location&gt;*\]](#reflectdriversltlocationgt)

[\[**/ResizeRecoveryPartition** {**Enable** | **Disable**}\]](#resizerecoverypartition-enable--disable)

[\[**/ShowOOBE** {**full** | **none**}\]](#showoobe-full--none)

[\[**/Telemetry** {**Enable** | **Disable**}\]](#telemetry-enable--disable)

[\[**/TempDrive** *&lt;drive_letter&gt;*\]](#tempdrive-ltdrivelettergt)

[\[**/unattend:***&lt;answer\_file&gt;*\]](#unattendltanswerfilegt)

[\[**/Uninstall** {**enable** | **disable**}\]](#uninstall-enable--disable)

[\[**/usbdebug:***&lt;hostname&gt;*\]](#usbdebuglthostnamegt)

[\[**/wdsdiscover**\]](#wdsdiscover)

[\[**/wdsserver:***&lt;servername&gt;*\]](#wdsserverltservernamegt)


## Setup Command-Line Options


---

### **/1394Debug**:_&lt;channel&gt;_ [**BaudRate:**_&lt;baudrate&gt;_]

Enables kernel debugging over an IEEE 1394 (FireWire) port while Windows is running and during the [windowsPE](windowspe.md) configuration pass of Windows Setup.

_&lt;channel&gt;_ specifies the debugging channel. The default value for _&lt;channel&gt;_ is **1**.

[**baudrate:**_&lt;baudrate&gt;_] specifies the baud to use when Windows transfers data during debugging. The default setting is **19200**. You can also set the _&lt;baudrate&gt;_ setting to **57600** or **115200**. 

Example:

```
Setup /1394debug:1 /baudrate:115200
```

---

### **/AddBootMgrLast**

Instructs Windows Setup to add the Windows Boot Manager as the last entry in the UEFI firmware boot order. This option is only supported on UEFI PCs running Windows PE 4.0 or later.

---

### **/Auto** {**Clean** | **DataOnly** | **Upgrade**}

Performs an automated upgrade to Windows 10 or Windows 8.1 volume license editions only.

When /auto is used, an unattend file cannot be used.

When /auto is used, Windows Setup consumes ei.cfg, an checks compatibility issues before starting the installation. If ei.cfg is malformed, setup exits silently and logs an exit code.

**Clean**: Performs an clean install of Windows.

**DataOnly**: Performs an upgrade of Windows, saving only data (and not apps.) If the data-only installation option is not available due to compatibility checks, Windows Setup will exit silently and log an exit code.

**Upgrade**: Performs an upgrade of Windows saving apps and data. If the upgrade installation option is not available, or the user needs to resolve an app compatibility issue, Windows Setup will exit silently and log an exit code.

| Exit code name                              | Exit code | Cause                                                                                            |
| ------------------------------------------- | --------- | ------------------------------------------------------------------------------------------------ |
| CONX_SETUP_EXITCODE_CONTINUE_REBOOT         | 0x3       | This upgrade was successful.                                                                     |
| CONX_SETUP_EXITCODE_RESUME_AT_COMPAT_REPORT | 0x5       | The compatibility check detected issues that require resolution before the upgrade can continue. |
| CONX_SETUP_EXITCODE_AUTO_INSTALL_FAIL       | 0x7       | The installation option (upgrade or data only) was not available.                                |

**/noautoexit**: Not used in Windows 10. In Windows 8.1, if an error is found, Windows Setup does not exit, but instead stops and stays on the setup screen until the user addresses the issue. The installation from that point on is attended.

**/performDU**: Not used in Windows 10. In Windows 8.1, Windows Setup checks for Dynamic Updates for Windows Setup.

**Examples:**
```
Setup /auto clean 
Setup /auto dataonly 
Setup /auto upgrade
```

---

### **/BusParams:**_&lt;bus.device.function&gt;_

Specifies the PCI address of a 1394, USB, or NET debug port. The bus, device, and function numbers must be in decimal format. 

Example:
```
Setup /busparams:0.29.7 
```
For more info, see [Setting Up Kernel Debugging with USB 2.0](http://go.microsoft.com/fwlink/?LinkId=317360).

---

### **/CompactOS** {**Enable** | **Disable**}

Specifies whether to use the Compact OS feature to save hard drive space. By default, Windows Setup determines whether to use this feature automatically.

**Enable**: Setup installs Windows using compressed system files.

**Disable**: Setup installs Windows using uncompressed system files

To learn more about Compact OS, see [Compact OS, single-instancing, and image optimization](compact-os.md).
```
Setup /compactos enable
```

---

### **/Compat** {**IgnoreWarning** | **ScanOnly**}

**IgnoreWarning**: Setup completes installation, ignoring any dismissible compatibility messages

**ScanOnly**: Windows Setup runs through compatibility scans, and then exits (without completing the installation) with an exit code to indicate if any compatibility concerns are present. Setup will return 0xC1900210 if no concerns are found. Setup will return 0xC1900208 if compatibility concerns are found.

Example:
```
Setup /compat /IgnoreWarning
```

If you launch Setup with <code>/Compat ScanOnly</code>:
<ul>
<li>If it does not find any compat issue, it will return MOSETUP_E_COMPAT_SCANONLY (0xC1900210)</li>
<li>If it finds Actionable compat issues, like Apps, it will return MOSETUP_E_COMPAT_INSTALLREQ_BLOCK (0xC1900208)</li>
<li>If it finds that the Mig-Choice selected is not available, it will return MOSETUP_E_COMPAT_MIGCHOICE_BLOCK (0xC1900204)</li>
<li>If it finds that machine is not eligible for Windows 10, it will return MOSETUP_E_COMPAT_SYSREQ_BLOCK (0xC1900200)</li>
<li>If it finds that machine does not have enough free space to install, it will return MOSETUP_E_INSTALLDISKSPACE_BLOCK (0xC190020E)</li>
</ul>
This command works with other switches. For example, to run Setup in the background without any UI:

```
Setup /Auto Upgrade /Quiet /Compat ScanOnly
```

To ignore common disclaimers in the UI, for example, language changes:

```
Setup /Auto Upgrade /Quiet /Compat ScanOnly /Compat IgnoreWarning
```

Most of the time, an Admin would like to look at the compat XML if Setup found compat issues. For that the admin can even use copy logs flag to collect Setup logs:

```
Setup /Auto Upgrade /Quiet /Compat ScanOnly /Compat IgnoreWarning /CopyLogs &lt;folder_path&gt;
```
This setting is new for Windows 10.

---

### **/CopyLogs**_&lt;location&gt;_

Setup will copy or upload logs(compressed) upon failure to the specified location (assuming machine/user has permission and network access to location).
Accepted parameters are local file paths and UNC network paths.

> **Note**  This runs in the system context, so it may not have permissions to copy to locations that require user permissions.

Example:

```
Setup /copylogs \\server\share\
```

This setting is new for Windows 10.

---

### **/Debug:**_&lt;port&gt;_ [**BaudRate:**_&lt;baudrate&gt;_]

Enables kernel debugging over a communications (COM) port when Windows is running, and during the [windowsPE](windowspe.md) configuration pass of Windows Setup.

_&lt;port&gt;_ specifies the debugging port. The default value for _&lt;port&gt;_ is **1**.

[**baudrate:**_&lt;baudrate&gt;_ specifies the baud to use when Windows transfers data during debugging. The default setting is **19200**. You can also set the _&lt;baudrate&gt;_ setting to **57600** or **115200**. 
For example:

```
Setup /1394debug:1 /baudrate:115200
```

---

### **/DiagnosticPrompt** {**enable** | **disable**} 

Specifies that the Command Prompt is available during Windows Setup.
 
**Enable:** The Command Prompt can be accessed by pressing Shift+F10 during Windows setup.

**Disable:** The Command Prompt is not available during Windows setup. The Command Prompt wil not be available while offline and OOBE phases are running. This is the default setting. 

Example: 

```
setup /DiagnosticPrompt enable
```

This setting is new for Windows 10, Version 1703.   

---

### **/DynamicUpdate** {**enable** | **disable**}

Specifies whether setup will perform Dynamic Update operations (search, download, and install updates). 

Example:

```
setup /auto upgrade /DynamicUpdate disable
```

This setting is new for Windows 10.

---

### **/EMSPort:** {**COM1** | **COM2** | | **off**} [**/emsbaudrate:**_&lt;baudrate&gt;_]

Enables or disables Emergency Management Services (EMS) during Windows Setup and after the server operating system has been installed. The following arguments are used to specify the behavior of EMS during Windows Setup.

**COM1** enables EMS over COM1. Supported for x86 systems only.

**COM2** enables EMS over COM2. Supported for x86 systems only.

**usebiossettings** uses the setting that the BIOS specifies. For x86 systems, Windows uses the value from the Serial Port Console Redirection (SPCR) table. If no SPCR table or EFI console device path is specified in the BIOS, Windows disables **usebiossettings**.**usebiossettings**

**off** disables EMS. If EMS is disabled in Windows Setup, you can later enable EMS by modifying the boot settings.

[**/emsbaudrate:**_&lt;baudrate&gt;_] specifies the baud to use when Windows transfers data during debugging. The default is **19200**. You can also set the _&lt;baudrate&gt;_ setting can also be set to **57600** or **115200**. 

Example:

```
Setup /emsport:COM1 /emsbaudrate:115200
```

---

### **/InstallDrivers**_&lt;location&gt;_

Adds .inf-style drivers to the new Windows 10 installation. The driver .inf can be in a folder within the specified location. The command will recurse through the specified location. 

Accepted parameters are a local file path or UNC network path to a folder that contains .inf files.

Example:

```
setup.exe /auto upgrade /installdrivers C:\Fabrikam\drivers /noreboot 
```

This setting is new for Windows 10.

---

### **/InstallFrom** _&lt;path&gt;_

Specifies a different Install.wim file to use during Windows Setup. This enables you to use a single preinstallation environment to install multiple versions of Windows images. For example, you can use a 32-bit version of Windows Setup to deploy a 64-bit Windows image. You can also use an answer file for cross-platform deployments. For more information, see “Creating a WIM for Multiple Architecture Types” in [Windows Setup Supported Platforms and Cross-Platform Deployments](windows-setup-supported-platforms-and-cross-platform-deployments.md).

_&lt;path&gt;_ specifies the path of the .wim file to install. 

Example:

```
Setup /installfrom D:\custom.wim
```

---

### **/InstallLangPacks**_&lt;location&gt;_

Adds language packs (lp.cab) to the new Windows 10 installation.

The language packs can be in a folder within the specified location. The command installs all lp.cab files and language capabilities such as text-to-speech recognition, in the folder and subfolders at the specified location.

Accepted parameters are a local file path or UNC network path to a folder that contains .inf files.

Example:

```
setup /auto upgrade /installlangpacks C:\Fabrikam\Languages\French /noreboot
```
This setting is new for Windows 10.

---

### **/m:**_&lt;folder_name&gt;_

Instructs Setup to copy alternate files from an alternate location. This option instructs Setup to look in the alternate location first, and, if files are present, to use them instead of the files from the default location.

_&lt;folder_name&gt;_ specifies the name and the location of the folder that contains the replacement files and can be any local drive location. UNC paths are not supported.

You must know where the files will be installed on the Windows installation. All the additional files must be copied to an $OEM$ folder in your installation sources or in the _&lt;folder_name&gt;_. The $OEM$ structure provides a representation of the destination installation disk. For example:

```
$OEM$\$1
```
maps to %SYSTEMDRIVE%, which could be drive C.
```
$OEM$\$$
```
maps to %WINDIR%, which could be C:\windows\.
```
$OEM$\$progs
```
maps to the program files directory.
```
$OEM$\$docs
```
maps to the user's My Documents folder.

For example, to copy an updated C:\Program Files\Messenger\Msmsgs.exe file into the Windows installation, create the following folder structure on the Pro\Sources\$OEM$\$Progs\Messenger\Msmsgs.exe installation source by using the **Setup** command:
```
Pro\sources\setup.exe /m
```
If you replace a file that Windows file protection protects, you must also copy the updated file to the local sources to be installed with Windows. For example, you may copy the file to the C:\Windows\i386 folder. The file name must be the same as the name that is used in Windows Setup. For example, add the following file and folder structure to your $OEM$ directory:
```
Pro\sources\$OEM$\$$\i386\msmsgs.ex_
```
If you use files that are not on an installation share, you must specify the folder name. In this example the _&lt;folder_name&gt;_ is C:\additional_files:
```
Setup /m:C:\additional_files
```
where C:\additional_files is your customized $OEM$ directory. For example:
```
C:\additional_files\$$\i386\msmsgs.ex_
```

If you change resources in your replacement files, you must add the updated Multilanguage User Interface (MUI) files to the installation.

---

### **/MigrateDrivers** {**all** | **none**}

Instructs Setup whether to migrate the drivers from the existing installation during the upgrade. You can specify **All** or **None**. By default, Setup decides which is best for each individual driver based on the install choice.

You can use this switch with **/installdrivers**, though it's not required.

```
Setup /auto upgrade /migratedrivers all 
Setup /auto upgrade /migratedrivers none /installdrivers N:\NewDrivers
```

---

### **/NetDebug**:hostip=&lt;_w.x.y.z_&gt;,port=&lt;_n_&gt;,key=&lt;_q.r.s.t_&gt;[,nodhcp][,busparams=_n.o.p_]

Enables kernel debugging over the network.

Use _hostip_ to identify the IP address of the host computer.

Use _port_ to identify the port. The default start port is 49152, and the default end port is 65535. 

Use _key_ to provide a password to set up a secure connection.

Use _nodhcp_ to avoid using a DHCP connection. (optional)

Use _busparams_ to select the bus number, device number, and function number of an adapter for a specific PCI bus device. (optional)

Examples:
```
setup /netdebug:hostip=10.125.4.86,port=50000,key=0.0.0.0 
setup /netdebug:hostip=10.125.4.86,port=50000,key=abcdefg.123.hijklmnop.456,nodhcp 
setup /netdebug:hostip=10.125.4.86,port=50000,key=dont.use.previous.keys,busparams=1.5.0
```

For details, see [Setting Up Kernel-Mode Debugging over a Network Cable Manually](http://go.microsoft.com/fwlink/p/?linkid=317384).

---

### **/NoReboot**

Instructs Windows Setup not to restart the computer after the down-level phase of Windows Setup completes. The **/noreboot** option enables you to execute additional commands before Windows restarts. This option suppresses only the first reboot. The option does not suppress subsequent reboots. 

Example:

```
Setup /noreboot
```

---

### **/PKey** _&lt;product key&gt;_

Supplies Setup with the specific product key. Example:

```
setup.exe /auto upgrade /pkey xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
```

This setting is new for Windows 10.

---

### **/PostOOBE**_&lt;location&gt;_[**\setupcomplete.cmd**]

After Setup is complete, run a script.

Accepted parameters are a local file path or UNC network path to a file named setupcomplete.cmd or to a folder that contains setupcomplete.cmd.
```
setup.exe /auto upgrade /postoobe c:\Fabrikam\setupcomplete.cmd
```

Path to folder that contains a script with the name: **setupcomplete.cmd**: Copies setupcomplete.cmd to $Windows.~BT to be run after OOBE.

```
setup.exe /auto upgrade /postoobe c:\Fabrikam\
```

This setting is new for Windows 10.

---

### **/PostRollback**_&lt;location&gt;_[**\setuprollback.cmd**]
If the user rolls back their version of Windows, run a script.

Accepted parameters are a local file path or UNC network path to a file named setuprollback.cmd or to a folder that contains setuprollback.cmd.

```
setup.exe /auto upgrade /postrollback c:\Fabrikam\setuprollback.cmd
```

Path to folder that contains a script with the name: **setuprollback.cmd**: Copies setuprollback.cmd to $Windows.~BT to be run after OOBE.

```
setup.exe /auto upgrade /postrollback \\server\share
```

This setting is new for Windows 10.

---

### **/Quiet**

This will suppress any Setup user experience including the rollback user experience. Example:

```
setup /auto upgrade /quiet
```

This setting is new for Windows 10.

---

### **/ReflectDrivers**_&lt;location&gt;_

Specifies the path to a folder that contains encryption drivers for a computer that has third-party encryption enabled.

```
Setup /ReflectDrivers <folder_path>
```

Make sure that \<folder_path> contains only a minimal set of encryption drivers. Having more drivers than necessary in \<folder_path> can negatively impact upgrade scenarios.

---

### **/ResizeRecoveryPartition** {**Enable** | **Disable**}

Specifies whether it's OK to resize the existing Windows Recovery Environment (Windows RE) partition or create a new one during installation.

**Enable**: During installation, Windows can resize the existing Windows RE tools partition or create a new one if needed.

**Disable**: Windows does not resize the existing Windows RE tools partition or create a new one during installation.

To learn more about Windows RE partitions, see [UEFI/GPT-based hard drive partitions](configure-uefigpt-based-hard-drive-partitions.md) and [BIOS/MBR-based hard drive partitions](configure-biosmbr-based-hard-drive-partitions.md).

Example:

```
Setup /resizerecoverypartition disable
```

---

### **/ShowOOBE** {**full** | **none**}

**full**: Requires the user to interactively complete the out of box experience (OOBE).

**none**: Skips OOBE and selects the default settings.

Example:

```
setup.exe /auto upgrade /showoobe full
```

This setting is new for Windows 10.

---

### **/Telemetry** {**Enable** | **Disable**}

Specifies whether Windows Setup should capture and report installation data.

**Enable**: Setup captures and reports installation data.

**Disable**: Setup does not capture and report installation data.

Example:

```
Setup /telemetry disable
```

---

### **/TempDrive** _&lt;drive_letter&gt;_

Instructs Windows Setup to put temporary installation files on the specified partition. For an upgrade, the **/tempdrive** option affects only the placement of temporary files. The operating system is upgraded in the partition from which you run the Setup.exe file.

The /tempdrive parameter is available in Windows 10, version 1607, but it is not available in earlier versions of Windows 10.

_&lt;drive_letter&gt;_ specifies the partition to copy installation files to during Windows Setup. 

Example:

```
Setup /tempdrive H
```

---

### **/Unattend:**_&lt;answer_file_&gt;

Enables you to use an answer file with Windows Setup. This is known as an unattended installation. You must specify a value for _&lt;answer_file&gt;_. Windows Setup applies the values in the answer file during installation.

_&lt;answer_file&gt;_ specifies the file path and file name of the unattended Windows Setup answer file.

```
Setup /unattend:\\server\share\unattend.xml
```

---

### **/Uninstall** {**enable** | **disable**}
Determines whether Windows will include controls that allow the user to go back to the previous operating system.

This setting is new for Windows 10.

```
Setup /uninstall disable
```

---

### **/USBDebug:**_&lt;hostname&gt;_
Sets up debugging on a USB port. Debug data is effective on the next reboot.

_&lt;hostname&gt;_ specifies the name of the computer to debug. 

Example:

```
Setup /usbdebug:testmachine01
```

---

### **/WDSDiscover**

Specifies that the Windows Deployment Services (WDS) client should be in discover mode.

If you do not specify **/wdsserver** with this option, WDS searches for a server. For example, to start the WDS client in this dynamic discover mode, run the following command:

```
Setup /wds /wdsdiscover
```

---

### **/WDSServer:**_&lt;servername&gt;_

Specifies the name of the Windows Deployment Services server that the client should connect to.

To use this setting, you must also use the `/wdsdiscover` option.

_&lt;servername&gt;_ can be an IP address, a NetBIOS name, or a fully qualified domain name (FQDN). For example, to start the Windows Deployment Services client in this static discover mode, run the following command:

```
Setup /wds /wdsdiscover /wdsserver:MyWDSServer
```

---

## <span id="related_topics"></span>Related topics


[Windows Setup States](windows-setup-states.md)

[Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)](windows-setup-edition-configuration-and-product-id-files--eicfg-and-pidtxt.md)

[Windows Setup Log Files and Event Logs](windows-setup-log-files-and-event-logs.md)

 

 
