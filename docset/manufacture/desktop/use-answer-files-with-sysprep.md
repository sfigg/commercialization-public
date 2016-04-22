---
author: Justinha
Description: Use Answer Files with Sysprep
ms.assetid: baa66548-b1f8-42f4-8027-3d515441ac0c
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Use Answer Files with Sysprep
---

# Use Answer Files with Sysprep


You can use an answer file together with the System Preparation (**Sysprep**) tool to configure unattended Windows® Setup settings. This topic describes some considerations and processes for using answer files together with **Sysprep**. For more information about Windows components and settings that you can add to an answer file, see the [Unattended Windows Setup Reference](http://go.microsoft.com/fwlink/?LinkId=206281).

In this topic:

-   [Running Sysprep an Unlimited Number of Times](#bkmk-skiprearm)

-   [Applying Settings in the generalize, auditSystem, and auditUser Configuration Passes](#bkmk-1)

-   [Caching Answer Files to the Computer](#bkmk-2)

-   [Persisting Plug and Play Device Drivers During the generalize Configuration Pass](#bkmk-3)

-   [Displaying RunSynchronous Actions in an Answer File](#bkmk-4)

## <span id="bkmk_skipRearm"></span><span id="bkmk_skiprearm"></span><span id="BKMK_SKIPREARM"></span>Running Sysprep an Unlimited Number of Times


If you specify a Windows 8 product key, Windows is automatically activated, and you can run the **Sysprep** command an unlimited number of times. To automatically activate Windows by supplying a product key, specify a valid product key in the Microsoft-Windows-Shell-Setup\\`ProductKey` unattend setting during the [specialize](specialize.md) configuration pass. If you don't automatically activate Windows by providing a product key, Windows prompts the end user for a product key. If the end user skips this step during OOBE, Windows reminds the end user to enter a valid product key later.

## <span id="bkmk_1"></span><span id="BKMK_1"></span>Applying Settings in the generalize, auditSystem, and auditUser Configuration Passes


Not all configuration passes run during Windows Setup. The [generalize](generalize.md), [auditSystem](auditsystem.md), and [auditUser](audituser.md) configuration passes are available only when you run **Sysprep**.

If you add settings to your answer file in these configuration passes, you must run **Sysprep** to apply these settings as follows:

-   To apply the settings in the [auditSystem](auditsystem.md) and [auditUser](audituser.md) configuration passes, you must boot in audit mode by using the **Sysprep/audit** command.

-   To apply the settings in the [generalize](generalize.md) configuration pass, you must use the **Sysprep/generalize** command. The generalize configuration pass removes the system-specific settings so that you can deploy the same image on multiple computers.

For more information, see [How Configuration Passes Work](how-configuration-passes-work.md).

## <span id="bkmk_2"></span><span id="BKMK_2"></span>Caching Answer Files to the Computer


If you install Windows by using an answer file, that answer file is cached to the system. When later configuration passes run, the computer applies settings in that answer file to the system. Because this answer file is cached, when you run the **Sysprep** command, the system applies settings in the cached answer file. If you use the settings in a different answer file, you can specify a separate Unattend.xml file by using the **Sysprep /unattend:***&lt;file\_name&gt;* option. For more information, see [Sysprep Command-Line Options](sysprep-command-line-options.md). For more information about how to use an implicit answer-file search, see[Windows Setup Automation Overview](windows-setup-automation-overview.md).

## <span id="bkmk_3"></span><span id="BKMK_3"></span>Persisting Plug and Play Device Drivers During the generalize Configuration Pass


You can persist device drivers when you run the **Sysprep** command together with the **/generalize** option. To do this, specify the `PersistAllDeviceInstalls` setting in the Microsoft-Windows-PnPSysprep component. During the [specialize](specialize.md) configuration pass, Plug and Play scans the computer for devices, and then installs device drivers for the detected devices. By default, the computer removes these device drivers from the system when you generalize the system. If you set the Microsoft-Windows-PnPSysprep\\`PersistAllDeviceInstalls` setting to **true** in an answer file, Sysprep doesn't remove the detected device drivers.

## <span id="bkmk_4"></span><span id="BKMK_4"></span>Displaying RunSynchronous Actions in an Answer File


In audit mode, you can view the status for Microsoft-Windows-Deployment\\`RunSynchronous` commands that run during the [auditUser](audituser.md) configuration pass. The **AuditUI** window displays the status for commands and provides these:

-   Visual progress to indicate that an installation is continuing and not suspended.

-   Visual indication of when and where failures occur. This provides a quick diagnosis if the command doesn't create log files.

If the answer file contains Microsoft-Windows-Deployment\\`RunSynchronous` commands in the [auditUser](audituser.md) configuration pass, a list of the commands appears in the **AuditUI** window. The commands appear in the order that the Microsoft-Windows-Deployment\\`RunSynchronous`\\`RunSynchronousCommand`\\`Order` setting specifies. Each list item in the user interface is the string from one of these:

-   Microsoft-Windows-Deployment\\`RunSynchronous`\\`RunSynchronousCommand`\\`Description` (if present)

-   Microsoft-Windows-Deployment\\`RunSynchronous`\\`RunSynchronousCommand`\\`Path`

**Sysprep** processes all `RunSynchronous` commands in order. If the command succeeds, its related list item receives a green check-mark annotation. If the command fails, its related list item receives a red X annotation. If the command requests a reboot, the **AuditUI** window appears after the boot, but only unprocessed list items appear. Previously processed items no longer appear in the **AuditUI** window. If the list of items in the **AuditUI** window exceeds the height of the display, the list is truncated to the display and doesn't scroll. As a result, you may not be able to see some items.

Windows Setup interprets the return codes as status values in the **AuditUI** window. A zero value indicates a success. A nonzero value indicates a failure. The return value of the command might affect the behavior of Windows Setup, depending on the value of the Microsoft-Windows-Deployment\\`RunSynchronous`\\`RunSynchronousCommand`\\**WillReboot** setting.

If the `WillReboot` command is set to **Always**:

-   If the command returns 0, its related list item receives a green check-mark annotation. A reboot immediately occurs.

-   If the command returns a nonzero number, its related list item receives a red X annotation. A reboot immediately occurs. A nonzero return value isn't treated as a fatal error when `WillReboot` is set to either **Always** or **Never**.

If the `WillReboot` command is set to **Never**:

-   If the command returns 0, its related list item receives a green check-mark annotation.

-   If the command returns a nonzero number, its related list item receives a red X annotation. A nonzero return value isn't treated as a fatal error when `WillReboot` is set to either **Always** or **Never**.

If the `WillReboot` command is set to **OnRequest**:

-   If the command returns 0, its related list item receives a green check-mark annotation.

-   If the command returns 1, its related list item receives a green check-mark annotation. A reboot immediately occurs.

-   If the command returns 2, its related list item temporarily receives a green check-mark annotation. A reboot immediately occurs. After the reboot, the related list item appears again in the **AuditUI** window without annotation because the command is still in process.

-   If the command returns other values, a fatal error occurs and a blocking dialog box appears. If the Errorhandler.cmd file is present, no dialog box appears. For more information about the Errorhandler.cmd file, see [Add a Custom Script to Windows Setup](add-a-custom-script-to-windows-setup.md).

## <span id="related_topics"></span>Related topics


[Sysprep (System Preparation) Overview](sysprep--system-preparation--overview.md)

[Sysprep Command-Line Options](sysprep-command-line-options.md)

[Sysprep Support for Server Roles](sysprep-support-for-server-roles.md)

[Sysprep Process Overview](sysprep-process-overview.md)

[Deployment Troubleshooting and Log Files](deployment-troubleshooting-and-log-files.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Use%20Answer%20Files%20with%20Sysprep%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




