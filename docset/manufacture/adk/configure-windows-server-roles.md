---
Description: Configure Windows Server Roles
MS-HAID: 'p\_adk\_online.configure\_windows\_server\_roles'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Configure Windows Server Roles
---

# Configure Windows Server Roles


To configure one or more Server Roles during an unattended installation, you can use the PowerShell or Server Manager command-line tool. For more information about Server Roles, see this [Microsoft Web site](http://go.microsoft.com/fwlink/?LinkId=140100).

You can create `FirstLogonCommands` in your answer file that specifies the proper parameters for the server role you want to configure. The `FirstLogonCommands` setting is configured in the [oobeSystem](oobesystem.md) configuration pass. The `FirstLogonCommands` setting is run immediately after a user logs onto the computer and before the desktop is displayed.

**Note**  
You must run PowerShell and Server Manager commands from an account with administrator privileges.

 

For more information about adding the `FirstLogonCommands` setting, see [Add a Custom Command to an Answer File](https://msdn.microsoft.com/library/windows/hardware/dn915058).

The following example shows the PowerShell.exe syntax for installing the ServerManager module and the DHCP, FAX, DNS, and File-Services roles.

``` syntax
<FirstLogonCommands>
   <SynchronousCommand wcm:action="add">
      <Order>1</Order>
      <CommandLine> Powershell.exe –command Import-Module ServerManager; Install-WindowsFeature DHCP,FAX,DNS,File-Services</CommandLine>
      <Description>Configure Server Role</Description>
   </SynchronousCommand>
</FirstLogonCommands>
```

**Note**  
Not all server roles support Sysprep. You must configure some server roles after imaging and deployment. For more information, see [Sysprep Support for Server Roles](sysprep-support-for-server-roles.md).

 

## <span id="related_topics"></span>Related topics


[Windows Deployment Options](windows-deployment-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Configure%20Windows%20Server%20Roles%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




