---
title: Policy CSP - ADMX-backed policies
description: Policy CSP - ADMX-backed policies
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4F3A1134-D401-44FC-A583-6EDD3070BA4F
---

# Policy CSP - ADMX-backed policies

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.  

The Policy configuration service provider enables the enterprise to configure policies on Windows 10. Use this configuration service provider to configure any company policies. This reference topic targets only policies which are backed by ADMX. To understand the difference between traditional MDM and ADMX-backed policies please see [Understanding ADMX-backed policies](understanding-admx-backed-policies.md).

## <a href="" id="admxpolicytable"></a>Table of ADMX-backed policies for Windows 10, version 1703.

> [!IMPORTANT]
> To navigate the table horizontally, click on the table and then use the left and right scroll keys on your keyboard or use the scroll bar at the bottom of the table.

<!-- ADMX-TABLE-START -->
<table>
  <tr>
    <th>MDM CSP setting path/name</th>
    <th>GP english name</th>
    <th>GP english category path</th>
    <th>GP name</th>
    <th>GP ADMX file name</th>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowaccesstodatasources">InternetExplorer/LocalMachineZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowaccesstodatasources">InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie">InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowscriptlets">InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-disablewindowserrorreporting">ErrorReporting/DisableWindowsErrorReporting</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowlessprivilegedsites">InternetExplorer/IntranetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablesearchproviderchange">InternetExplorer/DisableSearchProviderChange</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowcertificatefilterforclient_ssl">AppVirtualization/StreamingAllowCertificateFilterForClient_SSL</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-requirekerberosarmoring">Kerberos/RequireKerberosArmoring</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingverifycertificaterevocationlist">AppVirtualization/StreamingVerifyCertificateRevocationList</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowtrustedsiteszonetemplate">InternetExplorer/AllowTrustedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowsmartscreenie">InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingsharedcontentstoremode">AppVirtualization/StreamingSharedContentStoreMode</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowfontdownloads">InternetExplorer/TrustedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-setdefaultautorunbehavior">Autoplay/SetDefaultAutoRunBehavior</a></td>
    <td style="vertical-align:top">Turn off Autoplay</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Autorun</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzonenavigatewindowsandframes">InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets">InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallownetframeworkreliantcomponents">InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver1">AppVirtualization/PublishingAllowServer1</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver2">AppVirtualization/PublishingAllowServer2</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver3">AppVirtualization/PublishingAllowServer3</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver4">AppVirtualization/PublishingAllowServer4</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-publishingallowserver5">AppVirtualization/PublishingAllowServer5</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#deviceinstallation-preventinstallationofmatchingdeviceids">DeviceInstallation/PreventInstallationOfMatchingDeviceIDs</a></td>
    <td style="vertical-align:top">Prevent installation of devices using drivers that match these device setup classes</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">DeviceInstall_Classes_Deny</td>
    <td style="vertical-align:top">deviceinstallation.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowuserdatapersistence">InternetExplorer/TrustedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-pointandprintrestrictions_user">Printers/PointAndPrintRestrictions_User</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">PublishPrinters</td>
    <td style="vertical-align:top">Printing.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowfontdownloads">InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotblockoutdatedactivexcontrols">InternetExplorer/DoNotBlockOutdatedActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizeapplicationlog">EventLogService/SpecifyMaximumFileSizeApplicationLog</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Channel_LogMaxSize_4</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowlessprivilegedsites">InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowsmartscreenie">InternetExplorer/IntranetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialsui-disablepasswordreveal">CredentialsUI/DisablePasswordReveal</a></td>
    <td style="vertical-align:top">Enumerate administrator accounts on elevation</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnumerateAdministrators</td>
    <td style="vertical-align:top">credui.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowsmartscreenie">InternetExplorer/TrustedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszonenavigatewindowsandframes">InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-displayerrornotification">ErrorReporting/DisplayErrorNotification</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#connectivity-hardeneduncpaths">Connectivity/HardenedUNCPaths</a></td>
    <td style="vertical-align:top">Hardened UNC Paths</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Pol_HardenedPaths</td>
    <td style="vertical-align:top">networkprovider.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteprocedurecall-rpcendpointmapperclientauthentication">RemoteProcedureCall/RPCEndpointMapperClientAuthentication</a></td>
    <td style="vertical-align:top">Restrict Unauthenticated RPC clients</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RpcRestrictRemoteClients</td>
    <td style="vertical-align:top">rpc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads">InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowactivexfiltering">InternetExplorer/AllowActiveXFiltering</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowsmartscreenie">InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowscriptlets">InternetExplorer/LockedDownIntranetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowappvclient">AppVirtualization/AllowAppVClient</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowaccesstodatasources">InternetExplorer/IntranetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableencryptionsupport">InternetExplorer/DisableEncryptionSupport</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzonenavigatewindowsandframes">InternetExplorer/InternetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-requirestrictkdcvalidation">Kerberos/RequireStrictKDCValidation</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowroamingregistryexclusions">AppVirtualization/AllowRoamingRegistryExclusions</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneinitializeandscriptactivexcontrols">InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#datausage-setcost4g">DataUsage/SetCost4G</a></td>
    <td style="vertical-align:top">Set 4G Cost</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">SetCost4G</td>
    <td style="vertical-align:top">wwansvc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowfontdownloads">InternetExplorer/LockedDownIntranetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-allowuserstoconnectremotely">RemoteDesktopServices/AllowUsersToConnectRemotely</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowscriptlets">InternetExplorer/IntranetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpublishingrefreshux">AppVirtualization/AllowPublishingRefreshUX</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsitetozoneassignmentlist">InternetExplorer/AllowSiteToZoneAssignmentList</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowstreamingautoload">AppVirtualization/AllowStreamingAutoload</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingsupportbranchcache">AppVirtualization/StreamingSupportBranchCache</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowhighcostlaunch">AppVirtualization/StreamingAllowHighCostLaunch</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowintranetzonetemplate">InternetExplorer/AllowIntranetZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneinitializeandscriptactivexcontrols">InternetExplorer/InternetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowreestablishmentinterval">AppVirtualization/StreamingAllowReestablishmentInterval</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#storage-enhancedstoragedevices">Storage/EnhancedStorageDevices</a></td>
    <td style="vertical-align:top">Do not allow Windows to activate Enhanced Storage devices</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TCGSecurityActivationDisabled</td>
    <td style="vertical-align:top">enhancedstorage.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#windowslogon-dontdisplaynetworkselectionui">WindowsLogon/DontDisplayNetworkSelectionUI</a></td>
    <td style="vertical-align:top">Turn off app notifications on the lock screen</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">DisableLockScreenAppNotifications</td>
    <td style="vertical-align:top">logon.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowaccesstodatasources">InternetExplorer/TrustedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetexplorerstandardsmode">InternetExplorer/AllowInternetExplorerStandardsMode</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableenclosuredownloading">InternetExplorer/DisableEnclosureDownloading</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowscriptlets">InternetExplorer/LocalMachineZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-allowforestsearchorder">Kerberos/AllowForestSearchOrder</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#deviceinstallation-preventinstallationofmatchingdevicesetupclasses">DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses</a></td>
    <td style="vertical-align:top">Prevent installation of devices using drivers that match these device setup classes</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">DeviceInstall_Classes_Deny</td>
    <td style="vertical-align:top">deviceinstallation.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowscriptlets">InternetExplorer/RestrictedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowscriptlets">InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowaccesstodatasources">InternetExplorer/InternetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-controleventlogbehavior">EventLogService/ControlEventLogBehavior</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Channel_LogMaxSize_4</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowslockeddowntrustedsiteszonetemplate">InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-promptforpassworduponconnection">RemoteDesktopServices/PromptForPasswordUponConnection</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-requirepasswordwhencomputerwakesonbattery">Power/RequirePasswordWhenComputerWakesOnBattery</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ACPromptForPasswordOnResume_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownlocalmachinezonetemplate">InternetExplorer/AllowLockedDownLocalMachineZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes">InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-turnoffautoplay">Autoplay/TurnOffAutoPlay</a></td>
    <td style="vertical-align:top">Turn off Autoplay</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Autorun</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenhancedprotectedmode">InternetExplorer/AllowEnhancedProtectedMode</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-donotpreservezoneinformation">AttachmentManager/DoNotPreserveZoneInformation</a></td>
    <td style="vertical-align:top">Notify antivirus programs when opening attachments</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">AM_CallIOfficeAntiVirus</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenterprisemodesitelist">InternetExplorer/AllowEnterpriseModeSiteList</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowfontdownloads">InternetExplorer/IntranetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowaddonlist">InternetExplorer/AllowAddOnList</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites">InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddowninternetzonetemplate">InternetExplorer/AllowLockedDownInternetZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowuserdatapersistence">InternetExplorer/InternetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotallowuserstochangepolicies">InternetExplorer/DoNotAllowUsersToChangePolicies</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablefirstrunwizard">InternetExplorer/DisableFirstRunWizard</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-donotallowdriveredirection">RemoteDesktopServices/DoNotAllowDriveRedirection</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablehomepagechange">InternetExplorer/DisableHomePageChange</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowreestablishmentretries">AppVirtualization/StreamingAllowReestablishmentRetries</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-allowstandbywhensleepingpluggedin">Power/AllowStandbyWhenSleepingPluggedIn</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ACPromptForPasswordOnResume_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#system-disablesystemrestore">System/DisableSystemRestore</a></td>
    <td style="vertical-align:top">Turn off System Restore</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">SR_DisableSR</td>
    <td style="vertical-align:top">systemrestore.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowpackagesourceroot">AppVirtualization/StreamingAllowPackageSourceRoot</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-donotsendadditionaldata">ErrorReporting/DoNotSendAdditionalData</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowuserdatapersistence">InternetExplorer/LocalMachineZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowscriptlets">InternetExplorer/InternetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowfontdownloads">InternetExplorer/RestrictedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowaccesstodatasources">InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowfontdownloads">InternetExplorer/InternetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowpackageinstallationroot">AppVirtualization/StreamingAllowPackageInstallationRoot</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowlessprivilegedsites">InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-customizewarningmessages">RemoteAssistance/CustomizeWarningMessages</a></td>
    <td style="vertical-align:top">Turn on session logging</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RA_Logging</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#system-bootstartdriverinitialization">System/BootStartDriverInitialization</a></td>
    <td style="vertical-align:top">Turn off System Restore</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">SR_DisableSR</td>
    <td style="vertical-align:top">earlylauncham.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites">InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsrestrictedsiteszonetemplate">InternetExplorer/AllowsRestrictedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownrestrictedsiteszonetemplate">InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-requiresecurerpccommunication">RemoteDesktopServices/RequireSecureRPCCommunication</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetzonetemplate">InternetExplorer/AllowInternetZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallownetframeworkreliantcomponents">InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ControlPanelDisplay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-setmaximumcontexttokensize">Kerberos/SetMaximumContextTokenSize</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowsuggestedsites">InternetExplorer/AllowSuggestedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableflipaheadfeature">InternetExplorer/DisableFlipAheadFeature</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#windowslogon-disablelockscreenappnotifications">WindowsLogon/DisableLockScreenAppNotifications</a></td>
    <td style="vertical-align:top">Turn off app notifications on the lock screen</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">DisableLockScreenAppNotifications</td>
    <td style="vertical-align:top">logon.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowfontdownloads">InternetExplorer/LocalMachineZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-includealllocalsites">InternetExplorer/IncludeAllLocalSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-customizeconsentsettings">ErrorReporting/CustomizeConsentSettings</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents">InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowdynamicvirtualization">AppVirtualization/AllowDynamicVirtualization</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-pointandprintrestrictions">Printers/PointAndPrintRestrictions</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">PublishPrinters</td>
    <td style="vertical-align:top">Printing.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizesystemlog">EventLogService/SpecifyMaximumFileSizeSystemLog</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Channel_LogMaxSize_4</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableadobeflash">InternetExplorer/DisableAdobeFlash</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszonenavigatewindowsandframes">InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpackagescripts">AppVirtualization/AllowPackageScripts</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableproxychange">InternetExplorer/DisableProxyChange</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowuserdatapersistence">InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowreportingserver">AppVirtualization/AllowReportingServer</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-virtualcomponentsallowlist">AppVirtualization/VirtualComponentsAllowList</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablesecondaryhomepagechange">InternetExplorer/DisableSecondaryHomePageChange</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-sessionlogging">RemoteAssistance/SessionLogging</a></td>
    <td style="vertical-align:top">Turn on session logging</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RA_Logging</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-includeallnetworkpaths">InternetExplorer/IncludeAllNetworkPaths</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents">InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzonenavigatewindowsandframes">InternetExplorer/IntranetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablebypassofsmartscreenwarnings">InternetExplorer/DisableBypassOfSmartScreenWarnings</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-solicitedremoteassistance">RemoteAssistance/SolicitedRemoteAssistance</a></td>
    <td style="vertical-align:top">Turn on session logging</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RA_Logging</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#kerberos-kerberosclientsupportsclaimscompoundarmor">Kerberos/KerberosClientSupportsClaimsCompoundArmor</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ForestSearch</td>
    <td style="vertical-align:top">Kerberos.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneinitializeandscriptactivexcontrols">InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources">InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-clientconnectionencryptionlevel">RemoteDesktopServices/ClientConnectionEncryptionLevel</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes">InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowlessprivilegedsites">InternetExplorer/InternetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowonewordentry">InternetExplorer/AllowOneWordEntry</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablecustomerexperienceimprovementprogramparticipation">InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowenterprisemodefromtoolsmenu">InternetExplorer/AllowEnterpriseModeFromToolsMenu</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#datausage-setcost3g">DataUsage/SetCost3G</a></td>
    <td style="vertical-align:top">Set 4G Cost</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">SetCost4G</td>
    <td style="vertical-align:top">wwansvc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#power-requirepasswordwhencomputerwakespluggedin">Power/RequirePasswordWhenComputerWakesPluggedIn</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ACPromptForPasswordOnResume_2</td>
    <td style="vertical-align:top">power.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteprocedurecall-restrictunauthenticatedrpcclients">RemoteProcedureCall/RestrictUnauthenticatedRPCClients</a></td>
    <td style="vertical-align:top">Restrict Unauthenticated RPC clients</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RpcRestrictRemoteClients</td>
    <td style="vertical-align:top">rpc.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence">InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-addsearchprovider">InternetExplorer/AddSearchProvider</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowfontdownloads">InternetExplorer/LockedDownInternetZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disableupdatecheck">InternetExplorer/DisableUpdateCheck</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#printers-publishprinters">Printers/PublishPrinters</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">PublishPrinters</td>
    <td style="vertical-align:top">Printing2.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-searchproviderlist">InternetExplorer/SearchProviderList</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowuserdatapersistence">InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowsmartscreenie">InternetExplorer/LocalMachineZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-streamingallowlocationprovider">AppVirtualization/StreamingAllowLocationProvider</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezoneallowlessprivilegedsites">InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialsui-enumerateadministrators">CredentialsUI/EnumerateAdministrators</a></td>
    <td style="vertical-align:top">Enumerate administrator accounts on elevation</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnumerateAdministrators</td>
    <td style="vertical-align:top">credui.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowsmartscreenie">InternetExplorer/InternetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads">InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#activexcontrols-approvedinstallationsites">ActiveXControls/ApprovedInstallationSites</a></td>
    <td style="vertical-align:top">Approved Installation Sites for ActiveX Controls</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">ApprovedActiveXInstallSites</td>
    <td style="vertical-align:top">ActiveXInstallService.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowscriptlets">InternetExplorer/LockedDownInternetZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-integrationallowrootglobal">AppVirtualization/IntegrationAllowRootGlobal</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources">InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowinternetexplorer7policylist ">InternetExplorer/AllowInternetExplorer7PolicyList </a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-intranetzoneallowuserdatapersistence">InternetExplorer/IntranetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie">InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-internetzoneallowautomaticpromptingforfiledownloads">InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-notifyantivirusprograms">AttachmentManager/NotifyAntivirusPrograms</a></td>
    <td style="vertical-align:top">Notify antivirus programs when opening attachments</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">AM_CallIOfficeAntiVirus</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-localmachinezonenavigatewindowsandframes">InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowuserdatapersistence">InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlocalmachinezonetemplate">InternetExplorer/AllowLocalMachineZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#desktop-preventuserredirectionofprofilefolders">Desktop/PreventUserRedirectionOfProfileFolders</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">desktop.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowlessprivilegedsites">InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles">InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remotedesktopservices-donotallowpasswordsaving">RemoteDesktopServices/DoNotAllowPasswordSaving</a></td>
    <td style="vertical-align:top">Set client connection encryption level</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">TS_ENCRYPTION_POLICY</td>
    <td style="vertical-align:top">terminalserver.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#autoplay-disallowautoplayfornonvolumedevices">Autoplay/DisallowAutoplayForNonVolumeDevices</a></td>
    <td style="vertical-align:top">Turn off Autoplay</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Autorun</td>
    <td style="vertical-align:top">AutoPlay.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotallowuserstoaddsites">InternetExplorer/DoNotAllowUsersToAddSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-clientcoexistenceallowmigrationmode">AppVirtualization/ClientCoexistenceAllowMigrationmode</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-trustedsiteszoneallowscriptlets">InternetExplorer/TrustedSitesZoneAllowScriptlets</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowpackagecleanup">AppVirtualization/AllowPackageCleanup</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowsmartscreenie">InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#errorreporting-preventcriticalerrordisplay">ErrorReporting/PreventCriticalErrorDisplay</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">WerConsentCustomize_2</td>
    <td style="vertical-align:top">ErrorReporting.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-allowlockeddownintranetzonetemplate">InternetExplorer/AllowLockedDownIntranetZoneTemplate</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-allowroamingfileexclusions">AppVirtualization/AllowRoamingFileExclusions</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzonenavigatewindowsandframes">InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#eventlogservice-specifymaximumfilesizesecuritylog">EventLogService/SpecifyMaximumFileSizeSecurityLog</a></td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Channel_LogMaxSize_4</td>
    <td style="vertical-align:top">eventlog.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneallowaccesstodatasources">InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols">InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialproviders-allowpinlogon">CredentialProviders/AllowPINLogon</a></td>
    <td style="vertical-align:top">Turn on convenience PIN sign-in</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">AllowDomainPINLogon</td>
    <td style="vertical-align:top">credentialproviders.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#appvirtualization-integrationallowrootuser">AppVirtualization/IntegrationAllowRootUser</a></td>
    <td style="vertical-align:top">Virtual Component Process Allow List</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">Virtualization_JITVAllowList</td>
    <td style="vertical-align:top">appv.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#credentialproviders-blockpicturepassword">CredentialProviders/BlockPicturePassword</a></td>
    <td style="vertical-align:top">Turn on convenience PIN sign-in</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">AllowDomainPINLogon</td>
    <td style="vertical-align:top">credentialproviders.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains">InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#attachmentmanager-hidezoneinfomechanism">AttachmentManager/HideZoneInfoMechanism</a></td>
    <td style="vertical-align:top">Notify antivirus programs when opening attachments</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">AM_CallIOfficeAntiVirus</td>
    <td style="vertical-align:top">AttachmentManager.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence">InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#remoteassistance-unsolicitedremoteassistance">RemoteAssistance/UnsolicitedRemoteAssistance</a></td>
    <td style="vertical-align:top">Turn on session logging</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">RA_Logging</td>
    <td style="vertical-align:top">remoteassistance.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-lockeddownintranetzoneallowlessprivilegedsites">InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
  <tr>
    <td style="vertical-align:top"><a href="#internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads">InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads</a></td>
    <td style="vertical-align:top">Let users turn on and use Enterprise Mode from the Tools menu</td>
    <td style="vertical-align:top">&nbsp</td>
    <td style="vertical-align:top">EnterpriseModeEnable</td>
    <td style="vertical-align:top">inetres.admx</td>
  </tr>
