---
Description: 'Winpeshl.ini Reference: Launching an app when WinPE starts'
MS-HAID: 'p\_adk\_online.winpeshlini\_reference\_launching\_an\_app\_when\_winpe\_starts'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Winpeshl.ini Reference: Launching an app when WinPE starts'
---

# Winpeshl.ini Reference: Launching an app when WinPE starts


Use the **Winpeshl.ini** file in Windows Preinstallation Environment (Windows PE) to replace the default command prompt with a shell application or other app. For example, your shell app might provide a GUI for deployment engineers to choose a method of installing Windows.

To add a customized app, create a file named Winpeshl.ini and place it in %SYSTEMROOT%\\System32 a customized Windows PE image. For more information, see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

## <span id="Example"></span><span id="example"></span><span id="EXAMPLE"></span>Example


``` syntax
[LaunchApp]
AppPath = %SYSTEMDRIVE%\Fabrikam\shell.exe
[LaunchApps]
%SYSTEMDRIVE%\Fabrikam\app1.exe
%SYSTEMDRIVE%\Fabrikam\app2.exe, /s "C:\Program Files\App3"
```

The Wpeshl.ini file may have either or both of the sections: \[LaunchApp\] and \[LaunchApps\]. The apps listed in \[LaunchApp\] and \[LaunchApps\] run in order of appearance, and don’t start until the previous app has terminated.

## <span id="LaunchApp"></span><span id="launchapp"></span><span id="LAUNCHAPP"></span>LaunchApp


Set the `AppPath` entry to the path to your app. You can use a fully qualified path, or you can include environment variables, such as `%SYSTEMDRIVE%` to describe the path.

**Note**  
-   The \[LaunchApp\] entry may only include one app.

-   You can’t specify a command that is greater than 250 characters.

-   You can’t specifiy any command-line options with LaunchApp.

 

## <span id="LaunchApps"></span><span id="launchapps"></span><span id="LAUNCHAPPS"></span>LaunchApps


Use the `[LaunchApps]` section to run apps with command-line options.

**Note**  
-   LaunchApps supports running apps, but does not support common scripting commands. To run commands, add a startup script instead (startnet.cmd). For more information, see [WinPE: Mount and Customize](winpe-mount-and-customize.md).

-   You can’t specify a command that is greater than 250 characters.

-   To add command-line options to an app: add a comma (,) after the app name: `%SYSTEMDRIVE%\Fabrikam\app2.exe,  <option>`

 

## <span id="related_topics"></span>Related topics


[WinPE for Windows 10](winpe-intro.md)

[WinPE: Debug Apps](p_adk_online.winpe_debug_apps_blue)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Winpeshl.ini%20Reference:%20Launching%20an%20app%20when%20WinPE%20starts%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




