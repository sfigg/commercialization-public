---
Description: 'Add Health Alerts - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_health\_alerts\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add Health Alerts - Windows Server Essentials'
---

# Add Health Alerts - Windows Server Essentials


A health add-in provides definitions for alerts, health checks, and repairs for network problems. A health add-in consists of xml files that annotate code or data that is used to evaluate health information for a specific feature. Health add-ins are created by developers and installed on the server and client computers by the administrator.

For details about creating a health add-in, see the [Windows Server Solutions SDK](http://go.microsoft.com/fwlink/p/?linkid=248648).

## <span id="Installing_health_add-in_files"></span><span id="installing_health_add-in_files"></span><span id="INSTALLING_HEALTH_ADD-IN_FILES"></span>Installing health add-in files


After the developer has created the xml files, you must place a copy of the files in the appropriate location on the server and client computers.

**To install the xml files on the server**

1.  In the **%ProgramFiles%\\Windows Server\\Bin\\Feature Definitions** folder, create a new folder named **MyHealthAddIn**. Give this folder any name. We suggest that the name of the folder be the same as the feature name.

2.  Copy the Definition.xml and the Definition.xml.config files to the new folder.

3.  If you created binary files for conditions or actions, copy those files to **%ProgramFiles%\\Windows Server\\Bin**.

Client computers run a scheduled task every 6 hours that pulls the XML files to the appropriate location. To force the synchronization between the client computer and the server, manually run the task.

**To install the xml files on the client computer**

1.  Open Task Scheduler.

2.  Run the **HealthDefintionUpdateTask** in Task Scheduler.

    **Note**  
    This task does not install binary files. You must manually copy the binary files to the **%ProgramFiles%\\Windows Server\\Bin** folder on the client computer.

     

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20Health%20Alerts%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