</table>
<!-- ADMX-TABLE-END -->

## <a href="" id="list-of--areaname---policyname-"></a>List of &lt;AreaName&gt;/&lt;PolicyName&gt;

<!-- ADMX-DESCRIPTIONS-START -->
<a href="" id="internetexplorer-localmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LocalMachineZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownIntranetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowsmartscreenie"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowscriptlets"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="errorreporting-disablewindowserrorreporting"></a>**ErrorReporting/DisableWindowsErrorReporting**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="internetexplorer-intranetzoneallowlessprivilegedsites"></a>**InternetExplorer/IntranetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disablesearchproviderchange"></a>**InternetExplorer/DisableSearchProviderChange**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowcertificatefilterforclient_ssl"></a>**AppVirtualization/StreamingAllowCertificateFilterForClient_SSL**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="kerberos-requirekerberosarmoring"></a>**Kerberos/RequireKerberosArmoring**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="appvirtualization-streamingverifycertificaterevocationlist"></a>**AppVirtualization/StreamingVerifyCertificateRevocationList**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-allowtrustedsiteszonetemplate"></a>**InternetExplorer/AllowTrustedSitesZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/RestrictedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingsharedcontentstoremode"></a>**AppVirtualization/StreamingSharedContentStoreMode**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowfontdownloads"></a>**InternetExplorer/TrustedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="autoplay-setdefaultautorunbehavior"></a>**Autoplay/SetDefaultAutoRunBehavior**

