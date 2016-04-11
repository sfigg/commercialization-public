---
Description: 'Configure Support for a Wireless Network - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.configure\_support\_for\_a\_wireless\_network\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Configure Support for a Wireless Network - Windows Server Essentials'
---

# Configure Support for a Wireless Network - Windows Server Essentials


To configure the Windows Server Essentials operating system to support a wireless network, the following requirements must be met:

-   The server must have a wired network adapter installed.

-   The correct driver for the wireless network adapter must be preinstalled if the network adapter is not supported by the operating system.

-   The ability to enable and disable the wireless network adapter must be made available. Methods for doing this might include a physical button on the server or a custom user interface in the Dashboard. The product manual should provide the steps for enabling and disabling the wireless network adapter.

-   The ability to select a wireless network and connect to it must be made available. This should be done by adding a custom user interface to the Dashboard. The product manual should provide the steps for selecting and connecting to a wireless network.

-   If the ability to support a wireless ad-hoc network is needed, an extended user interface in the Dashboard must be provided. The user interface can be a button or a link that launches the Set up a Wireless Ad-hoc Network Wizard in the control panel in Windows Server 2008 R2.

## <span id="Additional_considerations"></span><span id="additional_considerations"></span><span id="ADDITIONAL_CONSIDERATIONS"></span>Additional considerations


The following information should also be considered when configuring support for a wireless network:

-   The server must be connected to the network with a wire to run setup.

-   A network computer on which a bare-metal restore is performed must be connected to the network with a wire.

-   The server must be connected to the network with a wire to perform a bare-metal restore of the server.

-   If an ad-hoc network is created on the server, the wireless network adapter is dedicated for the ad-hoc network so the user must always plug the network cable into the server to obtain an Internet connection.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Configure%20Support%20for%20a%20Wireless%20Network%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




