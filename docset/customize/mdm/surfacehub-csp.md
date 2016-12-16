---
title: SurfaceHub CSP
description: The SurfaceHub configuration service provider (CSP) is used to configure Microsoft Surface Hub settings. This CSP was added in Windows 10, version 1511.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 36FBBC32-AD6A-41F1-86BF-B384891AA693
---

# SurfaceHub CSP

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The SurfaceHub configuration service provider (CSP) is used to configure Microsoft Surface Hub settings. This CSP was added in Windows 10, version 1511.

The following diagram shows the SurfaceHub CSP management objects in tree format.

![surface hub diagram](images/provisioning-csp-surfacehub.png)

<a href="" id="--vendor-msft-surfacehub"></a>**./Vendor/MSFT/SurfaceHub**  
The root node for the Surface Hub configuration service provider.

<a href="" id="deviceaccount"></a>**DeviceAccount**  
Node for setting device account information. A device account is a Microsoft Exchange account that is connected with Skype for Business, which allows people to join scheduled meetings, make Skype for Business calls, and share content from the device. See the Surface Hub administrator guide for more information about setting up a device account.

**To use device account from Azure Active Directory**

1.  Set the UserPrincipalName (for Azure AD).
2.  Set a valid Password.
3.  Execute ValidateAndCommit to validate the specified username and password combination against Azure AD.
4.  Get the ErrorContext in case something goes wrong during validation

> [!NOTE]  If the device cannot auto-discover the Exchange server and Session Initiation Protocol (SIP) address from this information, you should specify the ExchangeServer and SipAddress.

 
Here's a SyncML example.

``` syntax
 <SyncML xmlns="SYNCML:SYNCML1.2">
        <SyncBody>
            <Replace>
                <CmdID>1</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/UserPrincipalName</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>user@contoso.com</Data>
                </Item>
            </Replace>
            <Replace>
                <CmdID>2</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/Password</LocURI>
                    </Target>
                    <Meta>
                        <Format xmlns="syncml:metinf">chr</Format>
                    </Meta>
                    <Data>password</Data>
                </Item>
            </Replace>
            <Exec>
                <CmdID>3</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/ValidateAndCommit</LocURI>
                    </Target>
                </Item>
            </Exec>
            <Get>
                <CmdID>4</CmdID>
                <Item>
                    <Target>
                        <LocURI>./Vendor/MSFT/SurfaceHub/DeviceAccount/ErrorContext</LocURI>
                    </Target>
                </Item>
            </Get>
            <Final/> 
        </SyncBody>
    </SyncML>
```

**To use a device account from Active Directory**

1.  Set the DomainName.
2.  Set the UserName.
3.  Set a valid Password.
4.  Execute the ValidateAndCommit node.

<a href="" id="deviceaccount-domainname"></a>**DeviceAccount/DomainName**  
Domain of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.

The data type is char. Supported operation is Get and Replace.

<a href="" id="deviceaccount-username"></a>**DeviceAccount/UserName**  
Username of the device account when you are using Active Directory. To use a device account from Active Directory, you should specify both DomainName and UserName for the device account.

The data type is char. Supported operation is Get and Replace.

<a href="" id="deviceaccount-userprincipalname"></a>**DeviceAccount/UserPrincipalName**  
User principal name (UPN) of the device account. To use a device account from Azure Active Directory or a hybrid deployment, you should specify the UPN of the device account.

The data type is char. Supported operation is Get and Replace.

<a href="" id="deviceaccount-sipaddress"></a>**DeviceAccount/SipAddress**  
Session Initiation Protocol (SIP) address of the device account. Normally, the device will try to auto-discover the SIP. This field is only required if auto-discovery fails.

The data type is char. Supported operation is Get and Replace.

<a href="" id="deviceaccount-password"></a>**DeviceAccount/Password**  
Password for the device account.

The data type is char. Supported operation is Get and Replace. The operation Get is allowed, but it will always return a blank.

<a href="" id="deviceaccount-validateandcommit"></a>**DeviceAccount/ValidateAndCommit**  
This method validates the data provided and then commits the changes.

The data type is char. Supported operation is Execute.

<a href="" id="deviceaccount-email"></a>**DeviceAccount/Email**  
Email address of the device account.

