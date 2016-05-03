---
title: IControlProgressHandler
description: IControlProgressHandler
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 05c08784-fcfe-46f8-8209-51fd2b1367fe
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# IControlProgressHandler


This interface is a client-side handler that receives updates when the library performs an operation. The library then executes synchronous callbacks to the client indicating the progress of the operation. Depending on the user action, the client return code instructs the library either to continue the operation or else to cancel it. This process enables the UI to show the user the progress of long operations such as **Save**. If the user chooses to cancel the operation, the UI returns the corresponding code to the library.

## Syntax


``` syntax
{
  [id(1), helpstring("OnBegin")] HRESULT OnBegin();
  [id(2), helpstring("OnUpdate")] HRESULT OnUpdate
    ([in] ULONG CurrentValuePercent);
  [id(3), helpstring("OnEnd")] HRESULT OnEnd
    ([in] HRESULT hrResult);
};
```

## Functions


The following table describes the functions that this interface provides.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Function</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[OnBegin](onbegin.md)</p></td>
<td><p>Instructs the library to begin an operation.</p></td>
</tr>
<tr class="even">
<td><p>[OnUpdate](onupdate.md)</p></td>
<td><p>Instructs the library to continue progress of an operation.</p></td>
</tr>
<tr class="odd">
<td><p>[OnEnd](onend.md)</p></td>
<td><p>Returns a status code after the end of an operation.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Interfaces](interfaces-wprcontrol.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20IControlProgressHandler%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





