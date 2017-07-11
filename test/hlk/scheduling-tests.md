---
title: Scheduling Tests
description: Scheduling Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f2313ac3-3edc-46e4-9040-a2f6dfecd590
---

# Scheduling Tests


Use the **Test.QueueTest()** method to put all your tests in a queue that will run on client computers.

If a test is associated with more than one target (and therefore more than one computer), the test is scheduled so that it runs on the first available computer. Scheduling is limited to computers that are in the correct machine pool at the time of scheduling and are in a ready or running state. If a computer isn't ready at the time of scheduling, the test won't run on that computer.

You can't schedule a test if no computers are found, and you can't add computers that are later available.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Scheduling%20Tests%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




