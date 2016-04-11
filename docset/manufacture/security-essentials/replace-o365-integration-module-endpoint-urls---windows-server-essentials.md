---
Description: 'Replace O365 Integration Module Endpoint URLs - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.replace\_o365\_integration\_module\_endpoint\_urls\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Replace O365 Integration Module Endpoint URLs - Windows Server Essentials'
---

# Replace O365 Integration Module Endpoint URLs - Windows Server Essentials


If you are a Microsoft Online Service Reseller Agreement (MOSRA) partner, to ensure that customer signup transactions are processed via your portal, replace the endpoint URLs used by the Windows Server Essentials Office 365 integration module.

The integration module uses the following four endpoint URLs:

1.  An Office 365 Enterprise subscription purchase endpoint.

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\MSO\\

    -   Type = REG-SZ

    -   Key name = MOSRASTDBUY

    -   Value = *xxxxx*, where xxxxx is your enterprise subscription purchase URL. For example, Value = http://syndicatepartner.office365.com/enterprisebuy.html

2.  An Office 365 Enterprise subscription trial endpoint.

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\MSO\\

    -   Type = REG-SZ

    -   Key name = MOSRASTDTRY

    -   Value = *xxxxx*, where xxxxx is your enterprise subscription purchase URL. For example, Value = http://syndicatepartner.office365.com/enterprisetry.html

3.  An Office 365 subscription purchase endpoint.

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\MSO\\

    -   Type = REG-SZ

    -   Key name = MOSRALITEBUY

    -   Value = *xxxxx*, where xxxxx is your enterprise subscription purchase URL. For example, Value = http://syndicatepartner.office365.com/smallbizbuy.html

4.  An Office 365 subscription trial endpoint.

    -   HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\MSO\\

    -   Type = REG-SZ

    -   Key name = MOSRALITETRY

    -   Value = *xxxxx*, where xxxxx is your enterprise subscription purchase URL. For example, Value = http://syndicatepartner.office365.com/smallbiztry.html

## <span id="BKMK_O365"></span><span id="bkmk_o365"></span>


**To add an endpoint URL key to the registry**

1.  On the reference computer, click **Start**, type **regedit**, and then press ENTER.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, and then expand **MSO**.

3.  If MSO does not exist, right-click **Windows Server**, point to **New**, click **Key**, and then type **MSO** for the name of the key.

4.  Right-click MSO, and then click **String Value**. Type one of the following endpoint string names for the name of the string:

    -   MOSRASTDBUY

    -   MOSRASTDTRY

    -   MOSRALITEBUY

    -   MOSRALITETRY

5.  Right-click the new string in the right pane, and then click **Modify**.

6.  Type your new endpoint URL in the **Value data** text box, and then click **OK**.

7.  Repeat steps 4-6 for each string name listed in step 4.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Replace%20O365%20Integration%20Module%20Endpoint%20URLs%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




