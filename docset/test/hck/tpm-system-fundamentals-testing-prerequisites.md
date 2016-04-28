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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TPM%20System%20Fundamentals%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





