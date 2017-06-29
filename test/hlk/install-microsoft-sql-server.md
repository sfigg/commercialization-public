---
title: Install Microsoft SQL Server
description: Install Microsoft SQL Server
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 004bb51b-adb9-41b4-8d1a-df662200029b
---

# Install Microsoft SQL Server


**Warning**  HLK does not support SQL Server 2014. You must uninstall SQL Server 2014 prior to installing the HLK.

 

**Warning**  HLK does not support 32-bit versions of SQL Server. Any 32-bit instance must be uninstalled prior to installing the HLK.

 

Windows HLK supports 64-bit versions of SQL Server 2012 and SQL Server 2008R2.

Depending on your operating system, you might need to install additional service packs for SQL prior to installing the HLK.

1.  Enable .NET 2.0/3.x feature from within Server Manager
2.  For SQL Server 2008R2 (not required for SQL Server 2012), do the following:
    -   Install SQL Server 2012 SharedManagementObjects.msi (64-bit) from the following link:
        -   <http://go.microsoft.com/fwlink/p/?linkid=239659&clcid=0x409>
    -   Install SQL Server 2012 SQLSysClrTypes.msi (64-bit) from the following link:
        -   <http://go.microsoft.com/fwlink/p/?linkid=239644&clcid=0x409>

Install SQL using the setup application using the following command line for a unattended install. /QUIET and /HIDECONSOLE flags may be omitted to see any errors that may occur during install.

``` syntax
(setup application) /QUIET /HIDECONSOLE /ACTION=install /FEATURES=SQL,RS /SQLSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCACCOUNT="NT AUTHORITY\SYSTEM" /AGTSVCSTARTUPTYPE=Automatic /ASSVCACCOUNT="NT AUTHORITY\SYSTEM" /RSSVCACCOUNT="NT AUTHORITY\SYSTEM" /SQLSYSADMINACCOUNTS="BUILTIN\ADMINISTRATORS" "%USERDOMAIN%\%USERNAME%" /INSTANCENAME=MSSQLSERVER /TCPENABLED=1 /NPENABLED=1 /IAcceptSQLServerLicenseTerms=1
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk\p_hlk%5D:%20Install%20Microsoft%20SQL%20Server%20%20RELEASE:%20%286/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