<p style="margin-left: 20px">This policy setting allows you to turn off the Autoplay feature.</p>

<p style="margin-left: 20px">          Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.</p>

<p style="margin-left: 20px">          Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.</p>

<p style="margin-left: 20px">          Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.</p>

<p style="margin-left: 20px">          If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.</p>

<p style="margin-left: 20px">          This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.</p>

<p style="margin-left: 20px">          If you disable or do not configure this policy setting, AutoPlay is enabled.</p>

<p style="margin-left: 20px">          Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownInternetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/InternetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-publishingallowserver1"></a>**AppVirtualization/PublishingAllowServer1**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-publishingallowserver2"></a>**AppVirtualization/PublishingAllowServer2**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-publishingallowserver3"></a>**AppVirtualization/PublishingAllowServer3**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-publishingallowserver4"></a>**AppVirtualization/PublishingAllowServer4**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-publishingallowserver5"></a>**AppVirtualization/PublishingAllowServer5**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="deviceinstallation-preventinstallationofmatchingdeviceids"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceIDs**

<p style="margin-left: 20px">This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for device drivers that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.
 
If you enable this policy setting, Windows is prevented from installing or updating device drivers whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/TrustedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="printers-pointandprintrestrictions_user"></a>**Printers/PointAndPrintRestrictions_User**

