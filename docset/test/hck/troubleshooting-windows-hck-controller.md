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

 

 







