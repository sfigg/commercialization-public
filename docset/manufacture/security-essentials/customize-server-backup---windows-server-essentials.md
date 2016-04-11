---
Description: 'Customize Server Backup - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.customize\_server\_backup\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Customize Server Backup - Windows Server Essentials'
---

# Customize Server Backup - Windows Server Essentials


In addition to the internal hard disks on the server, customers should consider using external USB hard disks for backups. Ideally, the customer would have at least two external hard disks with enough capacity to back up all of the data on the server. If external hard disks are used, the customer can take one disk off-site each night to further protect the data.

## <span id="Turn_off_Server_Backup_by_Default"></span><span id="turn_off_server_backup_by_default"></span><span id="TURN_OFF_SERVER_BACKUP_BY_DEFAULT"></span>Turn off Server Backup by Default


To turn off Server Backup by default you need to set the value of **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows Server\\Deployment\\ServerBackupDisabled** to 1 to turn it off. When this key is set, the Server Backup User interface will not be exposed through Dashboard or Launchpad. This allows you to utilize third-party applications for Server Backup.

**Note**  
If the regkey is updated in a live computer, you must restart wsemgmtsvc to make the change active.

 

**To add “ServerBackupDisabled” registry key and set the value to 1**

1.  On the server, click **Start**, click **Run**, type **regedit** in the **Open** textbox, and then click **OK**.

2.  In the navigation pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, and then expand **Deployment**.

3.  Right-click **Deployment**, click **New**, and then click **DWARD Value**.

4.  For name, enter **ServerBackupDisabled**.

5.  Right-click the name, select **Modify**, enter **1** for the value data, and then click **OK**.

## <span id="Turn_on_Server_Backup"></span><span id="turn_on_server_backup"></span><span id="TURN_ON_SERVER_BACKUP"></span>Turn on Server Backup


To turn on Server Backup after creating **ServerBackupDisabled** registry key, delete the key **HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows Server\\Deployment\\ServerBackupDisabled**. This enables default server backup.

**To delete “Deployment\\ServerBackupDisabled” registry key**

1.  On the server, move your mouse to the upper right corner of the screen, and click **Search**.

2.  In the Search box, type **regedit**, and then click the **Regedit** application.

3.  In the navigation pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, and then expand **Deployment**.

4.  Right-click **ServerBackupDisabled**, and then click **Delete**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Customize%20Server%20Backup%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