<p style="margin-left: 20px">N/A</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowfontdownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-donotblockoutdatedactivexcontrols"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="eventlogservice-specifymaximumfilesizeapplicationlog"></a>**EventLogService/SpecifyMaximumFileSizeApplicationLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownInternetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallowsmartscreenie"></a>**InternetExplorer/IntranetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="credentialsui-disablepasswordreveal"></a>**CredentialsUI/DisablePasswordReveal**

<p style="margin-left: 20px">This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.</p>

<p style="margin-left: 20px">If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.</p>

<p style="margin-left: 20px">If you disable this policy setting, users will always be required to type a user name and password to elevate.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/TrustedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/RestrictedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="errorreporting-displayerrornotification"></a>**ErrorReporting/DisplayErrorNotification**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="connectivity-hardeneduncpaths"></a>**Connectivity/HardenedUNCPaths**

<p style="margin-left: 20px">This policy setting configures secure access to UNC paths.</p>

<p style="margin-left: 20px">If you enable this policy, Windows only allows access to the specified UNC paths after fulfilling additional security requirements.
</p>

<a href="" id="remoteprocedurecall-rpcendpointmapperclientauthentication"></a>**RemoteProcedureCall/RPCEndpointMapperClientAuthentication**

<p style="margin-left: 20px">This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.</p>

<p style="margin-left: 20px">This policy setting impacts all RPC applications.  In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself.  Reverting a change to this policy setting can require manual intervention on each affected machine.  This policy setting should never be applied to a domain controller.</p>

<p style="margin-left: 20px">If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting. </p>

<p style="margin-left: 20px">If you do not configure this policy setting, it remains disabled.  The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting. </p>

<p style="margin-left: 20px">If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.</p>

<p style="margin-left: 20px">--  "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.</p>

<p style="margin-left: 20px">--  "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.</p>

<p style="margin-left: 20px">--  "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied.  No exceptions are allowed.</p>

<p style="margin-left: 20px">Note: This policy setting will not be applied until the system is rebooted.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownIntranetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowactivexfiltering"></a>**InternetExplorer/AllowActiveXFiltering**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownInternetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowscriptlets"></a>**InternetExplorer/LockedDownIntranetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowappvclient"></a>**AppVirtualization/AllowAppVClient**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallowaccesstodatasources"></a>**InternetExplorer/IntranetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disableencryptionsupport"></a>**InternetExplorer/DisableEncryptionSupport**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzonenavigatewindowsandframes"></a>**InternetExplorer/InternetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="kerberos-requirestrictkdcvalidation"></a>**Kerberos/RequireStrictKDCValidation**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="appvirtualization-allowroamingregistryexclusions"></a>**AppVirtualization/AllowRoamingRegistryExclusions**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-intranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/IntranetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="datausage-setcost4g"></a>**DataUsage/SetCost4G**

<p style="margin-left: 20px">This policy setting configures the cost of 4G connections on the local machine.      </p>

<p style="margin-left: 20px">If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:</p>

<p style="margin-left: 20px">- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. </p>

<p style="margin-left: 20px">- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. </p>

<p style="margin-left: 20px">- Variable: This connection is costed on a per byte basis.</p>

<p style="margin-left: 20px">If this policy setting is disabled or is not configured, the cost of 4G connections is Fixed by default.
      </p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownRestrictedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/TrustedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-allowuserstoconnectremotely"></a>**RemoteDesktopServices/AllowUsersToConnectRemotely**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="internetexplorer-intranetzoneallowscriptlets"></a>**InternetExplorer/IntranetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowpublishingrefreshux"></a>**AppVirtualization/AllowPublishingRefreshUX**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-allowsitetozoneassignmentlist"></a>**InternetExplorer/AllowSiteToZoneAssignmentList**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowstreamingautoload"></a>**AppVirtualization/AllowStreamingAutoload**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-streamingsupportbranchcache"></a>**AppVirtualization/StreamingSupportBranchCache**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-streamingallowhighcostlaunch"></a>**AppVirtualization/StreamingAllowHighCostLaunch**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownInternetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowintranetzonetemplate"></a>**InternetExplorer/AllowIntranetZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/InternetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowreestablishmentinterval"></a>**AppVirtualization/StreamingAllowReestablishmentInterval**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="storage-enhancedstoragedevices"></a>**Storage/EnhancedStorageDevices**

