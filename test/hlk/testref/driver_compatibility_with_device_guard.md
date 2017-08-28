---
title: Driver Compatibility with Device Guard
Description: Driver Compatibility with Device Guard
ms.assetid: EBDF0686-450D-493C-A021-B37346128A09
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Driver Compatibility with Device Guard

<fm><abstract>

Windows 10 has a feature called <xref hlink="http://blogs.windows.com/business/2015/04/21/windows-10-security-innovations-at-rsa-device-guard-windows-hello-and-microsoft-passport/">Device Guard</b> that gives organizations the ability to lock down devices in a way that provides advanced malware protection against new and unknown malware variants as well as Advanced Persistent Threats (APTs). Device Guard can use hardware technology and virtualization to isolate the Code Integrity (CI) decision-making function from the rest of the Windows operating system. When using virtualization-based security to isolate Code Integrity, the only way kernel memory can become executable is through a Code Integrity verification. This means that kernel memory pages can never be Writable and Executable (W+X) and executable code cannot be directly modified.

</abstract><nav_sidebar><outline></outline></nav_sidebar></fm>

## How to build compatible drivers

Since memory pages and sections can never be writable and executable, the first step is to ensure a clear separation of data and code and not to attempt to directly modify code pages.

-   Opt-in to NX by default
-   Use NX APIs/flags for memory allocation - NonPagedPoolNx
-   Don't use sections that are both writable and executable
-   Don't attempt to directly modify executable system memory
-   Don't use dynamic code in kernel
-   Don't load data files as executable
-   Section Alignment must be a multiple of 0x1000 (PAGE\_SIZE). E.g. DRIVER\_ALIGNMENT=0x1000

Use the latest version of the <xref hlink="https://msdn.microsoft.com/en-us/windows/hardware/dn913145.aspx">WDK</b> and <xref hlink="https://www.visualstudio.com/en-us/dn949247">Visual Studio 2015</b> to produce compatible drivers when using default settings. Visual Studio 2013 currently marks the INIT section as RWX. This will be patched, but is still compatible as Windows 10 will automatically strip the write permission (W) from the INIT section.

## How to verify driver compatibility

There are two steps to verify driver compatibility:

1.  Use Driver Verifier with the new Code Integrity compatibility checks enabled
2.  Test the driver on a system with virtualization-based isolation of Code Integrity enabled.

## Driver Verifier compatibility checks

Driver Verifier has a new Code Integrity option flag (0x02000000) to enable extra checks that validate compliance with this feature. To enable this from the command line, use the following command:

`verifier.exe /flags 0x02000000 /driver <driver.sys>`

To choose this option if using the verifier GUI, choose **Create custom settings (for code developers)**, choose **Next**, and then choose **Code integrity checks**.

Drivers built with older versions of Visual Studio will fail on the INIT section being WRX. However, if this is the only issue you can ignore this issue and hit go past this in the kernel debugger as this will not cause any compatibility issues with this feature. Forthcoming updates to driver verifier will not flag the INIT section.

## Enable virtualization-based isolation for Code Integrity

Virtualization-based security is supported on Enterprise and Server editions of Windows. To enable virtualization-based protection of Code Integrity, the simplest method is to use gpedit as described below. This will turn on Hyper-V and Isolated User Mode and enable the feature:

1.  Run gpedit to edit local Group Policy
2.  Under Computer Configuration -&gt; Administrative Templates -&gt; System -&gt; **Device Guard**, choose **Turn On Virtualization Based Security**

    ![](../images/hvci1.png)

3.  In the detailed configuration dialog that appears, choose **Enabled**, and then select **Enable Virtualization Based Protection of Code Integrity**

    ![](../images/hvci2.png)

4.  Reboot

Virtualization-based protection of Code Integrity is now enabled.

## HLK tests and requirements

## Client

There is a new HLK test called the Hypervisor Code Integrity Readiness Test that will enable the driver verifier Code Integrity options to catch any driver loading issues. This test will not necessarily catch things that the driver does during normal operation, so it is suggested that other testing be performed while driver verifier is enabled and/or while virtualization-based protection of CI is enabled.

## Server

The HLK Hypervisor Code Integrity Readiness Test is required as part of the Assurance AQ and the flags to enable Code Integrity checks are also set while enabling driver verifier during other HLK tests.

## FAQs:

**What about existing drivers? Do I need to re-build these drivers to get them to work with Windows 10?**

It depends. Many drivers will already be compatible. If using standard settings with the old versions of the WDK and Visual Studio, a known issue is that the INIT section is marked as RWX. In Windows 10, however, the W will automatically be stripped, so if this is the only issue then the driver will be compatible.

**How do I verify that Virtualization Based Protection of Code Integrity is enabled?**

The simplest mechanism is to run the System Information app (msinfo32). Look for the following line: "Device Guard Security Services Running". It should report: "Hypervisor enforced Code Integrity". There is also a WMI interface for checking using management tools.

**Can I verify that Virtualization Based Protection of Code Integrity is enabled programmatically from kernel in order to alter driver behavior?**

Yes, you can use NtQuerySystemInformation: <xref hlink="https://msdn.microsoft.com/en-us/library/windows/desktop/ms724509(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/desktop/ms724509(v=vs.85).aspx</b>

The SYSTEM\_CODEINTEGRITY\_INFORMATION structure has a new 0x400 value exposed, indicating that virtualization based protection of Code Integrity is on.

**How do I fix compatibility issues?**

In addition to double checking that there are no W+X pages and the driver sections are aligned correctly as mentioned above, the most likely issue will be improper memory allocation. Information about the Code Analysis warnings related to memory allocation issued is available on MSDN on the following page:

<xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff550572(v=vs.85).aspx">Code Analysis for Drivers Warnings</b>

