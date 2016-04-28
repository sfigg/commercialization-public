---
author: joshbax-msft
title: Windows Filtering Platform (WFP) Drivers Tests
description: Windows Filtering Platform (WFP) Drivers Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6a972c1b-222c-4b8c-8663-c81761183b2e
---

# Windows Filtering Platform (WFP) Drivers Tests


The Hardware Certification tests consist of three test suites; two for validating WFP specific operations and one for validating interoperability with Transition Technologies (currently targeted at Teredo). The suites consist of multiple parts.

**In this section:**

-   [AppContainers\_Tests](appcontainers-tests7bf87d0f-e328-4d69-855f-0a0efb469861.md)

-   [TransitionTechnologies\_Tests](transitiontechnologies-tests92628629-82bb-4c60-9750-ce2842d2fd92.md)

-   [WindowsFilteringPlatform\_Tests](windowsfilteringplatform-testsa9a199cc-29b0-4805-9362-a2e7da39810c.md)

Each test maps directly to a requirement and is named identically to that requirement. An overall test encompasses the tests. You can use this overall test to run one job and wait for the others start, or to run each job individually. 

The following table describes the requirements that are related to these tests.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Requirement</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.AppContainers.SupportModernApplications</p></td>
<td><p>Windows® Filtering Platform (WFP)–based products must not block App Container applications that are operating within their declared network intentions by default, and should do so only when they are following specific user/administrator intention or attempting to protect the system against a specific threat.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.CleanUninstall</p></td>
<td><p>This is to ensure that host firewalls do not leave unused objects after uninstallation, thereby potentially causing diagnostic issues if another separate host firewall is installed on the same computer. The following WFP objects must be cleaned up: Provider, providerContext, Filter, subLayer, or callout. In addition, additional installation requirements for applications (via the Software Certification Program) must be met.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.ConnectionProxying.NoDeadlocks</p></td>
<td><p>WFP-based products that redirect or proxy at redirect layers (connect redirect) must use the new proxying API so that other WFP-based products can determine that the connection has been proxied.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Architectura.Design.FwpmFilters.MaintainOneTerminating</p></td>
<td><p>A terminating filter is one that returns a permit/block decision. It may exist as a static filter or within a callout. The intent behind this requirement is to ensure that premium host firewalls perform at least one permit or block decision and not simply maintain filters only for inspection purposes.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmProviders.AssociateWithObjects</p></td>
<td><p>WFP-based products must associate all of their provider contexts, filters, sublayers, and callouts with their corresponding identifying provider object.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmProviders.MaintainIdentifying</p></td>
<td><p>WFP-based products must create and maintain at least one identifying FWPM_PROVIDER provider object.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.FwpmSublayers.UseOwnOrBuiltIn</p></td>
<td><p>WFP-based products must use only their own sublayer or one of the built-in sublayers.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NetworkDiagnosticsFramework.MaintainHelperClass</p></td>
<td><p>WFP-based products must include a Network Diagnostics Framework (NDF) helper class that extends the Filtering Platform Helper Class (FPHC).</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NoAccessViolations</p></td>
<td><p>WFP-based products must not cause any access violation under high load or during driver load/unload (while under network load or not).</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.NoTamperingWith3rdPartyObjects</p></td>
<td><p>WFP-based products must not attempt to remove or alter another WFP-based product's WFP objects and built-in objects. This ensures interoperability between multiple host firewalls' WFP objects within the operating system.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.PacketInjection.NoDeadlocks</p></td>
<td><p>WFP-based products must not continually modify network packets that have already been modified and re-injected, because this can create potential deadlocks.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.StreamInjection.NoStreamStarvation</p></td>
<td><p>To &quot;not starve&quot; means that stream-layer callout indications should not be pended to queue more than 8 megabytes (MB) of data. This requirement ensures that the host firewall drivers do not cause starvation of resources on the computer.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.SupportPowerManagedStates</p></td>
<td><p>WFP-based products must ensure network connectivity upon recovering from power managed states. This ensures that host firewalls do not break network connectivity on the computer upon resuming from various power management states.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.WFPObjectsACLs</p></td>
<td><p>WFP-based products must ACL all their objects in a way that any other WFP-based product can at least enumerate those objects by using the corresponding WFP enumeration APIs. This ensures that all WFP objects on the system can be enumerated by any host firewall or application for diagnostic purposes.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.Winsock</p></td>
<td><p>Kernel-mode filter drivers are designed to maximize the reliability and functionality of Windows Sockets, and to interact accurately with the core components of the operating system.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.DisableWindowsFirewallProperly</p></td>
<td><p>Host firewalls must disable Windows Firewall by using only the supported method.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.NotOnlyPermitAllFilters</p></td>
<td><p>Host firewalls must not circumvent the intent of the Windows Filtering Platform API tests by simply maintaining all permit_all filters for all kinds of network traffic, which is not meaningful filtering of network traffic. This applies to bot, static, and callout filters.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions</p></td>
<td><p>All host-based firewalls must be able to block or allow by 5-tuple parts, including port (Internet Control Message Protocol [ICMP] type and code, User Datagram Protocol [UDP], and Transmission Control Protocol [TCP]), IP address, and protocol.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.SupportApplicationExceptions</p></td>
<td><p>WFP-based products must support exceptions from corresponding applications.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.SupportMACAddressExceptions</p></td>
<td><p>All host-based firewalls that have filters in L2 (native/media access control [MAC]) layers must be able to block or allow by MAC address.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Firewall.UseWindowsFilteringPlatform</p></td>
<td><p>Firewalls must comply with WFP-based APIs for filtering network traffic on home user solutions.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportARP</p></td>
<td><p>WFP-based products must support allowing for successful Address Resolution Protocol (ARP) exchanges. ARP is a fundamental protocol that allows only a specific computer in a subnet to receive packets. The host firewall should not break this capability.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportDynamicAddressing</p></td>
<td><p>WFP-based products must support allowing for successful Dynamic Host Configuration Protocol (DHCP) exchanges over both IPv4 and IPv6. DHCP is a fundamental networking protocol. The computer should always be capable of being connected, and the host firewall should not break this experience.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportIPv4</p></td>
<td><p>WFP-based products must support IPv4 traffic. This ensures that consumer host firewalls or other filtering components do not cause loss of basic IPv4 connectivity on the computer.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportIPv6</p></td>
<td><p>Windows has IPv6 enabled by default. Host firewalls should not break native IPv6 connectivity (and therefore, Windows scenarios that are based on IPv6) for customers.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.NetworkingFundamental.SupportNameResolution</p></td>
<td><p>WFP-based products must support allowing for successful Domain Name System (DNS) client queries. DNS is a fundamental networking protocol that allows computers to have discoverable display names. Host firewalls should not break this experience.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.Support6to4</p></td>
<td><p>WFP-based products must support 6to4.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportAutomaticUpdates</p></td>
<td><p>WFP-based products must support Automatic Updates in Windows. This is related to Automatic Updates and Windows Update, which is a key scenario through which important updates are installed on the computer.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportBasicWebsiteBrowsing</p></td>
<td><p>This is to ensure that basic Internet browsing experiences are supported upon installation of a host firewall on a Windows-based computer.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportFileAndPrinterSharing</p></td>
<td><p>This is to ensure that home users can share content to and from other computers inside their home networks, in addition to printing content on shared printers.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportICMPErrorMessages</p></td>
<td><p>This is to ensure that host firewalls support ICMP error messages (in compliance with RFC 4890 and RFC 2979 from the Internet Engineering Task Force [IETF]), as a core networking fundamental.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportInternetStreaming</p></td>
<td><p>WFP-based products must support Internet streaming and media sharing for media player network-sharing services. This is related to Automatic Updates and Windows Update, which is a key scenario through which important updates are installed on the computer.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportMediaExtenderStreaming</p></td>
<td><p>WFP-based products must support media-streaming scenarios based on extender technologies.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportMobileBroadBand</p></td>
<td><p>WFP-based products must allow mobile broadband devices that are compliant with the Windows mobile broadband driver model to function correctly. This is to ensure that host firewall functionality does not block the mobile broadband connectivity and that the firewall functionality works with mobile broadband devices.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportPeerNameResolution</p></td>
<td><p>Host firewalls support the Peer Name Resolution Protocol (PNRP) and the Peer-to-Peer Grouping Protocol, which some peer-to-Peer applications require. The PNRP provides security-enhanced, serverless name resolution, and the Peer-to-Peer Grouping Protocol provides security-enhanced, reliable multiparty communication.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportRemoteAssistance</p></td>
<td><p>WFP-based products must support Remote Assistance scenarios. The Remote Assistance scenario is used for a helper to connect to a computer and to show the user a solution to the problem.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportRemoteDesktop</p></td>
<td><p>WFP-based products must support Remote Desktop. Remote Desktop is a technology that enables a user to connect to a remote computer in a different location. Remote Desktop is a key Windows scenario that is relevant for consumers who have multiple computers at home and are trying to use one computer to access content that exists on another computer.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportTeredo</p></td>
<td><p>WFP-based products must support Teredo. As an IPv6 transition technology over IPv4 networks, Teredo may be used as a connectivity mechanism in certain Windows consumer scenarios, including Remote Assistance and Windows Live® Messenger. Host firewalls must correctly support Teredo to allow connectivity for these scenarios.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.SupportVirtualPrivateNetworking</p></td>
<td><p>WFP-based products must support virtual private network (VPN) scenarios in Windows. This makes sure that firewalls support Internet Protocol security (IPsec) scenarios, such as IPsec VPN, which are used on client computers to establish security-enhanced connections over the Internet.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.InteropWithOtherExtensions</p></td>
<td><p>WFP must not block traffic from another vSwitch extension (WFP or lightweight filter [LWF]) by default, and should do so only when it is following specific user/administrator intention or protecting the system against a specific threat.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.NoEgressModification</p></td>
<td><p>WFP-based products that operate in the vmSwitch must not modify packets on the egress path of the vmSwitch.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportLiveMigration</p></td>
<td><p>WFP-based products that operate in the vmSwitch must present a minimal Microsoft® Operations Framework (MOF) for live migration. In the MOF, it must declare itself logo compliant for live migration and allow itself to be migrated or not block migration by default. The total time for migrations for live migration cannot be longer than 2 seconds.</p></td>
</tr>
<tr class="odd">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportRemoval</p></td>
<td><p>WFP-based products that operate in the vmSwitch must be allowed to be removed when the administrator has disabled WFP for the vmSwitch instance.</p></td>
</tr>
<tr class="even">
<td><p>Filter.Driver.WindowsFilteringPlatform.Scenario.vSwitch.SupportReordering</p></td>
<td><p>WFP-based products that operate in the vSwitch must respond to WFP vmSwitch reorder events.</p></td>
</tr>
</tbody>
</table>

 