<p style="margin-left: 20px">This policy setting configures whether or not Windows will activate an Enhanced Storage device.</p>

<p style="margin-left: 20px">If you enable this policy setting, Windows will not activate unactivated Enhanced Storage devices.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows will activate unactivated Enhanced Storage devices.</p>

<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**

<p style="margin-left: 20px">This policy setting allows you to prevent app notifications from appearing on the lock screen.</p>

<p style="margin-left: 20px">If you enable this policy setting, no app notifications are displayed on the lock screen.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/TrustedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowinternetexplorerstandardsmode"></a>**InternetExplorer/AllowInternetExplorerStandardsMode**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disableenclosuredownloading"></a>**InternetExplorer/DisableEnclosureDownloading**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-localmachinezoneallowscriptlets"></a>**InternetExplorer/LocalMachineZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="kerberos-allowforestsearchorder"></a>**Kerberos/AllowForestSearchOrder**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="deviceinstallation-preventinstallationofmatchingdevicesetupclasses"></a>**DeviceInstallation/PreventInstallationOfMatchingDeviceSetupClasses**

<p style="margin-left: 20px">This policy setting allows you to specify a list of device setup class globally unique identifiers (GUIDs) for device drivers that Windows is prevented from installing. This policy setting takes precedence over any other policy setting that allows Windows to install a device.
 
If you enable this policy setting, Windows is prevented from installing or updating device drivers whose device setup class GUIDs appear in the list you create. If you enable this policy setting on a remote desktop server, the policy setting affects redirection of the specified devices from a remote desktop client to the remote desktop server.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Windows can install and update devices as allowed or prevented by other policy settings.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowscriptlets"></a>**InternetExplorer/RestrictedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowscriptlets"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowaccesstodatasources"></a>**InternetExplorer/InternetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="eventlogservice-controleventlogbehavior"></a>**EventLogService/ControlEventLogBehavior**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="internetexplorer-allowslockeddowntrustedsiteszonetemplate"></a>**InternetExplorer/AllowsLockedDownTrustedSitesZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-promptforpassworduponconnection"></a>**RemoteDesktopServices/PromptForPasswordUponConnection**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="power-requirepasswordwhencomputerwakesonbattery"></a>**Power/RequirePasswordWhenComputerWakesOnBattery**

<p style="margin-left: 20px">This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.</p>

<a href="" id="internetexplorer-allowlockeddownlocalmachinezonetemplate"></a>**InternetExplorer/AllowLockedDownLocalMachineZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownLocalMachineZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="autoplay-turnoffautoplay"></a>**Autoplay/TurnOffAutoPlay**

<p style="margin-left: 20px">This policy setting allows you to turn off the Autoplay feature.</p>

<p style="margin-left: 20px">          Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.</p>

<p style="margin-left: 20px">          Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.</p>

<p style="margin-left: 20px">          Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.</p>

<p style="margin-left: 20px">          If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.</p>

<p style="margin-left: 20px">          This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.</p>

<p style="margin-left: 20px">          If you disable or do not configure this policy setting, AutoPlay is enabled.</p>

<p style="margin-left: 20px">          Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.</p>

<a href="" id="internetexplorer-allowenhancedprotectedmode"></a>**InternetExplorer/AllowEnhancedProtectedMode**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="attachmentmanager-donotpreservezoneinformation"></a>**AttachmentManager/DoNotPreserveZoneInformation**

<p style="margin-left: 20px">This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant. </p>

<p style="margin-left: 20px">If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownLocalMachineZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowenterprisemodesitelist"></a>**InternetExplorer/AllowEnterpriseModeSiteList**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallowfontdownloads"></a>**InternetExplorer/IntranetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowaddonlist"></a>**InternetExplorer/AllowAddOnList**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowlockeddowninternetzonetemplate"></a>**InternetExplorer/AllowLockedDownInternetZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowuserdatapersistence"></a>**InternetExplorer/InternetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-donotallowuserstochangepolicies"></a>**InternetExplorer/DoNotAllowUsersToChangePolicies**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disablefirstrunwizard"></a>**InternetExplorer/DisableFirstRunWizard**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-donotallowdriveredirection"></a>**RemoteDesktopServices/DoNotAllowDriveRedirection**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="internetexplorer-disablehomepagechange"></a>**InternetExplorer/DisableHomePageChange**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowreestablishmentretries"></a>**AppVirtualization/StreamingAllowReestablishmentRetries**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="power-allowstandbywhensleepingpluggedin"></a>**Power/AllowStandbyWhenSleepingPluggedIn**

<p style="margin-left: 20px">This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.</p>

<a href="" id="system-disablesystemrestore"></a>**System/DisableSystemRestore**

<p style="margin-left: 20px">Allows you to disable System Restore.</p>

<p style="margin-left: 20px">This policy setting allows you to turn off System Restore.</p>

<p style="margin-left: 20px">System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.</p>

<p style="margin-left: 20px">If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.</p>

<p style="margin-left: 20px">Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.</p>

<a href="" id="internetexplorer-trustedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/TrustedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowpackagesourceroot"></a>**AppVirtualization/StreamingAllowPackageSourceRoot**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="errorreporting-donotsendadditionaldata"></a>**ErrorReporting/DoNotSendAdditionalData**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="internetexplorer-localmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LocalMachineZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/InternetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowscriptlets"></a>**InternetExplorer/InternetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-localmachinezoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LocalMachineZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/RestrictedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-trustedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/TrustedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/RestrictedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowfontdownloads"></a>**InternetExplorer/InternetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowpackageinstallationroot"></a>**AppVirtualization/StreamingAllowPackageInstallationRoot**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownIntranetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/RestrictedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remoteassistance-customizewarningmessages"></a>**RemoteAssistance/CustomizeWarningMessages**

<p style="margin-left: 20px">This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, log files are generated.</p>

<p style="margin-left: 20px">If you disable this policy setting, log files are not generated.</p>

<p style="margin-left: 20px">If you do not configure this setting, application-based settings are used.</p>

<a href="" id="system-bootstartdriverinitialization"></a>**System/BootStartDriverInitialization**

<p style="margin-left: 20px">Allows you to disable System Restore.</p>

<p style="margin-left: 20px">This policy setting allows you to turn off System Restore.</p>

<p style="margin-left: 20px">System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.</p>

<p style="margin-left: 20px">If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.</p>

<p style="margin-left: 20px">Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowsrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowsRestrictedSitesZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowlockeddownrestrictedsiteszonetemplate"></a>**InternetExplorer/AllowLockedDownRestrictedSitesZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-requiresecurerpccommunication"></a>**RemoteDesktopServices/RequireSecureRPCCommunication**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="internetexplorer-allowinternetzonetemplate"></a>**InternetExplorer/AllowInternetZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallownetframeworkreliantcomponents"></a>**InternetExplorer/IntranetZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-localmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LocalMachineZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="kerberos-setmaximumcontexttokensize"></a>**Kerberos/SetMaximumContextTokenSize**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="internetexplorer-allowsuggestedsites"></a>**InternetExplorer/AllowSuggestedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disableflipaheadfeature"></a>**InternetExplorer/DisableFlipAheadFeature**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="windowslogon-disablelockscreenappnotifications"></a>**WindowsLogon/DisableLockScreenAppNotifications**

