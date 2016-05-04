---
author: joshbax-msft
title: TPM System Fundamentals Testing Prerequisites
description: TPM System Fundamentals Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: ed7d230e-7b8f-4073-a791-c015adf02245
---

# TPM System Fundamentals Testing Prerequisites


This section describes the tasks that you must complete before you run Trusted Platform Module (TPM) system fundamentals tests by using the Windows Hardware Certification Kit (Windows HCK). These are settings that you must establish one time before running the TPM tests.

## Before you run the TPM system fundamentals tests:


1.  Open Tpm.msc and check whether state is “TPM is ready for use”. If it is not, clear the TPM from the TPM MMC console and then prepare the TPM. Make sure that TPM is enabled, active, and owned.

2.  Set the *NoPPIClear* flag so that you do not have to press F12 for every test:

    1.  Open PowerShell that has administrative privileges. At the PowerShell prompt, type the following:

        ``` syntax
        $Tpm = Get-WmiObject -class Win32_Tpm -namespace "root\CIMv2\Security\MicrosoftTpm"
        $ConfirmationStatus = $Tpm.GetPhysicalPresenceConfirmationStatus(22).ConfirmationStatus
        if($ConfirmationStatus -ne 4) {$Tpm.SetPhysicalPresenceRequest(18)}
        ```

    2.  Reboot the computer and accept changes by pressing F12.

    3.  Reboot the computer again.

3.  Ensure SecureBoot configuration and Debug policy are set according to each test requirement. Open a command prompt that has administrative privileges. At the command prompt, open msinfo32 and check the following:

    -   Secure boot State: ON (ON by default unless exclusively asked to set it to OFF)

    -   PCR7 configuration: Bound or Binding possible

**Software/Hardware Prerequisite**: Firmware based TPM or Discrete TPM.

## Related topics


[System.Fundamentals Testing](systemfundamentals-testing.md)

 

 







