---
Description: 'Prepare a Network Policy Server (NPS) for Imaging'
MS-HAID: 'p\_adk\_online.prepare\_a\_network\_policy\_server\_\_nps\_\_for\_imaging'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Prepare a Network Policy Server (NPS) for Imaging'
---

# Prepare a Network Policy Server (NPS) for Imaging


If you intend to create an image of an installation for deployment to a different computer, and the Network Policy Server (NPS) service is installed on the source server, you may have to first remove confidential information that's stored on the server. Use these procedures to remove the relevant settings and data from the NPS configuration.

**To delete RADIUS clients from the NPS configuration**

1.  Display the list of Remote Authentication Dial-In User Service (RADIUS) clients on the NPS server. To do that, open an elevated command prompt, type this command, and then press Enter:

    ``` syntax
    Netsh nps show client
    ```

2.  Delete each RADIUS client in the list. To do that, at the elevated command prompt, type this command and then press Enter:

    ``` syntax
    Netsh nps delete client [name]
    ```

    For example, this command deletes a RADIUS client named *&lt;WirelessAP1&gt;* from the NPS server configuration:

    ``` syntax
    Netsh nps delete client name = <WirelessAP1>
    ```

    You can delete multiple RADIUS clients by inserting a comma between each client. For example:

    ``` syntax
    Netsh nps delete client name = <WirelessAP1>,<WirelessAP2>,<WirelessAP3>
    ```

    You can also remove a RADIUS client by using the following command.

    ``` syntax
    Remove-NpsRadiusClient [-Name] <Radius Client Name>-
    ```

3.  Repeat this procedure for each RADIUS client that's configured on the NPS server.

**To delete a remote RADIUS server group from the NPS server configuration**

1.  Display the list of remote RADIUS server groups that are configured on the NPS server. To do that, open an elevated command prompt, type the following command, and then press Enter:

    ``` syntax
    Netsh nps show remoteservergroup
    ```

2.  Delete each remote server group in the list. To do that, at the elevated command prompt, type this command and then press Enter:

    ``` syntax
    Netsh nps delete remoteservergroup [name =] name
    ```

    For example, this command deletes a remote RADIUS server group named *&lt;RemoteServers1&gt;* from the NPS server configuration:

    ``` syntax
    Netsh nps delete remoteservergroup name = <RemoteServers1>
    ```

    **Note**  
    When you delete a remote RADIUS server group, all RADIUS servers that are contained in the group are deleted.

     

3.  Repeat this procedure for each remote RADIUS server group that's configured on the NPS server.

You can convert **Netsh** commands to Windows PowerShell® commands. For more information, see the [Netshell to Powershell Conversion Guide](http://go.microsoft.com/fwlink/?LinkId=234734).

## <span id="related_topics"></span>Related topics


[Configure Windows Server Roles](configure-windows-server-roles.md)

[Sysprep (Generalize) a Windows installation](sysprep--generalize--a-windows-installation.md)

[Windows Server Deployment Options](windows-server-deployment-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Prepare%20a%20Network%20Policy%20Server%20%28NPS%29%20for%20Imaging%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