<p style="margin-left: 20px">This policy setting allows you to prevent app notifications from appearing on the lock screen.</p>

<p style="margin-left: 20px">If you enable this policy setting, no app notifications are displayed on the lock screen.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.</p>

<a href="" id="internetexplorer-localmachinezoneallowfontdownloads"></a>**InternetExplorer/LocalMachineZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-includealllocalsites"></a>**InternetExplorer/IncludeAllLocalSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="errorreporting-customizeconsentsettings"></a>**ErrorReporting/CustomizeConsentSettings**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallownetframeworkreliantcomponents"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowdynamicvirtualization"></a>**AppVirtualization/AllowDynamicVirtualization**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="printers-pointandprintrestrictions"></a>**Printers/PointAndPrintRestrictions**

<p style="margin-left: 20px">N/A</p>

<a href="" id="eventlogservice-specifymaximumfilesizesystemlog"></a>**EventLogService/SpecifyMaximumFileSizeSystemLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="internetexplorer-disableadobeflash"></a>**InternetExplorer/DisableAdobeFlash**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownRestrictedSitesZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-trustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/TrustedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowpackagescripts"></a>**AppVirtualization/AllowPackageScripts**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-disableproxychange"></a>**InternetExplorer/DisableProxyChange**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownIntranetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowreportingserver"></a>**AppVirtualization/AllowReportingServer**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="appvirtualization-virtualcomponentsallowlist"></a>**AppVirtualization/VirtualComponentsAllowList**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-disablesecondaryhomepagechange"></a>**InternetExplorer/DisableSecondaryHomePageChange**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remoteassistance-sessionlogging"></a>**RemoteAssistance/SessionLogging**

<p style="margin-left: 20px">This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, log files are generated.</p>

<p style="margin-left: 20px">If you disable this policy setting, log files are not generated.</p>

<p style="margin-left: 20px">If you do not configure this setting, application-based settings are used.</p>

<a href="" id="internetexplorer-includeallnetworkpaths"></a>**InternetExplorer/IncludeAllNetworkPaths**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownIntranetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallownetframeworkreliantcomponents"></a>**InternetExplorer/RestrictedSitesZoneAllowNETFrameworkReliantComponents**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzonenavigatewindowsandframes"></a>**InternetExplorer/IntranetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disablebypassofsmartscreenwarnings"></a>**InternetExplorer/DisableBypassOfSmartScreenWarnings**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remoteassistance-solicitedremoteassistance"></a>**RemoteAssistance/SolicitedRemoteAssistance**

<p style="margin-left: 20px">This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, log files are generated.</p>

<p style="margin-left: 20px">If you disable this policy setting, log files are not generated.</p>

<p style="margin-left: 20px">If you do not configure this setting, application-based settings are used.</p>

<a href="" id="kerberos-kerberosclientsupportsclaimscompoundarmor"></a>**Kerberos/KerberosClientSupportsClaimsCompoundArmor**

<p style="margin-left: 20px">This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).</p>

<p style="margin-left: 20px">If you enable this policy setting, the Kerberos client searches the forests in this list, if it is unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the Kerberos client does not search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name is not found, NTLM authentication might be used.</p>

<a href="" id="internetexplorer-localmachinezoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LocalMachineZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-clientconnectionencryptionlevel"></a>**RemoteDesktopServices/ClientConnectionEncryptionLevel**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownTrustedSitesZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowlessprivilegedsites"></a>**InternetExplorer/InternetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowonewordentry"></a>**InternetExplorer/AllowOneWordEntry**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disablecustomerexperienceimprovementprogramparticipation"></a>**InternetExplorer/DisableCustomerExperienceImprovementProgramParticipation**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowenterprisemodefromtoolsmenu"></a>**InternetExplorer/AllowEnterpriseModeFromToolsMenu**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="datausage-setcost3g"></a>**DataUsage/SetCost3G**

<p style="margin-left: 20px">This policy setting configures the cost of 4G connections on the local machine.      </p>

<p style="margin-left: 20px">If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:</p>

<p style="margin-left: 20px">- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. </p>

<p style="margin-left: 20px">- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. </p>

<p style="margin-left: 20px">- Variable: This connection is costed on a per byte basis.</p>

<p style="margin-left: 20px">If this policy setting is disabled or is not configured, the cost of 4G connections is Fixed by default.
      </p>

<a href="" id="power-requirepasswordwhencomputerwakespluggedin"></a>**Power/RequirePasswordWhenComputerWakesPluggedIn**

<p style="margin-left: 20px">This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.</p>

<p style="margin-left: 20px">If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.</p>

<a href="" id="remoteprocedurecall-restrictunauthenticatedrpcclients"></a>**RemoteProcedureCall/RestrictUnauthenticatedRPCClients**

<p style="margin-left: 20px">This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.</p>

<p style="margin-left: 20px">This policy setting impacts all RPC applications.  In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself.  Reverting a change to this policy setting can require manual intervention on each affected machine.  This policy setting should never be applied to a domain controller.</p>

<p style="margin-left: 20px">If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting. </p>

<p style="margin-left: 20px">If you do not configure this policy setting, it remains disabled.  The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting. </p>

<p style="margin-left: 20px">If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.</p>

<p style="margin-left: 20px">--  "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.</p>

<p style="margin-left: 20px">--  "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.</p>

<p style="margin-left: 20px">--  "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied.  No exceptions are allowed.</p>

<p style="margin-left: 20px">Note: This policy setting will not be applied until the system is rebooted.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-addsearchprovider"></a>**InternetExplorer/AddSearchProvider**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowfontdownloads"></a>**InternetExplorer/LockedDownInternetZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disableupdatecheck"></a>**InternetExplorer/DisableUpdateCheck**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="printers-publishprinters"></a>**Printers/PublishPrinters**

<p style="margin-left: 20px">N/A</p>

<a href="" id="internetexplorer-searchproviderlist"></a>**InternetExplorer/SearchProviderList**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/RestrictedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-localmachinezoneallowsmartscreenie"></a>**InternetExplorer/LocalMachineZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-streamingallowlocationprovider"></a>**AppVirtualization/StreamingAllowLocationProvider**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-localmachinezoneallowlessprivilegedsites"></a>**InternetExplorer/LocalMachineZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="credentialsui-enumerateadministrators"></a>**CredentialsUI/EnumerateAdministrators**