## Test Details


The first part of running the Windows Filtering Platform (WFP) Tests is copying the required binaries. This is accomplished by running the “Basic Firewall - Copy Binaries” library job.

Second, the Sparta Miniports must be installed and configured successfully. This is accomplished by running the “Install Sparta Miniport Interfaces (x4)” library job. You can verify the install succeeded by opening a command prompt and typing “IPConfig.exe /all”.

You should see four new Sparta interfaces named “Sparta Miniport Primary”, “Sparta Miniport Secondary”, “Sparta Miniport Tertiary”, and “Sparta Miniport Quaternary”.

Now the tests are capable of being run. The test suite will launch running each of the “REQ –“ library jobs. An initial dialog box, “WFPLogo Information Gathering”, requesting the form WFPTest.Info to be filled out will be displayed. Fill out the form accurately as the information provided is used to tailor the tests to meet the software’s behavior as well as for validation.

The form has been pre-populated with values for the built-in Microsoft Windows Firewall.

The form consists of the following:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Value’s Name</th>
<th>Description / Use</th>
<th>Default Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CompanyName</p></td>
<td><p>Populate this value with the name of your company. This information is used to help validate the WFP Provider.</p></td>
<td><p>“”Microsoft Corporation”</p></td>
</tr>
<tr class="even">
<td><p>ProductName</p></td>
<td><p>Populate this value with the name of the Product. This information is used to help validate the WFP Provider.</p></td>
<td><p>“Windows Firewall”</p></td>
</tr>
<tr class="odd">
<td><p>UseAnswerFile</p></td>
<td><p>Populate this value with 1 if you are supplying an answer file to automate the filter additions / deletions during the logo test’s run, else set to 0.</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>CalloutDriver</p></td>
<td><p>Populate this value with 1 if your software contains a callout driver, else set to 0.</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>IsAFirewall</p></td>
<td><p>Populate this value with 1 if your software is considered a firewall, else set to 0.</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>LayeredOnMicrosoftWindowsFirewall</p></td>
<td><p>Populate this value with 1 if your software adds filters and rules to Windows Firewall, else set to 0.</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>DoesMACFiltering</p></td>
<td><p></p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>DoesVSwitchFiltering</p></td>
<td><p></p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>DoesPacketInjection</p></td>
<td><p></p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>DoesStreamInjection</p></td>
<td><p></p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>DoesConnectionProxying</p></td>
<td><p></p></td>
<td><p>0</p></td>
</tr>
</tbody>
</table>

 

