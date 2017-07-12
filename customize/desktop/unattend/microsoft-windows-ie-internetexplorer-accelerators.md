---
title: Accelerators
description: Accelerators
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 48523130-1d0d-487e-8fb5-211e0b8da906
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Accelerators


`Accelerators` contains the settings for Internet Explorer Accelerators.

Accelerators are menu options in Internet Explorer that help automate common browser-related tasks. In Internet Explorer, when you right-click selected text, Accelerators appear in the list of available options. For example, if you select an address, you can use an Accelerator to show a map of that address.

To add an Accelerator in Windows System Image Manager (Windows SIM), add the Accelerators component to your answer file. Next, right-click **Accelerators**, and select **Insert New Accelerator**.

For more information about setting up accelerators, see the MSDN Topic, [OpenService Accelerators Developer Guide](http://go.microsoft.com/fwlink/?LinkId=130617).

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Accelerator](microsoft-windows-ie-internetexplorer-accelerators-accelerator.md)</p></td>
<td><p>Contains the settings used to specify a shortcut to an Accelerator in the <strong>Accelerators</strong> menu.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | **Accelerators**

## Applies To


For a list of Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output specifies adding two Accelerators.

``` syntax
<Accelerators>
  <Accelerator wcm:action="add">
    <AcceleratorXML>http://www.contoso.com/accelerators/Accelerator1.xml</AcceleratorXML>
    <ItemKey>Accelerator1</ItemKey> 
    <IsDefault>true</IsDefault> 
  </Accelerator>
  <Accelerator wcm:action="add">
    <AcceleratorXML>http://www.contoso.com/accelerators/Accelerator2.xml</AcceleratorXML> 
    <ItemKey>Accelerator2</ItemKey> 
  </Accelerator>
</Accelerators>
```

## Related topics


[DisableAccelerators](microsoft-windows-ie-internetexplorer-disableaccelerators.md)

[DisableOOBAccelerators](microsoft-windows-ie-internetexplorer-disableoobaccelerators.md)

 

 







