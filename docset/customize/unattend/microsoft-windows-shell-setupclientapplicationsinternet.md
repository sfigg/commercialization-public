---
title: Internet
description: Internet
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: d325780c-2254-48a0-9d69-1c145a6809c1
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# Internet


`Internet` specifies the default Internet browsing application. This must be the application’s canonical name.

This setting has been deprecated in Windows 8. The information about this deprecated setting is provided for reference only. For information about setting the default file associations, see [Default Application Association Servicing Command-Line Options](http://go.microsoft.com/fwlink/p/?LinkId=247509).

This setting has no effect on Server Core installations of Windows Server® 2008, Windows Server 2008 R2, and Windows Server 2012.

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>browser</em></p></td>
<td><p>Specifies the browser application. <em>browser</em> is a string with a maximum length of 259 characters. This must be the application’s canonical name.</p>
<p>For more information about canonical names, see this [MSDN website](http://go.microsoft.com/fwlink/?LinkId=82991).</p></td>
</tr>
</tbody>
</table>

 

This string type does not support empty elements. Do not create an empty value for this setting.

## Valid Configuration Passes


auditUser

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | [ClientApplications](microsoft-windows-shell-setupclientapplications.md) | **Internet**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set client applications.

``` syntax
<ClientApplications>
   <IM>IMCanonical</IM>
   <Internet>BrowserCanonical</Internet>
   <JavaVM>JavaVMCanonical</JavaVM>
   <Mail>MailCanonical</Mail>
   <Media>MediaCanonical</Media>
</ClientApplications>
```

## Related topics


[ClientApplications](microsoft-windows-shell-setupclientapplications.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20Internet%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





