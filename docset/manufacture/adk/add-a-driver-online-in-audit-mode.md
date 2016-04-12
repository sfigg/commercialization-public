---
Description: Add a Driver Online in Audit Mode
MS-HAID: 'p\_adk\_online.add\_a\_driver\_online\_in\_audit\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Add a Driver Online in Audit Mode
---

# Add a Driver Online in Audit Mode


You can use an answer file to automate the installation of device drivers when the computer is booted in audit mode.

## <span id="bkmk_2"></span><span id="BKMK_2"></span>Adding a Device Driver


The [auditSystem](auditsystem.md) configuration pass processes unattended Setup settings while Windows is running in system context, before a user logs on to the computer in audit mode. The **auditSystem** configuration pass runs only if the computer is booted in audit mode. To add device drivers during the **auditSystem** configuration pass, add the [Microsoft-Windows-PnpCustomizationsNonWinPE](p_unattend.microsoft_windows_pnpcustomizationsnonwinpe_win7_microsoft_windows_pnpcustomizationsnonwinpe) component to your answer file in the **auditSystem** configuration pass, and specify the path for each device driver. After you run Setup, boot Windows in audit mode. You can run the **Sysprep** command with the **/audit** option to configure the computer to start in audit mode the next time that it boots. Or, in the answer file, you can configure the Microsoft-Windows-Deployment\\Reseal\\`Mode` setting to **audit**. For more information, see [Unattended Windows Setup Reference](p_unattend.unattended_windows_setup_reference_b_unattend).

### <span id="To_add_a_device_driver_during_the_auditSystem_configuration_pass"></span><span id="to_add_a_device_driver_during_the_auditsystem_configuration_pass"></span><span id="TO_ADD_A_DEVICE_DRIVER_DURING_THE_AUDITSYSTEM_CONFIGURATION_PASS"></span>To add a device driver during the auditSystem configuration pass

1.  Locate the .inf files that you want to install during audit mode for the device driver.

2.  On your technician computer, open Windows System Image Manager (Windows SIM). Click **Start**, type **Windows System Image Manager**, and then select **Windows System Image Manager**.

3.  Open your answer file and expand the **Components** node to display available settings.

4.  Add the Microsoft-Windows-PnpCustomizationsNonWinPE component to your answer file in the **auditSystem** configuration pass.

5.  Expand the **Microsoft-Windows-PnpCustomizationsNonWinPE** node in the answer file. Right-click **DevicePaths**, and then click **Insert New PathAndCredentials**.

    A new **PathAndCredentials** list item appears.

6.  For each location that you access, add a separate **PathAndCredentials** list item.

7.  In the Microsoft-Windows-PnpCustomizationsNonWinPE component, specify the path of the device driver and the credentials that are used to access the file if the file is on a network share.

    **Note**  
    You can include multiple device-driver paths by adding multiple **PathAndCredentials** list items. If you add multiple list items, you must increment the value of `Key` for each path. For example, if you add two separate driver paths, the first path uses the `Key` value of **1**, and the second path uses the `Key` value of **2**.

     

8.  Save the answer file and close Windows SIM. The answer file must resemble this example:

    ``` syntax
    <?xml version="1.0" encoding="utf-8" ?> 
    <unattend xmlns="urn:schemas-microsoft-com:unattend">
       <settings pass="auditSystem">
          <component name="Microsoft-Windows-PnpCustomizationsNonWinPE" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
             <DriverPaths>
                <PathAndCredentials wcm:keyValue="1" wcm:action="add">
                   <Credentials>
                      <Domain>Fabrikam</Domain> 
                      <Password>MyPassword</Password> 
                      <Username>MyUserName</Username> 
                   </Credentials>
                   <Path>\\networkshare\share\drivers</Path> 
                </PathAndCredentials>
             </DriverPaths>
          </component>
       </settings>
    </unattend>
    ```

9.  Boot in Windows Preinstallation Environment (Windows PE), run Windows Setup, and specify the name of the answer file. For example:

    ``` syntax
    Setup /unattend:C:\unattend.xml
    ```

    The specified answer file is cached to the system so that when you run audit mode, the computer applies settings in the answer file.

    Setup finishes.

10. Run the **Sysprep** command with the **/audit** option to configure the computer to start in audit mode the next time that it boots. For example:

    ``` syntax
    Sysprep /audit /reboot
    ```

    When Windows reboots in audit mode, device drivers that you specified in the answer file are added.

You can use the PNPUtil tool to add, remove, and enumerate drivers on a running operating system. For more information about how to use PNPUtil to add or remove Plug and Play drivers, see [Install a Plug and Play Device](http://go.microsoft.com/fwlink/?LinkId=139151).

## <span id="related_topics"></span>Related topics


[Device Drivers and Deployment Overview](device-drivers-and-deployment-overview.md)

[Add Device Drivers to Windows During Windows Setup](add-device-drivers-to-windows-during-windows-setup.md)

[DISM Driver Servicing Command-Line Options](dism-driver-servicing-command-line-options-s14.md)

[Add and Remove Drivers to an Offline Windows Image](add-and-remove-drivers-to-an-offline-windows-image.md)

[Audit Mode Overview](audit-mode-overview.md)

[Boot Windows to Audit Mode or OOBE](boot-windows-to-audit-mode-or-oobe.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Add%20a%20Driver%20Online%20in%20Audit%20Mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




