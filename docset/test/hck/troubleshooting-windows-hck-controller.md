---
author: joshbax-msft
title: Troubleshooting Windows HCK Controller
description: Troubleshooting Windows HCK Controller
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e1811f2e-4c55-4a74-b4a8-2fb8dc0970ba
---

# Troubleshooting Windows HCK Controller


This topic describes how to troubleshoot issues with the Windows Hardware Certification Kit (Windows HCK) Controller.

For help with problems that occur during Windows HCK Controller setup, see [Troubleshooting Windows HCK Setup](troubleshooting-windows-hck-setup.md).

**In this topic:**

-   [Cannot add test clients after installing the Windows HCK](#adddtest)

-   [Unsupported scenarios](#unsup)

## <a href="" id="adddtest"></a>Cannot add test clients after installing the Windows HCK


After installing Windows HCK, the Windows HCK Controller cannot access the DTMJobs database. This prevents the Windows HCK Controller from responding to new clients or sending updates to existing clients.

To fix this problem, stop and restart the **MSSQLServer** service on the Windows HCK Controller by using Services Management Console (From a command prompt, type services.msc). The **MSSQLServer** service should be set to **Automatic**.

## <a href="" id="unsup"></a>Unsupported scenarios


You must uninstall and reinstall the Windows HCK Controller if you make any of the following changes:

-   Rename the Windows HCK Controller computer.

-   Remove the Windows HCK Controller computer from a domain and add it to a workgroup.

-   Remove the Windows HCK Controller computer from a workgroup and join it to a domain.

## Related topics


[Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Troubleshooting%20Windows%20HCK%20Controller%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





