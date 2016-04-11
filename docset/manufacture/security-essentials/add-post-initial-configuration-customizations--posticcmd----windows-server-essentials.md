---
Description: 'Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_post\_initial\_configuration\_customizations\_\_posticcmd\_\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials'
---

# Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials


Add post-initial configuration customizations by writing your own code, and then calling that code from a script file named PostIC.cmd. When using the PostIC.cmd file, you must adhere to the following guidelines:

-   Your customization code must run silently (it cannot display a user interface).

-   Your customization code cannot initiate a restart of the server. The Initial Configuration will restart the server as the last task.

-   Your customization code must run in three minutes or less.

-   Define your PostIC.cmd file to return a 0 if the code runs successfully. If any other value is returned, the operating system looks for a file named [SetupFailure.cmd](#bkmk-setupfailure), which contains code that should be run if the code in the PostIC.cmd file does not run successfully.

-   Both the PostIC.cmd file and the SetupFailure.cmd file must be located C:\\Windows\\Setup\\Scripts.

**To define post-initial configuration customizations**

1.  Write the code that is called from the PostIC.cmd script.

2.  Using Notepad, create a file called PostIC.cmd and add the call to the code that you created in step 1. Ensure that your code returns a success value.

3.  Save PostIC.cmd in C:\\Windows\\Setup\\Scripts.

4.  (Optional) Create a SetupFailure.cmd file which runs code if PostIC.cmd returns anything other than 0.

### <span id="BKMK_SetupFailure"></span><span id="bkmk_setupfailure"></span><span id="BKMK_SETUPFAILURE"></span>SetupFailure.cmd

You can provide notification of problems in Initial Configuration by using the SetupFailure.cmd. The SetupFailure.cmd file contains the code that you want to run if problems occur. The SetupFailure.cmd file is placed in C:\\Windows\\Setup\\Scripts and is run when either a problem occurs with a setup task or when the PostIC.cmd file returns a value other than 0.

**To define notifications**

1.  Write the code that is called from the SetupFailure.cmd script.

2.  Using Notepad, create a file called SetupFailure.cmd and add the call to the code that you created in step 1. Ensure that your code returns a success value.

3.  Save SetupFailure.cmd in C:\\Windows\\Setup\\Scripts.

## <span id="related_topics"></span>Related topics


[Customize Deployment - Windows Server Essentials](customize-deployment---windows-server-essentials.md)

[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20Post-Initial%20Configuration%20Customizations%20%28PostIC.cmd%29%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




