---
title: TPM System Fundamentals Testing Prerequisites
Description: TPM System Fundamentals Testing Prerequisites
ms.assetid: 3a2aa9d0-5694-43d5-a5be-6c939717eb6d
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# TPM System Fundamentals Testing Prerequisites

This section describes the tasks that you must complete before you run Trusted Platform Module (TPM) system fundamentals tests by using the Windows Hardware Lab Kit (Windows HLK). These are settings that you must establish one time before running the TPM tests.

## Before you run the TPM system fundamentals tests:

1.  Open Tpm.msc and check whether state is “TPM is ready for use”. If it is not, clear the TPM from the TPM MMC console and then prepare the TPM. Make sure that TPM is enabled, active, and owned.

2.  Ensure SecureBoot configuration and Debug policy are set according to each test requirement. Open a command prompt that has administrative privileges. At the command prompt, open msinfo32 and check the following:

    -   Secure boot State: ON (ON by default unless exclusively asked to set it to OFF)

    -   PCR7 configuration: Bound or Binding possible

**Software/Hardware Prerequisite**: Firmware based TPM or Discrete TPM.

<seealso> <xref rid="p_hlk_test.system_fundamentals_tests">System.Fundamentals Tests</b> </seealso>