The following MSDN links show some examples of commonly-used APIs that cause executable memory to be allocated, along with some example fixes:

-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910903(v=vs.85).aspx">C30029</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910904(v=vs.85).aspx">C30030</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910905(v=vs.85).aspx">C30031</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910906(v=vs.85).aspx">C30032</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910907(v=vs.85).aspx">C30033</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910908(v=vs.85).aspx">C30034</b>
-   <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn910909(v=vs.85).aspx">C30035</b>

**Which APIs are potentially affected?**

The following list of APIs that are not reserved for system use may be impacted:

|                                            |                                                                                                                                                                                     |
|--------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| API name                                   | Description                                                                                                                                                                         |
| ExAllocatePool                             | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff544501(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff544501(v=vs.85).aspx</b> |
| ExAllocatePoolWithQuota                    | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff544506(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff544506(v=vs.85).aspx</b> |
| ExAllocatePoolWithQuotaTag                 | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff544513(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff544513(v=vs.85).aspx</b> |
| ExAllocatePoolWithTag                      | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff544520(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff544520(v=vs.85).aspx</b> |
| ExAllocatePoolWithTagPriority              | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff544523(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff544523(v=vs.85).aspx</b> |
| ExInitializeNPagedLookasideList            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff545301(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff545301(v=vs.85).aspx</b> |
| ExInitializeLookasideListEx                | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff545298(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff545298(v=vs.85).aspx</b> |
| MmAllocateContiguousMemory                 | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554460(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554460(v=vs.85).aspx</b> |
| MmAllocateContiguousMemorySpecifyCache     | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554464(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554464(v=vs.85).aspx</b> |
| MmAllocateContiguousMemorySpecifyCacheNode | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554464(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554464(v=vs.85).aspx</b> |
| MmAllocateContiguousNodeMemory             | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/jj602795(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/jj602795(v=vs.85).aspx</b> |
| MmCopyMemory                               | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn342884(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/dn342884(v=vs.85).aspx</b> |
| MmMapIoSpace                               | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554618(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554618(v=vs.85).aspx</b> |
| MmMapLockedPages                           | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554622(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554622(v=vs.85).aspx</b> |
| MmMapLockedPagesSpecifyCache               | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554629(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554629(v=vs.85).aspx</b> |
| MmProtectMdlSystemAddress                  | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff554670(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff554670(v=vs.85).aspx</b> |
| ZwAllocateVirtualMemory                    | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff566416(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff566416(v=vs.85).aspx</b> |
| ZwCreateSection                            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff566428(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff566428(v=vs.85).aspx</b> |
| ZwMapViewOfSection                         | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff566481(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff566481(v=vs.85).aspx</b> |
| NtCreateSection                            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff556473(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff556473(v=vs.85).aspx</b> |
| NtMapViewOfSection                         | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff556551(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff556551(v=vs.85).aspx</b> |
| StorPortGetDataInBufferSystemAddress       | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/jj553720(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/jj553720(v=vs.85).aspx</b> |
| StorPortGetSystemAddress                   | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff567100(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff567100(v=vs.85).aspx</b> |
| DxgkCbMapMemory                            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff559533(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff559533(v=vs.85).aspx</b> |
| IMiniportDMus::NewStream                   | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff536701(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff536701(v=vs.85).aspx</b> |
| FltAllocatePoolAlignedWithTag              | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff541762(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff541762(v=vs.85).aspx</b> |
| FltAllocateContext                         | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff541710(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff541710(v=vs.85).aspx</b> |
| ChangerClassAllocatePool                   | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff551402(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff551402(v=vs.85).aspx</b> |
| IMiniportMidi::NewStream                   | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff536710(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff536710(v=vs.85).aspx</b> |
| IMiniportWaveCyclic::NewStream             | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff536723(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff536723(v=vs.85).aspx</b> |
| IPortWavePci::NewMasterDmaChannel          | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff536916(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff536916(v=vs.85).aspx</b> |
| IMiniportWavePci::NewStream                | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff536735(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff536735(v=vs.85).aspx</b> |
| PcNewDmaChannel                            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff537712(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff537712(v=vs.85).aspx</b> |
| PcNewResourceList                          | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff537717(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff537717(v=vs.85).aspx</b> |
| PcNewResourceSublist                       | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff537718(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff537718(v=vs.85).aspx</b> |
| VideoPortAllocatePool                      | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff570180(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff570180(v=vs.85).aspx</b> |
| ClfsCreateMarshallingArea                  | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff541520(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff541520(v=vs.85).aspx</b> |
| WdfLookasideListCreate                     | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff548694(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff548694(v=vs.85).aspx</b> |
| WdfMemoryCreate                            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff548706(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff548706(v=vs.85).aspx</b> |
| WdfDeviceAllocAndQueryProperty             | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff545882(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff545882(v=vs.85).aspx</b> |
| WdfDeviceAllocAndQueryPropertyEx           | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn265599(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/dn265599(v=vs.85).aspx</b> |
| WdfFdoInitAllocAndQueryProperty            | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff547239(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff547239(v=vs.85).aspx</b> |
| WdfFdoInitAllocAndQueryPropertyEx          | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn265612(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/dn265612(v=vs.85).aspx</b> |
| WdfIoTargetAllocAndQueryTargetProperty     | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff548585(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff548585(v=vs.85).aspx</b> |
| WdfRegistryQueryMemory                     | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff549920(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff549920(v=vs.85).aspx</b> |
| NdisAllocateMemory                         | <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/ff550762(v=vs.85).aspx">https://msdn.microsoft.com/en-us/library/windows/hardware/ff550762(v=vs.85).aspx</b> |





