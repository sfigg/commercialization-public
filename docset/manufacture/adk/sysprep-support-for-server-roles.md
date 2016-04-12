---
Description: Sysprep Support for Server Roles
MS-HAID: 'p\_adk\_online.sysprep\_support\_for\_server\_roles'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Sysprep Support for Server Roles
---

# Sysprep Support for Server Roles


Many common server roles support the System Preparation tool (Sysprep). However, if you run the **Sysprep** command together with the **/generalize** option against an installation of a server, and you are using an unsupported server role, those roles may not function after the imaging and deployment process is completed. Therefore, you must enable and configure any server roles that do not support Sysprep after you have performed the imaging and deployment process.

The following table lists server roles and specifies whether the roles support Sysprep.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server role</th>
<th align="left">Sysprep support in Windows Server 2008</th>
<th align="left">Sysprep support in Windows Server 2008 R2</th>
<th align="left">Sysprep support in Windows Server® 2012</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Active Directory Certificate Services (AD CS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>Active Directory Domain Services (AD DS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Active Directory Federation Services (AD FS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>Active Directory Lightweight Directory Services (AD LDS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Active Directory Rights Management Services (AD RMS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>Application Server</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Dynamic Host Configuration Protocol (DHCP) Server</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name System (DNS) Server</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Fax Server</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="even">
<td align="left"><p>File and Storage Services</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Hyper-V™</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Yes</p>
<p>Not supported for a virtual network on Hyper-V™. You must delete any virtual networks before you run the Sysprep tool.</p></td>
<td align="left"><p>Yes</p>
<p>Not supported for a virtual network on Hyper-V™. You must delete any virtual networks before you run the Sysprep tool.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Network Policy and Access Services (NPAS) ¹</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Network Policy Routing and Remote Access Services</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Printing and Document Services (Print Services) ²</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Remote Desktop Services ³</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Yes</p></td>
</tr>
<tr class="even">
<td align="left"><p>Streaming Media Services (available as a download)</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="odd">
<td align="left"><p>UDDI Services ⁴</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="even">
<td align="left"><p>Volume Activation Services ⁵</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Not applicable</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Server (Internet Information Services)</p></td>
<td align="left"><p>Yes</p>
<p>Not supported with encrypted credentials in the Applicationhost.config file.</p></td>
<td align="left"><p>Yes</p>
<p>Not supported with encrypted credentials in the Applicationhost.config file.</p></td>
<td align="left"><p>Yes</p>
<p>Not supported with encrypted credentials in the Applicationhost.config file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Deployment Services</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>Yes</p>
<p>Not supported if Windows Deployment Services is initialized.⁶</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server Update Services (WSUS)</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
<td align="left"><p>No</p></td>
</tr>
</tbody>
</table>

 

⁽¹⁾ NPAS includes Health Registration Authority (HRA), Network Policy Server (NPS), and Host Credential Authorization Protocol (HCAP).

⁽²⁾ In Windows Server 2008 R2, Print Services was renamed Printing and Document Services.

⁽³⁾ In Windows Server 2008 R2, Terminal Services was renamed Remote Desktop Services, which is also known as Remote Desktop Session Host.

⁽⁴⁾ UDDI Services was not included in Windows Server 2008 R2.

⁽⁵⁾ Volume Activation Services is new for Windows Server 2012.

⁽⁶⁾ You must uninitialize the server that has the Windows Deployment Services role installed before you run Sysprep. You can uninitialize a server by using the **wdsutil /uninitialize-server** command.

## <span id="related_topics"></span>Related topics


[Sysprep (System Preparation) Overview](sysprep--system-preparation--overview.md)

[Sysprep Process Overview](p_adk_online.sysprep_process_overview_win8)

[Sysprep Command-Line Options](p_adk_online.sysprep_command_line_options_win8)

[Sysprep (Generalize) a Windows installation](p_adk_online.sysprep__generalize__a_windows_installation_win8)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Sysprep%20Support%20for%20Server%20Roles%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