<p style="margin-left: 20px">This policy setting controls whether administrator accounts are displayed when a user attempts to elevate a running application. By default, administrator accounts are not displayed when the user attempts to elevate a running application.</p>

<p style="margin-left: 20px">If you enable this policy setting, all local administrator accounts on the PC will be displayed so the user can choose one and enter the correct password.</p>

<p style="margin-left: 20px">If you disable this policy setting, users will always be required to type a user name and password to elevate.</p>

<a href="" id="internetexplorer-intranetzoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/IntranetZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-internetzoneallowsmartscreenie"></a>**InternetExplorer/InternetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowfontdownloads"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowFontDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="activexcontrols-approvedinstallationsites"></a>**ActiveXControls/ApprovedInstallationSites**

<p style="margin-left: 20px">This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved Activex Install sites specified by host URL. </p>

<p style="margin-left: 20px">If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL. 
      
If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation. </p>

<p style="margin-left: 20px">Note: Wild card characters cannot be used when specifying the host URLs.
</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowscriptlets"></a>**InternetExplorer/LockedDownInternetZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-integrationallowrootglobal"></a>**AppVirtualization/IntegrationAllowRootGlobal**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddownlocalmachinezoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownLocalMachineZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowinternetexplorer7policylist "></a>**InternetExplorer/AllowInternetExplorer7PolicyList **

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-intranetzoneallowuserdatapersistence"></a>**InternetExplorer/IntranetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowntrustedsiteszoneallowsmartscreenie"></a>**InternetExplorer/LockedDownTrustedSitesZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**

<p style="margin-left: 20px">Allows you to disable System Restore.</p>

<p style="margin-left: 20px">This policy setting allows you to turn off System Restore.</p>

<p style="margin-left: 20px">System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.</p>

<p style="margin-left: 20px">If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.</p>

<p style="margin-left: 20px">Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.</p>

<a href="" id="attachmentmanager-notifyantivirusprograms"></a>**AttachmentManager/NotifyAntivirusPrograms**

<p style="margin-left: 20px">This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant. </p>

<p style="margin-left: 20px">If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<a href="" id="internetexplorer-localmachinezonenavigatewindowsandframes"></a>**InternetExplorer/LocalMachineZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownInternetZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-allowlocalmachinezonetemplate"></a>**InternetExplorer/AllowLocalMachineZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowlessprivilegedsites"></a>**InternetExplorer/TrustedSitesZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-disablebypassofsmartscreenwarningsaboutuncommonfiles"></a>**InternetExplorer/DisableBypassOfSmartScreenWarningsAboutUncommonFiles**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remotedesktopservices-donotallowpasswordsaving"></a>**RemoteDesktopServices/DoNotAllowPasswordSaving**

<p style="margin-left: 20px">Specifies whether to require the use of a specific encryption level to secure communications between client computers and RD Session Host servers during Remote Desktop Protocol (RDP) connections. This policy only applies when you are using native RDP encryption. However, native RDP encryption (as opposed to SSL encryption) is not recommended. This policy does not apply to SSL encryption.</p>

<p style="margin-left: 20px">If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the encryption method specified in this setting. By default, the encryption level is set to High. The following encryption methods are available:</p>

<p style="margin-left: 20px">* High: The High setting encrypts data sent from the client to the server and from the server to the client by using strong 128-bit encryption. Use this encryption level in environments that contain only 128-bit clients (for example, clients that run Remote Desktop Connection). Clients that do not support this encryption level cannot connect to RD Session Host servers.</p>

<p style="margin-left: 20px">* Client Compatible: The Client Compatible setting encrypts data sent between the client and the server at the maximum key strength supported by the client. Use this encryption level in environments that include clients that do not support 128-bit encryption.</p>

<p style="margin-left: 20px">* Low: The Low setting encrypts only data sent from the client to the server by using 56-bit encryption.</p>

<p style="margin-left: 20px">If you disable or do not configure this setting, the encryption level to be used for remote connections to RD Session Host servers is not enforced through Group Policy.</p>

<p style="margin-left: 20px">Important</p>

<p style="margin-left: 20px">FIPS compliance can be configured through the System cryptography. Use FIPS compliant algorithms for encryption, hashing, and signing settings in Group Policy (under Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options.) The FIPS compliant setting encrypts and decrypts data sent from the client to the server and from the server to the client, with the Federal Information Processing Standard (FIPS) 140 encryption algorithms, by using Microsoft cryptographic modules. Use this encryption level when communications between clients and RD Session Host servers requires the highest level of encryption.
</p>

<a href="" id="autoplay-disallowautoplayfornonvolumedevices"></a>**Autoplay/DisallowAutoplayForNonVolumeDevices**

<p style="margin-left: 20px">This policy setting allows you to turn off the Autoplay feature.</p>

<p style="margin-left: 20px">          Autoplay begins reading from a drive as soon as you insert media in the drive. As a result, the setup file of programs and the music on audio media start immediately.</p>

<p style="margin-left: 20px">          Prior to Windows XP SP2, Autoplay is disabled by default on removable drives, such as the floppy disk drive (but not the CD-ROM drive), and on network drives.</p>

<p style="margin-left: 20px">          Starting with Windows XP SP2, Autoplay is enabled for removable drives as well, including Zip drives and some USB mass storage devices.</p>

<p style="margin-left: 20px">          If you enable this policy setting, Autoplay is disabled on CD-ROM and removable media drives, or disabled on all drives.</p>

<p style="margin-left: 20px">          This policy setting disables Autoplay on additional types of drives. You cannot use this setting to enable Autoplay on drives on which it is disabled by default.</p>

<p style="margin-left: 20px">          If you disable or do not configure this policy setting, AutoPlay is enabled.</p>

<p style="margin-left: 20px">          Note: This policy setting appears in both the Computer Configuration and User Configuration folders. If the policy settings conflict, the policy setting in Computer Configuration takes precedence over the policy setting in User Configuration.</p>

<a href="" id="internetexplorer-donotallowuserstoaddsites"></a>**InternetExplorer/DoNotAllowUsersToAddSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-clientcoexistenceallowmigrationmode"></a>**AppVirtualization/ClientCoexistenceAllowMigrationmode**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-trustedsiteszoneallowscriptlets"></a>**InternetExplorer/TrustedSitesZoneAllowScriptlets**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowpackagecleanup"></a>**AppVirtualization/AllowPackageCleanup**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowsmartscreenie"></a>**InternetExplorer/LockedDownIntranetZoneAllowSmartScreenIE**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="errorreporting-preventcriticalerrordisplay"></a>**ErrorReporting/PreventCriticalErrorDisplay**

<p style="margin-left: 20px">This policy setting determines the consent behavior of Windows Error Reporting for specific event types.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can add specific event types to a list by clicking Show, and typing event types in the Value Name column of the Show Contents dialog box. Event types are those for generic, non-fatal errors: crash, no response, and kernel fault errors. For each specified event type, you can set a consent level of 0, 1, 2, 3, or 4.</p>