The rest of the file contains attestations for all of the requirements. If the requirement is mandatory, the value must be set to 1, to indicate you have read the requirement, and believe your driver to meet it. For requirements that are marked if implemented, the value is ignored.

Finally, at the bottom of the for, replace the “YOUR NAME HERE” with the name or company name to attest that all of the information included is true to the best of your knowledge, and save the file.

After saving this form, and selecting OK in the dialog box, the WFP HCK tests will execute. You will be prompted to configure the software in various specific configurations prior to many of the tests execution, as well as removing the configuration after the test has executed. All required information to make the test succeed is provided in the dialog box.

Each of the following tests will request the software to be configured for the provided information:

Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.SupportPowerManagedStates

-   Variation: Permit Outbound IPv4

    -   Source / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Destination / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Remote Port= Random i.e. 43990

    -   Destination / Local Port= Random i.e. 45521

-   Variation: Block Outbound IPv4

    -   Source / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Destination / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 43990

    -   Destination / Local Port= Random i.e. 45521

-   Variation: Permit Inbound IPv4

    -   Source / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Destination / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 43990

    -   Destination / Local Port= Random i.e. 45521

-   Variation: Block Inbound IPv4

    -   Source / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Destination / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Remote Port= Random i.e. 45521

    -   Destination / Local Port= Random i.e. 43990

