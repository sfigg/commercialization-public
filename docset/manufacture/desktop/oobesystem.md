---
author: Justinha
Description: oobeSystem
ms.assetid: afe6d754-0ca6-4252-87c7-bfc234a2cc6a
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: oobeSystem
---

# oobeSystem


The **oobeSystem** configuration pass configures settings that are applied during the end-user first-boot experience, also called Out-Of-Box Experience (OOBE). The **oobeSystem** configuration pass settings are processed before a user first logs on to Windows®.

Out-of-Box-Experience (OOBE) runs the first time the user starts a newly configured computer. OOBE runs before the Windows shell or any additional software runs, and it performs a small set of tasks that are required to configure and run Windows.

The following diagram illustrates the process that occurs when an end user first boots a newly configured computer. The result is OOBE, or a user's first-boot experience.

![windows welcome configuration pass](images/dep-win8-l-windowswelcomeconfigpass.jpg)

You can configure Windows to boot to OOBE by running the **sysprep** command by using the **/oobe** option. By default, after running Windows Setup, OOBE starts.

## <span id="related_topics"></span>Related topics


[How Configuration Passes Work](how-configuration-passes-work.md)

[auditSystem](auditsystem.md)

[auditUser](audituser.md)

[generalize](generalize.md)

[offlineServicing](offlineservicing.md)

[specialize](specialize.md)

[windowsPE](windowspe.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20oobeSystem%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




