---
author: joshbax-msft
title: Windows Certification Newsletter - July 23, 2013
description: Windows Certification Newsletter - July 23, 2013
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f2f9c6d-4a13-4908-a57a-e96d359ed0df
---

# Windows Certification Newsletter - July 23, 2013


This newsletter provides up-to-date news about the Windows Certification (formerly Logo) Program and often provides info you can't get anywhere else. Did you get this from a friend? [Subscribe now](http://go.microsoft.com/fwlink/p/?linkID=313282) so you don't miss any important updates or changes.

## In this issue


[Windows Server certification news](#windows)

[HCK QFE 04 now available](#hhhh)

## <a href="" id="windows"></a>Windows Server certification news


### <a href="" id="hck-2-0-retirement-"></a>HCK 2.0 retirement

For testing of systems running Windows Server, HCK 2.0 will be retired at the same time that it will be retired for Windows client testing.

### <a href="" id="errata--new--continued--retired--and-expired-"></a>Errata: New, continued, retired, and expired

Some previously created errata for HCK 2.0 for have been fixed in HCK for Windows 8.1. These errata are now retired. Also, some errata expire every month. Other errata will still be applicable, and of course new errata will be created to address issues.

You can find current errata status [here](http://sysdev.microsoft.com/en-US/Hardware/EC/) or through your TAM.

### Contingencies

Contingencies created to address issues with your product will expire as planned, as the kit version usually has no bearing on contingencies.

Current contingency status can be found [here](http://sysdev.microsoft.com/en-US/Hardware/EC/).

### <a href="" id="catalog-visibility-for-hck-for-windows-8-1--other--products-"></a>Catalog visibility for HCK for Windows 8.1 “other” products

Because of improvements to the testing of class filter drivers in HCK for Windows 8.1, as well as other test improvements that apply to other types of drivers that don’t have a PnP ID associated, it’s now beneficial for customers to be able to see products submitted for Windows Server that aren’t associated with a specific product type. These products will be listed in the “Other” section of the catalog, even though no certification has been awarded.

### <a href="" id="testing-policy-changes-affecting-server-system-submissions-"></a>Testing policy changes affecting server system submissions

To provide flexibility for vendors, and to ensure that the fastest possible memory configuration is tested for certification, a change was made to this test policy: “Test memory at the highest memory clock speed that is supported on the largest memory capacity configuration of the server, regardless of the number of memory channels or DIMM slots.”

The policy now states that if a system isn’t populated with the maximum supported memory during server system testing, this message will appear in the results:

"SMBiosCheckSystemMemoryDeviceTables - That write-up must include the following….” The message provides instructions on what information is required in the Readme file attached to the submission. This information is required because it’s not possible for Microsoft to know the combinations of memory size and memory speed in systems being tested. After review, a manual errata will be applied as appropriate.

### <a href="" id="testing-of-uefi-or-bios-on-class-2-systems-running-windows-server-2012-r2-server-"></a>Testing of UEFI or BIOS on Class 2 systems running Windows Server 2012 R2 Server

We encourage vendors of systems that support Class 2 UEFI implementations (UEFI+CSM) to certify and submit them as UEFI platforms. For Windows Server 2012 R2, we no longer require the Class 2 UEFI systems to certify and submit twice (once for legacy BIOS mode and again for UEFI mode).

### Contact

For further inquiries, please contact <AskWSHC@microsoft.com>.

## <a href="" id="hhhh"></a>HCK QFE 04 now available


For information about QFE updates, see [Windows Hardware Certification Kit QFE Updates](http://msdn.microsoft.com/library/windows/hardware/dn284526.aspx).

To get the latest QFEs for the Windows HCK, run [HCKSetup.exe](http://msdn.microsoft.com/windows/hardware/bg127147). The Windows HCK download includes all previous QFE updates.

[Learn what’s in the QFE](http://msdn.microsoft.com/library/windows/hardware/dn284526.aspx)

[Download and install HCK to get the QFE](http://msdn.microsoft.com/windows/hardware/bg127147)

**Note**  
Before applying the QFE, close all active DTM Studio sessions. Applying this QFE might affect in-progress submissions, so please complete any submissions before applying the QFE. After installing this QFE, you'll need to regenerate any affected submission that was generated before the QFE was installed.

 

## Related topics


[Hardware Dev Center](http://msdn.microsoft.com/en-US/windows/hardware/)

[Windows hardware development kits and tools](http://msdn.microsoft.com/windows/hardware/bg127147)

[Windows hardware development samples](http://code.msdn.microsoft.com/windowshardware/)

[Windows Hardware Certification](http://msdn.microsoft.com/en-US/windows/hardware/gg463010)

[Newsletter archive](http://msdn.microsoft.com/library/windows/hardware/dn339175.aspx)

[Your dashboard](https://sysdev.microsoft.com/hardware/member/)

[Getting started](http://msdn.microsoft.com/library/windows/hardware/gg507680/)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Certification%20Newsletter%20-%20July%2023,%202013%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