The data type is char.

<a href="" id="deviceaccount-passwordrotationperiod"></a>**DeviceAccount/PasswordRotationPeriod**  
Specifies whether automatic password rotation is enabled. If you enforce a password expiration policy on the device account, use this setting to allow the device to manage its own password by changing it frequently, without requiring you to manually update the account information when the password expires. You can reset the password at any time using Active Directory (or Azure AD).

Valid values:

-   0 - password rotation enabled
-   1 - disabled

The data type is int. Supported operation is Get and Replace.

<a href="" id="deviceaccount-exchangeserver"></a>**DeviceAccount/ExchangeServer**  
Exchange server of the device account. Normally, the device will try to auto-discover the Exchange server. This field is only required if auto-discovery fails.

The data type is char. Supported operation is Get and Replace.

<a href="" id="deviceaccount-calendarsyncenabled"></a>**DeviceAccount/CalendarSyncEnabled**  
Specifies whether calendar sync and other Exchange server services is enabled.

The data type is bool. Supported operation is Get and Replace.

<a href="" id="deviceaccount-errorcontext"></a>**DeviceAccount/ErrorContext**  
If there is an error calling ValidateAndCommit, there is additional context for that error in this node. Here are the possible error values:

<table>
<colgroup>
<col width="15%" />
<col width="20%" />
<col width="65%" />
</colgroup>
<thead>
<tr class="header">
<th>ErrorContext value</th>
<th>Stage where error occured</th>
<th>Description and suggestions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>1</p></td>
<td><p>Unknown</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>2</p></td>
<td><p>Populating account</p></td>
<td><p>Unable to retrieve account details using the username and password you provided.</p>
<ul>
<li>For Azure AD accounts, ensure that UserPrincipalName and Password are valid.</li>
<li>For AD accounts, ensure that DomainName, UserName, and Password are valid.</li>
<li>Ensure that the specified account has an Exchange server mailbox.</li>
</ul></td>
</tr>
<tr class="odd">
<td><p>3</p></td>
<td><p>Populating Exchange server address</p></td>
<td><p>Unable to auto-discover your Exchange server address. Try to manually specify the Exchange server address using the ExchangeServer field.</p></td>
</tr>
<tr class="even">
<td><p>4</p></td>
<td><p>Validating Exchange server address</p></td>
<td><p>Unable to validate the Exchange server address. Ensure that the ExchangeServer field is valid.</p></td>
</tr>
<tr class="odd">
<td><p>5</p></td>
<td><p>Saving account information</p></td>
<td><p>Unable to save account details to the system.</p></td>
</tr>
<tr class="even">
<td><p>6</p></td>
<td><p>Validating EAS policies</p></td>
<td><p>The device account uses an unsupported EAS policy. Make sure the EAS policy is configured correctly according to the admin guide.</p></td>
</tr>
</tbody>
</table>
 
The data type is int. Supported operation is Get.

<a href="" id="hardware"></a>**Hardware**  
Added in the next major update of Windows 10. Node for hardware settings.

<a href="" id="hardware-wakeonpresencedetectedenabled"></a>**Hardware/WakeOnPresenceDetectedEnabled**  
Added in the next major update of Windows 10. True if wake on presence detected is enabled.

The data type is Boolean. Supported operation is Get and Replace.

<a href="" id="maintenancehourssimple-hours"></a>**MaintenanceHoursSimple/Hours**  
Node for maintenance schedule.

<a href="" id="maintenancehourssimple-hours-starttime"></a>**MaintenanceHoursSimple/Hours/StartTime**  
Specifies the start time for maintenance hours in minutes from midnight. For example, to set a 2:00 am start time, set this value to 120.

The data type is int. Supported operation is Get and Replace.

<a href="" id="maintenancehourssimple-hours-duration"></a>**MaintenanceHoursSimple/Hours/Duration**  
Specifies the duration of maintenance window in minutes. For example, to set a 3-hour duration, set this value to 180.

The data type is int. Supported operation is Get and Replace.

<a href="" id="inboxapps"></a>**InBoxApps**  
Node for the in-box app settings.

<a href="" id="inboxapps-skypeforbusiness"></a>**InBoxApps/SkypeForBusiness**
Added in the next major update of Windows 10. Node for the Skype for Business settings.

