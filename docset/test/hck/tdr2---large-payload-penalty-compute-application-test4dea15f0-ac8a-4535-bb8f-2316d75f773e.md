---
author: joshbax-msft
title: TDR2 - Large Payload Penalty Compute Application Test
description: TDR2 - Large Payload Penalty Compute Application Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5f68d357-4d0d-4153-8ab4-caf268bc6743
---

# TDR2 - Large Payload Penalty Compute Application Test


This automated test measures the Timeout Detection and Recovery (TDR) capabilities of the graphics processing unit (GPU) of a video card or chipset.

This topic applies to these test jobs:

-   TDR2 - Large Payload Penalty Compute Application Test

-   TDR2 - Large Payload Penalty Graphics Application Test

-   TDR2 - Long Running Compute Packet Expect NO TDR (Interactive - win7)

-   TDR2 - Long Running Compute Packet Expect NO TDR (Interactive - win7, PoliceDdi)

-   TDR2 - Long Running Compute Packet Expect TDR (Interactive - win7)

-   TDR2 - Long Running Compute Packet Expect TDR (NonInteractive - win8)

-   TDR2 - Long Running Compute Packet Expect TDR (PoliceDdi)

-   TDR2 - Long Running Compute Packet Expect TDR (PoliceDdi, NonInteractive)

-   TDR2 - Long Running Graphics Packet Expect NO TDR (Interactive - win7)

-   TDR2 - Long Running Graphics Packet Expect NO TDR (Interactive - win7, PoliceDdi)

-   TDR2 - Long Running Graphics Packet Expect TDR (Interactive - win7)

-   TDR2 - Long Running Graphics Packet Expect TDR (NonInteractive - win8)

-   TDR2 - Long Running Graphics Packet Expect TDR (PoliceDdi)

-   TDR2 - Long Running Graphics Packet Expect TDR (PoliceDdi, NonInteractive)

-   TDR2 - Multiple TDR Compute Lockout and Recovery Test (Enumerated Adapter)

-   TDR2 - Multiple TDR Compute Lockout and Recovery Test (NULL Adapter)

-   TDR2 - Multiple TDR Graphics Lockout and Recovery Test (Enumerated Adapter)

-   TDR2 - Multiple TDR Graphics Lockout and Recovery Test (NULL Adapter)

-   TDR2 - Scheduler WLK Validate WDDM1.2 drivers say they support per engine resets

-   TDR2 - Standard Two Device Test Graphics (Uninterrupted when another app TDRs)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.WDDM12.Render.TDRResiliency</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the Test


