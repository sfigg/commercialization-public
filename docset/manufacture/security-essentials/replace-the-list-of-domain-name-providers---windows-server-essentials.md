---
Description: 'Replace the List of Domain Name Providers - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.replace\_the\_list\_of\_domain\_name\_providers\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Replace the List of Domain Name Providers - Windows Server Essentials'
---

# Replace the List of Domain Name Providers - Windows Server Essentials


To replace the list of domain name providers that is displayed in the Set Up Domain Name Wizard, completing the following tasks:

-   [Create the referral service files](#bkmk-referralfiles)

-   [Add an entry to the registry on the reference computer](#bkmk-addregistry)

## <span id="BKMK_ReferralFiles"></span><span id="bkmk_referralfiles"></span><span id="BKMK_REFERRALFILES"></span>Create the referral service files


The Referral Service Administration Tool creates a set of files that are used to define the list of domain name providers that are displayed in the Set Up Domain Name Wizard. An XML formatted file is created for each worldwide region and contains information for the domain name providers that you specify in the tool. The files that are created by the tool must be located in a folder that can be accessed through a secure link (HTTPS) that you manage on the Internet.

**To create the referral files**

1.  Open the Referral Service Administration Tool.

2.  Click **Add**.

3.  In the Add a Domain Name Provider dialog box, enter the name of the domain name provider.

4.  Add the top-level domains that are supported by the domain name provider. You do this by clicking **Add**, entering the top-level domain identifier, and then selecting the supported regions. You can select **All Regions**.

5.  Enter the description of the domain name provider.

6.  Add the URLs for all websites that are associated with the domain name provider.

7.  If a logo is available for the domain name provider, add the logo by clicking **Change Logo**.

8.  Click **Save**.

9.  Repeat steps 2 through 8 for each domain name provider that you want to list in the wizard.

10. After you add all of the domain name providers, choose the folder where the referral files will be located. Keep in mind when choosing a folder that the referral files must be accessed through an HTTPS link.

11. Click **Generate Files to File System**.

## <span id="BKMK_AddRegistry"></span><span id="bkmk_addregistry"></span><span id="BKMK_ADDREGISTRY"></span>Add an entry to the registry on the reference computer


A registry entry must be added to specify where the operating system can find the referral service files.

**To add a key to the registry**

1.  On the reference computer, click **Start**, enter **regedit**, and then press **Enter**.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, expand **Domain Managers**, and then expand **Providers**.

3.  Right-click the **E423C85D-6B1F-4583-95E0-449D8263BAC4** key, and then click **String Value**.

4.  Type **ReferralServerHttpsUri** for the name of the string, and then press **Enter**.

5.  Right-click the new **ReferralServerHttpsUri** string in the right pane, and then click **Modify**.

6.  Type the HTTPS URL that is used to access the referral files that you created in [Create the referral service files](#bkmk-referralfiles), and then click **OK**.

    **Important**  
    A slash (/) is required at the end of the URL.

     

## <span id="BKMK_ReplaceDomainNameProviders"></span><span id="bkmk_replacedomainnameproviders"></span><span id="BKMK_REPLACEDOMAINNAMEPROVIDERS"></span>Domain name status issues


If you add domain name providers and use an application programming interface (API) in the SDK to set the Unknown, Failed, and CertificateRequestNotSubmitted statuses for the certificate, the customer will receives an incorrect message and configuration result. This is because the cases are handled by exceptions rather than returning a status.

The following domain statuses are failures and should be reported as an error:

-   Failed

-   PendingCustomerInterventionRequired

-   PurchaseFailed

-   DomainNotFound

-   InRenewalCustomerInterventionRequired

-   RenewalFailed

The following domain statuses are successful and should be reported as a success:

-   Ready

-   Pending

-   InRenewal

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Replace%20the%20List%20of%20Domain%20Name%20Providers%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




