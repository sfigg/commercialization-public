---
Description: 'Add Third-Level Domain Names - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_third\_level\_domain\_names\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add Third-Level Domain Names - Windows Server Essentials'
---

# Add Third-Level Domain Names - Windows Server Essentials


To give your customers the ability to request third-level domain names in the Set Up Domain Name Wizard, create and install a code assembly that is used by the Domain Manager in the operating system.

## <span id="Create_a_provider_of_third-level_domain_names"></span><span id="create_a_provider_of_third-level_domain_names"></span><span id="CREATE_A_PROVIDER_OF_THIRD-LEVEL_DOMAIN_NAMES"></span>Create a provider of third-level domain names


To create and install a code assembly that provides third-level domain names to the wizard, do the following:

-   [Add an implementation of the IDomainSignupProvider interface to the assembly](#bkmk-domainsignup)

-   [Add an implementation of the IDomainMaintenanceProvider interface to the assembly](#bkmk-domainmaintenance)

-   [Sign the assembly with an Authenticode signature](#bkmk-signassembly)

-   [Install the assembly on the reference computer](#bkmk-installassembly)

-   [Restart the Windows Server Domain Name Management service](#bkmk-restartservice)

### <span id="BKMK_DomainSignup"></span><span id="bkmk_domainsignup"></span><span id="BKMK_DOMAINSIGNUP"></span>Add an implementation of the IDomainSignupProvider interface to the assembly

The IDomainSignupProvider interface is used to add domain offerings to the wizard.

**To add the IDomainSignupProvider code to the assembly**

1.  Open Visual Studio 2010 or higher as an administrator by right-clicking the program in the **Start** menu and selecting **Run as administrator**.

2.  Click **File**, click **New**, and then click **Project**.

3.  In the **New Project** dialog box, click **Visual C\#**, click **Class Library**, enter a name for the solution, and then click **OK**.

4.  Rename the Class1.cs file. For example, MyDomainNameProvider.cs

5.  Add references to the Wssg.Web.DomainManagerObjectModel.dll, CertManaged.dll, WssgCertMgmt.dll, and WssgCommon.dll files.

6.  Add the following using statements.

    ``` syntax
    using System.Collections.ObjectModel;
    using System.Net;
    using System.Net.Sockets;
    using Microsoft.WindowsServerSolutions.Certificates;
    using Microsoft.WindowsServerSolutions.CertificateManagement;
    using Microsoft.WindowsServerSolutions.Common;
    using Microsoft.Win32;
    ```

7.  Change the namespace and the class header to match the following example.

    ``` syntax
    namespace Microsoft.WindowsServerSolutions.RemoteAccess.Domains
    {
        public class MyDomainNameProvider : IDomainSignupProvider
        {
        }
    }
    ```

8.  Add the Initialize method and the required variables to the class, which defines the offerings that are presented in the wizard.

    **Note**  
    The Initialize method defines an identifier for the domain provider that must be unique. A typical way to do this is to define a GUID as the identifier. For more information about creating a GUID, see [Create Guid (guidgen.exe)](http://go.microsoft.com/fwlink/?LinkId=116098).

     

    The following code example shows the Initialize method.

    ``` syntax
    static readonly Guid MyID = new Guid("8C999DF5-696A-47af-822D-94F1673D3397");
    public Guid ID { get { return MyID; } }
    public string Name { get { return "My Provider"; } }
    List<Offering> offerings = new List<Offering>();

    public void Initialize(DomainProviderSettings config)
    {
       var offer1 = new Offering()
       {
          Description = "My Domain Provider",
          Name = "Offering 1",
          ProviderID = ID,
          MoreInfoUrl = new Uri("http://www.contoso.com"),
          MembershipServiceName = "My Membership",
          EulaUrl = new Uri("http://www.contoso.com"),
       };

       this.offerings.Add(offer1);
       RegistryKey key = 
          Registry.LocalMachine.CreateSubKey(@"Software\Microsoft\Windows Server\Domain Manager\Settings");
       key.Close();
    }
    ```

9.  Add the GetOfferings method, which returns the list of offerings that were initialized in the previous step. The following code example shows the GetOfferings method.

    ``` syntax
    public ReadOnlyCollection<Offering> GetOfferings()
    {
       return this.offerings.AsReadOnly();
    }
    ```

10. Add the FindOfferingForDomain method, which returns the offering from the list. The following code example shows the FindOfferingForDomain method.

    ``` syntax
    public Offering FindOfferingForDomain(string domain)
    {
       // Return the offering that has the domain name.
       return offerings[0];
    }
    ```

11. Add the SetCredentials method, which defines the credentials that are required to access the offerings. The following code example shows the SetCredentials method.

    ``` syntax
    private string currentUser { get; set; }
    private string currentPassword { get; set; }

    public bool SetCredentials(DomainNameRequest request, 
       DomainProviderCredentials credentials, bool validate)
    {
       currentUser = credentials.UserName;
       currentPassword = credentials.Password;
       if (validate)
       {
          return ValidateCredentials();
       }
       
       return true;
    }
    ```

12. Add the ValidateCredentials method, which validates the credentials defined by SetCredentials. The following code example shows the ValidateCredentials method.

    ``` syntax
    public static readonly string offerUser = "user1@contoso.com";
    public static readonly string offerPassword = "password1";

    public bool ValidateCredentials()
    {
       if (IsUser())
          return string.Equals(currentPassword, offerPassword);
       else
          return false;
    } 

    private bool IsUser()
    {
       return string.Equals(currentUser, offerUser, StringComparison.OrdinalIgnoreCase);
    }
    ```

13. Add the GetAvailableDomainRoots method, which returns the list of root domain names that are supported by the offering specified in the request. This list of root domain names must not be empty. The following code example shows the GetAvailableDomainRoots method.

    ``` syntax
    public ReadOnlyCollection<string> GetAvailableDomainRoots(DomainNameRequest request)
    {
       List<string> list = new List<string>();
       list.Add("domain1.com");
       list.Add("domain1.org");

       return list.AsReadOnly();
    }
    ```

14. Add the GetUserDomainNames method, which returns a list of domain names that the current user already owns, relative to the current offering. This list may be empty. The following code example shows the GetUserDomainNames method.

    ``` syntax
    public static readonly string AvailableDomain1 = "available.domain1.com",
       AvailableDomain2 = "available.domain2.com";
    public static readonly string OccupiedDomain1 = "occupied.domain1.com",
       OccupiedDomain2 = "occupied.domain2.com";

    public ReadOnlyCollection<string> GetUserDomainNames(DomainNameRequest request)
    {
       var userDomains = new List<string>();
       userDomains.Add(OccupiedDomain1);
       userDomains.Add(AvailableDomain1);

       return userDomains.AsReadOnly();
    }
    ```

15. Add the GetUserDomainQuota method, which returns the maximum number of domains that the specified offering allows. If a maximum is not applicable, this method should return 0. The following example shows the GetUserDomainQuota method.

    ``` syntax
    public int GetUserDomainQuota(DomainNameRequest request)
    {
       return 0;
    }
    ```

16. Add the CheckDomainAvailability method, which checks for the availability of the requested domain name and can return a list of suggestions. The following code example shows the CheckDomainAvailability method.

    ``` syntax
    public bool CheckDomainAvailability(DomainNameRequest request, 
       out ReadOnlyCollection<string> suggestions)
    {
       suggestions = null;
       
       return true;
    }
    ```

17. Add the CommitDomain method, which commits the requested domain name. Successful completion of this method implies that the domain name is associated with the user account, the maintenance provider will be called immediately to retrieve the certificate if the state is FullyOperational, and the provider and offering become active. The following code example shows the CommitDomain method.

    ``` syntax
    public DomainStatus CommitDomain(DomainNameRequest request)
    {            
       ReadOnlyCollection<string> suggestions;
       if (!CheckDomainAvailability(request, out suggestions))
       {
          throw new DomainException(FailureReason.InvalidDomainName, null, null);
       }
                
       return DomainStatus.Ready;
    }
    ```

18. Add the ReleaseDomain method, which informs the provider that the user wants to release the domain name. The following code example shows the ReleaseDomain method.

    ``` syntax
    public bool ReleaseDomain(DomainNameRequest request)
    {
       return true;
    }
    ```

19. Add the GetProviderLandingUrl method, which returns the URL for landing page in the domain signup workflow. The following code example shows the GetProviderLandingUrl method.

    ``` syntax
    public Url GetProviderLandingUrl(DomainNameRequest request)
    {
       return new Url("www.contoso.com");
    }
    ```

20. Add the GetDomainMaintenanceProvider method, which returns an instance of IDomainMaintenanceProvider that is used for domain maintenance tasks. This method is called after the CommitDomain method is successful, and when the Domain Manager starts. The following code example shows the GetDomainMaintenanceProvider method.

    ``` syntax
    public IDomainMaintenanceProvider GetDomainMaintenanceProvider()
    {
       return new MyDomainMaintenanceProvider();
    }
    ```

**Important**  
Save the project but do not close it. You will add to it in the next procedure, and you will not be able to build the project until you complete the next procedure.

 

### <span id="BKMK_DomainMaintenance"></span><span id="bkmk_domainmaintenance"></span><span id="BKMK_DOMAINMAINTENANCE"></span>Add an implementation of the IDomainMaintenanceProvider interface to the assembly

The IDomainMaintenanceProvider is used to maintain the domain after it is created.

**To add the IDomainMaintenanceProvider code to the assembly**

1.  Add the class header for the domain maintenance provider. Ensure that the name you define for the provider matches the name in the GetDomainMaintenanceProvider method that you previously defined.

    ``` syntax
    public class MyDomainMaintenanceProvider : IDomainMaintenanceProvider
    {
    }
    ```

2.  Add the Activate method, which sets the active provider. The following code example shows the Activate method.

    ``` syntax
    string DomainName { get; set; }
    protected DomainProviderSettings Settings { get; set; }

    public void Activate(DomainProviderSettings settings, 
       DomainNameConfiguration config, DomainProviderCredentials credentials)
    {
       Settings = settings;
       SetCredentials(credentials);
       DomainName = config.AutoConfiguredAnywhereAccessFullName.Punycode;
    }
    ```

3.  Add the Deactivate method, which is used to deactivate all actions. The following code example shows the Deactivate method.

    ``` syntax
    public void Deactivate()
    {
       //Deactivate all actions
    }
    ```

4.  Add the SetCredentials method, which updates the user credentials. For example, this method may be called to update credentials that are no longer valid. The following code example shows the SetCredentials method.

    ``` syntax
    protected DomainProviderCredentials Credentials { get; set; }

    public bool SetCredentials(DomainProviderCredentials credentials)
    {
       this.Credentials = credentials;

       return true;
    }
    ```

5.  Add the ValidateCredentials method, which validates the specified credentials. The following code example shows the ValidateCredentials method.

    ``` syntax
    public static readonly string offerUser = "user1@contoso.com";
    public static readonly string offerPassword = "password1";
     
    public bool ValidateCredentials()
    {
       if (string.Equals(this.Credentials.UserName, 
          offerUser, 
          StringComparison.OrdinalIgnoreCase) && 
             string.Equals(this.Credentials.Password, offerPassword))
          return true;
                
       return false;
    }
    ```

6.  Add the GetPublicAddress method, which returns external IP address of the server. The following code example shows the GetPublicAddress method.

    ``` syntax
    public IPAddress GetPublicIPAddress()
    {
       string PublicIP = "0.0.0.0";
       using (RegistryKey key = ProductInfo.RegKey.OpenSubKey("Domain Manager\\Settings", true))
       {
          PublicIP = (key == null) ? "0.0.0.0" : key.GetValue("PublicIP", "0.0.0.0").ToString();
       }
       IPAddress ip = IPAddress.Parse(PublicIP);

       if (PublicIP == "0.0.0.0")
       {
          string strHostName = Dns.GetHostName();
          IPHostEntry ipEntry = Dns.GetHostEntry(strHostName);

          IPAddress[] addr = ipEntry.AddressList;
          foreach (IPAddress add in addr)
          {
             if (add.AddressFamily == AddressFamily.InterNetwork)
             {
                return add;
             }
          }
       }
       else
       {
          return IPAddress.Parse(PublicIP);
       }
             
       return null;  
    }
    ```

7.  Add the SubmitCertificateRequest method, which submits the certificate request for the currently configured domain name.

    ``` syntax
    string cert=null;

    public void SubmitCertificateRequest(string certificateRequest)
    {
       cert = CertManaged.SubmitRequest(certificateRequest, CertCommon.CAServerFQDN + "\\" +    
          CertCommon.CAName, 
          Microsoft.WindowsServerSolutions.CertificateManagement.CRFlags.Base64Header, 
          CertCommon.CATemplate, 
          EncodingFlags.Base64);
    }
    ```

8.  Add the GetCertificateResponse method, which returns the certificate response if the domain status is FullyOperational. This method is called for both new certificate requests and for certificate renewal requests. The following code example shows the GetCertificateResponse method.

    ``` syntax
    public string GetCertificateResponse(bool renew)
    {
       return cert;
    }
    ```

9.  Add the SubmitRenewCertificateRequest method, which processes the renewal of the certificate. The following code example shows the SubmitRenewCertificateRequest method.

    ``` syntax
    public void SubmitRenewCertificateRequest()
    {
       // Add certificate renewal code 
    }
    ```

10. Add the UpdateDNSRecords method, which updates the DNS records stored by the provider. The following code example shows the UpdateDNS method.

    ``` syntax
    public bool UpdateDnsRecords(IList<DnsRecord> records)
    {
       string UpdateDNS = "true";
       using (RegistryKey key = ProductInfo.RegKey.OpenSubKey("Domain Manager\\Settings", true))
       {
          UpdateDNS = (key == null) ? "true" : key.GetValue("UpdateDNS", "true").ToString();
       }

       return UpdateDNS == "true";
    }
    ```

11. Add the TestConnection method, which attempts to establish a connection to backend service. If this method requires authentication, an appropriate exception should be thrown. The following code example shows the TestConnection method.

    ``` syntax
    public bool TestConnection()
    {
       // Add code to test connection
       
       return true;
    }
    ```

12. Add the GetDomainState method, which returns the current state of the domain. The following code example shows the GetDomainState method.

    ``` syntax
    public DomainState GetDomainState()
    {
       string domainstatus = "FullyOperational";
       long expirationDate = 365;
       using (RegistryKey key = ProductInfo.RegKey.OpenSubKey("Domain Manager\\Settings", true))
       {
          domainstatus = (key == null) ? "Ready" : key.GetValue("DomainStatus", "Ready").ToString();
          expirationDate = Int64.Parse(key.GetValue("ExpirationDate", "365").ToString());
       }

       switch (domainstatus)
       {
          case "Failed":
             return new DomainState(DomainStatus.Failed, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "Ready":
             return new DomainState(DomainStatus.Ready, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "InRenewal":
             return new DomainState(DomainStatus.InRenewal, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "InRenewalCustomerInterventionRequired":
             return new DomainState(DomainStatus.InRenewalCustomerInterventionRequired, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "Pending":
             return new DomainState(DomainStatus.Pending, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "PendingCustomerInterventionRequired":
             return new DomainState(DomainStatus.PendingCustomerInterventionRequired, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          case "RenewalFailed":
             return new DomainState(DomainStatus.RenewalFailed, 
                null, 
                DateTime.Now.AddDays(expirationDate));
          default:
             return new DomainState(DomainStatus.Unknown, 
                null, 
                DateTime.Now.AddDays(expirationDate));                 
          }
    }
    ```

13. Add the GetCertificateState method, which returns the current state of the certificate. The following code example shows the GetCertificateState method.

    ``` syntax
    public CertificateState GetCertificateState(bool renew)
    {
       return new CertificateState(CertificateStatus.Ready, string.Empty);
    }
    ```

14. Save and build the solution.

### <span id="BKMK_SignAssembly"></span><span id="bkmk_signassembly"></span><span id="BKMK_SIGNASSEMBLY"></span>Sign the assembly with an Authenticode signature

You must Authenticode sign the assembly for it to be used in the operating system. For more information about signing the assembly, see [Signing and Checking Code with Authenticode](http://msdn.microsoft.com/library/ms537364(VS.85).aspx#SignCode).

### <span id="BKMK_InstallAssembly"></span><span id="bkmk_installassembly"></span><span id="BKMK_INSTALLASSEMBLY"></span>Install the assembly on the reference computer

Place the assembly in a folder on the reference computer. Make a note of the folder path because you will enter it into the registry in the next step.

### <span id="Add_a_key_to_the_registry"></span><span id="add_a_key_to_the_registry"></span><span id="ADD_A_KEY_TO_THE_REGISTRY"></span>Add a key to the registry

You add a registry entry to define the characteristics and location of the assembly.

**To add a key to the registry**

1.  On the reference computer, click **Start**, enter **regedit**, and then press **Enter**.

2.  In the left pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**, expand **Domain Managers**, and then expand **Providers**.

3.  Right-click **Providers**, point to **New**, and then click **Key**.

4.  Type the identifier for the provider as the name for the key. The identifier is the GUID that you defined for the provider in step 8 of [Add an implementation of the IDomainSignupProvider interface to the assembly](#bkmk-domainsignup).

5.  Right-click the key that you just created, and then click **String Value**.

6.  Type **Assembly** for the name of the string, and then press **Enter**.

7.  Right-click the new **Assembly** string in the right pane, and then click **Modify**.

8.  Type the full path to the assembly file that you previously created, and then click **OK**.

9.  Right-click the key again, and then click **String Value**.

10. Type **Enabled** for the name of the string, and then press **Enter**.

11. Right-click the new **Enabled** string in the right pane, and then click **Modify**.

12. Type **True**, and then click **OK**.

13. Right-click the key again, and then click **String Value**.

14. Type **Type** for the name of the string, and then press **Enter**.

15. Right-click the new **Type** string in the right pane, and then click **Modify**.

16. Type the full class name of your provider defined in the assembly, and then click **OK**.

### <span id="BKMK_RestartService"></span><span id="bkmk_restartservice"></span><span id="BKMK_RESTARTSERVICE"></span>Restart the Windows Server Domain Name Management service

You must restart the Windows Server Domain Management service for the provider to become available to the operating system.

**Restart the service**

1.  Click **Start**, type **mmc**, and then press **Enter**.

2.  If the Services snap-in is not listed in the console, add it by completing the following steps:

    1.  Click **File**, and then click **Add/Remove Snap-in**.

    2.  In the **Available snap-ins** list, click **Services**, and then click **Add**.

    3.  In the **Services** dialog box, ensure that **local computer** is selected, and then click **Finish**.

    4.  Click **OK** to close the **Add/Remove snap-ins** dialog box.

3.  Double-click **Services**, scroll down and select **Windows Server Domain Management**, and then click **Restart the service**.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20Third-Level%20Domain%20Names%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