<a href="" id="inboxapps-skypeforbusiness-domainname"></a>**SkypeForBusiness/DomainName**  
Added in the next major update of Windows 10. Domain of the device account when you are using Active Directory. 

The data type is char. Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome"></a>**InBoxApps/Welcome**  
Node for the welcome screen.

<a href="" id="inboxapps-welcome-autowakescreen"></a>**InBoxApps/Welcome/AutoWakeScreen**  
Automatically turn on the screen using motion sensors.

The data type is bool. Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome-currentbackgroundpath"></a>**InBoxApps/Welcome/CurrentBackgroundPath**  
Background image for the welcome screen. To set this, specify a https URL to a PNG file (only PNGs are supported for security reasons).

The data type is string. Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome-engagementdetection"></a>**InBoxApps/Welcome/EngagementDetection**  
Added in the next major update of Windows 10. 

The data type is Boolean. Supported operation is Get and Replace.

<a href="" id="inboxapps-welcome-meetinginfooption"></a>**InBoxApps/Welcome/MeetingInfoOption**  
Meeting information displayed on the welcome screen.

Valid values:

-   0 - Organizer and time only
-   1 - Organizer, time, and subject. Subject is hidden in private meetings.

The data type is int. Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection"></a>**InBoxApps/WirelessProjection**  
Node for the wireless projector app settings.

<a href="" id="inboxapps-wirelessprojection-pinrequired"></a>**InBoxApps/WirelessProjection/PINRequired**  
Users must enter a PIN to wirelessly project to the device.

The data type is bool. Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection-enabled"></a>**InBoxApps/WirelessProjection/Enabled**  
Enables wireless projection to the device.

The data type is bool. Supported operation is Get and Replace.

<a href="" id="inboxapps-wirelessprojection-channel"></a>**InBoxApps/WirelessProjection/Channel**  
Wireless channel to use for Miracast operation. The supported channels are defined by the Wi-Fi Alliance Wi-Fi Direct specification.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>Works with all Miracast senders in all regions</p></td>
<td><p>1, 3, 4, 5, 6, 7, 8, 9, 10, 11</p></td>
</tr>
<tr class="even">
<td><p>Works with all 5ghz band Miracast senders in all regions</p></td>
<td><p>36, 40, 44, 48</p></td>
</tr>
<tr class="odd">
<td><p>Works with all 5ghz band Miracast senders in all regions except Japan</p></td>
<td><p>149, 153, 157, 161, 165</p></td>
</tr>
</tbody>
</table>

 
The default value is 255. Outside of regulatory concerns, if the channel is configured incorrectly the driver will either not boot, or will broadcast on the wrong channel (which senders won't be looking for).

The data type is int. Supported operation is Get and Replace.

<a href="" id="properties"></a>**Properties**  
Node for the device properties.

<a href="" id="properties-friendlyname"></a>**Properties/FriendlyName**  
Friendly name of the device. This is the name that users see when they want to wirelessly project to the device.

The data type is string. Supported operation is Get and Replace.

<a href="" id="management"></a>**Management**  
Added in the next major update of Windows 10. Node for managing the administrators group.

<a href="" id="management-groupname"></a>**Management/GroupName**  
Added in the next major update of Windows 10. The name of the domain admin group to add to the administrators group on the device.

The data type is string. Supported operation is Get and Replace.

<a href="" id="management-groupsid"></a>**Management/GroupSid**  
Added in the next major update of Windows 10. The SID of the domain admin group to add to the administrators group on the device.

The data type is string. Supported operation is Get and Replace.

<a href="" id="momagent"></a>**MOMAgent**  
Node for the Microsoft Operations Management Suite.

<a href="" id="momagent-workspaceid"></a>**MOMAgent/WorkspaceID**  
GUID identifying the Microsoft Operations Management Suite workspace ID to collect the data. Set this to an empty string to disable the MOM agent.

The data type is string. Supported operation is Get and Replace.

<a href="" id="momagent-workspacekey"></a>**MOMAgent/WorkspaceKey**  
Primary key for authenticating with the workspace.

The data type is string. Supported operation is Get and Replace. The Get operation is allowed, but it will always return an empty string.

 

 






