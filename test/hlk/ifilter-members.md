---
title: IFilter Members
description: IFilter Members
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4f282424-4ee8-4ce3-9329-4e752e5f19af
---

# IFilter Members


The following tables list the members exposed by the **IFilter** type.

## <span id="Public_Properties"></span><span id="public_properties"></span><span id="PUBLIC_PROPERTIES"></span>Public Properties


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
<td><p>[IFilter.Constraints Property](ifilterconstraints-property.md)</p></td>
<td><p>This property represents the filter constraints for the filter.</p></td>
</tr>
<tr class="even">
<td><p>[IFilter.ExpirationDate Property](ifilterexpirationdate-property.md)</p></td>
<td><p>This property represents the expiration date for the filter.</p></td>
</tr>
<tr class="odd">
<td><p>[IFilter.FilterNumber Property](ifilterfilternumber-property.md)</p></td>
<td><p>This property represents the filter ID number. The Filter ID number uniquely identifies a filter within the HCK.</p></td>
</tr>
<tr class="even">
<td><p>[IFilter.FilterNumber Property](ifilterfilternumber-property.md)</p></td>
<td><p>This property determines whether the logs are required for this filter to be applicable.</p></td>
</tr>
<tr class="odd">
<td><p>[IFilter.IsResultRequired Property](ifilterisresultrequired-property.md)</p></td>
<td><p>This property represents determines whether the results are required for this filter to be applicable.</p></td>
</tr>
<tr class="even">
<td><p>IssueDescription</p></td>
<td><p>This property represents the issue description for the filter.</p></td>
</tr>
<tr class="odd">
<td><p>IssueResolution</p></td>
<td><p>This property represents the issue resolution for the filter.</p></td>
</tr>
<tr class="even">
<td><p>LastModifiedDate</p></td>
<td><p>This property represents the last modified date for the filter.</p></td>
</tr>
<tr class="odd">
<td><p>LogNodes</p></td>
<td><p>This property represents the filter log nodes for the filter.</p></td>
</tr>
<tr class="even">
<td><p>ShouldFilterAllZeros</p></td>
<td><p>This property determines whether the filter should be applied if the pass and fail count are both zero.</p></td>
</tr>
<tr class="odd">
<td><p>ShouldFilterNotRuns</p></td>
<td><p>This property determines whether the filter should be applied for not run task results.</p></td>
</tr>
<tr class="even">
<td><p>Status</p></td>
<td><p>This property represents the status for the filter.</p></td>
</tr>
<tr class="odd">
<td><p>TestCommandLine</p></td>
<td><p>This property represents the command line for the test being filtered.</p></td>
</tr>
<tr class="even">
<td><p>Title</p></td>
<td><p>This property represents the filter title value (string).</p></td>
</tr>
<tr class="odd">
<td><p>Type</p></td>
<td><p>This property represents the filter type for the given filter.</p></td>
</tr>
<tr class="even">
<td><p>Version</p></td>
<td><p>This property represents the version for the filter.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Public_Methods"></span><span id="public_methods"></span><span id="PUBLIC_METHODS"></span>Public Methods


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
<td><p>[IFilter.IsApplicable Method](ifilterisapplicable-method.md)</p></td>
<td><p>This method determines whether the filter is applicable for the given taskResult.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20IFilter%20Members%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




