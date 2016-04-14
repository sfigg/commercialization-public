---
author: Justinha
Description: 'WinPE: Debug Apps'
MS-HAID: 'p\_adk\_online.winpe\_debug\_apps'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'WinPE: Debug Apps'
---

# WinPE: Debug Apps


You can use Windows Debuggers, such as Ntsd.exe, Cdb.exe, and Windbg.exe, and supporting tools to debug applications on Windows PE and to debug the Windows PE kernel. Debugging tools are included in the [Windows 10 SDK]( http://go.microsoft.com/fwlink/?LinkId=526807). You must make the debugging tools available on the Windows PE computer by either copying them locally or using them from a share.

To debug Windows PE remotely, you may need to turn off the built-in firewall on the PC:

``` syntax
wpeutil disablefirewall
```

## <span id="User-mode_debugging"></span><span id="user-mode_debugging"></span><span id="USER-MODE_DEBUGGING"></span>User-mode debugging


The easiest user-mode debugging method is to run a process server on the Windows PE computer, and connect to it by using a debugger on another computer. The process server is included with the debugging tools in the [Windows 10 SDK]( http://go.microsoft.com/fwlink/?LinkId=526807).

**To run a process server in user-mode**

1.  Copy the Windows Debugging Process Server tool: **dbgsrv.exe**, from the [Windows 10 SDK]( http://go.microsoft.com/fwlink/?LinkId=526807) debugging tools folder (example: C:\\Program Files (x86)\\Windows Kits\\10.0\\Debuggers\\x64), to the Windows PE computer.

2.  At the Windows PE command prompt, disable the firewall.

    ``` syntax
    wpeutil disablefirewall
    ```

3.  Start the Windows Debugging Process Server, specifying a connection method to the PC, for example, a TCP port:

    ``` syntax
    dbgsrv.exe –t tcp:port=1234
    ```

    For more information, see [Activating a Process Server (Windows Debuggers)]( http://go.microsoft.com/fwlink/p/?LinkId=698645).

4.  From the remote computer, use the process server to attach to or start processes on the Windows PE destination computer:

    ``` syntax
    windbg -premote tcp:server=Server, port=1234
    ```

    For more information, see [Activating a Smart Client (Windows Debuggers)](http://go.microsoft.com/fwlink/p/?LinkId=698646).

It is also possible to run the debugger directly on the Windows PE computer. However, doing so requires setting up symbol and source paths after every reboot of the Windows PE computer. We recommend that you perform debugging from a computer running a full version of Windows, as described in this procedure.

The following debugging procedure is useful when you want to bypass startnet.cmd or setup.exe, and proceed directly to a command prompt for debugging purposes. This procedure bypasses all initialization, including setup, and runs no commands, such as Wpeinit.exe. This procedure must be performed online on an online operating system.

**To enable user-mode debugging prior to any initialization**

1.  Delete the winpeshl.ini file, if it exists. If the winpeshl.ini file does not exist, then user-mode debugging can be accessed by default.

2.  Hold down the Ctrl key during boot before the command prompt is shown. A command prompt appears.

3.  Proceed with debugging.

## <span id="Kernel-mode_debugging"></span><span id="kernel-mode_debugging"></span><span id="KERNEL-MODE_DEBUGGING"></span>Kernel-mode debugging


To debug in kernel-mode, you must enable kernel-mode debugging before the system is booted. The boot configuration file has a setting for kernel mode debugging, which is enabled by using the bcdedit.exe command-line tool to modify the Boot Configuration Data (BCD) store. Kernel debugging can only be performed by using bcdedit.exe. Bcdedit.exe is located in the \\Windows\\System32 directory of the Windows partition.

The default debugger settings are as follows:

``` syntax
----------------- 
identifier              {dbgsettings} 
debugtype               Serial 
debugport               1 
baudrate                115200
```

For creating ISOs for VM environments, enable the kernel with BCD entries before creating the ISO.

For information about how to modify the default BCD store (default.bcd), see [How to Modify the BCD Store Using Bcdedit](http://go.microsoft.com/fwlink/p/?LinkId=698647).

**To enable kernel-mode debugging**

1.  Locate the BCD store, which is contained in a file named **bcd**. This file is located within the boot directory in the root of the media containing the Windows PE image.

2.  At the command prompt, type the following bcdedit command to set the debug flag of the BCD store used to boot the image to `debug on`:

    ``` syntax
    bcdedit /store <path to winpe>/boot/bcd /set {default} debug on
    ```

    The `{default}` might need to be replaced by the unique identifier (UID) of the boot option for Windows PE.

    Alternatively, you can also enable kernel debugging by pressing F8 during boot and selecting the debug option.

    **Note**  
    To use a symbol server from within Windows PE, use the `net use` command on the server’s symbols and file shares.

     

For more information about command-line options that control debugging, see [BCDEdit Command-Line Options](http://go.microsoft.com/fwlink/p/?LinkId=526808).

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Mount and Customize](winpe-mount-and-customize.md)

[Wpeutil Command-Line Options](wpeutil-command-line-options.md)

[Winpeshl.ini Reference: Launching an app when WinPE starts](winpeshlini-reference-launching-an-app-when-winpe-starts.md)

[BCDEdit Command-Line Options](http://go.microsoft.com/fwlink/p/?LinkId=526808)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20WinPE:%20Debug%20Apps%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




