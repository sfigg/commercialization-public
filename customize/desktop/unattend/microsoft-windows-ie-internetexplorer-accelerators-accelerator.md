---
title: Accelerator
description: Accelerator
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 94dca439-9805-4596-b1e6-d85ff0f7a1ed
ms.mktglfcycl: deploy
ms.sitesec: msdn
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Accelerator


`Accelerator` contains the settings that add a predefined Accelerator.

**Note**  
This element does not appear in the **Properties** pane of Windows System Image Manager (Windows SIM) until you add this element to the answer file.

 

Accelerators are menu options in Internet Explorer that help automate common browser-related tasks. In Internet Explorer, when you right-click selected text, Accelerators appear in the list of available options. For example, if you select an address, you can use an Accelerator to show a map of that address.

## Child Elements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[AcceleratorXML](microsoft-windows-ie-internetexplorer-accelerators-accelerator-acceleratorxml.md)</p></td>
<td><p>Specifies the URL of an Accelerator XML file.</p></td>
</tr>
<tr class="even">
<td><p>[ItemKey](microsoft-windows-ie-internetexplorer-accelerators-accelerator-itemkey.md)</p></td>
<td><p>Specifies a unique key for the Accelerator.</p></td>
</tr>
<tr class="odd">
<td><p>[IsDefault](microsoft-windows-ie-internetexplorer-accelerators-accelerator-isdefault.md)</p></td>
<td><p>Specifies whether the Accelerator is the default Accelerator.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


specialize

## Parent Hierarchy


[Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md) | [Accelerators](microsoft-windows-ie-internetexplorer-accelerators.md)| **Accelerator**

## Applies To


For a list of Windows editions and architectures that this component supports, see [Microsoft-Windows-IE-InternetExplorer](microsoft-windows-ie-internetexplorer.md).

## XML Example


The following XML output specifies adding two Accelerators.

``` syntax
<Accelerators>
  <Accelerator wcm:action="add">
    <AcceleratorXML>C:\Fabrikam\Accelerator1.xml</AcceleratorXML>
    <ItemKey>Accelerator1</ItemKey> 
    <IsDefault>true</IsDefault> 
  </Accelerator>
  <Accelerator wcm:action="add">
    <AcceleratorXML>C:\Fabrikam\Accelerator2.xml</AcceleratorXML> 
    <ItemKey>Accelerator2</ItemKey> 
  </Accelerator>
</Accelerators>
```

## Related topics


[Accelerators](microsoft-windows-ie-internetexplorer-accelerators.md)

 

 







