---
title: Manually Configure HLK Client Kernel Debugger Settings
description: Manually Configure HLK Client Kernel Debugger Settings
MS-HAID:
- 'p\_hlk.manually\_configure\_hck\_client\_kernel\_debugger\_settings'
- 'p\_hlk.manually\_configure\_hlk\_client\_kernel\_debugger\_settings'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c4bae6ec-d396-4c78-a3da-48c4d3f385e8
---

# Manually Configure HLK Client Kernel Debugger Settings


During driver development, you might want to debug crashes in the kernel. To do this, you must enable kernel debugging.

From the computer on which you installed the debugger, follow these steps:

1.  Click **Start**, point to **Programs**, point to **Debugging Tools for Windows**, and click **Debugging Help**.

2.  Click the **Search** tab in the **Debugging Tools for Windows** window, type **"Kernel-Mode Setup"** (including quotes), and click **Search**.

3.  Read the topic **Kernel-Mode Setup**.

## <span id="Configure_HLK_Crashdump_collection_settings"></span><span id="configure_hlk_crashdump_collection_settings"></span><span id="CONFIGURE_HLK_CRASHDUMP_COLLECTION_SETTINGS"></span>Configure HLK Crashdump collection settings


You can also configure the kernel crash dump collection setting in HLK Studio. This setting will force a setting of the kernel dump type on the client system when a crash occurs. When a crashed occurs, HLK will copy back the dump file and associate it with the underlying test.

**Note**  
System and UMDF crash dump are not collected by default. You must enable this feature for each machine pool, and you must choose one of three dump types, which are *Mini*, *Kernel*, and *Full*. If server disk size is not an issue, we recommend that you use Full dumps. For more information about dump types, see [Varieties of Kernel-Mode Dump Files](http://go.microsoft.com/fwlink/p/?linkid=313314).

 

The steps to configure this setting are as follows:

![hlk configuration crashdump setting](images/hck-winb-config-crashdump-setting.png)

1.  From HLK Studio, click **Configuration** option.

2.  Select a machine pool on which to apply the kernel crash dump setting.

3.  Right click on the machine pool.

4.  Select the dump setting from the following options:

    1.  Disable

    2.  Full

    3.  Kernel

    4.  Mini

The crash dump collection setting is set on all machines in the specified machine pool, but it is not set for machines in any child machine pools. If you select **Disable**, the machine’s crash dump settings will persist on the client machine, but the crash dump collection for Windows HLK is disabled.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk\p_hlk%5D:%20Manually%20Configure%20HLK%20Client%20Kernel%20Debugger%20Settings%20%20RELEASE:%20%286/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




