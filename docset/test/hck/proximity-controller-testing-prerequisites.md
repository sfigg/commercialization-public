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

 

 

 






