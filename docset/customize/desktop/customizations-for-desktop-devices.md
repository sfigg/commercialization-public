---
title: Customizations for desktop devices
description: While setting up new Windows 10 PCs, partners can change Windows settings that change the desktop theme, the Internet Explorer homepage, or launch scripts to configure the PCs.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: DC8AA08E-8451-472E-967C-8089ECF5DB6C
---

# Customizations for desktop devices


While setting up new Windows 10 PCs, partners can change Windows settings that change the desktop theme, the Internet Explorer homepage, or launch scripts to configure the PCs.

To add settings and scripts, create **Unattend files (unattend.xml)** in Windows System Image Manager (Windows SIM).

-   To get started, see the [Update settings and run scripts](http://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs).
-   For the list of settings, see [Unattended Windows Setup Reference](p_unattend.unattended_windows_setup_reference_b_unattend).

## Adding apps, drivers, languages, and more


For OEMs, it’s typically easiest to add these during the [manufacturing](http://msdn.microsoft.com/windows/hardware/commercialize/manufacture/index) process, using tools like DISM. To get started, see [Manufacturing labs](http://msdn.microsoft.com/windows/hardware/commercialize/manufacture/desktop/update-windows-settings-and-scripts-create-your-own-answer-file-sxs).

[Distribution Shares and Configuration Sets Overview](p_wsim.distribution_shares_and_configuration_sets_overview_win8) outlines another method for customizing Windows images. Windows SIM can create **configuration sets** which are self-contained folder structures that can include language packs, drivers, apps, and more. They can pull additional files from **distribution shares**. At the root, they use an unattend file to pull everything together.

