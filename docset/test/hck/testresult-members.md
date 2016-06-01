---
author: joshbax-msft
title: TestResult Members
description: TestResult Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: bd07c4c0-73e3-4401-92df-1f1d6cf2dac4
---

# TestResult Members


The following table lists the members exposed by the **TestResult** type.

## Protected Constructors


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>TestResult</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
</tbody>
</table>

 

## Public Properties


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CompletionTime</p></td>
<td><p>This property represents the time when the corresponding certification test completed.</p></td>
</tr>
<tr class="even">
<td><p>InstanceId</p></td>
<td><p>This property represents the instance ID value of the test result.</p></td>
</tr>
<tr class="odd">
<td><p>Machine</p></td>
<td><p>This property represents the machine (test computer) on which this test ran.</p></td>
</tr>
<tr class="even">
<td><p>ScheduleTime</p></td>
<td><p>This property represents the time when the corresponding logo test was first scheduled.</p></td>
</tr>
<tr class="odd">
<td><p>StartTime</p></td>
<td><p>This property represents the time when the corresponding certification test was started and this result was generated.</p></td>
</tr>
<tr class="even">
<td><p>Status</p></td>
<td><p>This property represents the status of this certification test result.</p></td>
</tr>
<tr class="odd">
<td><p>Target</p></td>
<td><p>This property represents the test target that this test result was obtained from.</p></td>
</tr>
<tr class="even">
<td><p>Test</p></td>
<td><p>This property represents the certification test object this result is generated for.</p></td>
</tr>
</tbody>
</table>

 

## Protected Properties


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>LockObject</strong></p></td>
<td><p>(Inherited from <strong>NotificationBase</strong>)</p></td>
</tr>
</tbody>
</table>

 

## Public Methods


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Cancel</p></td>
<td><p>This method cancels a job that is scheduled.</p></td>
</tr>
<tr class="even">
<td><p><strong>Equals</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetAppliedFilters</strong></p></td>
<td><p>This method retrieves the filters applied for this test result.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetHashCode</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p>GetLogs</p></td>
<td><p>This method retrieves all of the logs associated with this test result.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetParameters</strong></p></td>
<td><p>This method retrieves the parameters that were applied to a test when it was run.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTasks</strong></p></td>
<td><p>This method retrieves the tasks associated with this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Refresh</strong></p></td>
<td><p>This method refreshes the current result status of a test.</p></td>
</tr>
<tr class="even">
<td><p><strong>ToString</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

## Protected Methods


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Finalize</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="even">
<td><p><strong>MemberwiseClone</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
</tbody>
</table>

 

 

 