Before you run the test, complete the test setup as described in [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

## More Information


The TDR2 test validates that the video driver functions correctly when GPU workloads, as direct memory access (DMA) packets, are processed for longer periods than expected or wanted.

Terms that you'll find in the titles of the jobs for this test include:

-   **Interactive (standard behavior).** The application doesn't schedule larger workloads. TDRs (at 2 seconds) are expected if the workload is too big.

-   **NonInteractive (new functionality).** The application may schedule workloads that take longer than 2 seconds to finish. A typical scenario here is a Compute application that will run a large calculation in the background. With NonInteractive workloads, the scheduler will not interrupt its processing if no other GPU work must be performed at the same time.

-   **PoliceDdi.** When resets occur, the test jobs track all device driver interface (DDI) calls to measure a reasonable responsiveness from the driver and hardware. Generally, DDI calls that take over a quarter second are flagged as excessive.

These test jobs also exercise engine-reset functionality where appropriate. The older TDR functionality performed an adapter-wide reset, whereas the new TDR functionality attempts an engine reset before an adapter-wide reset.

The testing process requires running multiple binaries at the same time. One or more applications generate workloads while another application monitors the effect that these workloads have on the system. The command lines that the test jobs use to start the applications allow for cross-process communication, so running the test jobs in scripts is the preferred technique.

**Note**  
You must run all test jobs by using administrator credentials. All the test binaries generate log files that shouldn't contain test failures.

 

### Command syntax

TDR2 test jobs are divided into these areas:

-   Long Running Graphics Packet test jobs

-   Long Running Compute Packets test jobs

-   Multiple TDR Lockout and Recovery test jobs

-   Uninterrupted Application test job

-   Large Payload Penalty test jobs

-   Miscellaneous test job

Scripts control actions that occur during individual test jobs. The following tables list these scripts. If you're manually reproducing the test jobs, you must run these scripts.

**Note**  
For test combination command lines, see individual script files.

 

The following Long Running Graphics Packet test jobs run test situations that should and shouldn't cause a TDR, based on whether the test acts like an interactive application. These test jobs also make sure that DDI calls respond in a reasonable amount of time.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Long Running Graphics Packet Expect NO TDR (Interactive - win7)</p></td>
<td><p>TDR_Long_Graphics_5.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Graphics Packet Expect NO TDR (Interactive - win7, PoliceDdi)</p></td>
<td><p>TDR_Long_Graphics_6.cmd</p></td>
</tr>
<tr class="odd">
<td><p>TDR2 - Long Running Graphics Packet Expect TDR (Interactive - win7)</p></td>
<td><p>TDR_Long_Graphics_1.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Graphics Packet Expect TDR (NonInteractive - win8)</p></td>
<td><p>TDR_Long_Graphics_2.cmd</p></td>
</tr>
<tr class="odd">
<td><p>TDR2 - Long Running Graphics Packet Expect TDR (PoliceDdi)</p></td>
<td><p>TDR_Long_Graphics_3.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Graphics Packet Expect TDR (PoliceDdi, NonInteractive)</p></td>
<td><p>TDR_Long_Graphics_4.cmd</p></td>
</tr>
</tbody>
</table>

 

The following Long Running Compute Packet test jobs run test situations that should and shouldn't cause a TDR, based on whether the test acts like an interactive application. These test jobs also validate that DDI calls respond in a reasonable amount of time.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Long Running Compute Packet Expect TDR (Interactive - win7)</p></td>
<td><p>TDR_Long_Compute_1.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Compute Packet Expect TDR (NonInteractive - win8)</p></td>
<td><p>TDR_Long_Compute_2.cmd</p></td>
</tr>
<tr class="odd">
<td><p>TDR2 - Long Running Compute Packet Expect TDR (PoliceDdi)</p></td>
<td><p>TDR_Long_Compute_3.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Compute Packet Expect TDR (PoliceDdi, NonInteractive)</p></td>
<td><p>TDR_Long_Compute_4.cmd</p></td>
</tr>
<tr class="odd">
<td><p>TDR2 - Long Running Compute Packet Expect NO TDR (Interactive - win7, PoliceDdi)</p></td>
<td><p>TDR_Long_Compute_5.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Long Running Compute Packet Expect NO TDR (Interactive - win7)</p></td>
<td><p>TDR_Long_Compute_6.cmd</p></td>
</tr>
</tbody>
</table>

 

In the following Multiple TDR Lockout and Recovery test jobs, the application runs workloads that cause a TDR. The test jobs then validate that after 6 TDRs in a particular period, the application can no longer open the hardware device.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Multiple TDR Compute Lockout and Recovery Test (Enumerated Adapter)</p></td>
<td><p>TDR_Multiple_4.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Multiple TDR Compute Lockout and Recovery Test (NULL Adapter)</p></td>
<td><p>TDR_Multiple_3.cmd</p></td>
</tr>
<tr class="odd">
<td><p>TDR2 - Multiple TDR Graphics Lockout and Recovery Test (Enumerated Adapter)</p></td>
<td><p>TDR_Multiple_2.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Multiple TDR Graphics Lockout and Recovery Test (NULL Adapter)</p></td>
<td><p>TDR_Multiple_1.cmd</p></td>
</tr>
</tbody>
</table>

 

The following Uninterrupted Application test job makes sure that when an engine reset occurs, an application that currently has the device open continues to function without a device lost.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Standard Two Device Test Graphics (Uninterrupted when another app TDRs)</p></td>
<td><p>TDR_Standard_1.cmd</p></td>
</tr>
</tbody>
</table>

 

The following Large Payload Penalty test jobs run workloads that are just under the TDR threshold. The test jobs validate that the scheduler correctly delays the application.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Large Payload Penalty Compute Application Test</p></td>
<td><p>TDR_Large_Payload_Compute.cmd</p></td>
</tr>
<tr class="even">
<td><p>TDR2 - Large Payload Penalty Graphics Application Test</p></td>
<td><p>TDR_Large_Payload_Graphics.cmd</p></td>
</tr>
</tbody>
</table>

 

The following Miscellaneous test job validates that the driver sets appropriate flags.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Test job</th>
<th>Command script</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TDR2 - Scheduler WLK Validate WDDM1.2 drivers say they support per engine resets</p></td>
<td><p>TDR_Validate_WDDM12.cmd</p></td>
</tr>
</tbody>
</table>

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Configdisplay.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\windowstest\tools\</p></td>
</tr>
<tr class="even">
<td><p>DxgFault.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="odd">
<td><p>SchBillboard.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="even">
<td><p>SchManager.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="odd">
<td><p>Surfboard.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
<tr class="even">
<td><p>TdrKMDODTests.dll</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>WGFPayloadTDR.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\WINDOWSTEST\Graphics\wddm\bin\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TDR2%20-%20Large%20Payload%20Penalty%20Compute%20Application%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




