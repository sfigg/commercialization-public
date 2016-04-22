---
author: Justinha
Description: offlineServicing
ms.assetid: 8c921c85-c986-419c-9f93-bdacd9441abb
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: offlineServicing
---

# offlineServicing


Use the **offlineServicing** configuration pass to apply unattended Setup settings to an offline Microsoft® Windows® image. During this configuration pass, you can add language packs, updates, device drivers, or other packages to the offline image.

The **offlineServicing** configuration pass runs during Windows Setup. Setup extracts and installs the Windows image, and then executes the Deployment Image Servicing and Management (Dism.exe) tool. Packages listed in the `<servicing>` section and settings in the `<offlineServicing>` section of the answer file are applied to the offline Windows image.

Additionally, you can use the Deployment Image Servicing and Management tool with an answer file to apply settings in the **offlineServicing** pass. For more information, see [Service a Windows Image Using DISM](service-a-windows-image-using-dism.md).

## <span id="related_topics"></span>Related topics


[How Configuration Passes Work](how-configuration-passes-work.md)

[auditSystem](auditsystem.md)

[auditUser](audituser.md)

[generalize](generalize.md)

[oobeSystem](oobesystem.md)

[specialize](specialize.md)

[windowsPE](windowspe.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20offlineServicing%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




