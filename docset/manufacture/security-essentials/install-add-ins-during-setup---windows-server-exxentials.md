---
Description: 'Install Add-Ins During Setup - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.install\_add\_ins\_during\_setup\_\_\_windows\_server\_exxentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Install Add-Ins During Setup - Windows Server Essentials'
---

# Install Add-Ins During Setup - Windows Server Essentials


To install add-ins during setup, use the PostIC.cmd method described in [Add Post-Initial Configuration Customizations (PostIC.cmd) - Windows Server Essentials](add-post-initial-configuration-customizations--posticcmd----windows-server-essentials.md).

Add the following entry to your PostIC.cmd:

``` syntax
C:\Program Files\Windows Server\bin\Installaddin.exe <full path to wssx file> -q
```

The add-in now supports pre-install and customized uninstall steps.

## <span id="BKMK_AddIns"></span><span id="bkmk_addins"></span><span id="BKMK_ADDINS"></span>To implement a pre-install step


The pre-install step is run before installing all **.msi** files specified in addin.xml. When run in the interactive mode, the progress dialog will be shown but without changing the progress. The cancellation button is disabled during pre-install phase.

To implement a pre-install step, add the following contents in addin.xml (directly under Package):

**Note**  
The xml schema must follow this example exactly.

 

``` syntax
<Package xmlns="http://schemas.microsoft.com/WindowsServerSolutions/2010/03/Addins" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
  <Id>...</Id>
  <Version>...</Version>
  <Name>...</Name>
  <Allow32BitOn64BitClients>...</Allow32BitOn64BitClients>
  <ServerBinary>...</ServerBinary>
  <ClientBinary32>...</ClientBinary32>
  <ClientBinary64>...</ClientBinary64>
  <SupportedSkus>...</SupportUrl>  
  <SupportUrl>...</SupportUrl>
  <Location>...</Location>  
  <PrivacyStatement>...</PrivacyStatement>
  <OtherBinaries>...</OtherBinaries> 
  <Preinstall>
<Executable>exefile</Executable>
<NormalArgs>args-for-interactive-mode</NormalArgs>
<SilentArgs>args-for-silent-mode</SilentArgs>
<IgnoreExitCode>true</IgnoreExitCode>
  </Preinstall>
  <UninstallConfirm>...</UninstallConfirm>    
</Package>
<…>
<…>
```

Wherein **exefile** is the executable file in the add-in package to perform the pre-install step, and must be specified. **NormalArgs** specifies arguments to be passed to exefile in command-line when interactive mode is used. In this mode, the exefile can popup some dialogs for user interaction. **SilentArgs** specifies arguments to be passed to exefile in command-line when silent mode is used (-q is specified when invoking installaddin.exe). The exefile should not popup any windows in this mode. If **IgnoreExitCode** is specified with true, the pre-install step is always considered successful, otherwise, exit code 0 indicates success, 1 indicates cancellation, and other values indicate failure. Tags **NormalArgs**, **SilentArgs**, and **IgnoreExitCode** are all optional.

## <span id="To_implement_an_uninstall_step"></span><span id="to_implement_an_uninstall_step"></span><span id="TO_IMPLEMENT_AN_UNINSTALL_STEP"></span>To implement an uninstall step


A customized uninstall step can be used for any of the following:

-   Replace the built-in confirmation dialog.

-   Populate customized dialogs before uninstallation.

-   Perform certain tasks before uninstallation.

To implement an uninstall step, add the following contents in addin.xml (directly under Package):

``` syntax
<Package xmlns="http://schemas.microsoft.com/WindowsServerSolutions/2010/03/Addins" xmlns:i="http://www.w3.org/2001/XMLSchema-instance">
  <Id>...</Id>
  <Version>...</Version>
  <Name>...</Name>
  <Allow32BitOn64BitClients>...</Allow32BitOn64BitClients>
  <ServerBinary>...</ServerBinary>
  <ClientBinary32>...</ClientBinary32>
  <ClientBinary64>...</ClientBinary64>
  <SupportedSkus>...</SupportUrl>  
  <SupportUrl>...</SupportUrl>
  <Location>...</Location>  
  <PrivacyStatement>...</PrivacyStatement>
  <OtherBinaries>...</OtherBinaries> 
  <Preinstall>…</Preinstall>
<UninstallConfirm>
<Executable>full-path-to-exefile</Executable>
<Arguments>command-line-arguments</Arguments>
</UninstallConfirm>
</Package>
```

Wherein **full-path-to-exefile** specifies the exefile already installed on the system. **Arguments** is optional, and specifies the command line arguments for the exefile. The exefile is invoked before the built-in uninstall confirmation dialog pops up.

The exefile can perform following tasks in this phase:

-   Pops up some dialogs for user interaction.

<!-- -->

-   Perform some background tasks.

The exit code of this exe file determines how the uninstall process moves forward:

-   0: the uninstall process continues without populating the built-in confirmation dialog, just as user has already confirmed. (this approach can be used to replace the built-in confirmation dialog);

-   1: the uninstall process is canceled, and finally a canceled message will be shown to user. Everything stays unchanged;

-   Other: the uninstall process continues with built-in confirmation dialog, just like the customized uninstall step is not present.

Any failure invoking the exefile will lead to the same behavior as the exefile returns a code other than 0 or 1.

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Install%20Add-Ins%20During%20Setup%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




