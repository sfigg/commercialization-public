---
title: Configuration service provider reference
description: A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 71823658-951f-4163-9c40-c4d4adceaaec
---

# Configuration service provider reference


A configuration service provider (CSP) is an interface to read, set, modify, or delete configuration settings on the device. These settings map to registry keys or files. Some configuration service providers support the WAP format, some support SyncML, and some support both. SyncML is only used over–the–air for Open Mobile Alliance Device Management (OMA DM), whereas WAP can be used over–the–air for OMA Client Provisioning, or it can be included in the phone image as a .provxml file that is installed during boot.

For information about the bridge WMI provider classes that map to these CSPs, see [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224). For the list of new CSPs added in Windows 10, see [New CSPs added in Windows 10, Version 1511](#newcsps). See the [list of CSPs supported in Windows Holographic](#hololens) for additional information.

The following table show the configuration service providers supported in Windows 10.

<table>
<colgroup>
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
<col width="12%" />
</colgroup>
<thead>
<tr class="header">
<th>Configuration service provider</th>
<th>Supported in Windows 10 Pro</th>
<th>Supported in Windows 10 Enterprise</th>
<th>Supported in Windows 10 Education</th>
<th>Supported in Windows 10 Home</th>
<th>Supported in Windows 10 Mobile</th>
<th>Supported in Windows 10 Mobile Enterprise</th>
<th>Supported in Windows 10 IoT Core (IoT Core)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>[ActiveSync CSP](activesync-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[AllJoynManagement CSP](alljoynmanagement-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[APPLICATION CSP](application-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[AppLocker CSP](applocker-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[AssignedAccess CSP](assignedaccess-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[BOOTSTRAP CSP](bootstrap-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[BrowserFavorite CSP](browserfavorite-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[CellularSettings CSP](cellularsettings-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[CertificateStore CSP](certificatestore-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[ClientCertificateInstall CSP](clientcertificateinstall-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[CM_CellularEntries CSP](cm-cellularentries-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[CM_ProxyEntries CSP](cm-proxyentries-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[CMPolicy CSP](cmpolicy-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[CMPolicyEnterprise CSP](cmpolicyenterprise-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[CustomDeviceUI CSP](customdeviceui-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[Defender CSP](defender-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[DevDetail CSP](devdetail-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[DeviceInstanceService CSP](deviceinstanceservice-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[DeviceLock CSP](devicelock-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[DeviceManageability CSP](devicemanageability-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[DeviceStatus CSP](devicestatus-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[DevInfo CSP](devinfo-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[DiagnosticLog CSP](diagnosticlog-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[DMAcc CSP](dmacc-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[DMClient CSP](dmclient-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[EMAIL2 CSP](email2-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[EnterpriseAPN CSP](enterpriseapn-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[EnterpriseAppManagement CSP](enterpriseappmanagement-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[EnterpriseAssignedAccess CSP](enterpriseassignedaccess-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[EnterpriseDataProtection CSP](enterprisedataprotection-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[EnterpriseDesktopAppManagement CSP](enterprisedesktopappmanagement-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[EnterpriseExt CSP](enterpriseext-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[EnterpriseExtFileSystem CSP](enterpriseextfilessystem-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[FileSystem CSP](filesystem-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[HealthAttestation CSP](healthattestation-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[HotSpot CSP](hotspot-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[Maps CSP](maps-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[NAP CSP](filesystem-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[NAPDEF CSP](napdef-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[NodeCache CSP](nodecache-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[PassportForWork CSP](passportforwork-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[Policy CSP](policy-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[PolicyManager CSP](policymanager-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[Provisioning CSP](provisioning-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
<td><img src="images/checkmark.png" alt="check mark" />
<p>(Provisioning only)</p></td>
</tr>
<tr class="even">
<td>[PROXY CSP](proxy-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[PXLOGICAL CSP](pxlogical-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[Reboot CSP](reboot-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[Registry CSP](registry-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[RemoteFind CSP](remotefind-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[RemoteLock](remotelock-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[RemoteRing CSP](remotering-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[RemoteWipe CSP](remotewipe-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[Reporting CSP](reporting-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[RootCATrustedCertificates CSP](rootcacertificates-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[SecureAssessment CSP](secureassessment-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[SecurityPolicy CSP](securitypolicy-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[SharedPC CSP](sharedpc-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[Storage CSP](storage-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[SUPL CSP](user-plane-location-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[SurfaceHub](surfacehub-csp.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>[UnifiedWriteFilter CSP](uwf-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[Update CSP](update-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[VPN CSP](vpn-configuration-service-provider.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[VPNv2 CSP](vpnv2-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="even">
<td>[W4 APPLICATION CSP](w4-application-configuration-service-provider.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[w7 APPLICATION CSP](w7-application-configuration-service-provider.md)</td>
<td></td>
<td></td>
<td></td>
<td></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[Wi-Fi CSP](wifi-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr class="odd">
<td>[Win32AppInventory CSP](win32appinventory-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[WindowsAdvancedThreatProtection CSP](watp-csp.md)</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/checkmark.png" alt="check mark" />*</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="odd">
<td>[WindowsLicensing CSP](windowslicensing-configuration-service-provider.md)</td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr class="even">
<td>[WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)</td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/checkmark.png" alt="check mark" /></td>
<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</tbody>
</table>

 

## <a href="" id="hololens"></a>CSPs supported in Windows Holographic


The following list shows the configuration service providers supported in Windows Holographic editions.

| Configuration service provider                                                                        | Windows Holographic edition      | Windows Holographic Enterprise edition |
|-------------------------------------------------------------------------------------------------------|-------------------------------------|-------------------------------------------|
| [application csp](application-configuration-service-provider.md)                                     | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [applocker csp](applocker-configuration-service-provider.md)                                         | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [certificatestore csp](certificatestore-configuration-service-provider.md)                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [clientcertificateinstall csp](clientcertificateinstall-configuration-service-provider.md)           | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [devdetail csp](devdetail-configuration-service-provider.md)                                         | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [devicestatus csp](devicestatus-csp.md)                                                              | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [devinfo csp](devinfo-configuration-service-provider.md)                                             | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [diagnosticlog csp](diagnosticlog-configuration-service-provider.md)                                 | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [dmacc csp](dmacc-configuration-service-provider.md)                                                 | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [dmclient csp](dmclient-configuration-service-provider.md)                                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [enterprisemodernappmanagement csp](enterprisemodernappmanagement-configuration-service-provider.md) | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [nodecache csp](nodecache-configuration-service-provider.md)                                         | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |
| [policy csp](policy-configuration-service-provider.md)                                               | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [rootcatrustedcertificates csp](rootcacertificates-configuration-service-provider.md)                | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [update csp](update-configuration-service-provider.md)                                               | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [vpnv2 csp](vpnv2-configuration-service-provider.md)                                                 | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [wi-fi csp](wifi-configuration-service-provider.md)                                                  | ![cross mark](images/crossmark.png) | ![check mark](images/checkmark.png)       |
| [windowslicensing csp](windowslicensing-configuration-service-provider.md)                           | ![check mark](images/checkmark.png) | ![check mark](images/checkmark.png)       |

 

## <a href="" id="newcsps"></a>New CSPs added in Windows 10, version 1511


-   [AllJoynManagement CSP](alljoynmanagement-csp.md)
-   [Maps CSP](maps-csp.md)
-   [Reporting CSP](reporting-csp.md)
-   [SurfaceHub CSP](surfacehub-csp.md)
-   [WindowsSecurityAuditing CSP](windowssecurityauditing-csp.md)

 

 

10/10/2016




