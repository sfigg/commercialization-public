---
author: joshbax-msft
title: WindowsFilteringPlatform\_Tests
description: WindowsFilteringPlatform\_Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 25c87374-9f14-43bf-ad5e-b5aea43a71ec
---

# WindowsFilteringPlatform\_Tests


This manual test verifies basic Windows® firewall functionality.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.SupportModernApplications Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.CleanUninstall Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.ConnectionProxying.NoDeadlocks Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmFilters.MaintainOneTerminating Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmProviders.AssociateWithObjects Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmProviders.MaintainIdentifying Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmSublayers.UseOwnOrBuiltIn Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NetworkDiagnosticsFramework.HelperClass Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NoAccessViolations Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NoTamperingWith3rdPartyObjects Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.PacketInjection.NoDeadlocks Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.StreamInjection.NoStreamStarvation Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.SupportPowerManagedStates Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.WFPObjectACLs Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.Winsock Filter.Driver.WindowsFilteringPlatform.Firewall.DisableWindowsFirewallProperly Filter.Driver.WindowsFilteringPlatform.Firewall.NotOnlyPermitAllFilters Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.SupportApplicationExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.SupportMACAddressExceptions Filter.Driver.WindowsFilteringPlatform.Firewall.UseWindowsFilteringPlatform Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportAddressResolution Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportDynamicAddressing Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportIPv4 Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportIPv6 Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportNameResolution Filter.Driver.WindowsFilteringPlatform.Scenario.Support6to4 Filter.Driver.WindowsFilteringPlatform.Scenario.SupportAutomaticUpdates Filter.Driver.WindowsFilteringPlatform.Scenario.SupportBasicWebsiteBrowsing Filter.Driver.WindowsFilteringPlatform.Scenario.SupportFileAndPrinterSharing Filter.Driver.WindowsFilteringPlatform.Scenario.SupportICMPErrorMessages Filter.Driver.WindowsFilteringPlatform.Scenario.SupportInternetStreaming Filter.Driver.WindowsFilteringPlatform.Scenario.SupportMediaExtenderStreaming Filter.Driver.WindowsFilteringPlatform.Scenario.SupportMobileBroadBand Filter.Driver.WindowsFilteringPlatform.Scenario.SupportPeerNameResolution Filter.Driver.WindowsFilteringPlatform.Scenario.SupportRemoteAssistance Filter.Driver.WindowsFilteringPlatform.Scenario.SupportRemoteDesktop Filter.Driver.WindowsFilteringPlatform.Scenario.SupportVirtualPrivateNetworking Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.InteropWithOtherExtensions Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.NoEgressModification Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportLiveMigration Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportRemoval Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportReordering</p>
<p>[See the filter hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254485)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~180 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


For more information about requirements, see [Windows Filtering Platform (WFP) Drivers Testing Prerequisites](windows-filtering-platform--wfp--drivers-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Windows Filtering Platform (WFP) Driver Testing](troubleshooting-windows-filtering-platform--wfp--driver-testing.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WindowsFilteringPlatform_Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




