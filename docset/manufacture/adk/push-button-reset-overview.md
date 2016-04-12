---
Description: 'Push-button reset'
MS-HAID: 'p\_adk\_online.push\_button\_reset\_overview'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Push-button reset'
---

# Push-button reset


Push-button reset is a recovery tool that repairs the OS while preserving data and important customizations. It reduces the need for custom recovery applications by providing users with more recovery options and the ability to fix their own PCs with confidence.

Push-button reset is included in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), and was introduced in Windows 8.

In Windows 10, the Push-button reset features have been updated to include the following improvements:

-   **Image-less recovery**: Push-button reset no longer require or support a separate recovery image on a local partition or on media. This significantly reduces the disk space needed to support the features, and makes recovery possible even on devices with limited storage capacity.
-   **Recovers to an updated state**: Push-button reset features now recover the Operating System (OS) and drivers (including device applets that are installed as part of INF-based driver packages) to an updated state. This reduces the amount of time users have to spend reinstalling the OS updates and drivers after performing a recovery.

The Push-button reset user experience continues to offer customization opportunities. Manufacturers can insert custom scripts, install applications or preserve additional data at available extensibility points.

The following Push-button reset features are available to users with Windows 10 PCs and devices:

-   **Refresh your PC** Fixes software problems by reinstalling the OS while preserving the user data, user accounts, and important settings. All other preinstalled customizations are restored to their factory state. In Windows 10, this feature no longer preserves user-acquired Windows apps.
-   **Reset your PC** Prepares the PC for recycling or for transfer of ownership by reinstalling the OS, removing all user accounts and contents (e.g. data, Classic Windows applications, and Universal Windows apps), and restoring preinstalled customizations to their factory state.
-   **Bare metal recovery** Restores the default or preconfigured partition layout on the system disk, and reinstalls the OS and preinstalled customizations from external media.

![](images/dep-winre-pbr.png)

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Content type</th>
<th align="left">References</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Overview</strong></p></td>
<td align="left"><p>[How push-button reset features work](how-push-button-reset-features-work.md) | [Recovery strategy for common customizations](recovery-strategy-for-common-customizations.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Hard drive setup</strong></p></td>
<td align="left"><p>[Hard Drives and Partitions](p_adk_online.hard_drives_and_partitions_win8) | [UEFI/GPT-based hard drive partitions](p_adk_online.configure_uefigpt_based_hard_drive_partitions_win8) | [BIOS/MBR-based hard drive partitions](p_adk_online.configure_biosmbr_based_hard_drive_partitions_win8)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Operations</strong></p></td>
<td align="left"><p>[Deploy push-button reset features using ScanState](p_adk_online.deploy_push_button_reset_features_win8) | [Bare metal reset/recovery: enable your users to create recovery media](p_adk_online.bare_metal_resetrecovery_enable_your_users_to_create_media_and_to_recover_hard_drive_space_blue) | [Bare metal reset/recovery: create recovery media while deploying new devices](create-media-to-run-push-button-reset-features-s14.md) | [Add a script to push-button reset features](p_adk_online.add_a_script_to_push_button_reset_features_win8)</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Configuration files</strong></p></td>
<td align="left"><p>[ResetConfig XML reference](resetconfig-xml-reference-s14.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Technologies used by push-button reset</strong></p></td>
<td align="left"><p>[Windows Recovery Environment](windows-recovery-environment--windows-re--technical-reference.md) | [Windows PE (WinPE)](winpe-intro.md) | [ScanState](p_adk_online.deploy_push_button_reset_features_win8)</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Push-button%20reset%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



