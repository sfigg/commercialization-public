---
Description: 'Order and Group Dashboard Tabs - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.order\_and\_group\_dashboard\_tabs\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Order and Group Dashboard Tabs - Windows Server Essentials'
---

# Order and Group Dashboard Tabs - Windows Server Essentials


To change the order of tabs in the Dashboard so that your tab is the first one (on the left) in the row of tabs, add an entry to the registry. You can also affect the grouping of tabs by adding entries to the registry. The order of the tabs can be your main tab followed by Microsoft built-in tabs, followed by any of your additional tabs, and then followed by third-party tabs.

## <span id="Change_the_order_of_the_tabs_in_the_Dashboard"></span><span id="change_the_order_of_the_tabs_in_the_dashboard"></span><span id="CHANGE_THE_ORDER_OF_THE_TABS_IN_THE_DASHBOARD"></span>Change the order of the tabs in the Dashboard


You must add the identifier of the add-in that displays your tab to the registry to define the order.

**To display your tab first in the list of tabs**

1.  On the reference computer, click **Start**, enter **regedit**, and then press **Enter**.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, and then expand **Windows Server**. If the **OEM** key does not exist, you must complete the following steps to create it:

    1.  Right-click **Windows Server**, point to **New**, and then click **Key**.

    2.  Type **OEM** for the name of the key.

3.  Right-click **OEM**, point to **New**, and then click **String Value**.

4.  Type **DashboardMainTabID** as the string name, and then press **Enter**.

5.  Right-click the new string in the right pane, and then click **Modify**.

6.  Type the GUID that was defined for the top-level tab, and then press **Enter**.

    For more information about creating and identifying top-level tabs, see [Create a Top-Level Tab](http://msdn.microsoft.com/library/gg513957) in the Windows Server Solutions SDK.

7.  Save the changes to the registry.

8.  You must also include the GUID for your main top-level tab in the list of identifiers for grouping tabs. To do this, perform the steps listed in **Change the grouping of tabs in the Dashboard**.

## <span id="Change_the_grouping_of_tabs_in_the_Dashboard"></span><span id="change_the_grouping_of_tabs_in_the_dashboard"></span><span id="CHANGE_THE_GROUPING_OF_TABS_IN_THE_DASHBOARD"></span>Change the grouping of tabs in the Dashboard


To ensure that your tabs are grouped together and included in the list of built-in Microsoft tabs, add the identifiers to the registry.

**To change the grouping of tabs**

1.  If regedit is not open, click **Start**, enter **regedit**, and then press **Enter**.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, and then expand **Windows Server**.

3.  Right-click **OEM**, point to **New**, and then click **Key**.

4.  Type **DashboardAddins** as the key name, and then press **Enter**.

5.  Right-click **DashboardAddins**, point to **New**, and then click **String Value**.

6.  Type the GUID identifier for your tab as the string name. A value is not needed.

7.  Repeat steps 5 and 6 for each of your tabs and sub-tabs.

8.  Save the registry changes.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Order%20and%20Group%20Dashboard%20Tabs%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




