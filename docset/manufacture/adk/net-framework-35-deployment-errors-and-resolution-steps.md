---
Description: '.NET Framework 3.5 deployment errors and resolution steps'
MS-HAID: 'p\_adk\_online.net\_framework\_35\_deployment\_errors\_and\_resolution\_steps'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: '.NET Framework 3.5 deployment errors and resolution steps'
---

# .NET Framework 3.5 deployment errors and resolution steps


This topic describes common errors you can encounter when you use Features on Demand to enable or deploy .NET Framework 3.5, and recommended steps to resolve the issues.

**Table 1 Features on Demand Error Codes**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Error code</th>
<th align="left">Name</th>
<th align="left">Description</th>
<th align="left">Resolution steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0x800F081F</p></td>
<td align="left"><p>CBS_E_SOURCE_MISSING</p></td>
<td align="left"><p>The source files could not be found. Use the <strong>Source</strong> option to specify the location of the files that are required to restore the feature. For more information about how to specify a source location, see [Configure a Windows Repair Source](http://go.microsoft.com/fwlink/?LinkId=243077).</p></td>
<td align="left"><p>Verify that the source specified has the necessary files. The source argument should point to the <strong>\sources\sxs folder</strong> on the installation media or the Windows folder for a mounted image (for example, <strong>c:\mount\windows</strong> for an image mounted to <strong>c:\mount</strong>).</p></td>
</tr>
<tr class="even">
<td align="left"><p>0x800F0906</p></td>
<td align="left"><p>CBS_E_DOWNLOAD_FAILURE</p></td>
<td align="left"><p>The source files could not be downloaded. Use the <strong>Source</strong> option to specify the location of the files that are required to restore the feature. For more information about how to specify a source location, see [Configure a Windows Repair Source](http://go.microsoft.com/fwlink/?LinkId=243077).</p>
<p>Windows couldn’t connect to the Internet to download necessary files. Make sure that the system is connected to the Internet and click <strong>Retry</strong>.</p></td>
<td align="left"><p>Verify that the computer or server has connectivity to Windows Update, and that you are able to browse to <strong>http://update.microsoft.com</strong>. If WSUS is used to manage updates for this computer, verify that the Group Policy setting <strong>Contact Windows Update directly to download repair content instead of Windows Server Update Services (WSUS)</strong> is enabled.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>0x800F0907</p></td>
<td align="left"><p>CBS_E_GROUPPOLICY_DISALLOWED</p></td>
<td align="left"><p>DISM failed. No operation was performed. For more information, review the log file at <strong>%WINDIR%\logs\DISM\dism.log</strong>.</p>
<p>Due to network policy settings, Windows couldn't connect to the Internet to download files required to complete the requested changes.</p></td>
<td align="left"><p>Contact your network administrator for assistance with the <strong>Specify settings for optional component installation and component repair</strong> Group Policy setting.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Microsoft .NET Framework 3.5 Deployment Considerations](microsoft-net-framework-35-deployment-considerations.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20.NET%20Framework%203.5%20deployment%20errors%20and%20resolution%20steps%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