-   Variation: Permit Outbound IPv6

    -   Source / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Destination / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 45521

    -   Destination / Local Port= Random i.e. 43990

-   Variation: Block Outbound IPv6

    -   Source / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Destination / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Remote Port= Random i.e. 45521

    -   Destination / Local Port= Random i.e. 43990

-   Variation: Permit Inbound IPv6

    -   Source / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Destination / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 45521

    -   Destination / Local Port= Random i.e. 43990

-   Variation: Block Inbound IPv6

    -   Source / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Destination / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Remote Port= Random i.e. 45521

    -   Destination / Local Port= Random i.e. 43990

Filter.Driver.WindowsFilteringPlatform.ArchitecturalDesign.StreamInjection.NoStreamStarvation

-   Variation: IPv4

    -   Protocol= TCP (6)

    -   Source / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Destination / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Source / Remote Port= Random i.e. 43919

    -   Destination / Local Port= Random i.e. 49037

-   Variation: IPv6

    -   Protocol= TCP (6)

    -   Source / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Destination / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Source / Remote Port= Random i.e. 43900

    -   Destination / Local Port= Random i.e. 49005

Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions (by IP Address)

-   Variation: Permit Outbound IPv4

    -   Source / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Destination / Remote Address= Pseudo Random i.e. 1.0.0.254

-   Variation: Block Outbound IPv4

    -   Source / Local Address= Pseudo Random i.e. 1.0.0.1

    -   Destination / Remote Address= Pseudo Random i.e. 1.0.0.254

-   Variation: Permit Inbound IPv4

    -   Source / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Destination / Local Address= Pseudo Random i.e. 1.0.0.1

-   Variation: Block Inbound IPv4

    -   Source / Remote Address= Pseudo Random i.e. 1.0.0.254

    -   Destination / Local Address= Pseudo Random i.e. 1.0.0.1

-   Variation: Permit Outbound IPv6

    -   Source / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Destination / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

-   Variation: Block Outbound IPv6

    -   Source / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

    -   Destination / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

-   Variation: Permit Inbound IPv6

    -   Source / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Destination / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

