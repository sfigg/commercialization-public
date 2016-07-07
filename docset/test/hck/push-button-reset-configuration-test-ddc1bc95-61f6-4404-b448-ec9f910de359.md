---
author: joshbax-msft
title: Push Button Reset Configuration Test
description: Push Button Reset Configuration Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5c54f16f-a09f-4d9c-b8cf-766d24d95827
---

# Push Button Reset Configuration Test


The test confirms compliance with the mandatory requirements. For more information about how to configure Push Button Reset and the Windows Recovery Environment, see the following topics:

-   [Deploy Push-Button Reset Features](http://go.microsoft.com/fwlink/p/?linkid=328123)

-   [Customize Windows RE](http://go.microsoft.com/fwlink/p/?linkid=328124)

-   [Deploy Windows RE](http://go.microsoft.com/fwlink/p/?linkid=328122)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Client.SystemImage.PushButtonReset</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Client Testing](troubleshooting-system-client-testing.md).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
<th>Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Windows Recovery Environment configuration failure</p></td>
<td><p>The device fails a configuration test as stated by the failed test.</p></td>
<td><p>Follow the steps in [Deploy Windows RE](http://go.microsoft.com/fwlink/p/?linkid=328122).</p></td>
</tr>
<tr class="even">
<td><p>Windows Recovery Environment boot failure</p></td>
<td><p>The device fails to boot to windows recovery environment as stated by the failed test.</p></td>
<td><p>Perform [Step 3: Adding Boot-Critical Drivers](http://go.microsoft.com/fwlink/p/?linkid=328125).</p></td>
</tr>
<tr class="odd">
<td><p>Push Button Reset Configuration failure</p></td>
<td><p>The device fails a configuration test as stated by the failed test.</p></td>
<td><p>Follow the steps in [Deploy Push-Button Reset Features](http://go.microsoft.com/fwlink/p/?linkid=328123).</p></td>
</tr>
</tbody>
</table>

 

 

 






