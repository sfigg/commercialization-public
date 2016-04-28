---
author: joshbax-msft
title: Proximity Controller Testing Prerequisites
description: Proximity Controller Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1e7fbde1-0552-400f-9dbe-8a04156c46ff
---

# Proximity Controller Testing Prerequisites


This topic describes the tasks that you must complete before you test a proximity-compliant controller by using the Windows Hardware Certification Kit (Windows HCK):

-   [Review the hardware requirements](#bkmk-hardwarerequirements).

-   [Review the software requirements](#bkmk-softwarerequirements).

-   [Configure the test computer](#bkmk-testcomputerconfiguration).

## <a href="" id="bkmk-hardwarerequirements"></a>Hardware Requirements


The following hardware is required for testing a proximity-compliant controller. You might need more hardware if the controller includes more capabilities. See the test description for each test that the Windows HCK identifies to determine whether your controller requires more hardware.

-   Two test computers. These test computers must meet the Windows HCK prerequisites and must be included in the same machine pool. For more information, see [Windows HCK Prerequisites](windows-hck-prerequisites.md).

-   Two test proximity controllers.

-   One Near Field Communication (NFC) Forum Type 2 tag.

**Note**  
For more information about the NFC Forum Type 2 tag, see [Near Field Communication (NFC) Forum](http://go.microsoft.com/fwlink/p/?linkid=236991).

 

## <a href="" id="bkmk-softwarerequirements"></a>Software Requirements


The following software is required to run the proximity tests:

-   The drivers for the test device.

-   The latest Windows HCK filters or updates.

## <a href="" id="bkmk-testcomputerconfiguration"></a>Test Computer Configuration


For proximity controller tests, you must have two test computers in your machine pool so that you can test communication between the proximity controller and another proximity-compliant device. The primary test computer is Computer A. This test computer runs the proximity tests and generates test results. The second test computer is Computer B. This computer is required to test the sending and receiving of subscription messages.

To configure both test computers, follow these steps:

1.  Install the appropriate Windows® operating system on the test computers, and then configure the computers for your test network. The test network is the network that contains the Windows HCK Studio and Windows HCK Controller.

2.  Install the manufacturer-supplied device driver for the proximity controller on Computer A.

3.  Attach a proximity device (for example, a proximity-compliant mouse) to Computer B.

4.  Install the manufacturer-supplied device driver for the proximity device on Computer B.

5.  Verify that the proximity controller and the proximity-compliant device are enabled on Computer A and Computer B by reviewing their status in Device Manager.

6.  Install the Windows HCK client application on both test computers.

7.  Use Windows HCK Studio to create a machine pool, and then move the test computers to that pool.

Make sure that the test computer is in the ready state before you begin your testing. If a test requires parameters to be set, a dialog box appears for that test. Review the specific test topic for more information about the parameters.

Manual Windows HCK tests require user intervention. When you run tests for a submission, it’s best to run the automated tests in a block separately from manual tests. This prevents a manual test from interrupting an automated test.

**Important**  
On both Computer A and Computer B, switch to the Windows Desktop before you run your proximity tests.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Proximity%20Controller%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




