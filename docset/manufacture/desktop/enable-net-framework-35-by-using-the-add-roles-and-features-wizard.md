---
author: Justinha
Description: 'Enable .NET Framework 3.5 by using the Add Roles and Features Wizard'
MS-HAID: 'p\_adk\_online.enable\_net\_framework\_35\_by\_using\_the\_add\_roles\_and\_features\_wizard'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Enable .NET Framework 3.5 by using the Add Roles and Features Wizard'
---

# Enable .NET Framework 3.5 by using the Add Roles and Features Wizard


You can use Server Manager to enable .NET Framework 3.5 for a local or remote installation of Windows Server 2012 R2.

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


-   Windows Server 2012 R2

-   Installation media

-   Administrator user rights. The current user must be a member of the local Administrators group to add or remove Windows features.

-   Target Computers might need network access and rights to use either alternate sources or an Internet connection to use Windows Update.

## <span id="Steps"></span><span id="steps"></span><span id="STEPS"></span>Steps


1.  In Server Manager, click **Manage** and then select **Add Roles and Features** to start the Add Roles and Features Wizard.

2.  On the **Select installation type** screen, select **Role-based or feature-based installation**.

3.  Select the target server.

4.  On the **Select features** screen, check the box next to **.Net Framework 3.5 Features**.

5.  On the **Confirm installation selections** screen, a warning will be displayed asking **Do you need to specify an alternate source path?**. If the target computer does not have access to Windows Update, click the **Specify an alternate source path** link to specify the path to the **\\sources\\sxs** folder on the installation media and then click **OK**. After you have specified the alternate source, or if the target computer has access to Windows Update, click the **X** next to the warning, and then click **Install**.

    If you are using Server Manager in Windows Server 2012 to add a role or feature to a remote server, the remote server’s computer account (DOMAIN\\ComputerName$) requires access to the alternate source file path because the deployment operation runs in the SYSTEM context on the target server.

## <span id="related_topics"></span>Related topics


[Microsoft .NET Framework 3.5 Deployment Considerations](microsoft-net-framework-35-deployment-considerations.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Enable%20.NET%20Framework%203.5%20by%20using%20the%20Add%20Roles%20and%20Features%20Wizard%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




