---
Description: 'This document lists the basic validation scenarios that are required to pass before signing-off on the Windows UEFI Firmware Update Platform functionality.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Validating Windows UEFI Firmware Update Platform Functionality
ms.author: dawnwood
ms.date: 09/05/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Validating Windows United Extensible Firmware Interface(UEFI) firmware update

UEFI Firware update platform functionaliy requires that certain criteria passes before signing-off on the Windows UEFI Firmware Update Platform functionality.  

##  Prerequisites

-   For each EFI System Resource Table (ESRT) entry, you need a capsule for the latest firmware version. The scenarios will refer to the latest version as X. Each ESRT entry is identified using a unique GUID.
-   For each ESRT entry exposed, create a capsule package that its version is incremented above the package created in step 1. These capsules will be referred to as X+1.
-   Capsules that aid in simulating failure conditions such as a capsule for which the payload is not signed or signed with an invalid PK.
-   Make sure all capsules to be used are signed appropriately from the OS perspective, catalog signed, and firmware signed, PK signed. Unless, you are specifically testing the negative PK signing cases. See “Signing the Firmware driver Package” in the specification for details on how to sign a capsule or firmware driver package.

## Install a new capsule or reinstall a previously installed capsule

1.  Open device manager.
2.  Find the device node that represents your firmware, it is usually under the “Firmware” devices.
3.  Right click on the firmware device you wish to update.
4.  Select **Update driver software**. You will get a popup that states “Update Driver Software - &lt;Firmware&gt;”.
5.  Select **Browse my computer for driver software**.
6.  On the next window, select **Let me pick from a list of device drivers on my computer**.
7.  If the driver has been installed before, select it from the **Show compatible hardware** box. If it does not exist, select **Have disk** and continue on. Otherwise, select **OK** and reboot the system.
8.  If you select **Have Disk**, you will get a popup labeled **Install From Disk**.
9.  Use **Browse** to go to the directory that has the capsule of the firmware you wish to install.
10. Select the INF file in that directory and hit **OK** to install.
11. During installation, if you get a popup saying the driver is not signed, go ahead and accept this driver.
12. The system asks you to reboot.
13. After you installed the capsule for the firmware, you need to reboot. If you wish to install multiple capsule packages, then wait to reboot until all capsules are installed and then reboot on the final capsule.

## Query the version and status details

Run the QueryVersionAndStatus.ps1 PowerShell (PS) script to query the current firmware version, last attempt firmware version and last attempt status.

    **To run the script:**

    1.  Run PowerShell as administrator.
    2.  `Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force` (This only has to be done once.)
    3.  Display the version and status details for the given GUID. For example: `.\QueryVersionAndStatus.ps1 6bd2efb9-23ab-4b4c-bc37-016517413e9a`
    4.  Check if firmware update was successful: Refer to the section “Validating the status of the firmware update” in the specification document. Make sure that the Last Attempt Status and the Current Version matches the expected version.
    5.  Recommended: Check to make sure that the devices you are updating are also still functioning.
    6.  Set the rollback policy: Some of the scenarios might require rolling back firmware. Rollback is not a production scenario. In order to be able to rollback, a registry policy key has to be created. Create a REG\_DWORD key with the name “Policy” under the node HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\FirmwareResources\\{&lt;GUID&gt;} and set the value of the Policy key to 1. Note that the GUID should be replaced with the actual GUID from the ESRT.

## Criteria for enabling UEFI Firware update platform functionaliy


### Each ESRT entry is successfully updatable through capsule

The following steps should be completed for each ESRT entry that is supported by the platform. Or in other words, for System firmware and each device firmware that supports updating firmware through UpdateCapsule.

**Steps**

1.  For each ESRT entry, install the capsule for firmware version X.
2.  Make sure all the above capsules are installed, prior to rebooting.

**Expected Result**

Firmware update should be successful for each ESRT entry that was updated. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X
-   Last Attempt Status = 0 (STATUS\_SUCCESS)

### The latest firmware version X is also updatable to X+1

The following steps should be completed for each ESRT entry for System firmware and each device firmware that supports updating firmware through UpdateCapsule.

**Steps**

1.  Complete the steps for "Each ESRT entry is successfully updatable through capsule", described above.
2.  For each ESRT entry, install the capsule for firmware version X+1.

**Expected Result**

Firmware update should be successful for each ESRT entry that was updated. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X+1
-   Last Attempt Version = X+1
-   Last Attempt Status = 0 (STATUS\_SUCCESS)

### On failure, firmware update returns the right status code as defined in the specification

The Status codes are defined in the section named “UEFI System Resource Table Definition”, in the table with the title “ESRT Last Attempt Status Field Values”.

### Insufficient Battery and UEFI System Firmware update

**Steps**

1.  Drain the battery charge to less than 25% and then plug-in the AC power.
2.  Install the capsule for UEFI System Firmware version X+1. Let’s assume that the current version is X.
3.  Before rebooting, make sure that the battery charge is less than 25%.

