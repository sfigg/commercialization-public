---
author: joshbax-msft
title: Operate In Server Core Test
description: Operate In Server Core Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: fd895436-4e84-41b8-b4f0-f3ec8561ee1f
---

# Operate In Server Core Test


This test validates that the device is running in a Server Core configuration. Server Core is the default installation state of Windows Server which minimizes attack surface, reduces patch frequency, and reduces disk and memory footprint which in turn increases VM density. To pass certification, all device drivers must be supported in Server Core mode, without a dependency on graphical shell binaries. To ensure this requirement is satisfied, the User Interfaces and Infrastructure feature must be “Disabled with Payload Removed.”

If you installed the “Full Server” or “Server with a GUI” during Setup, you should reinstall Windows and select the “Server Core Installation” option in Setup to ensure that no traces of Server with a GUI remain on the server running certification. All installation and configuration tests for your driver must be done from within Server Core.

For more information about Sever Core configuration, see the following topics:

-   [Windows Server Installation Options](http://technet.microsoft.com/library/hh831786.aspx)

-   [Configure and Manage Server Core Installations](http://technet.microsoft.com/library/jj574091.aspx)

-   [Configuring a Server Core installation of Windows Server 2008 R2 with Sconfig.cmd](http://technet.microsoft.com/library/ee441254.aspx)

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.Server.OperateInServerCore</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


## Troubleshooting


## More information


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
<td><p>servercorecheck.dll</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\NTTEST\BASETEST\srvfoundation\servercorecheck\servercorecheck.dll</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Operate%20In%20Server%20Core%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




