---
title: Recording for Heap Analysis
description: Recording for Heap Analysis
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9acc8558-67ef-471a-af69-1173cb49bdb4
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Recording for Heap Analysis


Windows Performance Recorder (WPR) enables heap analysis for all processes on the system.

**To enable heap tracing for a desktop app**

1.  From the **More options** dropdown menu, select the **Heap usage** profile.

2.  Add a registry entry for the process by running the following command from an elevated command prompt window, replacing *&lt;process\_name&gt;* with the name of the process to be traced:

    **reg add "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\&lt;process\_name&gt;" /v TracingFlags /t REG\_DWORD /d 1 /f**

**To enable heap tracing for a Windows Store app**

1.  From the **More options** dropdown menu, select the **Heap usage** profile.

2.  If you want to trace a packaged application that is hosted in a process (such as WWAHost.exe), add a registry entry for the process by running the following command from an elevated command prompt window, replacing *&lt;process\_name&gt;*, *&lt;package full name&gt;*, and *&lt;package-relative app ID&gt;* with your app information:

    **reg add "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\Image File Execution Options\\&lt;process\_name&gt;\\&lt;package full name&gt;!&lt;package-relative app ID&gt;" /v TracingFlags /t REG\_DWORD /d 1 /f**

    **Note**  
    This combination (package full name + app ID) is not an app user model ID (package family name + app ID). The IFEO processing routines use the full name so that they can apply different behavior to different versions of a single package/app.

     

## Related topics


[WPR Common Scenarios](windows-performance-recorder-common-scenarios.md)

[Image File Execution Options](http://go.microsoft.com/fwlink/p/?LinkId=268419)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Recording%20for%20Heap%20Analysis%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





