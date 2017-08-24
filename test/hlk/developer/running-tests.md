---
title: Running Tests
description: Running Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 51ca9ba0-097c-4b29-bc4d-3b90256c92ee
---

# Running Tests


Use the **QueueTest()** method to run all tests that are children of this object.

When you call **QueueTest()**, the Windows Hardware Lab Kit (Windows HLK) verifies these items:

-   The target is present.

-   The target computer is running the correct operating system.

-   The computer is in the correct machine pool and hasn't moved.

-   The target computer is in the "ready" or "running" state.

If any of the preceding checks fail, a **ScheduleException** occurs.

If the instance of **QueueTest()** is used for a test that takes a logical machine set and no logical machine set is used to schedule, a **ScheduleException** occurs. Similarly, if the logical machine set that is used is incompatible with the one that's required for a test, a **ScheduleConstraintException** occurs.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Running%20Tests%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




