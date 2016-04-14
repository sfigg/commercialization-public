---
Description: 'OEM and enterprise customers can utilize a set of scripts and tools to deliver app updates for Windows 10 IoT Core (IoT Core) devices.'
MS-HAID: 'p\_iotservice.updating\_iot\_core\_apps'
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

     

    ![appinstall.bat screenshot](common/appinstall.png)

Next, edit the following variables in DeployApp.bat to set your app, app ID, and dependencies:

-   In **DeployApp.bat** set **installtype=** to update.
-   In **DeployApp.bat** set **defaultappx=** with your app’s file name.
-   In **DeployApp.bat** set **defaultappxid=** with your app’s ID.
-   In **DeployApp.bat** set **dependencylist=** with your app’s dependencies.
    **Note**   Multiple dependency apps can be added by separating app names with a space.

     

    ![deployappx.bat screenshot](common/deployapp.png)
-   **Optional step:** In **DeployApp.bat** set **tempappx** and **tempappxid** with a temporary app to run in the foreground during your app installation. This will replace the default Microsoft-branded temporary app.

Once you have set variables for **AppInstall.bat** and **DeployApp.bat**, you must place the **AppInstall.bat** and **DeployApp.bat** files, the updated app, the temporary app (optional), and all certificates in ` C:\Windows\AppInstall\`. Then move **OEMCustomization.cmd** from ` <PATH?>` to ` C:\Windows\System32\`. Restarting the device will initiate the app update process.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_iotservice\p_iotservice%5D:%20Update%20IoT%20Core%20Apps%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



