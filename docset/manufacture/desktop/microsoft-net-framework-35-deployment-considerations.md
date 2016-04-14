---
Description: 'Microsoft .NET Framework 3.5 Deployment Considerations'
MS-HAID: 'p\_adk\_online.microsoft\_net\_framework\_35\_deployment\_considerations'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Microsoft .NET Framework 3.5 Deployment Considerations'
---

# Microsoft .NET Framework 3.5 Deployment Considerations


.NET Framework 3.5 is not included by default in Windows 10 or Windows Server 2016 Technical Preview, but you can download and deploy it for application compatibility. This section describes these deployment options.

**In this section:**

-   [Deploy .NET Framework 3.5 by using Group Policy Feature on Demand setting](deploy-net-framework-35-by-using-group-policy-feature-on-demand-setting.md)
-   [Deploy .NET Framework 3.5 by using Deployment Image Servicing and Management (DISM)](deploy-net-framework-35-by-using-deployment-image-servicing-and-management--dism.md)
-   [Enable .NET Framework 3.5 by using Windows PowerShell](enable-net-framework-35-by-using-windows-powershell.md)
-   [Enable .NET Framework 3.5 by using Control Panel and Windows Update (Windows 8 only)](enable-net-framework-35-by-using-control-panel-and-windows-update--windows-8-only.md)
-   [Enable .NET Framework 3.5 by using the Add Roles and Features Wizard](enable-net-framework-35-by-using-the-add-roles-and-features-wizard.md)
-   [.NET Framework 3.5 deployment errors and resolution steps](net-framework-35-deployment-errors-and-resolution-steps.md)

## <span id="Introduction"></span><span id="introduction"></span><span id="INTRODUCTION"></span>Introduction


Windows 10 or Windows Server 2016 Technical Preview include .NET Framework 4.6, which is an integral Windows component that supports building and running the next generation of applications and web services. The .NET Framework provides a subset of managed types that you can use to create Windows Store apps for Windows by using C\# or Visual Basic. For more information, see [.NET Framework](http://go.microsoft.com/fwlink/p/?linkid=329972).

Only the metadata that is required to enable the .NET Framework 3.5 is contained in the default Windows image **(\\sources\\install.wim**). The actual binaries are not in the image. This feature state is known as *disabled with payload removed*.

You can get the .NET Framework 3.5 payload files from Windows Update or the installation media in the **\\sources\\sxs** folder. For more information, see [Installing the .NET Framework 3.5](http://go.microsoft.com/fwlink/p/?linkid=257556). After the .NET Framework 3.5 feature is enabled, the files are serviced just like other operating system files from Windows Update.

If you upgrade from Windows 7 (which includes .NET Framework 3.5.1 [by default](http://blogs.msdn.com/b/e7/archive/2009/03/06/beta-to-rc-changes-turning-windows-features-on-or-off.aspx)) to Windows 10, or from Windows Server 2008 R2 (which has .NET Framework 3.5.1 feature installed) to Windows Server 2016 Technical Preview, .NET Framework 3.5 is automatically enabled.

If you have feedback about this topic, please visit the appropriate Microsoft forum:

-   [Windows IT Pro](http://social.technet.microsoft.com/Forums/windows/home?category=w8itpro)
-   [Windows Server](http://social.technet.microsoft.com/Forums/windowsserver/home?category=windowsserver)
-   [Windows Store apps](http://social.msdn.microsoft.com/Forums/windowsapps/home?category=windowsapps)

## <span id="related_topics"></span>Related topics


[Windows Server Installation Options](http://go.microsoft.com/fwlink/p/?linkid=251454)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Microsoft%20.NET%20Framework%203.5%20Deployment%20Considerations%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




