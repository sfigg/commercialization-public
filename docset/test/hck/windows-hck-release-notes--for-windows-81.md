---
author: joshbax-msft
title: Windows HCK Release Notes for Windows 8.1
description: Windows HCK Release Notes for Windows 8.1
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9cc39762-5e82-4d4b-8daf-7d7a5a673c1d
---

# Windows HCK Release Notes for Windows 8.1


Applies To: Windows 8.1

Known issues and workarounds for this release of the Windows HCK for Windows 8.1.

## Known issues and workarounds


**Warning**  
The HCK for Windows 8.1 Preview cannot be used to certify machines running Windows 8.1 RTM.

 

-   We recommended that you remove any previous version of the HCK before installing the RTM version. Installing over a previous installation of the kit isn't supported and can result in errors.

-   HCK Controller installation may fail if the system contains SQL components from a previous installation. We recommend installing the HCK Controller on a clean install of Windows Server 2008 R2 x64 with service pack (SP1) or Windows Server 2012.

-   Installation logs are written to the %TEMP% folder. This folder is normally deleted for Remote Desktop sessions. We recommend installing the HCK Controller and HCK Studio at the console rather than through Remote Desktop. Or, you can use Temporary Folders policy settings to prevent the install logs from being deleted.

-   On x86 and x64 clients, UEFI Secure Boot must be disabled before installing the HCK Client software. This is necessary to allow HCK Client installer to enable TESTSIGNING mode. UEFI Secure Boot should only be enabled while running Secure Boot tests.

-   We recommend that you install the kit with a wired network connection. An unreliable Wi-Fi connection can result in improper content installation and missing tests.

-   HCK Controller, Studio, and Manager aren't supported in Virtual PC or any third-party hypervisor environment. We also do not support hyper-v unless noted in the test documentation.

-   In some cases the UI will not refresh when setting a machine to “Ready” in HCK Studio. We recommend restarting HCK Studio if a machine has been initializing for a long period of time.

-   If there is a network connection issue between a controller and its clients while sending data the client will stop responding and the running task cannot be cancelled in the HCK Studio UI. We recommend cancelling the task in the HCK Manager.

-   When you create a device certification project, select a device before you select a computer from the Systems view. The first time that a job is run on a project, a pre-requirement job is run on the client called "Windows Logo Kit – Prepare client for submission". The UI doesn't reflect the status of this job, which can take 5–10 minutes to run. You can track progress by using the HCK Manager app in the Job Monitor.

-   Signtool can't be used to sign an .hckx file. The HCK Studio UI or Object Model is the only way to sign an .hckx file. The Studio UI is able to query the personal certificate store for code-signing certificates, or it can use a non-password–protected certificate file. To sign an .hckx file using a certificate contained in a password-protected file, the Object Model must be used. It's easily automated by using PowerShell.

## Windows HCK for Windows 8.1 RTM release test updates


The following tests are updated for HCK for Windows 8.1 RTM release.

-   WGF11 Multisample - This corrects a test bug which caused crashes on some MSAA-capable hardware

-   Change Display Settings Test - Smooth Rotation - Fixes false failure with test for portrait devices.

-   The following tests fixed false failure where test required segements to be marked with “PreserveDuringStandby” when ActiveInD3 flag is set.

    HybridPowerManagement\_NoApp

    HybridPowerManagement\_AppIdle

    HybridPowerManagement\_AppRunning

    HybridPowerManagement\_NoAppMonitorOff

    HybridPowerManagement\_AppIdleMonitorOff

    HybridPowerManagement\_AppRunningMonitorOff

-   The following test fixes false failure due to PnPStop/PnPStart display adapter not being started soon enough for check.

    DXGI HybridPresent – PnPStop

    DXGI HybridPresent - PnPStop (FL9.1)

-   The following tests fix crashing issue that can occur during test initialization.

    WDDM Dead Lock

    CRASH - \*

    Possible other Device.Graphics tests

-   The following tests are fixed to properly check that graphics drivers are properly PE signed.

    Content Protection- Playing H.264 + AAC media file protected environment. HCK test - Device Test.

    Content Protection- Playing H.264 and AAC media file in protected environment. HCK test - System Test

    Content Protection- Playing VC1 + WMAPro media file protected environment. HCK test - Device Test.

    Content Protection- Playing VC1 and WMAPro media file in protected environment. HCK test - System Test.

-   Windows Hyper-V NPIV tests - Fixes the error “… action should complete within 1 minute” without giving a full 1 minute for the action to complete.  The tests now correctly wait for the maximum duration of 1 minute for the operation to complete.

-   Webcam Min Resolution for integrated cameras - The following test has been updated to reflect the relaxation of the requirement for minimum resolution for USB rear cameras. USB camera requirement has been updated to allow a minimum resolution of 1080p @ 30 Fps for rear cameras.

-   USB Descriptor Test - In windows 8, the test stops during execution to prompt to install a driver. This has been fixed to no longer require user interaction on the client machine.

## Related topics


[What's New in Windows Hardware Certification Kit for Windows 8.1](whats-new-in-windows-hardware-certification-kit-for-windows-81.md)

[Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md)

 

 







