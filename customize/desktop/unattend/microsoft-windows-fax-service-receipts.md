---
title: Receipts
description: Receipts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b8bc8d3c-599b-40ed-87f3-d4f6c0438690
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Receipts


`Receipts` specifies Simple Mail Transfer Protocol (SMTP) settings for faxes.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[FaxUserName](microsoft-windows-fax-service-receipts-faxusername.md)</p></td>
<td><p>Specifies the account name to use for basic SMTP authentication or authentication based on Windows Security.</p></td>
</tr>
<tr class="even">
<td><p>[FaxUserPassword](microsoft-windows-fax-service-receipts-faxuserpassword.md)</p></td>
<td><p>Specifies the password to use for authenticating against the server in basic SMTP authentication or authentication based on Windows Security.</p></td>
</tr>
<tr class="odd">
<td><p>[SmtpNotificationsEnabled](microsoft-windows-fax-service-receipts-smtpnotificationsenabled.md)</p></td>
<td><p>Specifies whether to enable SMTP notifications for outgoing faxes.</p></td>
</tr>
<tr class="even">
<td><p>[SmtpSenderAddress](microsoft-windows-fax-service-receipts-smtpsenderaddress.md)</p></td>
<td><p>Specifies the e-mail address used in outgoing e-mail notifications.</p></td>
</tr>
<tr class="odd">
<td><p>[SmtpServerAddress](microsoft-windows-fax-service-receipts-smtpserveraddress.md)</p></td>
<td><p>Specifies the name or IP address of the e-mail server used to send and to receive faxes.</p></td>
</tr>
<tr class="even">
<td><p>[SmtpServerAuthenticationMechanism](microsoft-windows-fax-service-receipts-smtpserverauthenticationmechanism.md)</p></td>
<td><p>Specifies one of the authentication schemas to use: Anonymous, Basic, or authentication based on Windows Security.</p></td>
</tr>
<tr class="odd">
<td><p>[SmtpServerPort](microsoft-windows-fax-service-receipts-smtpserverport.md)</p></td>
<td><p>Specifies the IP port number for the e-mail server.</p></td>
</tr>
</tbody>
</table>

 

## Valid Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-Fax-Service](microsoft-windows-fax-service.md) | **Receipts**

## Applies To


For the list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Fax-Service](microsoft-windows-fax-service.md).

## XML Example


The following XML output shows how to set fax settings.

``` syntax
<Fax>
   <ArchiveFaxes>false</ArchiveFaxes>
   <IncomingFaxesArePublic>false</IncomingFaxesArePublic>
   <ArchiveFolderName>C:\MyFaxArchives</ArchiveFolderName>
</Fax>
<FaxUnattend>
   <FaxPrinterIsShared>true</FaxPrinterIsShared>
   <ReceiveFaxes>false</ReceiveFaxes>
   <Rings>6</Rings>
   <RouteToFolder>true</RouteToFolder>
   <RouteToPrinter>true</RouteToPrinter>
   <SendFaxes>true</SendFaxes>
   <Csid>Fax1</Csid>
   <Tsid>Fax1</Tsid>
   <RouteFolderName>C:\Router</RouteFolderName>
   <RoutePrinterName>C:\Printer</RoutePrinterName>
</FaxUnattend>
<Receipts>
   <FaxUserName>MyUserName</FaxUserName>
   <FaxUserPassword>MyPassword</FaxUserPassword>
   <SmtpNotificationsEnabled>true</SmtpNotificationsEnabled>
   <SmtpSenderAddress>MyUserName@fabrikam.com</SmtpSenderAddress>
   <SmtpServerAddress>207.46.197.32</SmtpServerAddress>
   <SmtpServerAuthenticationMechanism>1</SmtpServerAuthenticationMechanism>
   <SmtpServerPort>26</SmtpServerPort>
</Receipts>
```

## Related topics


[Microsoft-Windows-Fax-Service](microsoft-windows-fax-service.md)

 

 







