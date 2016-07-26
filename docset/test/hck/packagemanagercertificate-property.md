---
author: joshbax-msft
title: PackageManager.Certificate Property
description: PackageManager.Certificate Property
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 40dc3f2e-ebf0-43fd-95f7-2b332780037d
---

# PackageManager.Certificate Property


This property represents the certificate used to sign a submission package. This property is **null** if the package is not signed.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## Usage


**Visual Basic**`Dim instance As PackageManager``Dim value As X509Certificate``value = instance.Certificate`

## Syntax


**Visual Basic**`Public ReadOnly Property Certificate As X509Certificate`

**C#**`public X509Certificate Certificate { get; }`

## Return Value


Returns **X509Certificate**.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






