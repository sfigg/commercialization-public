---
title: EVENT\_TRACE\_TYPE\_VIRTUAL\_FREE
description: EVENT\_TRACE\_TYPE\_VIRTUAL\_FREE
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1c547a82-5e5e-4c0e-b3b5-5830f5a52bab
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# EVENT\_TRACE\_TYPE\_VIRTUAL\_FREE


This flag enables stack tracing for virtual memory free events.

``` syntax
#define EVENT_TRACE_TYPE_VIRTUAL_FREE 0x63
```

## Remarks


This event type is similar to the event types used in the **EVENT\_TRACE\_PROPERTIES.EnableFlags** member but is particular to the Kernel Trace Control API.

**Requirements:**

**Versions:** Available beginning in Windows Vista. This structure is distributed with Windows Performance Analyzer.

**Headers:** Declared in KernelTraceControl.h. Include KernelTraceControl.h.

**Library:** Contained in KernelTraceControl.dll.

## Related topics


[Trace Control Event Types](trace-control-event-types.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20EVENT_TRACE_TYPE_VIRTUAL_FREE%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





