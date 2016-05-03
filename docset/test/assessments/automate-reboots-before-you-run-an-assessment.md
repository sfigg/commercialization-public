---
title: Automate reboots before you run an assessment
description: Automate reboots before you run an assessment
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4aadbc09-9c0a-4b38-b79d-989906c0aa50
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Automate reboots before you run an assessment


Some assessments require the computer to reboot while the assessment is running. If you plan to manually monitor a computer while the assessment is running, you can log on every time that the computer reboots. But if you don't plan to monitor the computer while the assessment is running, you can configure the computer to automatically log on. The procedures in this topic explain:

-   How to configure a computer to log on without prompts by adjusting settings in the registry. We recommend this procedure when you use the Windows Assessment Console to assess a local computer.

-   How to create a user account that will automatically log on to a computer after a reboot. We recommend this procedure for test computers that don't have domain access or other potential network vulnerabilities.

**To adjust registry settings for automatic logon**

1.  Click **Start**, type **Regedit**, and then click **Registry Editor**.

2.  Locate this registry key in Registry Editor:

    **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon**

3.  Double-click the **DefaultUserName** entry, type your user name, and then click **OK**.

4.  Double-click the **DefaultPassword** entry, type your password, and then click **OK**.

    **Security Note:  **

    This password is stored in plain text and presents a security vulnerability. We recommend that you use a test account and remove the key value when you're finished running assessments.

5.  If the **DefaultPassword** value doesn't exist, follow these steps:

    1.  Click **Edit**, click **New**, and then click **String Value**.

    2.  In the **Value Name** box, type **DefaultPassword**.

    3.  In the **Data Type** box, confirm that **REG\_SZ** is selected.

    4.  In the **Value data** box, type your password.

    5.  Click **OK** to save your changes.

    6.  Change the value of the **AutoAdminLogon** key from 0 (FALSE) to 1 (TRUE). This enables the AutoAdminLogon feature.

    7.  Exit Registry Editor.

6.  Reboot the computer and make sure that it logs you on automatically.

    **Note**  
    To bypass the AutoAdminLogon process, and to log on as a different user, hold down the Shift key after you log off or after Windows restarts.

     

When you finish running assessments on the computer, you can change the registry settings back to the original values to follow the regular logon process.

**To prepare a user account and disable secure logon**

1.  Create a single standard user for the computer.

    **Important**  
    -   Don't give the user a password.

    -   Don't allow or configure a connection to a domain.

     

2.  Delete all other users, passwords, and domain connections.

3.  Disable secure logon by following these steps:

    1.  Click **Start**, and then type **netplwiz** to find and open the **User Accounts** dialog box.

    2.  On the **Advanced** tab, clear the **Require users to press Ctrl+Alt+Delete** check box.

This single user account allows the assessment to run on the computer without any monitoring or manual logon steps.

## Related topics


[On/Off Transition Performance](onoff-transition-performance.md)

[Memory Footprint](memory-footprint.md)

[Windows Assessment Console](windows-assessment-console.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Automate%20reboots%20before%20you%20run%20an%20assessment%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





