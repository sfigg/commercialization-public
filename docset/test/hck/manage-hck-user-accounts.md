---
author: joshbax-msft
title: Manage HCK User Accounts
description: Manage HCK User Accounts
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 1a81d85f-ebad-476e-953c-e6edc5c3f016
---

# Manage HCK User Accounts


An HCK user account is automatically created for the person who installed the HCK Controller, and that account is granted administrator privileges within HCK. A person who has a HCK user account with administrator privileges is called a HCK administrator.

HCK administrators can create new HCK user accounts or modify the permissions of existing HCK user accounts.

**Important**  
To create a HCK user account for a domain user, as opposed to a user account for a local user, you must be logged on to the HCK Studio computer as a domain user with administrator rights on the local machine.

 

If you try to create a HCK user account for a domain user while you are logged on as a local user with administrator rights, an error message will appear informing you that the user for whom you are trying to set up permissions does not exist in the domain. The domain referred to in the error message is the local machine and not the domain to which it is connected.

## Assigning Roles


When you create a new user account for a HCK user, you must also assign a datastore role for the user.

The following is a list of the HCK datastore roles that you can assign a user when you create the new user account.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Role</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>hck_DSGuests</p></td>
<td><p>With a guest user account, you can log in without having a user account to access the HCK datastore. This level of access is very restricted and only allows the user to view the results of a job.</p></td>
</tr>
<tr class="even">
<td><p>hck_DSUsers</p></td>
<td><p>To obtain access to a Microsoft SQL Server database, you must have a corresponding user account for that database.</p>
<p>This user account allows the HCK user to perform several of the basic tasks associated with logo testing. See the permissions table that follows for more details</p></td>
</tr>
<tr class="odd">
<td><p>hck_DSAdministrators</p></td>
<td><p>If a user is assigned this role, that user has administrator privileges on the local system and is able to install a system. Additionally, if the host computer is part of a Windows domain, the Administrator account usually has domain-wide privileges as well.</p></td>
</tr>
<tr class="even">
<td><p>hck_DSOwners</p></td>
<td><p>The datastore owner is a user that has permission to perform all activities in the database. See the permissions table that follows for more details.</p>
<p>To the HCK Studio user interface, the HCK_DSOwners and the HCK_DSAdministrators roles are the same. However, the level of access a user has to the HCK datastore itself when he or she is assigned the HCK_DSOwners role far surpasses the level of access a HCK_DSAdministrators user has. As such, you must only assign the HCK_DSOwners role to users who are very knowledgeable about Microsoft SQL Server.</p></td>
</tr>
</tbody>
</table>

 

**Permissions Table**

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th>hck_DSGuests</th>
<th>hck_DSUsers</th>
<th>hck_DSAdministrators</th>
<th>hck_DSOwners</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Schedule/Run jobs</p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>Create Jobs</p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="odd">
<td><p>Edit Jobs</p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>View Results</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="odd">
<td><p>Delete Jobs</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>Cancel Jobs</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="odd">
<td><p>Add Users</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
<tr class="even">
<td><p>Remove Users</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p>X</p></td>
<td><p>X</p></td>
</tr>
</tbody>
</table>

 

## Creating a HCK User Account


1.  From your controller, select **Start&gt;All Programs&gt; Windows Kits&gt;Hardware Certification Kit&gt;HCK Manager**.

2.  Select **Tool&gt;Management Console**.

3.  In the left pane, expand **Console Root**.

4.  Expand your datastore, right-click **Users**, and then click **New User**.

5.  In the **Datastore User Properties - New User** dialog box, in the top pane, type the user name of the person you are creating a HCK user account for using the format domain\\username, where domain is the user's domain or workgroup name, and username is the user's user name.

    **Note**  
    If you are creating multiple user accounts, separate each user with a semicolon.

     

6.  In the **Datastore Role** pane, select the **HCK\_DSOwners** check box.

    **Warning**  
    You can assign multiple roles to a new user at the same time. To grant this user administrator privileges, select the **hck\_DSAdmins** check box also.

     

7.  Click **OK**.

## Granting Permissions


Complete the following procedure to grant a HCK user permission to run jobs on a machine pool.

1.  From your controller, select **Start&gt;All Programs&gt; Windows Kits&gt;Hardware Certification Kit&gt;HCK Manager**.

2.  Select **Explorers&gt;Job Monitor**.

3.  Select your HCK controller from the drop-down list box at the upper-left corner.

4.  In the **Machine Pool** pane, expand the machine pool hierarchy, right-click the machine pool that you want the user to be able to run a job on, and then click **Properties**.

5.  On the **Security** tab, click **Add**.

6.  In the **User List** dialog box, click the user name, and then click **OK**.

    **Warning**  
    If the user name does not appear in the user list, the user does not have a HCK user account. Create the user account, and then give the user permission to run jobs.

     

7.  In the bottom pane of the **Properties** dialog box, select the **Execute Jobs** check box and clear any check boxes for permissions that you don't want the user to have, and then click **OK**.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Manage%20HCK%20User%20Accounts%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




