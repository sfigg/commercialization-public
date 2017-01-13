---
title: CleanPC CSP
description: The CleanPC configuration service provider (CSP) allows removal of user-installed and pre-installed applications, with the option to persist user data. This CSP was added in Windows 10, version 1703.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# CleanPC CSP

> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The CleanPC configuration service provider (CSP) allows removal of user-installed and pre-installed applications, with the option to persist user data. This CSP was added in Windows 10, version 1703.

The following diagram shows the CleanPC configuration service provider in tree format.

![eUICCs csp diagram](images/provisioning-csp-cleanpc.png)

<a href="" id="cleanpc"></a>**CleanPC**  
<p style="margin-left: 20px">Root node for the CleanPC configuration service provider.</p>

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCWithoutRetainingUserData**  
<p style="margin-left: 20px">A CleanPC operation without any retention of user data.

<p style="margin-left: 20px">Data type is integer.

<p style="margin-left: 20px">The only supported operation is Execute.

<a href="" id="cleanpcwithoutretaininguserdata"></a>**CleanPCRetainingUserData**  
<p style="margin-left: 20px">A CleanPC operation with retention of user data. 

<p style="margin-left: 20px">Data type is integer.

<p style="margin-left: 20px">The only supported operation is Execute.
