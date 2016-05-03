---
title: stop
description: stop
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ebde3a43-c6c9-47d4-b6f1-8b1dae313af3
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# stop


Displays trace stop options.

``` syntax
xperf [-stop [LoggerNames]|[ProfileFileName!ProfileName|SessionName merged.etl]]|[-stopall]|[-cancel rofileFileName!ProfileName|SessionName [NoDelete]] [-d merged.etl] [-heap|-critsec]
```

## Parameters


<a href="" id="-stoploggernames-profilefilename-profilename-sessionname-merged-etl"></a>**-stop***LoggerNames|ProfileFileName!ProfileName|SessionName merged.etl*  
Turns off loggers specified in *LoggerNames*, turns off loggers in profile *ProfileName* defined in the *ProfileFileName* file and merges the ETL files to merged.etl, or turns off logger *SessionName* defined in the *ProfileFileName* file and merges the ETL file to Merged.etl.

<a href="" id="-stopall"></a>**-stopall**  
Turns off all logging sessions.

<a href="" id="-cancelprofilefilename-profilename-sessionname--nodelete-"></a>**-cancel***ProfileFileName!ProfileName|SessionName \[NoDelete\]*  
Turns off loggers in profile *ProfileName* defined in the *ProfileFileName* file and deletes the trace files, or turns off logger *SessionName* defined in the *ProfileFileName* file, and merges the ETL file to Merged.etl. If *NoDelete* is specified, trace files are not deleted.

<a href="" id="-dmerged-etl"></a>**-d***merged.etl*  
Merges the ETL files of stopped logging sessions merged.etl. If no session is stopped explicitly, the NT kernel logger is stopped implicitly.

<a href="" id="-boottraceoff"></a>**-boottrace***off*  
Turns off a boot trace.

<a href="" id="-heap"></a>**-heap**  
Stops heap tracing.

<a href="" id="-critsec"></a>**-critsec**  
Stops critical section tracing.

## Remarks


Currently, only one heap trace or critical section trace can be active at a time. Therefore, **-heap** and **-critsec** are mutually exclusive. If *LoggerNames* is not specified or **-d** is specified with neither **-stop** nor **-stopall** present, the kernel logger is stopped.

## Related topics


[Xperf Options](xperf-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20stop%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





