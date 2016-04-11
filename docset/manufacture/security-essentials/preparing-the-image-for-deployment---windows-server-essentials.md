---
Description: 'Preparing the Image for Deployment - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.preparing\_the\_image\_for\_deployment\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Preparing the Image for Deployment - Windows Server Essentials'
---

# Preparing the Image for Deployment - Windows Server Essentials


To prepare your Windows Server Essentials image for deployment to other computer hardware, run sysprep.exe to generalizes the image and shuts down the server. When the image is deployed on other computers, the initial configuration will run.

**Note**  
All modifications to the image must be complete before you run sysprep.exe. For more information about sysprep, see [System Preparation (Sysprep) Technical Reference](http://go.microsoft.com/fwlink/?LinkId=214573).

 

**To prepare the image**

1.  Open an elevated command prompt window. Click **Start**, right click **Command Prompt**, and then select **Run as Administrator**.

2.  Run the following command to reset the registry key so that the customer will have the full grace period before the server becomes noncompliant.

    ``` syntax
    %systemroot%\system32\reg.exe add HKLM\Software\Microsoft\ServerInfrastructureLicensing /v Rearm /t REG_DWORD /d 1 /f
    ```

3.  Run the following command for sysprep.

    ``` syntax
    %systemroot%\system32\sysprep\sysprep.exe /generalize 
    ```

**Important**  
If you plan to create server recovery media, you must capture the image and create the recovery media before [Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md). For more information about capturing an image, see [DISM - Deployment Image Servicing and Management Technical Reference](http://go.microsoft.com/fwlink/?LinkId=214571). For more information about creating recovery media, see [Windows Recovery Environment (Windows RE) Technical Reference](http://go.microsoft.com/fwlink/?LinkId=309164).

 

## <span id="related_topics"></span>Related topics


[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Preparing%20the%20Image%20for%20Deployment%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




