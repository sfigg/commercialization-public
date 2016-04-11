---
Description: 'Customize Shared Folders - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.customize\_shared\_folders\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Customize Shared Folders - Windows Server Essentials'
---

# Customize Shared Folders - Windows Server Essentials


During the initial configuration of the server, a set of default server folders are created. This includes shared folders and the client computer backup folder, which are created in the largest data partition on Disk 0. To customize the location and specify additional server folders, create a new storage registry key.

**To create a new Storage registry key**

1.  On the server, move your mouse to the upper right corner of the screen, and click **Search**.

2.  In the Search box, type **regedit**, and then click the **Regedit** application.

3.  In the navigation pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, and then expand **Microsoft**.

4.  Right-click **Windows Server**, click **New**, and then click **Key**.

5.  Name the key Storage.

6.  In the navigation pane, right-click the new Storage registry key, click **New**, and then click **DWORD (32-bit) Value**.

7.  Name the string **CreateFoldersOnSystem**.

8.  Right-click **CreateFoldersOnSystem**, and then click **Modify**. The **Edit String** dialog box appears.

9.  Set the value of this new key to 1, and then click **OK**.

After setting the key, use either of the following two methods to move the folders to a different location or create additional folders.

1.  Use the PostIC.cmd script to move the folders to a different location or to create additional folders. See the following example: [Example 1: Create a custom folder and move the default folders to a new location from PostIC.cmd by using Windows PowerShell](#bkmk-example1).

2.  Use the Windows Server Solutions SDK to move the folders to a different location or to create additional folders. See the following example: [Example 2: Create a custom folder and move an existing folder by using the Windows Server Solutions SDK](#bkmk-example2).

Optionally, leave the data folders on the system drive. This allows the customer or reseller to determine the layout of the data folders on the data drives.

### <span id="BKMK_Example1"></span><span id="bkmk_example1"></span><span id="BKMK_EXAMPLE1"></span>Example 1: Create a custom folder and move the default folders to a new location from PostIC.cmd by using Windows PowerShell

1.  Create a PostIC.cmd file for running post Initial Configuration tasks as detailed in the [Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials](add-post-initial-configuration-customizations--posticcmd----windows-server-essentials.md) section.

2.  Using Notepad, create a file named customizefolders.ps1 in the C:\\Windows\\Setup\\Scripts folder, and then paste the following Windows PowerShell® commands into the file (unmark appropriate lines depending on the desired behavior).

    ``` syntax
# Move the Documents folder to D:\ServerFolders
#Get-WssFolder -name Documents| Move-WssFolder - NewDrive D:\ -Force

# Check for last error. If last error is not null, exit with return code 1
#If ($error[0] -ne $null) { exit 1} 

# Move all folders to D:\ServerFolders
#foreach( $folder in Get-WssFolder )
#{
#    Move-WssFolder $folder -NewDrive D:\ -Force
#}

# Check for last error. If last error is not null, exit with return code 1
#If ($error[0] -ne $null) { exit 1} 

# Create a custom folder named Custom Folder
#Add-WssFolder -Name CustomFolder -Path D:\ServerFolders\CustomFolder -Description "Custom Folder"

# Check for last error. If last error is not null, exit with return code 1
#If ($error[0] -ne $null) { exit 1} 

    exit 0
    ```

3.  Add the following line to the PostIC.cmd file to run this script.

    ``` syntax
    REM Lower the execution policy
    "%programfiles%\Windows Server\bin\WssPowershell.exe" "Set-ExecutionPolicy RemoteSigned"

    REM Execute the folder customization script
    "%programfiles%\Windows Server\bin\WssPowershell.exe" -NoProfile -Noninteractive -command ". %windir%\setup\scripts\customizefolders.ps1;exit $LASTEXITCODE"
    Set error_level=%ERRORLEVEL%

    REM Restore the execution policy to default
    "%programfiles%\Windows Server\bin\WssPowershell.exe" "Set-ExecutionPolicy Restricted"
    Set ERRORLEVEL=%error_level%
    ```

### <span id="BKMK_Example2"></span><span id="bkmk_example2"></span><span id="BKMK_EXAMPLE2"></span>Example 2: Create a custom folder and move an existing folder by using the Windows Server Solutions SDK

The code that you create can be complied as an executable, and then called from the PostIC.cmd file or called directly from an installed add-in.

``` syntax
static void Main(string[] args)
{
 StorageManager storageManager = new StorageManager();
 //Connect to the StorageManager
 storageManager.Connect();
 
 //Move the Documents folder to D:\ServerFolders
 Folder targetFolder = storageManager.Folders.First(folder => folder.Name == "Documents");

 MoveFolderRequest moveRequest = targetFolder.GetMoveRequest(@"D:\");
 moveRequest.MoveFolder();

 //Verify operation was successful, if so print result
 if (moveRequest.Status == OperationStatus.Succeeded)
 {
  Console.WriteLine("Folder {0} now located at {1}", targetFolder.Name, targetFolder.Path);
 }

 string newFolderName = "New Custom Folder";
 string newFolderLocation = @"C:\ServerFolders\New Custom Folder";

 //Create add request based with specific name and location
 CreateFolderRequest request = storageManager.GetCreateFolderRequest(newFolderName, newFolderLocation);

 //Give Guest user read only permission to folder
 request.PermissionsByName.Add(new NamePermission("Guest", Permission.ReadOnly));

 //Create the new folders
 request.CreateFolder();

 //Verify operation was successful, if so print result
 if( request.Status == OperationStatus.Succeeded)
 {
  Folder newFolder = storageManager.Folders.First(folder => folder.Path == newFolderLocation);

  Console.WriteLine("Folder {0} created at {1}", newFolder.Name, newFolder.Path);
 }
}
```

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Customize%20Shared%20Folders%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




