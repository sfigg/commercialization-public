---
author: joshbax-msft
title: WHEAHCT Logo
description: WHEAHCT Logo
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 20238e41-c8e1-496e-acd2-f54c7acafc97
---

# WHEAHCT Logo


This automated test determines whether a server platform delivers the minimum set of resources that are required to enable Windows Hardware Error Architecture Hardware Compliance Test (WHEAHCT). It is a tool provided by the WHEA feature team to certify OEMs or ODMs platform support for WHEA, a Windows Reliability Availability and Serviceability feature.

This test can run on x64- and Itanium-based platforms running firmware compliant with the Windows Hardware Error Architecture Platform Design Guide. The system must be running a version of Windows Server 2008 R2 or later version of the Windows® Server operating system. On IA64, a PSHED plug-in test driver (plugin.sys), which is supplied with the test tool, must be installed on the system. The driver is needed to inject machine check errors into the system.

**Note**  
The test injects a fatal error from the platform to the operating system. The operating system reacts to this fatal hardware error as if it is a real error. Because fatal hardware errors result in blue screen errors with Stop code 0x00000124, the fatal error part of the test will produce a system crash and result in a blue screen and reboot. If configured correctly, see the note below.

 

**Note**  
Automatic reboot after a system crash is a configurable behavior of the operating system. For correct execution of the test, the operating system must be configured to perform either a kernel dump or a minidump and reboot automatically. You can confirm these settings using the Control Panel System and Security System Advanced system settings Startup and recovery.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Server.WHEA.Core</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~30 minutes</p></td>
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

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Server Testing Prerequisites](system-server-testing-prerequisites.md) and [Test Server Configuration](test-server-configuration.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WHEAHCT%20Logo%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




