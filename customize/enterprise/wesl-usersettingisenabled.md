---
title: WESL\_UserSetting.IsEnabled
description: WESL\_UserSetting.IsEnabled
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 567f57b5-f9c8-4129-8279-dd351028df5d
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# WESL\_UserSetting.IsEnabled


This method retrieves a value that indicates if Shell Launcher is enabled or disabled.

## Syntax


```
[Static] uint32 IsEnabled(
    [Out, Required] boolean Enabled
);
```

## Parameters


<a href="" id="enabled"></a>*Enabled*  
\[out, required\] A Boolean value that indicates if Shell Launcher is enabled.

## Return Value


Returns an HRESULT value that indicates [WMI status](http://go.microsoft.com/fwlink/p/?LinkID=208318) or a [WMI error](http://go.microsoft.com/fwlink/p/?LinkID=208317).

## Requirements


|                       |           |
|-----------------------|-----------|
| Windows Edition       | Supported |
| Windows 10 Home       | No        |
| Windows 10 Pro        | No        |
| Windows 10 Enterprise | Yes       |
| Windows 10 Education  | Yes       |

 

## Related topics


[WESL\_UserSetting](wesl-usersetting.md)

[Shell Launcher](shell-launcher.md)

 

 







