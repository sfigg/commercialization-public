---
author: joshbax-msft
title: Trusted Execution Environment ACPI Profile
description: Trusted Execution Environment ACPI Profile
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8bc0632d-1eee-4b44-bb4d-5a39bc875410
---

# Trusted Execution Environment ACPI Profile


Licensing: Microsoft agrees to grant to you a no charge, royalty-free license to its Necessary Claims on reasonable and non-discriminatory terms solely to make, use, sell, offer for sale, import, or distribute any implementation of this specification. “Necessary Claims” are those claims of Microsoft-owned or Microsoft-controlled patents that are technically necessary to implement the required portions (which also include the required elements of optional portions) of this specification, where the functionality causing the infringement is described in detail and not merely referenced in this Specification.

## 1.0 Background


This specification defines the ACPI device object for a TPM 2.0 device and the control methods associated with the ACPI device object required for Windows 8. The control methods implement the equivalent of the TCG physical presence ACPI interface, the equivalent of the Platform Reset Attack Mitigation interface and optionally an ACPI method to send a command to the TPM 2.0 device.

An additional static ACPI table (TPM2) is used to define the mechanism for communicating between the TPM 2.0 device and the Windows 8 OS.

**Note**  
Microsoft refers to the Trusted Computing Group’s “TPM.Next” term as “TPM 2.0”

 

## 2.0 Requirements


This specification assumes a computing platform that supports ACPI-based communication as specified in \[ACPI09\] between an OS and a firmware environment.

## 3.0 Usage scenarios (for example only)


### 3.1 Sending a physical presence command

A typical usage scenario is as follows:

1.  Within the OS environment, an application detects the TPM 2.0 device is not fully provisioned for use for Windows 8. (An example of how this could happen is if a new OS image is installed after a previous OS image provisioned the TPM 2.0.)

2.  The application launches an OS wizard to ready the TPM 2.0 device for use.

3.  The wizard interacts with the computer administrator via UI and determines the administrator needs to clear the TPM 2.0 device to provision it because the TPM 2.0 device reset lockout authorization value is not available.

4.  To clear the TPM 2.0 device, the OS requests (by executing an ACPI control method for the TPM 2.0 device object) the firmware perform the operation to clear the TPM 2.0 device upon the next boot provided a physically present user confirms they approve of clearing the TPM 2.0 device.

5.  The OS restarts the platform.

6.  During the early portion of the boot process, the firmware recognizes the pending request from the OS to clear the TPM 2.0 device.

7.  The firmware presents a UI to a physically present user asking them to take some action to confirm clearing of the TPM 2.0 device.

8.  A physically present user confirms clearing of the TPM 2.0 device.

9.  The firmware clears the TPM 2.0 device using the platform hierarchy authorization.

10. If necessary, to persist the clearing of the TPM 2.0 device, the platform is rebooted immediately.

11. The OS boots.

12. The OS queries (via an ACPI control method on the TPM 2.0 device) if the last OS request to clear the TPM 2.0 device was either (a) successful, (b) was not confirmed by the physically present user or (c) had some other error. In the following, we assume the TPM 2.0 device was cleared successfully.

13. The TPM 2.0 device provisioning wizard within the OS performs additional commands to ready the device for use by Windows.

### 3.2 Requesting memory to be cleared on the next boot

This scenario illustrates how the memory clear feature of the system helps thwart attacks that harvest system memory for key material after the platform is unexpectedly restarted.

1.  From within the OS, an administrator on a system with a TPM 2.0 device turns on the BitLocker feature for the OS volume.

2.  The BitLocker feature calls the TPM 2.0 device ACPI control method to set the ClearMemory bit defined in the TCG Platform Reset Attack Mitigation Specification.

3.  The BitLocker feature encrypts the OS volume.

4.  The administrator leaves the system unattended with the screen locked.

5.  A malicious person steals the system while it is running.

6.  The malicious person inserts a USB stick and quickly removes the system battery and re-inserts it.

7.  The system starts booting when the battery is re-inserted.

8.  Because the ClearMemory bit was set previously the firmware clears the entire system memory before launching any code not provided by the platform manufacturer.

