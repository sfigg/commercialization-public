---
Description: Enable Remote Desktop by Using an Answer File
MS-HAID: 'p\_adk\_online.enable\_remote\_desktop\_by\_using\_an\_answer\_file'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Enable Remote Desktop by Using an Answer File
---

# Enable Remote Desktop by Using an Answer File


To enable remote desktop connections during an unattended installation, you must configure several settings and enable the Remote Desktop group in Windows® Firewall with Advanced Security.

**To create an answer file to enable remote desktop connections**

1.  On your technician computer, open Windows System Image Manager (Windows SIM). Click **Start**, type **Windows System Image Manager**, and then select **Windows System Image Manager**.

2.  Create a new answer file, or update an existing answer file. For more information, see [Create or Open an Answer File](p_wsim.create_or_open_an_answer_file_win8) and [Best Practices for Authoring Answer Files](p_wsim.best_practices_for_authoring_answer_files_win8).

    Add these settings to your answer file in the listed configuration pass:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Component</th>
    <th align="left">Configuration pass</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Microsoft-Windows-TerminalServices-LocalSessionManager</p></td>
    <td align="left"><p><strong>4 specialize</strong></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Networking-MPSSVC-Svc\FirewallGroups\FirewallGroup</p></td>
    <td align="left"><p><strong>4 specialize</strong></p></td>
    </tr>
    </tbody>
    </table>

     

3.  In the **Answer File** pane, configure these settings:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Component</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Microsoft-Windows-TerminalServices-LocalSessionManager</p></td>
    <td align="left"><p><code>fDenyTSConnections=false</code></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Networking-MPSSVC-Svc\FirewallGroups\FirewallGroup</p></td>
    <td align="left"><p><code>Active=true</code></p>
    <p><code>Group=Remote Desktop</code></p>
    <p><code>Profile=all</code></p></td>
    </tr>
    </tbody>
    </table>

     

4.  (Optional) Specify how users are authenticated. Specifying the following setting will help make sure that users can connect remotely from computers that don't run Remote Desktop by using network-level authentication. To enable remote desktop connections from computers that are running any version of Remote Desktop, add this setting to your answer file:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Component</th>
    <th align="left">Configuration pass</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Microsoft-Windows-TerminalServices-RDP-WinStationExtensions</p></td>
    <td align="left"><p><strong>4 specialize</strong></p></td>
    <td align="left"><p><code>UserAuthentication=0</code></p></td>
    </tr>
    </tbody>
    </table>

     

    You're now ready to install your Windows image.

For more information about Windows® components and settings that you can add to an answer file, see the [Unattended Windows Setup Reference](p_unattend.unattended_windows_setup_reference_b_unattend).

## <span id="related_topics"></span>Related topics


[Configure Windows Firewall with Advanced Security by Using an Answer File](configure-windows-firewall-with-advanced-security-by-using-an-answer-file.md)

[Automate Windows Setup](automate-windows-setup.md)

[Configure Network Settings in an Unattended Installation](p_adk_online.configure_network_settings_in_an_unattended_installation_win8)

[Windows Deployment Options](windows-deployment-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Enable%20Remote%20Desktop%20by%20Using%20an%20Answer%20File%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




