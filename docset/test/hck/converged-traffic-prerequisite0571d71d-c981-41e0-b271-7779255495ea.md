---
author: joshbax-msft
title: Converged Traffic Prerequisite
description: Converged Traffic Prerequisite
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b3330151-e37d-4de3-a186-588dde4c4f1c
---

# Converged Traffic Prerequisite


This test sets a particular machine as the primary target for the Converged Traffic Test. The Converged Traffic Test multi-machine job will sit in the pipeline, unable to be scheduled, until after this task has been run.

This task should be run against the primary test machine that is used for other certification tests (i.e., the machine with the device under test). If this task is run against the wrong machine or run against both the primary and secondary machines, then the Converged Traffic Test may fail because the roles of the two machines may be reversed.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Controller.Fcoe.Interoperability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Storage Testing](devicestorage-testing.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

 

 






