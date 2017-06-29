---
title: Install standalone HLK Studio
description: Install standalone HLK Studio
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: da9dd0fd-cffc-4276-9398-e60505c5236b
---

# Install standalone HLK Studio


You can install a standalone Windows HLK Studio if you want to view .hlkx certification packages (including logs/results), either in-progress or finished, without installing the Windows HLK Controller. Installation only takes a few seconds, and enables you to complete the following scenarios:

-   View log files from the package.

-   View test results in the package.

-   Regenerate the package.

-   Merge with another package.

-   Add additional drivers to the package.

-   Add a DUA driver update to the package.

## <span id="To_install_standalone_Windows_HLK_Studio"></span><span id="to_install_standalone_windows_hlk_studio"></span><span id="TO_INSTALL_STANDALONE_WINDOWS_HLK_STUDIO"></span>To install standalone Windows HLK Studio


1.  [Download the Windows HLK](https://go.microsoft.com/fwlink/p/?LinkId=733613) to a location accessible to your test server.

2.  From HLKSetup.exe, select the **Studio Only** option.

3.  After installation, open HLK Studio.

4.  HLK Studio opens automatically on the **Connect** tab, which you can interact with just as you would with the full Windows HLK.

## <span id="Limitations"></span><span id="limitations"></span><span id="LIMITATIONS"></span>Limitations


Installing a standalone HLK Studio also installs HLK Manager to your system. However, you won’t be able to access or use any of the features of HLK Manager.

Also, you should avoid installing a standalone HLK Studio on the same machine where a remote Studio (Studio installed from a Controller) has been installed. There are known limitations to this scenario, which may leave your system in an inoperable state.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk\p_hlk%5D:%20Install%20standalone%20HLK%20Studio%20%20RELEASE:%20%286/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




