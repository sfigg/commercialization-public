---
Description: 'Add a Tab to Settings - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_a\_tab\_to\_settings\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add a Tab to Settings - Windows Server Essentials'
---

# Add a Tab to Settings - Windows Server Essentials


To add a tab to Settings on the Dashboard, create and install a code assembly that is used by the Settings Manager in the operating system. To do this, follow these steps:

1.  [Add an implementation of the ISettingsData interface to the assembly](#bkmk-isettingsdata).

2.  [Sign the assembly with an Authenticode signature](#bkmk-signassembly).

3.  [Install the assembly on the reference computer](#bkmk-installassembly).

## <span id="BKMK_ISettingsData"></span><span id="bkmk_isettingsdata"></span><span id="BKMK_ISETTINGSDATA"></span>Add an implementation of the ISettingsData interface to the assembly


The ISettingsData interface is included in the Microsoft.WindowsServerSolutions.Settings namespace of the AdminCommon.dll assembly which is located in \\Program Files\\Windows Server\\Bin.

**To add the ISettingsData code to the assembly**

1.  Open a Visual Studio 2010 or higher as an administrator by right-clicking the program in the **Start** menu and selecting **Run as administrator**.

2.  Click **File**, click **New**, and then click **Project**.

3.  In the **New Project** dialog box, click **Visual C\#**, click **Class Library**, enter **DashboardSettingsPage** for the name for the solution, and then click **OK**.

    **Important**  
    The assembly that is installed on the server must be named DashboardSettingsPage.dll and then copy the dll to %ProgramFiles%\\Windows Server\\Bin\\OEM.

     

4.  Create the control that you want to be used in the tab. In this example the settings control is named MySettingsControl.

5.  Rename the Class1.cs file. For example, MySettingTab.cs.

6.  Add a reference to the AdminCommon.dll file.

7.  Add the following using statement:

    ``` syntax
    using Microsoft.WindowsServerSolutions.Settings;
    ```

8.  Change the namespace and the class header to match the following example:

    ``` syntax
    namespace DashboardSettingsPage
    {
        public class MySettingTab : ISettingsData
        {
        }
    }
    ```

9.  Instantiate an instance of the control that you created for the tab. For example:

    ``` syntax
    private MySettingsControl tab;
    ```

10. Add the constructor for the class. The following code example shows the constructor:

    ``` syntax
    public MySettingTab()
    {
       tab = new MySettingsControl();
    }
    ```

11. Add the Commit method, which submits the setting changes. The following code example shows the Commit method:

    ``` syntax
    void ISettingsData.Commit(bool dismissed)
    {
       // Implement the code that is required to submit your setting changes
    }
    ```

12. Add the TabControl method, which identifies the control for the tab. The following code example shows the TabControl method:

    ``` syntax
    System.Windows.Forms.Control ISettingsData.TabControl
    {
       get { return tab; }
    }
    ```

13. Add the TabId method, which provides a unique identifier for the tab. The following code example shows the TabId method:

    ``` syntax
    private Guid id = Guid.NewGuid();

    Guid ISettingsData.TabId
    {
       get { return id; }
    }
    ```

14. Add the TabOrder method, which returns the order of the tab. The following code example shows the TabOrder method:

    ``` syntax
    int ISettingsData.TabOrder
    {
       get { return 0; }
    }
    ```

    **Note**  
    The tab order is defined by using numbers starting at 0. The Microsoft built-in settings tabs are displayed first and then your tabs are displayed based on the tab order that you define. For example, if you have three settings tabs, you specify the tab order as 0, 1, and 2 based on the order that you want the tabs to be displayed.

     

15. Add the TabTitle method, which provides the title of the tab. The following code example shows the TabTitle method:

    ``` syntax
    string ISettingsData.TabTitle
    {
      get { return "My Settings Tab"; }
    }
    ```

    **Note**  
    The title text can also come from a resource file to accommodate localization needs.

     

16. Save and build the solution.

## <span id="BKMK_SignAssembly"></span><span id="bkmk_signassembly"></span><span id="BKMK_SIGNASSEMBLY"></span>Sign the assembly with an Authenticode signature


You must Authenticode sign the assembly for it to be used in the operating system. For more information about signing the assembly, see [Signing and Checking Code with Authenticode](http://msdn.microsoft.com/library/ms537364(VS.85).aspx#SignCode).

## <span id="BKMK_InstallAssembly"></span><span id="bkmk_installassembly"></span><span id="BKMK_INSTALLASSEMBLY"></span>Install the assembly on the reference computer


After you successfully build the solution, place a copy of the DashboardSettingsPage.dll file in the following folder on the reference computer:

**%Programfiles%\\Windows Server\\Bin\\OEM**

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20a%20Tab%20to%20Settings%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




