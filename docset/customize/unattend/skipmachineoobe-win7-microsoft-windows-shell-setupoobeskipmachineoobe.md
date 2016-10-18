---
title: SkipMachineOOBE
description: SkipMachineOOBE
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b935aa10-ec78-4305-bbeb-4336d40aa610
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# SkipMachineOOBE


`SkipMachineOOBE` specifies whether to skip Windows® Welcome.

**Important**  
This setting has been deprecated in Windows® 8. The information about this deprecated setting is provided for reference only.

`SkipMachineOOBE` should be used only in a test environment, and you should never ship a computer with the `SkipMachineOOBE` setting configured to **true**.

If you use this setting in Windows 7, Windows Welcome will be skipped, and any settings that a user selects during Windows Welcome will not be configured. For example, user-account creation, language, and time-zone settings will not be configured. Some Windows features may not function, as they depend on Windows Welcome values such as [ProtectYourPC](protectyourpc-win7-microsoft-windows-shell-setupoobeprotectyourpc.md), which does not include a default value.

To skip Windows Welcome, we recommend that you:

-   Add values for Windows Welcome screens. For information, see [Settings for Automating OOBE](http://go.microsoft.com/fwlink/p/?linkid=206674).

    -or-

-   Boot to audit mode. For information, see Microsoft-Windows-Deployment\\[Reseal](reseal-win7-microsoft-windows-deploymentreseal.md).

 

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>true</strong></p></td>
<td><p>Specifies that Windows Welcome is skipped. This value should be used only for testing purposes.</p></td>
</tr>
<tr class="even">
<td><p><strong>false</strong></p></td>
<td><p>Specifies that Windows Welcome is shown. This is the default value.</p></td>
</tr>
</tbody>
</table>

 

## Valid Configuration Passes


oobeSystem

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | [OOBE](oobe-win7-microsoft-windows-shell-setupoobe.md) | **SkipMachineOOBE**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Example


The following XML output shows how to set OOBE information for testing.

``` syntax
<OOBE>
   <HideEULAPage>true</HideEULAPage>
   <NetworkLocation>Other</NetworkLocation>
   <ProtectYourPC>3</ProtectYourPC>
   <SkipMachineOOBE>true</SkipMachineOOBE>
   <SkipUserOOBE>true</SkipUserOOBE>
</OOBE>
```

## Related topics


[OOBE](oobe-win7-microsoft-windows-shell-setupoobe.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20SkipMachineOOBE%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