-   Variation: Block Inbound IPv6

    -   Source / Remote Address= Pseudo Random i.e. FE80::1:0:0:FE

    -   Destination / Local Address= Pseudo Random i.e. FE80::8D8C:ECCB:1589:F169

Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions (By IP Address)

-   Variation: Permit Outbound IPv4

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Local Port= Random i.e. 42930

    -   Destination / Remote Port= Random i.e. 47702

-   Variation: Block Outbound IPv4

    -   Protocol= Pseudo Random i.e. Raw UDP (17)

    -   Source / Local Port= Random i.e. 41468

    -   Destination / Remote Port= Random i.e. 46747

-   Variation: Permit Inbound IPv4

    -   Protocol= Pseudo Random i.e. Raw UDP (17)

    -   Source / Remote Port= Random i.e. 44033

    -   Destination / Local Port= Random i.e. 46859

-   Variation: Block Inbound IPv4

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 41388

    -   Destination / Local Port= Random i.e. 48370

-   Variation: Permit Outbound IPv6

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Local Port= Random i.e. 41975

    -   Destination / Remote Port= Random i.e. 47275

-   Variation: Block Outbound IPv6

    -   Protocol= Pseudo Random i.e. Raw UDP (17)

    -   Source / Local Port= Random i.e. 44754

    -   Destination / Remote Port= Random i.e. 445305

-   Variation: Permit Inbound IPv6

    -   Protocol= Pseudo Random i.e. TCP (6)

    -   Source / Remote Port= Random i.e. 41008

    -   Destination / Local Port= Random i.e. 46382

-   Variation: Block Inbound IPv6

    -   Protocol= Pseudo Random i.e. UDP (17)

    -   Source / Remote Port= Random i.e. 43990

    -   Destination / Local Port= Random i.e. 45521

Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions (By Ports)

-   Variation: Permit Outbound IPv4

    -   Protocol= Pseudo Random i.e. Raw UDP (17)

-   Variation: Block Outbound IPv4

    -   Protocol= Pseudo Random i.e. UDP (17)

-   Variation: Permit Inbound IPv4

    -   Protocol= Pseudo Random i.e. IP Raw (255)

-   Variation: Block Inbound IPv4

    -   Protocol= Pseudo Random i.e. TCP (6)

-   Variation: Permit Outbound IPv6

    -   Protocol= Pseudo Random i.e. IP Raw (255)

-   Variation: Block Outbound IPv6

    -   Protocol= Pseudo Random i.e. IPv6 ICMP (58)

-   Variation: Permit Inbound IPv6

    -   Protocol= Pseudo Random i.e. IPv6 ICMP (58)

-   Variation: Block Inbound IPv6

    -   Protocol= Pseudo Random i.e. IPv6 ICMP (58)

Filter.Driver.WindowsFilteringPlatform.Firewall.Support5TupleExceptions (By ICMP Type and Code)

-   Variation: Permit Outbound IPv4

    -   Protocol= IPv4 ICMP (1)

    -   Type= Pseudo Random i.e. 8

    -   Code= Pseudo Random i.e. 0

-   Variation: Block Outbound IPv4

    -   Protocol= IPv4 ICMP (1)

    -   Type= Pseudo Random i.e. 8

    -   Code= Pseudo Random i.e. 0

-   Variation: Permit Inbound IPv4

    -   Protocol= IPv4 ICMP (1)

    -   Type= Pseudo Random i.e. 8

    -   Code= Pseudo Random i.e. 0

-   Variation: Block Inbound IPv4

    -   Protocol= IPv4 ICMP (1)

    -   Type= Pseudo Random i.e. 8

    -   Code= Pseudo Random i.e. 0

-   Variation: Permit Outbound IPv6

    -   Protocol= IPv6 ICMP (58)

    -   Type= Pseudo Random i.e. 128

    -   Code= Pseudo Random i.e. 0

-   Variation: Block Outbound IPv6

    -   Protocol= IPv6 ICMP (58)

    -   Type= Pseudo Random i.e. 128

    -   Code= Pseudo Random i.e. 0

-   Variation: Permit Inbound IPv6

    -   Protocol= IPv6 ICMP (58)

    -   Type= Pseudo Random i.e. 128

    -   Code= Pseudo Random i.e. 0

