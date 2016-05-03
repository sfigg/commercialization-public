---
title: STACK\_TRACING\_EVENT\_ID
description: STACK\_TRACING\_EVENT\_ID
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f03d36fd-9f14-4212-9be6-717e42c18f6f
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# STACK\_TRACING\_EVENT\_ID


This structure tells the kernel logger to include the call stack for the named events.

``` syntax
typedef struct _STACK_TRACING_EVENT_ID {
GUID EventGuid; 
UCHAR Type; 
UCHAR Reserved[7]; 
} STACK_TRACING_EVENT_ID, *PSTACK_TRACING_EVENT_ID
```

## Members


<a href="" id="eventguid"></a>**EventGuid**  
The GUID that identifies a specific kernel event configured to generate call stacks. For more information about this member, see [NT Kernel Logger Constants](http://go.microsoft.com/fwlink/p/?LinkID=212227&clcid=0x409). **EventGuids** are listed in Evntrace.h.

<a href="" id="type"></a>**Type**  
One of the EVENT\_TRACE\_TYPE\_\* types from evntrace.h or one of the [Trace Control Event Types](https://msdn.microsoft.com/library/windows/hardware/dn640668.aspx).

<a href="" id="reserved"></a>**Reserved**  
Reserved for future use.

## Remarks


The members of this structure are identical to those of the CLASSIC\_EVENT\_ID structure available in the Windows 7 and Windows Server 2008 SDK:

``` syntax
typedef struct _CLASSIC_EVENT_ID {
GUID EventGuid; 
UCHAR Type; 
UCHAR Reserved[7]; 
} CLASSIC_EVENT_ID, *PCLASSIC_EVENT_ID;
```

**Requirements:**

**Versions:** Available beginning in Windows Vista. This structure is distributed with Windows Performance Analyzer.

**Headers:** Declared in KernelTraceControl.h. Include KernelTraceControl.h.

**Library:** Contained in KernelTraceControl.dll.

## Related topics


[Structures](structures-wpa.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20STACK_TRACING_EVENT_ID%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