9.  The malicious person configures the firmware during boot to boot to the USB device even though the code on the USB device is not properly signed.

10. The code on the USB device scans the system memory for the BitLocker Volume Master Key but it is not found.

    **Warning**  
    Steps 11 through 16 are similar to the earlier steps, but use the UEFI interface instead of ACPI

     

11. The malicious person attempts to boot the system normally.

12. Because BitLocker was enabled with the TPM key protector, this permits BootMgr to “unseal” the volume master key for the OS volume because the correct measurements are in the TPM 2.0 device when BootMgr runs.

13. Boot proceeds to the OS logon screen.

14. The malicious person again removes then re-inserts the battery and boots code from a USB device.

15. Because the ClearMemory bit was set, the system firmware erases the entire system memory during boot.

16. Even though code from the USB device scans the system memory, the OS volume encryption key is not in memory.

### 3.3 Issuing a command to the TPM 2.0 device

This example is not applicable for all system architectures.

1.  The Windows TPM 2.0 driver wants to issue a command to the TPM 2.0 device.

2.  The Windows TPM 2.0 driver writes the command to execute to the physical address read from the ACPI-defined Control Area earlier during the Windows TPM 2.0 driver initialization.

3.  The Windows TPM 2.0 driver executes the ACPI control method to execute a TPM 2.0 command.

4.  The Windows TPM 2.0 driver polls the registers in the control area until they indicate the TPM command has completed.

5.  The Windows TPM driver reads the command response from the physical address read from the ACPI-defined Control Area earlier during Windows TPM driver initialization.

## 4.0 General ACPI Requirements for the TPM 2.0 System and Device


### 4.1 Power considerations

**ACPI D1/D2**

The TPM 2.0 device MAY support ACPI D1 and/or ACPI D2 but MUST behave as if it was in power state ACPI D0 while in D1 or D2.

**ACPI S3 (Sleep)**

The TPM 2.0 MAY support S3 but entry into and exit from the S3 low power state for the device MUST be controlled by the system/platform manufacturer.

The OS (or other software running in the OS environment) MUST NOT be able to place the TPM 2.0 device in S3 or cause the TPM 2.0 device to exit from S3. For example, if the TPM 2.0 device is on a bus, the OS MUST NOT be able to power down the bus causing the TPM 2.0 device to enter S3.

The Windows 8 TPM driver will attempt to issue a TPM2\_Shutdown command prior to entering S3 (sleep).

If a hardware platform does support S3 and the TPM does not retain its state while the system is in S3, the platform MUST issue the necessary TPM2\_Init and TPM2\_Startup(TPM\_SU\_STATE) commands during S3 resume. It is possible the OS may not have completed the TPM2\_Shutdown command prior to entry into S3. This could cause the return result of TPM2\_Startup(TPM\_SU\_STATE) to return an error. The system firmware that resumes from S3 MUST deal with a TPM2\_Startup error appropriately. For example, by either disabling access to the TPM via hardware, issuing a TPM2\_Startup(TPM\_SU\_CLEAR) command and configuring the device securely by taking actions like extending a separator with an error digest (0x01) into PCRs 0 through 7 and locking NV indices.

The system MUST account for time elapsed during S3 by decrementing TPM dictionary attack failure count (TPM\_PT\_LOCKOUT\_COUNTER) for the time the system was in S3 per the lockout interval (TPM\_PT\_LOCKOUT\_INTERVAL). This may require a platform implementation to provide standby voltage to retain TPM clock and/or state during S3 or a platform could also securely provide information regarding how much time elapsed while the system was in a low power state so the TPM can reliably updates its authorization failure count for its dictionary attack logic.

**Low Power States for Connected Standby Systems**

Windows 8 does not perform any additional actions associated with the TPM upon entry and exit from low power states for Connected Standby systems. The platform MUST performing any actions needed for the TPM to behave as though it was in D0 whenever the system enters and exits from low power states for Connected Standby systems. This MAY require a platform implementation to provide standby voltage to power the TPM clock and/or retain state. Alternatively, a platform MAY need to securely provide information regarding how much time elapsed while the system was in a low power state to the TPM, so the TPM can reliably updates its authorization failure count for its dictionary attack logic.