-   Variation: Block Inbound IPv6

    -   Protocol= IPv6 ICMP (58)

    -   Type= Pseudo Random i.e. 128

    -   Code= Pseudo Random i.e. 0

Filter.Driver.WindowsFilteringPlatform.Firewall.SupportApplicationExceptions: Similar to the preceding exceptions.

Filter.Driver.WindowsFilteringPlatform.Firewall.SupportMACAddressExceptions: Similar to the preceding exceptions.

Filter.Driver.WindowsFilteringPlatform.Firewall.DisableWindowsFirewallProperly: Validates that categories are taken rather than Windows Firewall being turned off.

Note that one can automate the addition / deletion of filters by modifying the WFPLogo.Answer file. This answer file is parsed by the logo tests to execute the command line specified for the applicable test. It is filled out by default to use the NetSh.exe command line tool to configure Windows Firewall for the tests. Using this method will allow for a more repeatable and faster test pass. The answer file will replace the following variables with the proper value being used during the test:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Use</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>%APPLICATION%</p></td>
<td><p>Replaced during Run-Time with the Application’s Name being used.</p></td>
<td><p>%WinDir%\System32\WFPLogo.Exe</p></td>
</tr>
<tr class="even">
<td><p>%LOCAL_IP%</p></td>
<td><p>Replaced during Run-Time with the Local IP Address being used.</p></td>
<td><p>IPv4</p>
<p>1.0.0.1</p>
<p>IPv6</p>
<p>FE80::1:0:0:1</p></td>
</tr>
<tr class="odd">
<td><p>%REMOTE_IP%</p></td>
<td><p>Replaced during Run-Time with the Remote IP Address being used.</p></td>
<td><p>IPv4</p>
<p>1.0.0.254</p>
<p>IPv6</p>
<p>FE80::1:0:0:254</p></td>
</tr>
<tr class="even">
<td><p>%PROTOCOL%</p></td>
<td><p>Replaced during Run-Time with the IP Protocol being used.</p></td>
<td><p>17</p></td>
</tr>
<tr class="odd">
<td><p>%LOCAL_PORT%</p></td>
<td><p>Replaced during Run-Time with the Local Port being used.</p></td>
<td><p>40960</p></td>
</tr>
<tr class="even">
<td><p>%REMOTE_PORT%</p></td>
<td><p>Replaced during Run-Time with the Remote Port being used.</p></td>
<td><p>45056</p></td>
</tr>
<tr class="odd">
<td><p>%ICMP_TYPE%</p></td>
<td><p>Replaced during Run-Time with the ICMP Type being used.</p></td>
<td><p>8</p></td>
</tr>
<tr class="even">
<td><p>%ICMP_CODE%</p></td>
<td><p>Replaced during Run-Time with the ICMP Code being used.</p></td>
<td><p>0</p></td>
</tr>
<tr class="odd">
<td><p>%IS_RAW%</p></td>
<td><p>Replaced during Run-Time with the Boolean value for if the socket is raw or not.</p></td>
<td><p>Raw Socket</p>
<p>1</p>
<p>Native Socket</p>
<p>0</p></td>
</tr>
<tr class="even">
<td><p>%LOCAL_MAC%</p></td>
<td><p>Replaced during Run-Time with the Local MAC Address being used.</p></td>
<td><p>01:02:03:04:05:06</p></td>
</tr>
<tr class="odd">
<td><p>%REMOTE_MAC%</p></td>
<td><p>Replaced during Run-Time with the Remote MAC Address being used.</p></td>
<td><p>01:02:03:04:05:06</p></td>
</tr>
<tr class="even">
<td><p>%FRAME_TYPE%</p></td>
<td><p>Replaced during Run-Time with the MAC Frame Type being used.</p></td>
<td><p>0x806</p></td>
</tr>
</tbody>
</table>

 

After running the tests successfully, the “Basic Firewall - Uninstall Sparta Miniport Interfaces (x4)” library job will remove the Sparta Miniport interfaces.

Finally run the “Basic Firewall - Remove Binaries” library job will delete the copied files.

**Note**  
Running the "Basic Firewall - Remove Binaries" library job deletes the copied files.

 

