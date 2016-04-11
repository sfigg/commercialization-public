---
Description: 'Change the Color of the Dashboard and Launchpad -Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.change\_the\_color\_of\_the\_dashboard\_and\_launchpad\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Change the Color of the Dashboard and Launchpad -Windows Server Essentials'
---

# Change the Color of the Dashboard and Launchpad -Windows Server Essentials


To change the color scheme of the Dashboard and the Launchpad, define the colors that you want to use in an XML formatted file. Then, install the .xml file in a folder on the server, and specify the .xml file name in a registry entry.

## <span id="Create_the_xml_file"></span><span id="create_the_xml_file"></span><span id="CREATE_THE_XML_FILE"></span>Create the xml file


Use Notepad, or Visual Studio 2010 or higher, to create the .xml file that contains the tags for the areas that you want to customize. The file can be given any name, but it must have a .xml extension. For a description of the areas that can be customized on the Dashboard and Launchpad, see [Dashboard and Launchpad areas that can be changed](#bkmk-dashboard).

The following example shows the possible contents of the .xml file.

**Important**  
The xml elements must be specified in the order listed in the example.

 

**Note**  
All values of the HexValue attribute are examples of hexadecimal values for colors. You can enter any hexadecimal color value that you want to use.

 

``` syntax
<DashboardTheme xmlns="http://www.microsoft.com/HSBS/Dashboard/Branding/2010">

  <!-- Hex color values overwriting default SKU theme colors -->

    <SplashScreenBackgroundColor HexValue="FFFFFFFF"/>
    <SplashScreenBorderColor HexValue="FF000000"/>
    <MainHeaderBackgroundColor HexValue="FF414141"/>
    <MainTabBackgroundColor HexValue="FFFFFFFF"/>
    <MainTabFontColor HexValue="FF999999"/>
    <MainTabHoverFontColor HexValue="FF0072BC"/>
    <MainTabSelectedFontColor HexValue="FF0072BC"/>
    <MainButtonPressedBackgroundColor HexValue="FF0072BC"/>
    <MainButtonFontColor HexValue="FFFFFFFF"/>
    <MainButtonBorderColor HexValue="FF6E6E6E"/>
    <ScrollButtonBackgroundColor HexValue="FFF0F0F0"/>
    <ScrollButtonArrowColor HexValue="FF999999"/>
    <ScrollButtonHoverBackgroundColor HexValue="FF999999"/>
    <ScrollButtonHoverArrowColor HexValue="FF6E6E6E"/>
    <ScrollButtonSelectedBackgroundColor HexValue="FF6E6E6E"/>
    <ScrollButtonSelectedArrowColor HexValue="FFFFFFFF"/>
    <ScrollButtonDisabledBackgroundColor HexValue="FFF8F8F8"/>
    <ScrollButtonDisabledArrowColor HexValue="FFCCCCCC"/>
    <AlertTextBlockBackground HexValue="FFFFFFFF"/>
    <AlertTextBlockFont HexValue="FF000000"/>
    <FontColor HexValue="FF000000"/>
    <SubTabBarBackgroundColor HexValue="FFFFFFFF"/>
    <SubTabBackgroundColor HexValue="FFFFFFFF"/>
    <SubTabSelectedBackgroundColor HexValue="FF414141"/>
    <SubTabBorderColor HexValue="FF787878"/>
    <SubTabFontColor HexValue="FF787878"/>
    <SubTabHoverFontColor HexValue="FF0072BC"/>
    <SubTabPressedFontColor HexValue="FFFFFFFF"/>
    <ListViewColor HexValue="FFFFFFFF"/>
    <PageBorderColor HexValue="FF999999"/>    
    <LaunchpadButtonHoverBorderColor HexValue="FF6BA0B4"/>
    <LaunchpadButtonHoverBackgroundColor HexValue="FF003DE6"/>
    <ClientArrowColor HexValue="FFFFFFFF"/>
    <ClientGlyphColor HexValue="FFFFFFFF"/>
    <SplitterColor HexValue="FF83C6E2"/>
    <HomePageBackColor     HexValue="FFFFFFFF"/>
    <CategoryNotExpandedBackColor HexValue="FFFFB343"/>
    <CategoryExpandedBackColor HexValue="FFF26522"/>
    <CategoryNotExpandedForeColor HexValue="FF2A2A2A"/>
    <CategoryExpandedForeColor HexValue="FFFFFFFF"/>
    <HomePageTaskListForeColor    HexValue="FF2A2A2A"/>
    <HomePageTaskListBackColor HexValue="FFEAEAEA"/>
    <HomePageTaskListHoverForeColor      HexValue="FF2A2A2A"/>
    <HomePageTaskListItemBorderColor     HexValue="FF999999"/>
    <HomePageTaskListSelectedForeColor   HexValue="FFFFFFFF"/>
    <HomePageTaskListSelectedBackColor   HexValue="FFF26522"/>
    <HomePageTaskDetailStatusForeColor   HexValue="FFF26522"/>
    <HomePageTaskDetailDescriptionForeColor     HexValue="FF2A2A2A"/>
    <HomePageLinkForeColor HexValue="FF0072BC"/>
    <HomePageLinkSelectedForeColor HexValue="FF0054A6"/>
    <HomePageLinkHoverForeColor   HexValue="FF0072BC"/>
    <PropertyFormForeColor HexValue="FF2A2A2A"/>
    <PropertyFormTabHoverColor HexValue="FF0072BC"/>
    <PropertyFormTabSelectedColor HexValue="FFFFFFFF"/>
    <PropertyFormTabSelectedBackColor HexValue="FF414141"/>
    <TaskPanelBackColor HexValue="FFFFFFFF"/>
    <TaskPanelItemForeColor HexValue="FF2A2A2A"/>
    <TaskPanelGroupTitleForeColor HexValue="FF2A2A2A"/>
    <TaskPanelGroupTitleBackColor HexValue="FFCCCCCC"/>
    <DashboardClientBackColor HexValue="FF004050"/>
    <DashboardClientTitleColor HexValue="FFFFFFFF"/>
    <DashboardClientOptionsForeColor HexValue="FFFFFFFF"/>
    <DashboardClientOptionsItemForeColor HexValue="FF2A2A2A"/>
    <DashboardClientHelpForeColor HexValue="FF0054A6"/>
    <ClientSignInForeColor HexValue="FFFFFFFF"/>
    <ClientSignInWaterMarkForeColor HexValue="FF999999"/>
    <ClientSignInUserNameForeColor HexValue="FF2A2A2A"/>
    <ClientSignInPassWordSpecificBackColor HexValue="FFCCCCCC"/>
    <ClientSignInButtonNormalBackColor HexValue="FF003DA5"/>
    <ClientSignInButtonHoverBackColor HexValue="FF003DE6"/>
    <ClientSignInButtonPressedBackColor HexValue="FF003D78"/>
    <ClientSignInButtonDisabledBackColor HexValue="FFCCCCCC"/>
    <ClientSignInPassWordForeColor HexValue="FF2A2A2A"/>
    <LaunchPadBackColor HexValue="FF004050"/>
    <LaunchPadPageTitleColor HexValue="FFFFFFFF"/>
    <LaunchPadItemForeColor HexValue="FFFFFFFF"/>
  <LaunchPadItemHoverColor HexValue="33FFFFFF"/>
  <LaunchPadItemIconBackgroundColor HexValue="F2004050"/>
</DashboardTheme >
```

## <span id="install_the_.xml_file"></span><span id="INSTALL_THE_.XML_FILE"></span>Install the .xml file


1.  On the server, move your mouse to the upper right corner of the screen, and click **Search**.

2.  In the Search box, type **regedit**, and then click the **Regedit** application.

3.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**. If the **OEM** key does not exist, you must complete the following steps to create it:

    1.  Right-click **Windows Server**, point to **New**, and then click **Key**.

    2.  Type **OEM** for the name of the key.

4.  Right-click **OEM**, point to **New**, and then click **String Value**.

5.  Enter **CustomColorScheme** as the name of the string, and then press **Enter**.

6.  Right-click **CustomColorScheme** in the right pane, and then click **Modify**.

7.  Enter the name of the file, and then click **OK**.

8.  Copy the file to %programFiles%\\Windows Server\\Bin\\OEM. If the OEM directory does not exist, create it.

## <span id="BKMK_Dashboard"></span><span id="bkmk_dashboard"></span><span id="BKMK_DASHBOARD"></span>Dashboard and Launchpad areas that can be changed


This section includes examples of Dashboard and Launchpad areas that can be customized.

### <span id="BKMK_Figure1"></span><span id="bkmk_figure1"></span><span id="BKMK_FIGURE1"></span>Figure 1: Sign-in page of the Dashboard

![windows server 2012 essentials dashboard](images/sbs8-adk-dashboard-signin-rc.gif)

### <span id="BKMK_Figure2"></span><span id="bkmk_figure2"></span><span id="BKMK_FIGURE2"></span>Figure 2: Launchpad

![windows sbs launchpad sign-in](images/sbs8-adk-launchpadsignin2.gif)

### <span id="BKMK_Figure3"></span><span id="bkmk_figure3"></span><span id="BKMK_FIGURE3"></span>Figure 3: Sign-in page of the Launchpad

![windows server 2012 essentials launchpad](images/sbs8-adk-launchpad-signin-rc.gif)

### <span id="BKMK_Figure4"></span><span id="bkmk_figure4"></span><span id="BKMK_FIGURE4"></span>Figure 4: Dashboard text

![windows server 2012 essentials navigation pane](images/sbs8-adk-navigation-rc.gif)

### <span id="BKMK_Figure5"></span><span id="bkmk_figure5"></span><span id="BKMK_FIGURE5"></span>Figure 5: Subtab border

![windows subtab with border](images/wse-subtabborder.png)

### <span id="BKMK_Figure6"></span><span id="bkmk_figure6"></span><span id="BKMK_FIGURE6"></span>Figure 6: Task pane

![windows sbs dashboard task pane](images/sbs8-adk-dashboardtaskpane.gif)

### <span id="BKMK_Figure9"></span><span id="bkmk_figure9"></span><span id="BKMK_FIGURE9"></span>Figure 7a: Product Splash Screen

![windows server 2012 essentials splash screen](images/sbs8-adk-productspalshscreen-rc.gif)

### <span id="Figure_7b__Home_Page"></span><span id="figure_7b__home_page"></span><span id="FIGURE_7B__HOME_PAGE"></span>Figure 7b: Home Page

![windows server 2012 essentials home page](images/sbs8-adk-dashboard-homepage-rc.gif)

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Change%20the%20Color%20of%20the%20Dashboard%20and%20Launchpad%20-Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




