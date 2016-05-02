---
author: joshbax-msft
title: Test Methods
description: Test Methods
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c6a0d1eb-aa6d-4438-8b1b-8295507684ff
---

# Test Methods


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
<td><p><strong>DeleteTestReuslts</strong></p></td>
<td><p>This method deletes a specific result.</p></td>
</tr>
<tr class="even">
<td><p><strong>FilterMultiDeviceTestGroups</strong></p></td>
<td><p>This method removes tests from a list of tests that can be consolidated and returns the consolidated groupings of tests that are compatible.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetMachineRole</strong></p></td>
<td><p>This method retrieves a logical machine set. If there is no machine set associated with this job, this will return <strong>null</strong>.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetParameters</strong></p></td>
<td><p>This method retrieves a dictionary collection of test parameters, sorted by parameter name.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetRequirements</strong></p></td>
<td><p>This method retrieves the enumerable list of certification requirements that this test verifies.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetSupportedPlatforms</strong></p></td>
<td><p>This method returns a enumerable list of the architectures supported by this certification test.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTestResults</strong></p></td>
<td><p>This method retrieves the list of the test results generated during runs of this certification test.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetTests</strong></p></td>
<td><p>This method retrieves all tests needed for this node.</p></td>
</tr>
<tr class="odd">
<td><p><strong>GetTestTargets</strong></p></td>
<td><p>This method retrieves a list of possible test targets for this test.</p></td>
</tr>
<tr class="even">
<td><p><strong>GetType</strong></p></td>
<td><p>(Inherited from <strong>Object</strong>)</p></td>
</tr>
<tr class="odd">
<td><p><strong>QueueTest</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="even">
<td><p><strong>SetParameter</strong></p></td>
<td><p>Overloaded.</p></td>
</tr>
<tr class="odd">
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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Test%20Methods%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