**System Off**

The system SHOULD securely account for time elapsed during full shutdown by decrementing TPM dictionary attack failure count (TPM\_PT\_LOCKOUT\_COUNTER) for the time the system was in S5 per the lockout interval (TPM\_PT\_LOCKOUT\_INTERVAL).

### 4.2 ACPI tables

A system with a TPM 2.0 device MUST provide a device object table with a hardware device ID and an OS vendor specific static table (TPM2) as described below.

Both the TPM2 table and the TPM 2.0 device object MUST be persistent once the platform is shipped to a customer. (E.g. Firmware options MUST NOT permit hiding of the TPM2 table or the TPM 2.0 device object.) An exception is if a system is shipped with a non-default option to provide TPM 1.2 functionality instead of TPM 2.0 functionality (i.e. for compatibility with older operating systems like Windows 7.) In this situation the TPM2 table and the TPM 2.0 device object MAY be removed via a BIOS configuration option and enumeration of a TPM 1.2 performed. Note: A Connected Standby System for Windows 8 is required to ship, by default, with a TPM 2.0 visible to the operating system. Please contact Microsoft for technical guidance about switching between a TPM 2.0 and TPM 1.2 on a hardware platform.

### 4.3 TPM 2.0 Device Object ACPI Table

**4.3.1 Bus Hierarchy**

The Device Object table MUST be under the DSDT table in the ACPI namespace.The TPM 2.0 Device Object MUST be located under the system bus at “root\\\_SB”.

**4.3.2 Hardware Identifier**

The actual plug and play hardware identifier (e.g. \_HID) for the TPM 2.0 device object MUST be “MSFT0101”or the device MUST have a compatible ID of “MSFT0101” and the \_HID could be vendor specific.

**4.3.3 Resource Descriptors**

The ACPI TPM 2.0 Device Object MUST claim all resources used by the TPM 2.0 device.

**4.3.4 Control Methods**

**4.3.4.1 Platform Reset Attack Mitigation**

The system MUST implement all ACPI and UEFI related parts of \[TCG08\] for UEFI. The device object MUST implement the control method interface defined in \[TCG08\], section 6. The interface is required even if the platform unconditionally clears memory on every boot. The clearing of memory MUST NOT be conditional on the TPM 2.0 device state (in contrast \[TCG08\] does not requiring clearing of memory if the TPM 1.2 is not owned). Also, sections 3, 5 of \[TCG08\] MUST be implemented. The \_DSM query function MUST be implemented (function index 0) per the ACPI specification. (Note: There is a mistake in the ACPI 4.0 specification about the return value for the \_DSM method. The return value of the \_DSM method should be a buffer containing 0x03.) The implementation MUST auto-detect an orderly OS shutdown and clear the ClearMemory bit on such events.

Special note for UEFI based ARM systems with a TPM 2.0: On UEFI based ARM systems with a TPM 2.0, Windows 8 will unconditionally request memory be cleared using the UEFI interface on every boot. Implementing the ACPI interface is still required, but the interface MAY be implemented to not change the state of the ClearMemory or DisableAutoDetect flags. (Note: Microsoft recommends the ACPI interface be implemented per the TCG specification so calling the ACPI interface does change the state of ClearMemory or DisableAutoDetect.)

**4.3.4.2 Physical Presence Interface**

The system MUST implement the specification defined in \[TCG11\] per the additional notes below:

1.  The control methods defined in section 2 MUST be implemented with the following restrictions:

    1.  The \_DSM query function MUST be implemented (function index 0) per the ACPI specification. (Note: There is a mistake in the ACPI 4.0 specification about the return value for the \_DSM method. The return value of the \_DSM method should be a buffer containing 0x01FF.)

    2.  The implementation MUST return a value of “2: Reboot” for “Get Platform-Specific Action to Transition to Pre-OS Environment.” PPI operations MUST occur for a transition of a restart and SHOULD occur for a shutdown transition.

    3.  Implementation of the following control methods is optional: “Submit TPM Operation Request to Pre-OS Environment” (may return “2: General Failure”) and “Submit preferred user language” (may return “3: Not implemented”).

