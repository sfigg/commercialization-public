---
author: Justinha
Description: 'Enable .NET Framework 3.5 by using Windows PowerShell'
MS-HAID: 'p\_adk\_online.enable\_net\_framework\_35\_by\_using\_windows\_powershell'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Enable .NET Framework 3.5 by using Windows PowerShell'
---

# Enable .NET Framework 3.5 by using Windows PowerShell


For a Windows Server® 2012 core installation that is not connected to the Internet, you can use Windows PowerShell to add .NET Framework 3.5 and provide access to the **\\sources\\sxs** folder on the installation media. The **\\sources\\sxs** folder can be copied to network share (for example, \\\\network\\share\\sxs) to make it easily accessible to multiple computers. The target computer account DOMAIN\\SERVERNAME$ must have at least read access to the network share.

## <span id="Requirements"></span><span id="requirements"></span><span id="REQUIREMENTS"></span>Requirements


-   Windows Server 2012

-   Installation media

-   Administrator user rights. The current user must be a member of the local Administrators group to add or remove Windows features.

-   Target Computers might need network access and rights to use either alternate sources or an Internet connection to use Windows Update.

## <span id="Steps"></span><span id="steps"></span><span id="STEPS"></span>Steps


1.  Start Windows PowerShell in the Administrator Command Prompt by typing:

    ``` syntax
    powershell
    ```

2.  To install .NET Framework 3.5 from installation media located on a network share, use the following command:

    ``` syntax
    Install-WindowsFeature Net-Framework-Core -source \\network\share\sxs
    ```

    Where *\\\\network\\share\\sxs* is the location of the source files.

    For more information about the Install-WindowsFeature cmdlet, see [Install-WindowsFeature](http://go.microsoft.com/fwlink/p/?linkid=329977).

3.  To verify installation, run the following command:

    ``` syntax
    Get-WindowsFeature
    ```

    The **Install State** column should show **Installed** for the **.NET Framework 3.5 (includes .NET 2.0 and 3.0)** feature.

## <span id="related_topics"></span>Related topics


[Microsoft .NET Framework 3.5 Deployment Considerations](microsoft-net-framework-35-deployment-considerations.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Enable%20.NET%20Framework%203.5%20by%20using%20Windows%20PowerShell%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




