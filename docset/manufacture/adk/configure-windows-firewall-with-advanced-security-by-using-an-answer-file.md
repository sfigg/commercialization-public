---
Description: Configure Windows Firewall with Advanced Security by Using an Answer File
MS-HAID: 'p\_adk\_online.configure\_windows\_firewall\_with\_advanced\_security\_by\_using\_an\_answer\_file'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Configure Windows Firewall with Advanced Security by Using an Answer File
---

# Configure Windows Firewall with Advanced Security by Using an Answer File


For unattended installations, you can configure Windows® Firewall with Advanced Security settings in an answer file by using the Networking-MPSSVC-Svc component. In addition to the answer file (Unattend.xml) settings for Windows Firewall with Advanced Security, you can create a **RunSynchronous** command that runs **Netsh advfirewall** commands during the [auditUser](audituser.md) or [oobeSystem](oobesystem.md) configuration pass.

## <span id="Adding__Modifying__or_Deleting_Rules_for_Windows_Firewall_with_Advanced_Security"></span><span id="adding__modifying__or_deleting_rules_for_windows_firewall_with_advanced_security"></span><span id="ADDING__MODIFYING__OR_DELETING_RULES_FOR_WINDOWS_FIREWALL_WITH_ADVANCED_SECURITY"></span>Adding, Modifying, or Deleting Rules for Windows Firewall with Advanced Security


Use **RunSynchronous** commands only to add, modify, or delete rules for Windows Firewall with Advanced Security. To modify rule groups, use the **FirewallGroups** setting in the **Networking-MPSSVC-Svc** component. For more information about Windows components and settings that you can add to an answer file, see the [Unattended Windows Setup Reference Guide](http://go.microsoft.com/fwlink/?LinkId=206281).

**To add a Netsh command to an answer file**

1.  On your technician computer, open Windows System Image Manager (Windows SIM). Click **Start**, type **Windows System Image Manager**, and then select **Windows System Image Manager**.

2.  Create a new answer file, or update an existing answer file. For more information, see [Create or Open an Answer File](p_wsim.create_or_open_an_answer_file_win8) and [Best Practices for Authoring Answer Files](p_wsim.best_practices_for_authoring_answer_files_win8).

3.  On the **Insert** menu, click **RunSynchronous**.

4.  Select the configuration pass where you want to install the command. This can be the [auditUser](audituser.md) or [oobeSystem](oobesystem.md) configuration pass.

    **Note**  
    Don't use the **RunSynchronousNetsh advfirewall** command during the [specialize](specialize.md) configuration pass.

     

5.  The **Create Synchronous Command** dialog box appears.

6.  In the **Enter command line** box, type the command-line syntax, like **Netsh advfirewall firewall**. For more information, see the [Network Shell (Netsh) Technical Reference](http://go.microsoft.com/fwlink/?LinkId=234733).

7.  In the **Order** box, select the order of the commands that will run, and then click **OK**.

    The command is added to the answer file in the selected configuration pass, as follows:

    1.  Commands that are added to the **6 auditUser passes** configuration pass appear in the setting Microsoft-Windows-Deployment\\RunSynchronous.

    2.  Commands that are added to the **7 oobeSystem** configuration pass appear in the setting Microsoft-Windows-Shell-Setup\\FirstLogonCommands.

8.  In the **SynchronousCommand Properties** pane, in the **Settings** section next to **Description**, enter a description like **Enable Windows Messenger**.

9.  The command is added to the answer file under the configuration pass that you selected. This example illustrates how an incoming rule for Windows Messenger is configured:

    ``` syntax
          <RunSynchronous>
             <RunSynchronousCommand wcm:action="add">
                <Path>Netsh advfirewall firewall 
                      add rule name="allow messenger" dir=in 
                      program="c:\programfiles\messenger\msmsgs.exe"
                      action=allow
                </Path>
                <Description>Enable Windows Messenger</Description>
                <Order>1</Order>
             </RunSynchronousCommand>
          </RunSynchronous>
    ```

**Note**  
The **Netsh advfirewall** command requires administrator permissions to run. If the **RunSynchronous** command runs in a configuration pass that runs in user context, that user account must have administrator permissions.

 

## <span id="Using_the_Netsh_Advfirewall_Command-Line_Tool"></span><span id="using_the_netsh_advfirewall_command-line_tool"></span><span id="USING_THE_NETSH_ADVFIREWALL_COMMAND-LINE_TOOL"></span>Using the Netsh Advfirewall Command-Line Tool


The following example illustrates how to add a new outgoing firewall rule to block a port by using the **Netsh advfirewall** command-line tool.

**To add a new outgoing firewall rule**

-   At an elevated command prompt, enter syntax that adds a new outgoing firewall rule to block a port. For example:

    ``` syntax
    Netsh advfirewall firewall add rule name="allow80" protocol=TCP
    dir=out localport=80 action=block
    ```

    where the blocked port is TCP port 80.

You can convert **Netsh** commands to Windows PowerShell commands. For more information, see the [Netshell to Powershell Conversion Guide](http://go.microsoft.com/fwlink/?LinkId=234734).

## <span id="related_topics"></span>Related topics


[Windows Deployment Options](windows-deployment-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Configure%20Windows%20Firewall%20with%20Advanced%20Security%20by%20Using%20an%20Answer%20File%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