<p style="margin-left: 20px">- 0 (Disable): Windows Error Reporting sends no data to Microsoft for this event type.</p>

<p style="margin-left: 20px">- 1 (Always ask before sending data): Windows prompts the user for consent to send reports.</p>

<p style="margin-left: 20px">- 2 (Send parameters): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, and Windows prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 3 (Send parameters and safe additional data): Windows Error Reporting automatically sends the minimum data required to check for an existing solution, as well as data which Windows has determined (within a high probability) does not contain personally identifiable data, and prompts the user for consent to send any additional data requested by Microsoft.</p>

<p style="margin-left: 20px">- 4 (Send all data): Any data requested by Microsoft is sent automatically.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the default consent settings that are applied are those specified by the user in Control Panel, or in the Configure Default Consent policy setting.</p>

<a href="" id="internetexplorer-allowlockeddownintranetzonetemplate"></a>**InternetExplorer/AllowLockedDownIntranetZoneTemplate**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="appvirtualization-allowroamingfileexclusions"></a>**AppVirtualization/AllowRoamingFileExclusions**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="internetexplorer-lockeddownintranetzonenavigatewindowsandframes"></a>**InternetExplorer/LockedDownIntranetZoneNavigateWindowsAndFrames**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="eventlogservice-specifymaximumfilesizesecuritylog"></a>**EventLogService/SpecifyMaximumFileSizeSecurityLog**

<p style="margin-left: 20px">This policy setting specifies the maximum size of the log file in kilobytes.</p>

<p style="margin-left: 20px">If you enable this policy setting, you can configure the maximum log file size to be between 1 megabyte (1024 kilobytes) and 2 terabytes (2147483647 kilobytes) in kilobyte increments.</p>

<p style="margin-left: 20px">If you disable or do not configure this policy setting, the maximum size of the log file will be set to the locally configured value. This value can be changed by the local administrator using the Log Properties dialog and it defaults to 20 megabytes.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneallowaccesstodatasources"></a>**InternetExplorer/LockedDownInternetZoneAllowAccessToDataSources**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-lockeddowninternetzoneinitializeandscriptactivexcontrols"></a>**InternetExplorer/LockedDownInternetZoneInitializeAndScriptActiveXControls**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="credentialproviders-allowpinlogon"></a>**CredentialProviders/AllowPINLogon**

<p style="margin-left: 20px">This policy setting allows you to control whether a domain user can sign in using a convenience PIN. In Windows 10, convenience PIN was replaced with Windows Hello PIN, which has stronger security properties. To configure Windows Hello for Business, use the policies under Computer configuration\Administrative Templates\Windows Components\Windows Hello for Business.</p>

<p style="margin-left: 20px">If you enable this policy setting, a domain user can set up and sign in with a convenience PIN. </p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.</p>

<p style="margin-left: 20px">Note that the user's domain password will be cached in the system vault when using this feature.</p>

<a href="" id="appvirtualization-integrationallowrootuser"></a>**AppVirtualization/IntegrationAllowRootUser**

<p style="margin-left: 20px">Specifies a list of process paths (may contain wildcards) which are candidates for using virtual components (shell extensions, browser helper objects, etc). Only processes whose full path matches one of these items can use virtual components.</p>

<a href="" id="credentialproviders-blockpicturepassword"></a>**CredentialProviders/BlockPicturePassword**

<p style="margin-left: 20px">This policy setting allows you to control whether a domain user can sign in using a convenience PIN. In Windows 10, convenience PIN was replaced with Windows Hello PIN, which has stronger security properties. To configure Windows Hello for Business, use the policies under Computer configuration\Administrative Templates\Windows Components\Windows Hello for Business.</p>

<p style="margin-left: 20px">If you enable this policy setting, a domain user can set up and sign in with a convenience PIN. </p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, a domain user can't set up and use a convenience PIN.</p>

<p style="margin-left: 20px">Note that the user's domain password will be cached in the system vault when using this feature.</p>

<a href="" id="internetexplorer-donotblockoutdatedactivexcontrolsonspecificdomains"></a>**InternetExplorer/DoNotBlockOutdatedActiveXControlsOnSpecificDomains**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="attachmentmanager-hidezoneinfomechanism"></a>**AttachmentManager/HideZoneInfoMechanism**

<p style="margin-left: 20px">This policy setting allows you to manage the behavior for notifying registered antivirus programs. If multiple programs are registered, they will all be notified. If the registered antivirus program already performs on-access checks or scans files as they arrive on the computer's email server, additional calls would be redundant. </p>

<p style="margin-left: 20px">If you enable this policy setting, Windows tells the registered antivirus program to scan the file when a user opens a file attachment. If the antivirus program fails, the attachment is blocked from being opened.</p>

<p style="margin-left: 20px">If you disable this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<p style="margin-left: 20px">If you do not configure this policy setting, Windows does not call the registered antivirus programs when file attachments are opened.</p>

<a href="" id="internetexplorer-lockeddownrestrictedsiteszoneallowuserdatapersistence"></a>**InternetExplorer/LockedDownRestrictedSitesZoneAllowUserDataPersistence**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="remoteassistance-unsolicitedremoteassistance"></a>**RemoteAssistance/UnsolicitedRemoteAssistance**

<p style="margin-left: 20px">This policy setting allows you to turn logging on or off. Log files are located in the user's Documents folder under Remote Assistance.</p>

<p style="margin-left: 20px">If you enable this policy setting, log files are generated.</p>

<p style="margin-left: 20px">If you disable this policy setting, log files are not generated.</p>

<p style="margin-left: 20px">If you do not configure this setting, application-based settings are used.</p>

<a href="" id="internetexplorer-lockeddownintranetzoneallowlessprivilegedsites"></a>**InternetExplorer/LockedDownIntranetZoneAllowLessPrivilegedSites**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>

<a href="" id="internetexplorer-restrictedsiteszoneallowautomaticpromptingforfiledownloads"></a>**InternetExplorer/RestrictedSitesZoneAllowAutomaticPromptingForFileDownloads**

<p style="margin-left: 20px">This policy setting lets you decide whether users can turn on Enterprise Mode for websites with compatibility issues. Optionally, this policy also lets you specify where to get reports (through post messages) about the websites for which users turn on Enterprise Mode using the Tools menu.</p>

<p style="margin-left: 20px">If you turn this setting on, users can see and use the Enterprise Mode option from the Tools menu. If you turn this setting on, but don't specify a report location, Enterprise Mode will still be available to your users, but you won't get any reports.</p>

<p style="margin-left: 20px">If you disable or don't configure this policy setting, the menu option won't appear and users won't be able to run websites in Enterprise Mode.</p>



<!-- ADMX-DESCRIPTIONS-END -->