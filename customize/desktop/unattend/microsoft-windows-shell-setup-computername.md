---
title: ComputerName
description: ComputerName specifies the computer name used to access the computer from the network.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e573ccd8-b234-42d9-bdb9-66d651238fc5
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# ComputerName


`ComputerName` specifies the computer name used to access the computer from the network.

**Note**  
In Windows 10, users can no longer enter a computer name during OOBE as the name is auto-generated. To set a default computer name pre-OOBE, OEMs can configure `ComputerName` in the Unattend.xml file and specify a name for the computer. After OOBE, end users can change this default computer name after OOBE by changing it in the **System Properties** page.

 

## Values


If `ComputerName` is set to an asterisk (\*) or is an empty string, a random computer name will be generated. This random name has at most eight characters from the [RegisteredOwner](microsoft-windows-shell-setup-registeredowner.md) and/or [RegisteredOrganization](microsoft-windows-shell-setup-registeredorganization.md) strings plus random characters.

`ComputerName` is a string with a maximum length of 15 bytes of content:

-   `ComputerName` can use ASCII characters (1 byte each) and/or multi-byte characters such as Kanji, so long as you do not exceed 15 bytes of content.

-   `ComputerName` cannot use spaces or any of the following characters: { | } ~ \[ \\ \] ^ ' : ; &lt; = &gt; ? @ ! " \# $ % \` ( ) + / . , \* &, or contain any spaces.

-   `ComputerName` cannot use some non-standard characters, such as emoji.

Computer names that cannot be validated through the DnsValidateName function cannot be used, for example, computer names that only contain numbers (0-9). For more information, see the [DnsValidateName function](http://go.microsoft.com/fwlink/?LinkId=257040).

## Valid Configuration Passes


offlineServicing

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md) | **ComputerName**

## Applies To


For a list of the Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set the computer name.

``` syntax
<ComputerName>MyComputer</ComputerName>
```

## Related topics


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup.md)

 

 







