---
title: Build a mobile image using a hybrid method
description: You can take advantage of the benefits offered by both the Windows provisioning framework and MCSF by using a hybrid method to build your customized mobile image.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3A6BEF64-BCE1-4BF9-8A2F-14A79F956F7B
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Build a mobile image using a hybrid method


You can take advantage of the benefits offered by both the Windows provisioning framework and MCSF by using a hybrid method to build your customized mobile image. This means that:

-   You can use a MCSF [customization answer file](https://msdn.microsoft.com/library/windows/hardware/dn757452) to fully customize the device hardware and connectivity settings, preload apps, add assets such as ringtones and localized strings, and configure any other [MCSF settings not supported in Windows provisioning](https://msdn.microsoft.com/library/windows/hardware/mt573153).

-   You can use a [Windows provisioning answer file](https://msdn.microsoft.com/library/windows/hardware/dn916153) to define the new runtime settings, enterprise policies, enrollment settings, and configure any other [mobile settings supported only in Windows Provisioning](https://msdn.microsoft.com/library/windows/hardware/mt560342).

-   You can use the Windows Imaging and Configuration Designer (ICD) CLI to build your image.

    **Note**  Only the Windows ICD CLI allows you to use both a MCSF customization answer file and a Windows provisioning answer file to create a customized mobile image.

     

## To build a customized mobile image using a hybrid method


Here's the high-level steps you need to take to build a customized mobile image using the Windows ICD CLI:

1.  Choose how you define the packages and features contained in your image.

    -   You can use BSP.config.xml file - If you select this method, you should already have this as part of your BSP kit or you can generate your own using the configuration tools from the SoC vendor.

    -   You can use an OEMInput.xml file and OEMDevicePlatform.xml to define your platform. To do this, follow steps 1-4 in the high-level list of steps in [Build a mobile image using ImgGen.cmd](building-a-phone-image-using-imggencmd.md).

2.  Create your answer files to define the settings that you want to configure for your image.

    -   Create a MCSF [customization answer file](https://msdn.microsoft.com/library/windows/hardware/dn757452) to customize any of the available customizations in the MCSF framework. For more information, see the *Customizations for &lt;feature&gt;* sections in [Customize using the mobile MCSF framework](https://msdn.microsoft.com/library/windows/hardware/dn757433).

    -   Create a [Windows provisioning answer file](https://msdn.microsoft.com/library/windows/hardware/dn916153) to define any of the available settings in the Windows provisioning framework. For more information, see [Windows Provisioning settings reference](https://msdn.microsoft.com/library/windows/hardware/dn953942).

    If you are adding multivariant settings in both answer files, verify whether the multivariant rules in both answer files are consistent. See the section *Target, TargetState, Condition and priorities* in [Create a provisioning package with multivariant settings](https://msdn.microsoft.com/library/windows/hardware/dn916108) for a list of supported conditions but be sure to follow the schema for the answer file you are creating when you specify your **Targets** within the answer file.

    Also, make sure there are no duplicated settings in both answer files. You can use the [MCSF to Windows Provisioning settings map](https://msdn.microsoft.com/library/windows/hardware/mt450421) to help you identify the settings that correspond to each framework.

3.  Run the Windows ICD CLI to build the image. For more information, see [Build an image for Windows 10 Mobile](https://msdn.microsoft.com/library/windows/hardware/dn916115#to_build_a_mobile_image).

4.  Sign the image so that it can be flashed to a device. For more information, see [Sign a full flash update (FFU) image](sign-a-full-flash-update--ffu--image.md).

## Related topics


[Building and flashing mobile images](building-and-flashing-images.md)

 

 







