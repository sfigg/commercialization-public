---
Description: 'Install Add-Ins - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.install\_add\_ins\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Install Add-Ins - Windows Server Essentials'
---

# Install Add-Ins - Windows Server Essentials


To include add-ins on all server or client computers install them before creating an image. These add-ins are automatically included on all computers replicated using that image. There are two methods for installing add-ins:

-   Run the .wssx file. If you install by using a .wssx file, the add-in can be uninstalled through the Add-In Manager.

-   Install individual add-in files by following the guidance in the [Windows Server Solutions SDK](http://go.microsoft.com/fwlink/p/?linkid=248648) for each type of add-in. If you install the individual files, the add-in is not managed from the Add-In Manager.

**Note**  
Any software that is installed or downloaded on the server (including Dashboard tabs and health notifications) should have a localized interface that matches the language of the operating system that is installed on the server.

 

**To install an add-in**

1.  (Optional) To install the add-in by using a .wssx file, complete the following steps:

    1.  Save the &lt;AddinName&gt;.wssx file on the reference computer.

    2.  Double click the .wssx file to open the Add-in Installation Wizard.

    3.  Follow the instructions in the wizard to complete the installation.

2.  (Optional) Install the individual add-in files in the appropriate locations as defined in the SDK for each type of add-in.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Install%20Add-Ins%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