## <a href="" id="softwaredevice-filterdriver-windowsfilteringplatform-transitiontechnologies-tests"></a>SoftwareDevice.FilterDriver.WindowsFilteringPlatform.TransitionTechnologies\_Tests


### Test Details

The first part of running the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.TransitionTechnologies\_Tests is to copy the required binary files. You do this by running the "Transition Technologies - Copy Binaries" library job.

Next, the Sparta Miniport drivers must be installed and configured correctly. You do this by running the "Transition Technologies - Install Sparta Miniport (x1)" library job. To confirm that the drivers were installed correctly, open a command prompt and type **IPConfig.exe /all**. You should see one Sparta interface.

Now you can run the tests. The test suite starts the "REQ - WFP-based products must support Teredo" library job. The following variations are run:

-   S1 - Check DNS query for Teredo server succeeds.

-   S2 - Teredo qualifies as if behind a port preserving symmetric NAT.

-   S3 - Sequential symmetric NAT. Send and receive traffic on peer ports.

To succeed, these tests must meet the following requirements.

### S1 - Check DNS query for Teredo server succeeds

This test verifies that the system can send a DNS query for the Teredo server address and receive the DNS response. If the test is successful, the Teredo client will be in the dormant state.

For the test to finish successfully, make sure that the firewall does not block any DNS traffic. Most firewalls allow DNS requests and responses by default. The test uses the following configuration:

-   (Spoofed) Teredo Server : 5.5.1.21

-   (Spoofed) DNS Server : 5.5.1.21 (port 53)

-   DNS query sent : teredo.ipv6.microsoft.com

### S2 - Teredo qualifies as if behind a port preserving symmetric NAT

The test verifies that the system can send and receive multiple Router Solicitation (RS) and Router Advertisement (RA) messages. In this case, the Teredo client acts as if it is behind a port, preserving symmetric NAT.

For the test to be successful, it must receive inbound Teredo packets (over UDP) on the local port 7000. Before the test starts, you are prompted to create a firewall exception to allow inbound UDP packets on the local port 7000. Create a firewall exception according to the prompts, and then click **OK** to resume the test.

**Warning**  
Do not click **OK** on the prompt before you add the firewall exception. Doing so causes the test to resume and might cause the test to fail. The following is the configuration for the firewall exception:

-   Protocol: UDP

-   Local Port: 7000

-   Direction of traffic: Inbound

-   Action: ALLOW

 

### S3 - Sequential symmetric NAT. Send and receive traffic on peer ports

The test verifies that the system can send and receive multiple RS and RA messages. In this case, the Teredo client acts as if it is behind a sequential symmetric NAT, and the system can send and receive Teredo traffic by using random ports.

For the test to be successful, it must receive inbound Teredo packets (over UDP) on the local port 7000 and send outbound Teredo packets (over UDP) on any random local port (in the range 5001–65535). Before the test starts, you are prompted to create firewall exceptions to allow inbound UDP packets on port 7000 and outbound UDP packets on all the local ports (5001-65535). Create the firewall exceptions accordingly, and then click **OK** to complete the test.

**Warning**  
Do not click **OK** on the prompt before you add the firewall exceptions. Doing so causes the test to resume and might cause the test to fail. The following is the configuration for the firewall exception:

-   Protocol: UDP

-   Local Port: 7000

-   Direction of traffic: Inbound

-   Action: ALLOW

-   Protocol: UDP

-   Local Port: ANY or in the range 5001–65535

-   Direction of traffic: Outbound

-   Action: ALLOW

 

After the tests run successfully, the "Transition Technologies - Uninstall Sparta Miniport Interface (x1)" library job removes the Sparta Miniport interface.

Finally, the "Transition Technologies - Remove Binaries" library job deletes the copied files.

## <a href="" id="softwaredevice-filterdriver-windowsfilteringplatform-appcontainers-tests"></a>SoftwareDevice.FilterDriver.WindowsFilteringPlatform.AppContainers\_Tests


### Test Details

The first part of running the SoftwareDevice.FilterDriver.WindowsFilteringPlatform.AppContainers\_Tests is to copy the required binary files. You do this by running the "AppContainers - Copy Binaries" library job.

