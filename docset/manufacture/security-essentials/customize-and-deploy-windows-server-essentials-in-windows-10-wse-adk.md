---
Description: 'OEMs can customize and deploy Windows Server 2016 Technical Preview Essentials before the server is shipped to a customer.'
MS-HAID: 'p\_wse\_adk.customize\_and\_deploy\_windows\_server\_essentials\_in\_windows\_10\_wse\_adk'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Customize and deploy Windows Server Essentials in Windows 10
---

# Customize and deploy Windows Server Essentials in Windows 10


OEMs can customize and deploy Windows Server 2016 Technical Preview Essentials before the server is shipped to a customer. Use the Windows Assessment and Deployment Kit (Windows ADK) and the information in the following topics to customize and deploy Windows Server Essentials. Windows Server Essentials Experience is a server role in Windows Server 2016 Technical Preview. You can download the Windows ADK from the Microsoft Download Center.

## <span id="Hardware_requirements_for_Windows_Server_Essentials"></span><span id="hardware_requirements_for_windows_server_essentials"></span><span id="HARDWARE_REQUIREMENTS_FOR_WINDOWS_SERVER_ESSENTIALS"></span>Hardware requirements for Windows Server Essentials


Actual requirements will vary based on your system configuration and the applications and features you choose to install. Processor performance depends not only on the clock frequency of the processor, but also on the number of cores and the size of the processor cache. Storage space requirements for the system partition are approximate. Additional available storage space may be required if you are installing over a network.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Minimum</th>
<th align="left">Recommended*</th>
<th align="left">Maximum</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>CPU socket</p></td>
<td align="left"><p>1.4 GHz (64-bit processor) or faster for single core</p>
<p>1.3 GHz (64-bit processor) or faster for multi-core</p></td>
<td align="left"><p>3.1 GHz (64-bit processor) or faster multi-core</p></td>
<td align="left"><p>2 sockets</p></td>
</tr>
<tr class="even">
<td align="left"><p>Memory (RAM)</p></td>
<td align="left"><p>2 GB</p>
<p>4GB if you deploy Server Essentials as a Virtual Machine</p></td>
<td align="left"><p>16 GB</p></td>
<td align="left"><p>64 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Hard disks and available storage space</p></td>
<td align="left"><p>160 GB hard disk with a 60 GB system partition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>No limit</p></td>
</tr>
</tbody>
</table>

 

\*The recommended hardware requirements support maximum user and device limits.

## <span id="Additional_hardware_and_software_requirements"></span><span id="additional_hardware_and_software_requirements"></span><span id="ADDITIONAL_HARDWARE_AND_SOFTWARE_REQUIREMENTS"></span>Additional hardware and software requirements


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Component</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Network adapter</p></td>
<td align="left"><p>Gigabit Ethernet adapter (10/100/1000baseT PHY/MAC)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Internet</p></td>
<td align="left"><p>Some functionality may require Internet access (fees may apply) or a Microsoft Account</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Supported Client Operating Systems</p></td>
<td align="left"><ul>
<li><p>Windows 7</p></li>
<li><p>Windows 8</p></li>
<li><p>Windows 8.1</p></li>
<li><p>Windows 10</p></li>
<li><p>Macintosh OS X 10.5 to 10.8.</p></li>
</ul>
<div class="alert">
<strong>Note</strong>  
<p>Some features require professional or higher editions.</p>
</div>
<div>
 
</div>
<p>1 GB of available hard drive space (a portion of this disk will be freed after installation)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Router</p></td>
<td align="left"><p>A router or firewall that supports IPv4 NAT or IPv6</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Additional requirements</p></td>
<td align="left"><p>DVD-ROM drive</p></td>
</tr>
</tbody>
</table>

 

For more information about the hardware requirements, see the [Windows Hardware Certification Requirements](http://go.microsoft.com/fwlink/?LinkId=309478).

All server hardware should meet the requirements established in the Windows Hardware Certification Kit (HCK). For more information, see [Windows Hardware Certification Kit (HCK)](http://go.microsoft.com/fwlink/?LinkId=309477).

## <span id="See_Also"></span><span id="see_also"></span><span id="SEE_ALSO"></span>See Also


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Content type</th>
<th align="left">Reference</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Preconfiguration options</p></td>
<td align="left"><p>| [Configure Server Storage - Windows Server Essentials](configure-server-storage---windows-server-essentials.md) | [Customize Deployment - Windows Server Essentials](customize-deployment---windows-server-essentials.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Customizations options</p></td>
<td align="left"><p>[Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials](add-post-initial-configuration-customizations--posticcmd----windows-server-essentials.md) | [Add Tasks and Links to Dashboard Home Page - Windows Server Essentials](add-tasks-and-links-to-dashboard-home-page---windows-server-essentials.md) | [Add Health Alerts - Windows Server Essentials](add-health-alerts---windows-server-essentials.md) | [Configure Support for a Wireless Network - Windows Server Essentials](configure-support-for-a-wireless-network---windows-server-essentials.md) | [Customize Server Backup - Windows Server Essentials](customize-server-backup---windows-server-essentials.md) | [Customize Shared Folders - Windows Server Essentials](customize-shared-folders---windows-server-essentials.md) | [Install Add-Ins - Windows Server Essentials](install-add-ins---windows-server-essentials.md) | [Add Branding - Windows Server Essentials](add-branding---windows-server-essentials.md) | [Add a Tab to Settings - Windows Server Essentials](add-a-tab-to-settings---windows-server-essentials.md) | [Add Top-Level Categories to the Launchpad (Macintosh Operating System)](add-top-level-categories-to-the-launchpad--macintosh-operating-system--wse-adk.md) | [Change Media Streaming Settings - Windows Server Essentials](change-media-streaming-settings---windows-server-essentials.md) | [Change the Color of the Dashboard and Launchpad -Windows Server Essentials](change-the-color-of-the-dashboard-and-launchpad--windows-server-essentials.md) | [Order and Group Dashboard Tabs - Windows Server Essentials](order-and-group-dashboard-tabs---windows-server-essentials.md) | [Add Third-Level Domain Names - Windows Server Essentials](add-third-level-domain-names---windows-server-essentials.md) | [Replace the List of Domain Name Providers - Windows Server Essentials](replace-the-list-of-domain-name-providers---windows-server-essentials.md) | [Customize Client Backup - Windows Server Essentials](customize-client-backup.md) | [Install Add-Ins During Setup - Windows Server Essentials](install-add-ins-during-setup---windows-server-exxentials.md) | [Add POR ID - Windows Server Essentials](add-por-id---windows-server-essentials.md) | [Replace O365 Integration Module Endpoint URLs - Windows Server Essentials](replace-o365-integration-module-endpoint-urls---windows-server-essentials.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Deployment preparation</p></td>
<td align="left"><p>[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Testing</p></td>
<td align="left"><p>[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Customize%20and%20deploy%20Windows%20Server%20Essentials%20in%20Windows%2010%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




