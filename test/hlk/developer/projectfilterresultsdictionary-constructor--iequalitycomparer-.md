---
title: ProjectFilterResultsDictionary Constructor (IEqualityComparer)
description: ProjectFilterResultsDictionary Constructor (IEqualityComparer)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e98cc703-49a6-4fc6-827b-a0181a7f84a5
---

# ProjectFilterResultsDictionary Constructor (IEqualityComparer)


This constructor initializes a new instance of the **ProjectFilterResultsDictionary** class.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim comparer As IEqualityComparer(Of TestResult)`

`Dim instance As New ProjectFilterResultsDictionary(comparer)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Sub New ( _`

          `comparer As IEqualityComparer(Of TestResult) _`

`)`

**C#**

`public ProjectFilterResultsDictionary (`

          `IEqualityComparer<TestResult> comparer`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*comparer*

     The **System.Collections.Generic.IEqualityComparer** implementation to use when comparing keys, or **null** to use the default EqualityComparer for the type of the key.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20ProjectFilterResultsDictionary%20Constructor%20%28IEqualityComparer%29%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




