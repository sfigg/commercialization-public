---
author: Justinha
Description: generalize
ms.assetid: 90b8329e-dc6a-49e6-ad6a-09c56b27f6e8
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: generalize
---

# generalize


The **generalize** configuration pass of Windows® Setup is used to create a Windows reference image that can be used throughout an organization. Settings in the **generalize** configuration pass enable you to automate the behavior for all deployments of this reference image. In comparison, settings applied in the [specialize](specialize.md) configuration pass enable you to override behavior for a single, specific deployment.

When a system is generalized, specific configuration data for a given installation of Windows is removed. For example, during the **generalize** configuration pass, the unique security ID (SID) and other hardware-specific settings are removed from the image.

The **generalize** configuration pass runs only when you use the **Sysprep** command with the **/generalize** option. Answer file settings in the `<generalize>` section of an answer file are applied to the system before **Sysprep** generalization occurs. The system then shuts down.

The following diagram shows the process of the **generalize** configuration pass.

![generalize configuration pass](images/dep-win8-l-generalizeunattend.jpg)

The [specialize](specialize.md) configuration pass runs immediately after the next time that the system boots. When you run **Sysprep**, you can decide whether Windows will boot to audit mode or Windows Welcome by specifying **/audit** or **/oobe**. The **specialize** configuration pass always runs after a computer has been generalized, regardless of whether the computer is configured to boot to audit mode or Windows Welcome.

Any method of moving or copying a Windows image to a new computer must be prepared with the **sysprep /generalize** command. For more information, see [Sysprep (Generalize) a Windows installation](sysprep--generalize--a-windows-installation.md).

## <span id="related_topics"></span>Related topics


[How Configuration Passes Work](how-configuration-passes-work.md)

[auditSystem](auditsystem.md)

[auditUser](audituser.md)

[offlineServicing](offlineservicing.md)

[oobeSystem](oobesystem.md)

[specialize](specialize.md)

[windowsPE](windowspe.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20generalize%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




