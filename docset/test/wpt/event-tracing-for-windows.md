---
title: Event Tracing for Windows
description: Event Tracing for Windows
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5130d144-de4d-4b6e-bfe9-e17aaddff7d0
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# Event Tracing for Windows


The Event Tracing for Windows (ETW) infrastructure provides the foundation for Windows Performance Toolkit. These tools provide a set of programs that hide the complexity of working directly with the ETW application programming interfaces (APIs).

This article provides a high-level introduction to ETW. For more information about ETW, see [Event Tracing](http://go.microsoft.com/fwlink/p/?linkid=213103).

ETW enables the consistent, straightforward capture of kernel and application events. You can enable or disable event capture at any time without restarting the system or process. Windows Performance Analyzer (WPA) presents the information that ETW collects in an easy-to-understand set of graphs and tables.

You can capture and present selected events to non-invasively identify and diagnose system and application performance issues. You can enable or disable event tracing dynamically. Windows Performance Recorder (WPR) uses ETW to gather and organize critical system information. WPR acts as the session controller, starting and stopping the session and selecting which ETW events to record.

WPA consumes the event trace log (ETL) file that all event providers produce in an ETW session. Kernel and application events can provide extensive details about the operation of the system. Almost every kernel event that affects overall system performance is defined and available to WPA.

## Related topics


[Windows Performance Toolkit](index.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20Event%20Tracing%20for%20Windows%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





