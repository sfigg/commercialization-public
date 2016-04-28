---
author: joshbax-msft
title: Machine Sets
description: Machine Sets
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 52d9b237-ea7d-40d9-a157-b216dee18532
---

# Machine Sets


A **MachineSet** object is a collection of machine roles, and a machine role is a collection of computers that run the same test binaries. You must create a valid **MachineSet** to allocate and assign computers for any test that requires multiple computers.

Although most tests in the Windows Hardware Certification Kit (Windows HCK) run on a single computer, some tests require multiple computers. For example, a network test might target a network adapter on one computer, and a second computer might act as a network message receiver. In this example scenario, each computer runs different (but coordinated) binaries for one test.

For the preceding scenario, the machine set has two roles, and each role has one computer.

In a more complex scenario (for example, testing server load stress), you might have one target computer, 10 client computers that make simultaneous requests on the target computer, and one test coordinator computer to synchronize clients and record results.

## MachineRole


A **MachineRole** object is a list of computers that perform a specific test role. Use the **AddMachine()** method to add a computer to a role. **AddMachine()** returns an error if you add a computer that isn't in the correct machine pool or if the maximum number of computers is exceeded.

This example shows how to display the role for each computer in a **MachineSet** object:

``` syntax
Machine secondaryMachine = GetSecondaryMachine();
Test test = GetTest();
 
MachineSet machineSet = test.GetMachineRole();
 
foreach (MachineRole role in machineSet.Roles)
{
    Console.WriteLine("Role : " + role.Name);
    Console.WriteLine("Min : {0} Max : {1}" + role.Minimum, role.Maximum);
    Console.WriteLine("isPrimary {0}", role.Primary);
 
    Console.WriteLine("Allocated machines: ");
    foreach (Machine machine in role.GetMachines())
    {
        Console.WriteLine("\t" + machine.Name);
    }
}
```

If you want to add a secondary machine to Roles\[1\], you can use this:

``` syntax
machineSet.Roles[1].AddMachine(secondaryMachine);
if (machineSet.Validate())
{
Test.QueueTest(machineSet);
}
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Machine%20Sets%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




