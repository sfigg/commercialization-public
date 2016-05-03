---
title: Loading Symbols
description: Loading Symbols
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: db27f063-0ae8-4762-8df4-66e3d14e55ed
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Loading Symbols


You can set the following user preferences in Windows Performance Analyzer (WPA):

-   **Load Symbols**

-   **Configure Symbol Paths**

To change these options, open a recording and then select the option on the **Trace** menu.

In this article:

-   [Managed Symbols](#mansym)

-   [Relative Paths and Embedded Environment Variables](#relative)

-   [SymCache Path](#symcachepath)

-   [Symbol Path](#symbolpath)

## <a href="" id="mansym"></a>Managed Symbols


Symbol resolutions and stacks for managed processes are supported on the following systems:

-   With .NET Framework 4.5 or a later release on Windows 8 or later release

-   With .NET Framework 4.0 or a later release on x86 machines

When you capture a trace by using WPR, WPR enables all providers that are required to resolve managed symbols in the trace. WPR creates a folder next to the saved trace that contains PDB files of these managed symbols. When WPA opens the trace, WPA looks for this folder and automatically adds it to the symbol path. If WPR was not used to generate the trace, any symbols for .NET Framework programs might not decode completely or decode at all.

## JavaScript symbols


Symbols resolution and stacks for JavaScript processes are supported on systems that are running the following software:

-   Windows 7 together with Internet Explorer 10 or later version

-   Applications that use JavaScript on Windows 8

WP enables the required providers to decode symbols for JavaScript code on supported systems. The JavaScript method addresses and stack frames will decode to a JavaScript file name, method name, line number and column number.

## <a href="" id="relative"></a>Relative Paths and Embedded Environment Variables


The **\_NT\_SYMBOL\_PATH** and **\_NT\_SYMCACHE\_PATH** environment variables can use relative paths, absolute paths, network share paths, or embedded environment variables. WPA converts relative paths to absolute paths when you first set the relative paths. WPA converts relative paths that WPA loads from environment variables when the program starts.

WPA converts relative paths that you enter in the **Configure Symbol Paths** dialog box when you close the dialog box. Changes to the current directory do not affect relative paths that you have already set. The **Configure Symbol Paths** dialog box shows the currently set paths when you first open the dialog box so that you can see the way that WPA expanded any relative paths.

WPA expands embedded environment variables at the same time that it expands relative paths. Because WPA captures environment variables when the program starts, changes to the environment variables that are outside a currently running instance of WPA do not appear in that instance.

Other programs that use the **\_NT\_SYMCACHE\_PATH** environment variable, such as **WinDbg** or **Microsoft Visual Studio**, might not handle relative paths or embedded environment variables in the same way.

## <a href="" id="symcachepath"></a>SymCache Path


WPA uses SymCache files to cache symbol information from program database (PDB) files in a way that is compact and easy to access. After WPA populates a SymCache folder with the symbols for a trace, reloading the symbols for that trace is much faster. If a SymCache file becomes too large or is no longer needed, you can safely delete that SymCache file. WPA repopulates the SymCache folder with new files as needed. You can also copy SymCache files to another computer or share the files over a network to expedite symbol loading on different computers.

If you use the **Configure Symbol Paths** dialog box to set the **\_NT\_SYMCACHE\_PATH** environment variable to a folder that WPA cannot access, the **OK** button does not close the dialog box. However, you do not receive an error message.

If the **\_NT\_SYMCACHE\_PATH** environment variable is unassigned or empty, WPA creates a SymCache folder at the root of the drive that contains the WPA executable file. If the **\_NT\_SYMCACHE\_PATH** environment variable is running on a network share, the variable creates a SymCache folder at the root of the drive that contains the Program Files folder. This is usually drive C.

### SymCache Examples

The following command puts the SymCache file in the **C:\\SymCache** folder:

``` syntax
C:\SymCache
```

The following command puts the SymCache file in the **C:\\SymCache folder**, searches the **\\\\network\\SymCache** folder for symbols, and then processes the **\_NT\_SYMBOL\_PATH** environment variable:

``` syntax
C:\SymCache*\\network\SymCache
```

This example copies any symbols that the example finds in the **\\\\network\\SymCache** folder into the **C:\\SymCache** folder. This enables the user to create a large SymCache folder and then copy only the files that the user needs for a specific trace into the designated folder.

To search multiple alternative SymCache folders, append the folders to the search path by using an asterisk (\*) separator. When WPA finds a SymCache file in one of the alternative locations, WPA copies the file only to the first SymCache folder in the path. WPA also puts newly created SymCache files into the first SymCache folder in the path.

To disable copying and writing but still use the hierarchical search feature, you should leave the first position in the path empty, as shown in the following example:

``` syntax
*\\network\SymCache
```

When you issue this command, WPA searches the \\**\\network\\SymCache** folder. However, WPA does not copy the results or write the generated SymCache files to a different folder.

## <a href="" id="symbolpath"></a>Symbol Path


For basic information about **the \_NT\_SYMBOL\_PATH** environment variable, see the following MSDN articles:

-   [Using SymSrv](http://go.microsoft.com/fwlink/p/?linkid=226201)

-   [Symbol Paths](http://go.microsoft.com/fwlink/p/?linkid=226202)

Symbol loading in WPA depends on the paths that the **\_NT\_SYMBOL\_PATH** environment variable specifies (excluding symbols that WPA has already cached in the SymCache folder). WPA searches the paths sequentially, starting on the left. However, loading symbols from a PDB file in one of these paths can be time-consuming, especially if the PDB exists on a remote computer. We therefore recommend that you put network paths after any local paths and that you use a local PDB cache for any remote symbol server. However, even if all the symbols are stored locally, WPA can become unresponsive during the time that it loads symbols. WPA returns to an interactive state after it finishes loading symbols.

When the **\_NT\_SYMBOL\_PATH** environment variable is not set, WPA uses the following default value:

``` syntax
 .;SRV*\Symbols* http://msdl.microsoft.com/download/symbols;
```

The semicolons (;) separate the different paths. The first path is the period (.). WPA maps this path to the current folder when WPA loads the trace. See the [SymCache Path](#symcachepath) section of this article for more information about the way that WPA processes relative paths.

The second path is the following:

``` syntax
 SRV*\Symbols* http://msdl.microsoft.com/download/symbols
```

You must also set the NGEN PB path:

``` syntax
set _NT_SYMBOL_PATH=srv*C:\Symbols.NGEN;srv*http://msdl.microsoft.com/download/symbols
```

When you specify this path, WPA downloads symbols from the Microsoft public symbol server and caches the PDB files in the **\\Symbols** folder (this folder is relative to the Windows Performance Toolkit installation folder).. Therefore, WPA puts the Symbols folder next to the SymCache folder. However, if the SymCache folder is on a network share, WPA creates the Symbols folder at the root of the drive that holds the Program Files folder. This is usually drive C.

If you do not want to search and load symbols from PDB files, you can set the **\_NT\_SYMBOL\_PATH** environment variable to a local folder that does not contain symbols, such as a period (.). Do not leave the **\_NT\_SYMBOL\_PATH** environment variable empty. If you leave the **\_NT\_SYMBOL\_PATH** environment variable empty, WPA uses the default.

When WPA opens a recording, WPA looks for a folder that has the same name as the trace that uses the **.ngenpdb** extension. If WPA finds this folder, WPA appends the folder to the end of the **\_NT\_SYMBOL\_PATH** environment variable. Windows Performance Recorder (WPR) automatically creates a folder that contains PDB files for managed code that WPR captured during the recording. For example, if you open the **C:\\trace.etl** recording in WPA, WPA searches for the **C:\\trace.etl.ngenpdb** folder. If this folder exists, WPA adds the folder to the **\_NT\_SYMBOL\_PATH** environment variable.

## Related topics


[WPA Features](wpa-features.md)

[Load Symbols or Configure Symbol Paths](load-symbols-or-configure-symbol-paths.md)

[Using CLR 4.0 NGEN PDB Support](using-clr-40-ngen-pdb-support.md)

[Common In-Depth Analysis Issues](p_assessments.common_in_depth_analysis_issues)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Loading%20Symbols%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





