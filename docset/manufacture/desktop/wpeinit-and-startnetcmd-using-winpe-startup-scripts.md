---
author: Justinha
Description: 'Wpeinit and Startnet.cmd: Using WinPE Startup Scripts'
ms.assetid: d43621bb-b9ab-4e19-8fb4-8d05d5ee3d07
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Wpeinit and Startnet.cmd: Using WinPE Startup Scripts'
---

# Wpeinit and Startnet.cmd: Using WinPE Startup Scripts


Use Wpeinit and Startnet.cmd to run startup scripts when Windows PE (WinPE) first runs.

Wpeinit outputs log messages to **C:\\Windows\\system32\\wpeinit.log**.

## <span id="startnet.cmd"></span><span id="STARTNET.CMD"></span>Startnet.cmd


You can add customized command-line scripts in Windows PE by using Startnet.cmd. By default, Windows PE includes a Startnet.cmd script located at %SYSTEMROOT%\\System32 of your customized Windows PE image.

Startnet.cmd starts Wpeinit.exe. Wpeinit.exe installs Plug and Play devices, processes Unattend.xml settings, and loads network resources.

For more info, see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

## <span id="Wpeinit_Command-Line_Options"></span><span id="wpeinit_command-line_options"></span><span id="WPEINIT_COMMAND-LINE_OPTIONS"></span>Wpeinit Command-Line Options


The following command-line option is available for Wpeinit:

**Wpeinit** \[-unattend:*&lt;path\_to\_answer\_file&gt;*\]

Example:

``` syntax
Wpeinit –unattend:"C:\Unattend-PE.xml"
```

## <span id="Supported_Unattend_settings"></span><span id="supported_unattend_settings"></span><span id="SUPPORTED_UNATTEND_SETTINGS"></span>Supported Unattend settings


You can create an answer file and include any of the following settings for use with Windows PE:

-   Microsoft-Windows-Setup/[Display](https://msdn.microsoft.com/library/windows/hardware/dn915285)

-   Microsoft-Windows-Setup/[EnableFirewall](https://msdn.microsoft.com/library/windows/hardware/dn915375)

-   Microsoft-Windows-Setup/[EnableNetwork](https://msdn.microsoft.com/library/windows/hardware/dn915383)

-   Microsoft-Windows-Setup/[LogPath](https://msdn.microsoft.com/library/windows/hardware/dn915490)

-   Microsoft-Windows-Setup/[PageFile](https://msdn.microsoft.com/library/windows/hardware/dn915671)

-   Microsoft-Windows-Setup/[Restart](https://msdn.microsoft.com/library/windows/hardware/dn915783)

-   Microsoft-Windows-Setup/[RunAsynchronous](https://msdn.microsoft.com/library/windows/hardware/dn915800)

-   Microsoft-Windows-Setup/[RunSynchronous](https://msdn.microsoft.com/library/windows/hardware/dn915804)

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[Winpeshl.ini Reference: Launching an app when WinPE starts](winpeshlini-reference-launching-an-app-when-winpe-starts.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

[Unattended Windows Setup Reference](http://go.microsoft.com/fwlink/?LinkId=206281)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Wpeinit%20and%20Startnet.cmd:%20Using%20WinPE%20Startup%20Scripts%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




