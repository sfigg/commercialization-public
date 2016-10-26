---
title: Interface
description: Interface
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 67491f8a-22bf-47be-882a-5e7d52d85b92
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Interface


`Interface` specifies settings for a particular interface.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Identifier](microsoft-windows-netbtinterfacesinterfaceidentifier.md)</p></td>
<td><p>Specifies the interface to apply to other settings in <code>Interface</code>.</p></td>
</tr>
<tr class="even">
<td><p>[NameServerList](microsoft-windows-netbtinterfacesinterfacenameserverlist.md)</p></td>
<td><p>Specifies the list of name servers.</p></td>
</tr>
<tr class="odd">
<td><p>[NetbiosOptions](microsoft-windows-netbtinterfacesinterfacenetbiosoptions.md)</p></td>
<td><p>Specifies security settings for the NetBIOS service.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-NetBT](microsoft-windows-netbt.md) | [Interfaces](microsoft-windows-netbtinterfaces.md) | **Interface**

## Applies To


For a list of the supported Windows® editions and architectures that this component supports, see [Microsoft-Windows-NetBT](microsoft-windows-netbt-win7-microsoft-windows-netbt.md).

## XML Example


The following XML output shows how to configure Microsoft-Windows-NetBT.

``` syntax
<Interfaces>
   <Interface wcm:action="add">
      <NameServerList>
         <IpAddress wcm:action="add" wcm:keyValue="IpAddress1">123.45.67.89</IpAddress>
         <IpAddress wcm:action="add" wcm:keyValue="IpAddress2">56.78.90.123</IpAddress>
       </NameServerList>
       <NetbiosOptions>2</NetbiosOptions>
       <Identifier>Local Area Connection</Identifier>
   </Interface>
</Interfaces>
```

## Related topics


[Interfaces](microsoft-windows-netbtinterfaces.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Interface%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





