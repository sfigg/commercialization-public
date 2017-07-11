---
title: Machines and Machine Pools
description: Machines and Machine Pools
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 26483970-2bc8-4dcf-8967-537fe652d904
---

# Machines and Machine Pools


The **Machine** class represents a computer that can be used for testing and that contains devices to be tested. Computer properties represent Windows® Test Technology (WTT) dimensions. Dimensions can be added, removed, or reset based on the underlying WTT behavior.

The **Machine.Status** property indicates whether a computer is available for testing and if it's currently running tests.

The **MachinePool** class represents a logical grouping of zero or more computers, and it represents WTT **ResourcePool** objects that WTT uses natively for scheduling and testing. Machine pools are hierarchical (that is, a machine pool can have child machine pools). A machine pool doesn't represent any physical computers.

**Note**  
The **ProductInstance.MachinePool** property is **null** for product instances loaded via Package Manager (.

 

These common machine pools are in every controller:

-   Root ($), which contains all other machine pools. The root doesn't contain individual computers, it can't run jobs, and it has no special properties. Use the **RootPool** property to access the root machine pool.

-   System, which contains all controller components and is hidden. System is a reserved name.

-   Default, which newly detected computers are automatically added to. Computers in machine pools that are marked for deletion are moved to the default machine pool. Computers in the default machine pool can't be used or change status.

When you delete a machine pool, the deletion operates recursively. All computers in the affected pool are moved to the default pool. Deleting a machine pool doesn't affect results or logs. When you delete a computer, all corresponding test results and history are deleted, and logs are orphaned.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Machines%20and%20Machine%20Pools%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




