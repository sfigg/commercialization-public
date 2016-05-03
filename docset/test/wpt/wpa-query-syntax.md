---
title: WPA Query Syntax
description: WPA Query Syntax
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b62dfcb3-1900-438f-84ac-9e6113de67bb
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# WPA Query Syntax


The syntax search and filtering components of Windows Performance Analyzer (WPA) are an extension to Windows query syntax. For more information, see [Advanced Query Syntax](http://go.microsoft.com/fwlink/p/?linkid=229849).

## Available Extensions


The following table describes the available extensions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Description</th>
<th>Examples</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Property names can contain spaces and other non-alphanumeric characters if the spaces or characters are enclosed in square brackets.</p></td>
<td><p><code>[All Count]:&gt;0</code></p>
<p><code>[% Weight]:= 5.6</code></p></td>
</tr>
<tr class="even">
<td><p>The asterisk <strong>RegEx</strong> operator (*) is allowed on string types.</p></td>
<td><p>The following query matches both <em>iexplore</em> and <em>explorer</em>, but not <em>myexplorer</em>:</p>
<p><code>ProcessName:* '.?explore.*'</code></p></td>
</tr>
<tr class="odd">
<td><p>Memory size suffixes (KB, MB, GB) and time units (s, ms, us, ns) on double and integer literals are supported. These suffixes are not case-sensitive.</p></td>
<td><p><code>Size :&gt; 20MB AND Size :&lt; 0.5GB</code></p>
<p><code>Duration :&gt; 5ms OR Duration :&lt; 1us</code></p></td>
</tr>
<tr class="even">
<td><p>Flexible precision on float literals for equality operations is supported. Precision is based on the number of decimal digits that the query contains.</p></td>
<td><p><code>Duration := 4.5ms</code> can potentially yield a larger result set than <code>Duration :=4.50ms</code>.</p></td>
</tr>
</tbody>
</table>

 

You may want to restrict a search scope to a subset of rows by series name. The series name is the name of the right-most non-empty column to the left of the gold bar. In the following table, the series name for rows 1-6 is *Process*. For all other rows, the series name is *Module*.

![wpa search](images/wpasearch.jpg)

If you query for `Process:~='iexplore'`, rows 6-13 are selected.

If you query for `Process:~='iexplore' AND [Series Name] := 'Process'`, only row 6 is selected.

If you query for `Process:~'iexplore' AND [Series Name] := 'Module'`, rows 7-13 are selected.

## Related topics


[WPA Features](wpa-features.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\hw_design%5D:%20WPA%20Query%20Syntax%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