2.  Connected Standby systems MAY hardcode NoPPIClear to TRUE and not implement operations 17 and 18. This means they do not need to implement any confirmation dialogs for physical presence actions because no physical presence operations will require user confirmation.

3.  The firmware MUST leave the storage and endorsement hierarchies enabled when it passes control to initial program loader code like the Windows Boot Manager.

### 4.4 Memory Mapped I/O Interface

For hardware platforms that use the Memory Mapped I/O Interface, this section and the information in section 4.4 describes the TPM 2.0 driver interaction with the hardware. An example of a system that uses the memory mapped I/O interface is a system with a Start Method value of 6 in the TPM2 table.

### 4.4.1 TCG TPM Interface Specification Requirements

The system MUST comply with the TPM 1.2 hardware interface requirements in \[TCG12\] for the following sections:

Section 9.1: TPM Locality Levels

Section 9.2: Locality Uses

Section 9.3: Locality Usage per a Register

Section 10: TPM Register Space

Section 11: System Interaction and Flows

Except: All of section 11.2.4 Failure Mode

Except section 11.2.5: Command Duration, normative item 2

Except All of section 11.2.6: Timeouts

Except All of section 11.2.8: Self Test and Early Platform Initialization

Except All of section 11.2.9: Input Buffer Size

Except section 11.2.10: Errors, normative items 2c and 3.

Section 13: TPM Hardware Protocol

For future draft specifications of \[TCG12\] please contact Microsoft.

### 4.4.2 Support for cancelling a command

Windows requires the TPM 2.0 device to permit cancelling of a TPM 2.0 command using the memory mapped I/O interface by exhibiting the behavior described below.

The previously unused bit 24 of the STS Register is defined as write only and referred to as commandCancel.

A write of ‘1’ to commandCancel during the command execution phase MAY cancel the currently executing command and a response MUST be returned. The response indicates if the command was cancelled (no TPM 2.0 state change, but a cancel response code TPM\_RC\_CANCELLED is returned) or completed (a regular TPM 2.0 response is returned indicating the result of the command). Writes to the commandCancel register when the TPM is not in the command execution state MUST be ignored.

### 4.4.3 Additional Requirements

1.  All TPM commands MUST complete within a maximum of 90 seconds.

2.  If the TPM 2.0 driver requests to cancel a command, it must complete or cancel within 90 seconds.

3.  The following TIMEOUT values MUST be implemented: TIMEOUT\_A = 1 second, TIMEOUT\_B = 2 seconds, TIMEOUT\_C = 1 second, TIMEOUT\_D = 1 second.

4.  The minimum input buffer size MUST be 0x500 (or larger).

## 5.0 References


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[ACPI09]</p></td>
<td><p>“Advanced Configuration and Power Interface Specification,” Version 4.0, June 16, 2009.</p></td>
</tr>
<tr class="even">
<td><p>[TCG08]</p></td>
<td><p>Trusted Computing Group, “TCG Platform Reset Attack Mitigation Specification,” Version 1.0, May 15, 2008.</p></td>
</tr>
<tr class="odd">
<td><p>[TCG11]</p></td>
<td><p>Trusted Computing Group, “TCG Physical Presence Interface Specification,” Version 1.20, Feb. 10, 2011.</p></td>
</tr>
<tr class="even">
<td><p>[TCG12]</p></td>
<td><p>Trusted Computing Group, “PC Client Work Group PC Client Specific TPM Interface Specification (TIS) Version 1.21, Revision 1.00.</p></td>
</tr>
<tr class="odd">
<td><p>TCG ACPI specification</p></td>
<td><p>Trusted Computing Group, TCG ACPI specification</p></td>
</tr>
<tr class="even">
<td><p>TCG TPM 2.0 Mobile Command Response Buffer Interface Specification</p></td>
<td><p>Trusted Computing Group, TCG TPM 2.0 Mobile Command Response Buffer Interface Specification</p></td>
</tr>
<tr class="odd">
<td><p>TCG TPM 2.0 CRB Specification</p></td>
<td><p>Trusted Computing Group, TPM 2.0 Mobile Command Response Buffer Interface</p></td>
</tr>
</tbody>
</table>

 

 

 






