---
Description: 'Add POR ID - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_por\_id\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add POR ID - Windows Server Essentials'
---

# Add POR ID - Windows Server Essentials


If you are a Microsoft Online Service Partner Agreement (MOSPA) partner for Office 365, to ensure that you are correctly compensated when a subscription request is originated from Windows Server Essentials via the Office 365 Integration Module, you need to create a registry key that contains your partner-of-record identification (POR ID). The following information is read and passed to the service provider through the Office 365 sign-up URLs.

-   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\MSO

-   Type = String Value

-   Key name = Partner

-   Value = xxxxx, where xxxxx is your POR ID

## <span id="BKMK_3rdLevelDomanNames"></span><span id="bkmk_3rdleveldomannames"></span><span id="BKMK_3RDLEVELDOMANNAMES"></span>To add the POR ID key to the registry


1.  On the reference computer, click **Start**, type **regedit**, and then press ENTER.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, and then expand **Windows Server**.

3.  Right-click **Windows Server**, point to **New**, and then click **Key**.

4.  Type **MSO** for the name of the key.

5.  Right-click the key that you just created, and then click **String Value**.

6.  Type **Partner** for the name of the string, and then press ENTER.

7.  Right-click the new **Partner** string in the right pane, and then click **Modify**.

8.  Type your POR ID in the **Value data** text box, and then click **OK**.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20POR%20ID%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