**Expected Result**

Firmware update should fail. For ESRT entry corresponding to the System Firmware, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+1
-   Last Attempt Status = 0xc00002de (STATUS\_INSUFFICIENT\_POWER)

### Insufficient Battery and Device Firmware update

**Steps**

1.  Drain the battery charge to less than 25% and then plug-in the AC power.
2.  Install the capsules for ALL supported devices in the system with firmware version X+1. Let’s assume that the current firmware version for the given device is X.
3.  Before rebooting, make sure that the battery charge is less than 25%.

**Expected Result**

Firmware update should fail. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+1
-   Last Attempt Status = 0xc00002de (STATUS\_INSUFFICIENT\_POWER)

### Insufficient Battery, UEFI System and Device Firmware update at the same time

**Steps**

1.  Drain the battery charge to less than 25% and then plug-in the AC power.
2.  Install the capsules for UEFI System Firmware and all Device Firmware with version X+1.
3.  Before rebooting, make sure that the battery charge is less than 25%.

**Expected Result**

Firmware update should fail for the System firmware and for all the device firmware for which the update was attempted. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+1
-   Last Attempt Status = 0xc00002de (STATUS\_INSUFFICIENT\_POWER)

### Firmware update should fail when the capsule is not PK signed

The following steps should be completed for each ESRT entry that is supported by the platform. Or in other words, for System firmware and each device firmware that supports updating firmware through UpdateCapsule.

**Steps**

1.  For each ESRT entry, create a capsule X+2, the payload for which is not signed.
2.  Install the capsules X+2. Let’s assume that the current version is X.

**Expected Result**

Firmware update should fail for all the ESRT entries for which the update was attempted. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+2
-   Last Attempt Status = 0xC0000022 (STATUS\_ACCESS\_DENIED)

### Firmware update should fail when the capsule is signed with the wrong PK certificate

The following steps should be completed for each ESRT entry that is supported by the platform. Or in other words, for System firmware and each device firmware that supports updating firmware through UpdateCapsule.

**Steps**

1.  For each ESRT entry, create a capsule X+2, sign the payload with a wrong key or certificate (for example use a debug signed capsule on a production device).
2.  Install the capsules X+2. Let’s assume that the current version is X.

**Expected Result**

Firmware update should fail for all the ESRT entries for which the update was attempted. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+2
-   Last Attempt Status = 0xC0000022 (STATUS\_ACCESS\_DENIED)

### Firmware update should fail when the capsule payload is tampered with

The following steps should be completed for each ESRT entry that is supported by the platform. Or in other words, for System firmware and each device firmware that supports updating firmware through UpdateCapsule.

**Steps**

1.  For each ESRT entry, create a capsule X+2, sign the payload with the right key or certificate. Then open the firmware bin file and flip 1 or more bits in the file and save the file back.
2.  Regenerate the catalog for the bin file and the INF file.
3.  Install the capsules X+2. Let’s assume that the current version is X.

**Expected Result**

Firmware update should fail for all the ESRT entries for which the update was attempted. For all ESRT entries, for which the update was attempted, validate that:

-   Current Firmware Version = X
-   Last Attempt Version = X+2
-   Last Attempt Status = 0xC0000022 (STATUS\_ACCESS\_DENIED) or 0xC000007B (STATUS\_INVALID\_IMAGE\_FORMAT)

### Firmware does not allow rollback beyond the LowestSupportedFirmwareVersion

The following steps should also be carried out for other device firmware (lower priority).

**Steps**

1.  For UEFI System Firmware, create a capsule X+1 such that the “LowestSupportedFirmwareVersion” in the ESRT entry for the system firmware is set to X+1.
2.  Install the capsule X+1 and make sure that the update succeeds.
3.  Create a UEFI System firmware update capsules, such that the version in the INF is X+2 but the actual firmware binary file is of version X.
4.  Install the capsule X+2 and reboot the system.

**Expected Result**

Firmware update should fail. For ESRT entry corresponding to the System Firmware, validate that:

-   Current Firmware Version = X+1
-   Last Attempt Version = X+2
-   Last Attempt Status = 0xC0000059 (STATUS\_REVISION\_MISMATCH)

### Seamless recovery and firmware update

This scenario varies from platform to platform depending on the implementation of the seamless recovery. Based on the implementation, the validation might require creating bad capsules that forces the system into recovery or disconnecting the power in the middle of an update or through any other means of exercising the recovery flows.

**Expected Result**

The system should boot into the OS and the firmware update should be marked as failed. The version reported by the UEFI firmware resource device should not have changed.

### Firmware Update adheres to the User Experience (UX) requirement

**Steps**

-   This scenario can be validated while executing any of the above scenarios that lead to a successful firmware update.

**Expected Result**

The user experience is in accordance to the specification, see section on “User Experience”.

-   The only text that is displayed on the screen is “Please wait while we install a system update”. The text is displayed at the right co-ordinates on the screen as called out in the specification.
-   OEM Logo is displayed as described in the specification.



 

 






