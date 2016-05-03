---
author: joshbax-msft
title: ProductInstance.FindTargetFromContainer Method
description: ProductInstance.FindTargetFromContainer Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2e56ee58-94b7-4c79-a991-851ac887559f
---

# ProductInstance.FindTargetFromContainer Method


This method creates a list of targets containing the specific container ID. There are two special containerIds to consider. The first is the system containerId(00000000-0000-0000-ffff-ffffffffffff). If this is passed in, then the method returns a list with just a single "system" target. The second is a zero-decorated GUID (00000000-0000-0000-0000-000000000000). This is an invalid GUID.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim containerId As Guid``Dim returnValue As ReadOnlyCollection(Of TargetData)``returnValue = instance.FindTargetFromContainer(containerId)`

## Syntax


**Visual Basic**`Public Function FindTargetFromContainer ( _`           `containerId As Guid _``) As ReadOnlyCollection(Of TargetData)`

**C#**`public ReadOnlyCollection<TargetData> FindTargetFromContainer (`           `Guid containerId``)`

## Parameters


*containerId*      The GUID of containerId for (most likely) a device.

## Return Value


Returns **ReadOnlyCollection**, which is a list of test targets with &lt;paramref name="containerId"/&gt;. If no test targets (devices) contains a container ID of &lt;paramref name="containerId"/&gt; then an empty list is returned.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ProductInstance.FindTargetFromContainer%20Method%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




