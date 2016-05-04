---
author: joshbax-msft
title: Windows Tablet Test (System)
description: Windows Tablet Test (System)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4c4ed362-5b50-4f4c-84ed-70ab1a0086ae
---

# Windows Tablet Test (System)


This manual test tests the resume time for systems that support the **Connected Standby** state.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.Tablet.ColdBootLatency</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~1 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

The system should appear to immediately awaken upon a resume. Together with the display, touch is the primary means by which this sense is communicated to the user.

To perform this test, put the computer into the **Connected Standby** state, and then resume. When the display is activated, touch the screen immediately and verify that the touch screen responds within a reasonable time. You should observe no visual delay.

After you accomplish this task, return to Windows tablet test (system) and select **Yes** if the system passed the requirement, or select **No** if the touch screen did not respond immediately.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md) and [How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md#hiderrors).

## More information


For more information about this test, see [How to Use the Windows Touch Quality Certification Tests](http://go.microsoft.com/fwlink/p/?LinkId=265757).

## Related topics


[How to run the Windows HCK Tests for Touch and Pen Devices](how-to-run-the-windows-hck-tests-for-touch-and-pen-devices.md)

 

 