Next, the Sparta Miniport drivers must be installed and configured correctly. You do this by running the "AppContainers - Install Sparta Miniport (x1)" library job. To confirm that the drivers were installed correctly, open a command prompt and type IPConfig.exe /all. You should see one Sparta interface.

Now you can run the tests. The test suite starts the " REQ - WFP-based products must not block App Container apps operating within their declared network intentions by default" library job. The following variations are run:

### Test: Public profile IPv4 AppContainer traffic

The following parameters are fixed for this test:

-   Sparta interface NLM network category= Public

-   IP Version= IPv4

-   Destination / Remote address= 1.0.0.2

-   Port= Random

-   Direction=Outbound

-   Destination / Remote address is a proxy server= False

The following parameters are varied:

-   IP Protocol= { TCP, UDP }

-   AppContainer capability= { PrivateNetworkClientServer, InternetClient, InternetClientServer, No capability }

Expectation: Traffic is only permitted for AppContainer’s which have either the InternetClient or InternetClientServer capabilities.

### Test: Public profile IPv6 AppContainer traffic

The following parameters are fixed for this test:

-   Sparta interface NLM network category= Public

-   IP Version= IPv6

-   Destination / Remote address= fe80::1:0:0:FE

-   Port= Random

-   Direction=Outbound

-   Destination / Remote address is a proxy server= False

The following parameters are varied:

-   IP Protocol= { TCP, UDP }

-   AppContainer capability= { PrivateNetworkClientServer, InternetClient, InternetClientServer, No capability }

Expectation: Traffic is only permitted for AppContainer’s which have either the InternetClient or InternetClientServer capabilities.

### Test: Private profile IPv4 AppContainer traffic

The following parameters are fixed for this test:

-   Sparta interface NLM network category= Private

-   IP Version= IPv4

-   Destination / Remote address= 1.0.0.2

-   Port= Random

-   Direction=Outbound

-   Destination / Remote address is a proxy server= False

The following parameters are varied:

-   IP Protocol= { TCP, UDP }

-   AppContainer capability= { PrivateNetworkClientServer, InternetClient, InternetClientServer, No capability }

Expectation: Traffic is only permitted for AppContainer’s which have the PrivateNetworkClientServer capability.

### Test: Private profile IPv6 AppContainer traffic

The following parameters are fixed for this test:

-   Sparta interface NLM network category= Private

-   IP Version= IPv6

-   Destination / Remote address= fe80::1:0:0:FE

-   Port= Random

-   Direction=Outbound

-   Destination / Remote address is a proxy server= False

The following parameters are varied:

-   IP Protocol= { TCP, UDP }

-   AppContainer capability= { PrivateNetworkClientServer, InternetClient, InternetClientServer, No capability }

Expectation: Traffic is only permitted for AppContainer’s which have the PrivateNetworkClientServer capability.

### Test: Private profile IPv4 AppContainer traffic to a proxy server

The following parameters are fixed for this test:

-   Sparta interface NLM network category= Private

-   IP Version= IPv4

-   IP Protocol= TCP

-   Destination / Remote address= 1.0.0.100

-   Port= Random

-   Direction=Outbound

-   Destination / Remote address is a proxy server= True

The following parameters are varied:

-   AppContainer capability= { PrivateNetworkClientServer, InternetClient, InternetClientServer, No capability }

Expectation: Traffic is only permitted for AppContainer’s which have either the InternetClient or InternetClientServer capabilities.

For the tests to be successful, your product must not block AppContainer applications that are operating within their declared network intentions.After the tests run successfully, the "AppContainers - Uninstall Sparta Miniport Interface (x1)" library job removes the Sparta Miniport interface.Finally, the "AppContainers - Remove Binaries" library job deletes the copied files.

## More Information


For information about test prerequisites and file lists, see [Windows Filtering Platform (WFP) Drivers Testing Prerequisites](windows-filtering-platform--wfp--drivers-testing-prerequisites.md).

For troubleshooting information, see [Troubleshooting Windows Filtering Platform (WFP) Driver Testing](troubleshooting-windows-filtering-platform--wfp--driver-testing.md).

## Related topics


[Windows Filtering Platform (WFP) Drivers Testing](windows-filtering-platform--wfp--drivers-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Filtering%20Platform%20%28WFP%29%20Drivers%20Tests%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





