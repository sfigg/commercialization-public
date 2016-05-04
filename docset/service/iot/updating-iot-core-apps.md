---
author: kpacquer
Description: 'OEM and enterprise customers can utilize a set of scripts and tools to deliver app updates for Windows 10 IoT Core (IoT Core) devices.'
ms.assetid: 010c4836-a8ad-4ab9-b5a8-45babcc8a3f3
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Update IoT Core Apps
---

# Update IoT Core Apps


OEM and enterprise customers can utilize a set of scripts and tools to deliver app updates for Windows 10 IoT Core (IoT Core) devices.

To set the scripts to update an IoT Core app, edit the **AppInstall.bat** and **DeployApp.bat** scripts available [here](https://github.com/ms-iot/samples), placing the scripts and the updated app on the device, packaging the scripts, and deploying the update in an IoT Core image using Windows Imaging and Configuration Designer (ICD).

When present, these scripts will run during every boot process for the device and check for an updated version ID on the app. If an updated app with a higher version ID is detected, the scripts will initiate installation by running a temporary app in the foreground while updating the default app.

Edit the following variables in **AppInstall.bat** to set your app and certificates:

-   In **AppInstall.bat** set **defaultappx=** with your app’s file name.
-   In **AppInstall.bat** set **certlist=** with your app’s certificate name.
    **Note**  Multiple certificates can be added by separating certificate names with a space.

     

    ![appinstall.bat screenshot](images/appinstall.png)

Next, edit the following variables in DeployApp.bat to set your app, app ID, and dependencies:

-   In **DeployApp.bat** set **installtype=** to update.
-   In **DeployApp.bat** set **defaultappx=** with your app’s file name.
-   In **DeployApp.bat** set **defaultappxid=** with your app’s ID.
-   In **DeployApp.bat** set **dependencylist=** with your app’s dependencies.
    **Note**   Multiple dependency apps can be added by separating app names with a space.

     

    ![deployappx.bat screenshot](images/deployapp.png)
-   **Optional step:** In **DeployApp.bat** set **tempappx** and **tempappxid** with a temporary app to run in the foreground during your app installation. This will replace the default Microsoft-branded temporary app.

Once you have set variables for **AppInstall.bat** and **DeployApp.bat**, you must place the **AppInstall.bat** and **DeployApp.bat** files, the updated app, the temporary app (optional), and all certificates in ` C:\Windows\AppInstall\`. Then move **OEMCustomization.cmd** from ` <PATH?>` to ` C:\Windows\System32\`. Restarting the device will initiate the app update process.

 

 





