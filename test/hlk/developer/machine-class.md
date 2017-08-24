---
title: Machine Class
description: Machine Class
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 45e0175f-5c7d-49aa-b8bc-f92cd9858a17
---

# Machine Class


This class represents an abstract resource that a logo test can be scheduled to run against. Each machine (test computer) belongs to one and only one machine pool.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As Machine`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`<DataContractAttribute> _`

`Public MustInherit Class Machine`

**C#**

`[DataContractAttribute]`

`public abstract class Machine`

## <span id="Inheritance_Hierarchy"></span><span id="inheritance_hierarchy"></span><span id="INHERITANCE_HIERARCHY"></span>Inheritance Hierarchy


**System.Object**

     **Microsoft.Windows.Kits.Hardware.ObjectModel.Machine**

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


When the client software is originally installed on a machine, a Machine object is created and automatically appears in the default pool. Machine objects that are newly created are in a ‘Not Ready’ state, they need to be set to ‘Ready’ state before tests can be scheduled.

Any Machine in the reserved &lt;seealso cref="T:Microsoft.Windows.Kits.Hardware.ObjectModel.MachinePool"/&gt; cannot run tests. These machines will need to be moved into a MachinePool that is not a reserved pool.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Machine%20Class%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




