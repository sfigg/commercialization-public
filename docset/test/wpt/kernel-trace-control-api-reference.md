---
title: Kernel Trace Control API Reference
description: Kernel Trace Control API Reference
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 16ecacd5-25aa-43d7-b842-cb8f92db8eeb
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Kernel Trace Control API Reference


This API enables capturing kernel stack traces, merging multiple trace files for analysis, heap tracing, and including system information in the merged files.

The Kernel Trace Control API became available in Windows Vista.

On Windows 7 and Windows Vista, stackwalking on x64 systems requires that you set the **DisablePagingExecutive** registry value in **HKLM\\SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Memory Management**. For more information, see [DisablePagingExecutive](http://go.microsoft.com/fwlink/p/?linkid=213095).

**Note**  Systems with Windows 8 and higher do not need this registry change.

 

The following example shows how to query for this registry value.

``` syntax
@REG QUERY "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" -v DisablePagingExecutive
```

The following example shows how to enable stackwalking.

``` syntax
@REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" -v DisablePagingExecutive -d 0x1 -t REG_DWORD -f
@IF NOT %ERRORLEVEL% == 0 echo error: Could not configure system for 64-bit stackwalking. Please run this script from an elevated administrator console.
```

**Note**  
To make these changes effective, you must restart the system.

 

The following example shows how to disable stackwalking.

``` syntax
@REG ADD "HKLM\System\CurrentControlSet\Control\Session Manager\Memory Management" -v DisablePagingExecutive -d 0x0 -t REG_DWORD -f
@IF NOT %ERRORLEVEL% == 0 echo error: Could not remove 64-bit stackwalking configuration. Please run this script from an elevated administrator console.
```

**Note**  
To make these changes effective, you must restart the system.

 

## In This Section


[Functions](functions-wpa.md)

[Structures](structures-wpa.md)

[Trace Control Flags](trace-control-flags.md)

[Trace Control Event Types](trace-control-event-types.md)

[Custom Injection of System Information](custom-injection-of-system-information.md)

## Related topics


[Windows Performance Toolkit Technical Reference](windows-performance-toolkit-technical-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Kernel%20Trace%20Control%20API%20Reference%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





