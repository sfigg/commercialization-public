---
title: symbols
description: symbols
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7d34c86b-3b0c-40b1-a71d-b23978f97edf
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# symbols


Enables and configures symbol decoding support.

``` syntax
xperf -i <trace file>… [-o output] -symbols [cacheonly] [verbose] [dbghelplog]
```

## Parameters


<a href="" id="cacheonly"></a>*cacheonly*  
Use SymCache, but not DbgHelp. This option speeds symbol decoding for traces with many binary images that lack symbol files after all interesting symbol files have been transcoded.

<a href="" id="verbose"></a>*verbose*  
Verbose mode. Prints symbol paths and version information. For more information, see [Loading Symbols](loading-symbols.md).

<a href="" id="dbghelplog"></a>*dbghelplog*  
Enable DbgHelp debug log about **stderr**.

Symbol decoding support uses the environment variables in the following table for further configuration of DbgHelp and SymCache.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>_NT_SYMBOL_PATH</p></td>
<td><p>Specifies the DbgHelp path to search to locate symbols files (with the file name extension of .pdb) corresponding to binary images files used in the trace. See the note below regarding this variable.</p></td>
</tr>
<tr class="even">
<td><p>_NT_SYMCACHE_PATH</p></td>
<td><p>Specifies the path to the local SymCache directory. By default, \SymCache is used.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For symbol decoding, the trace must be a kernel trace (or a user trace processed in conjunction with a kernel trace) that has the PROC\_THREAD+LOADER kernel flags enabled and that has been stopped and merged with `-d` or with `-merge` on the computer on which it was taken. Xperf performs a special image identification process during its custom trace merge that enables symbol decoding.

 

## Remarks


If this action is not specified on the command line, symbol decoding is disabled.

## Related topics


[Xperf Options](xperf-options.md)

[Loading Symbols](loading-symbols.md)

[Common In-Depth Analysis Issues](p_assessments.common_in_depth_analysis_issues)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20symbols%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





