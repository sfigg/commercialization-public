---
title: boot
description: boot
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c6bf946c-9da7-4147-a37e-c117e1ea1fff
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# boot


This action produces an XML report that summarizes the various metrics in boot.

``` syntax
-a boot [-minCPUToShow <n>] [-maxFilesToShow <n>] [-expectedProcessesFile <file name>] [-minIntervalToShow <n>] [-userShellExecutable]
```

## Options


<a href="" id="-mincputoshow-n-"></a>**-minCPUToShow***&lt;n&gt;*  
*&lt;n&gt;* indicates the minimum percentage of CPU usage to show, in the range 0-100.

<a href="" id="-maxfilestoshow-n-"></a>**-maxFilesToShow***&lt;n&gt;*  
*&lt;n&gt;* indicates the maximum number of files to show.

<a href="" id="-expectedprocessesfile-file-name-"></a>**-expectedProcessesFile***&lt;file name&gt;*  
*&lt;file name&gt;* specifies a text file that contains a list of expected process names.

<a href="" id="-minintervaltoshow-n-"></a>**-minIntervalToShow***&lt;n&gt;*  
*&lt;n&gt;* indicates the minimum interval time to show, in microseconds. The default value is 10.

<a href="" id="-usershellexecutable"></a>**-userShellExecutable**  
User shell executable to locate in the trace. The default is Explorer.exe.

## Related topics


[Xperf Actions](xperf-actions.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20boot%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





