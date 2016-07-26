---
author: joshbax-msft
title: Server Power Enabled
description: Server Power Enabled
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b51d3f13-4388-4fde-aa71-de9dc9631038
---

# Server Power Enabled


This automated test examines the system to verify that the system supports the minimum requirements for the Windows Server Enhanced Power Management feature.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Server.PowerManageable.ACPIPowerInterface</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Server Testing Prerequisites](system-server-testing-prerequisites.md) and [Test Server Configuration](test-server-configuration.md).

The feature associated with this test is not automatically detected. You must manually select the feature so this test can be scheduled.

1.  In the Selection tab in HCK Studio, right-click your selection to see a list of features. The check boxes for features that have been automatically detected display as selected.

2.  Select the check box for **System.Server.PowerManagement**.

3.  Click **OK**.

In addition, this test requires the following software and hardware.

-   Computers that expose p-states if their processors support them, OR, systems with processors that do not support p-states.

-   Computers with firmware that supports the Power Meter Interface (PMI). Such computers will present at least one power meter, exposed as a Win32\_PowerMeter object.

-   At least one power meter (one Win32\_PowerMeter object) with the property ConfiguredBudget set to a value between 25W and 5000W. If this property is not writeable, it must be pre-configured at the factory. If it is writeable, it can be set via WMI.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Server Testing](troubleshooting-system-server-testing.md).

## More information


This test does not directly perform any specific stress tests. Rather, it examines the system as follows:

-   If the CPUID feature flag reports that the CPU supports p-states, then if at least one p-state has been exposed to the OS, then requirement number one is met.

-   If at least one Win32\_PowerMeter object can be found via WMI query that reports values for the following properties in the given range:

    -   CurrentReading (25W - 5000W)

    -   ConfiguredBudget (25W - 5000W)

    then requirement number two is met.

If a system meets both requirements, then the test passes.

For more information:

-   [Recommendations for Power Budgeting with Windows Server](http://go.microsoft.com/fwlink/p/?linkid=296637)

-   [Power Management and ACPI](http://go.microsoft.com/fwlink/p/?linkid=296638)

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>SvrPwrEnabledTest</strong></p></td>
<td><p>Runs the test.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p><em>SvrPwrEnabledTest.exe</em></p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

 

 






