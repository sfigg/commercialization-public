---
author: joshbax-msft
title: Handling Exceptions
description: Handling Exceptions
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 42accb11-56f3-42bd-ac58-c4f082a60f98
---

# Handling Exceptions


Error reporting occurs exclusively through the exception classes.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Exception class</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ConnectionException</strong></p></td>
<td><p>Base class for Microsoft® SQL Server® or network connection errors. A <strong>ConnectionException</strong> class can also occur from logon or permission issues.</p></td>
</tr>
<tr class="even">
<td><p><strong>DataIntegrityException</strong></p></td>
<td><p>Representation of data integrity errors.</p></td>
</tr>
<tr class="odd">
<td><p><strong>MachineException</strong></p></td>
<td><p>Representation of computer-specific errors.</p></td>
</tr>
<tr class="even">
<td><p><strong>ProductInstanceException</strong></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p><strong>ScheduleException</strong></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p><strong>ProjectException</strong></p></td>
<td><p>Base class for all logo manager exceptions.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ProjectManagerException</strong></p></td>
<td><p>Base class for all Windows Hardware Certification Kit (Windows HCK) API exceptions.</p></td>
</tr>
<tr class="even">
<td><p><strong>RequirementException</strong></p></td>
<td><p>Representation of exceptions that are related to requirements.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ScheduleException</strong></p></td>
<td><p>Base class for all Windows HCK Studio exceptions.</p></td>
</tr>
<tr class="even">
<td><p><strong>TargetException</strong></p></td>
<td><p>Class that contains constructors that are used to initialize <strong>TargetException</strong> objects.</p></td>
</tr>
<tr class="odd">
<td><p><strong>TestException</strong></p></td>
<td><p>Representation of exceptions that are related to certification tests.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Handling%20Exceptions%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




