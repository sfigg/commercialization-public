---
author: joshbax-msft
title: Running Tests
description: Running Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cda0d694-607a-4f55-a7b5-ffc4d597e112
---

# Running Tests


Use the **QueueTest()** method to run all tests that are children of this object.

When you call **QueueTest()**, the Windows Hardware Certification Kit (Windows HCK) verifies these items:

-   The target is present.

-   The target computer is running the correct operating system.

-   The computer is in the correct machine pool and hasn't moved.

-   The target computer is in the "ready" or "running" state.

If any of the preceding checks fail, a **ScheduleException** occurs.

If the instance of **QueueTest()** is used for a test that takes a logical machine set and no logical machine set is used to schedule, a **ScheduleException** occurs. Similarly, if the logical machine set that is used is incompatible with the one that's required for a test, a **ScheduleConstraintException** occurs.

 

 






