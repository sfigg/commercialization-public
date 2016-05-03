---
author: joshbax-msft
title: Install Microsoft SQL Server
description: Install Microsoft SQL Server
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 57bb4289-ae80-4229-9653-7e9ea3c5fcce
---

# Install Microsoft SQL Server


Windows HCK fully supports SQL Server 2012, and it recognizes any pre-installed instance of SQL Server 2008 R2, SQL server 2008 and SQL Server 2008 R2, 32-bit only.

HCKSetup.exe installs SQL Server 2012 Express with the correct parameters and configuration. If SQL is not installed, this is the preferred method. In addition, we recommended that you uninstall any previous versions of SQL from past HCK versions (such as WLK 1.6).

If you want to use a pre-installed instance of SQL server 2005 32-bit, you must manually modify the registry to bypass the HCKSetup detection that will otherwise block an attempt to install Windows HCK.

## Configure SQL Server 2012


``` syntax
Setup.exe /QUIET /HIDECONSOLE /ACTION=install /FEATURES=SQL,RS /SQLSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /ASSVCACCOUNT="NT AUTHORITY\SYSTEM" /RSSVCACCOUNT="NT AUTHORITY\SYSTEM" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" /INSTANCENAME=MSSQLSERVER /TCPENABLED=1 /NPENABLED=1 /X86 /IAcceptSQLServerLicenseTerms=1
```

## Configure SQL Server 2008 R2


``` syntax
setup.exe /QUIET /HIDECONSOLE /ACTION=install /FEATURES=SQL,RS /SQLSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /ASSVCACCOUNT="NT AUTHORITY\SYSTEM" /RSSVCACCOUNT="NT AUTHORITY\SYSTEM" /SQLSYSADMINACCOUNTS=BUILTIN\ADMINISTRATORS /INSTANCENAME=MSSQLSERVER /TCPENABLED=1 /NPENABLED=1 /IAcceptSQLServerLicenseTerms=1 /X86=True
```

## Configure HCKSetup for SQL Server 2005 32-bit


1.  Make sure that the default SQL named instance of “MSSQLSERVER” exists. Refer to the specific SQL instructions on how to check and create this, if necessary.

2.  Manually edit the registry and add the following key: HKLM\\SOFTWARE\\wow6432Node\\Microsoft\\Microsoft SQL Server\\100\\Machines.

3.  Launch hcksetup normally, select the kits to install, and complete the hcksetup installation.

**Note**  
Due to a potential SQL Server 2005 backward compatibility version mismatch between the copy distributed with Windows HCK and the copy that may be preinstalled, we recommend that you uninstall any preinstalled versions of the kit before launching hcksetup. To uninstall SQL Server instances and SQL Server 2005 backward compatibility instances, click **Control Panel**, click **Uninstall a Program**, and then click **Uninstall**.

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Install%20Microsoft%20SQL%20Server%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




