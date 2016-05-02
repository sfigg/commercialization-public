---
author: joshbax-msft
title: IRunTests.QueueTest Method ()
description: IRunTests.QueueTest Method ()
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 53ad7755-5c78-4539-9ef1-cbd95e20a509
---

# IRunTests.QueueTest Method ()


This method schedules this object for execution.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As IRunTests``Dim returnValue As IList(Of TestResult)``returnValue = instance.QueueTest`

## Syntax


**Visual Basic**`Function QueueTest As IList(Of TestResult)`

**C#**`IList<TestResult> QueueTest ()`

## Return Value


Returns **IList**, which is a list of results for the tests that were scheduled.

## Remarks


QueueTest will attempt to schedule all of the tests in the current or child objects. If there is a failure, the scheduling of tests is stopped immediately and the method returns. The function will leave some tests scheduled, and some that are incomplete. The list returned identifies the tests that were scheduled.

This is not supported when the project is connected to a package.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20IRunTests.QueueTest%20Method%20%28%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




