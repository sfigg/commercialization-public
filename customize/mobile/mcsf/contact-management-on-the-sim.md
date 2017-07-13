---
title: Contact management on the SIM
description: Partners can specify that users should be able to read, edit, delete, import, and export contact information on their SIM (basic SIM, USIM, or RUIM). This customization is only available for devices sold in China.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 05bcaee4-c2ee-4e56-8824-208f773e0a40
ms.author: alhopper
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Contact management on the SIM


Partners can specify that users should be able to read, edit, delete, import, and export contact information on their SIM (basic SIM, USIM, or RUIM). This customization is only available for devices sold in China.

<a href="" id="constraints---imagetimeonly"></a>**Constraints:** ImageTimeOnly  

<a href="" id="instructions-"></a>**Instructions:**  
1.  Create a customization answer file using the contents shown in the following code sample.

    ```
    <?xml version="1.0" encoding="utf-8" ?>  
    <ImageCustomizations xmlns="http://schemas.microsoft.com/embedded/2004/10/ImageUpdate"  
                         Name="SIMContactManagement"  
                         Description="Use to specify that users should be able to read, edit, delete, import, and export contact information
                                      on their SIM (basic SIM, USIM, or RUIM)."  
                         Owner=""  
                         OwnerType="OEM"> 
      
      <Static>  

        <Settings Path="People/SIMContactManagement">  
          <Setting Name="EnableSIMAddressBookAndExport" Value="" /> 
       </Settings>  

      </Static>

    </ImageCustomizations>
    ```

2.  Specify an `Owner`.

3.  Set the value of `EnableSIMAddressBookAndExport` to one of the following values:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Value</th>
    <th>Description</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>0 or 'False'</p></td>
    <td><p>Disables the <strong>export contacts to SIM</strong>/<strong>import SIM contacts</strong> button in the <strong>People</strong> settings screen.</p></td>
    </tr>
    <tr class="even">
    <td><p>1 or 'True'</p></td>
    <td><p>Enables the <strong>export contacts to SIM</strong>/<strong>import SIM contacts</strong> button in the <strong>People</strong> settings screen.</p></td>
    </tr>
    </tbody>
    </table>

     

<a href="" id="testing-steps-"></a>**Testing steps:**  
1.  Flash the build containing this customization to a device with a SIM.

2.  Go to the **People** Hub and tap the **+** button to add a new contact.

3.  Verify that you can see the **Create contact in** window, which includes an option for creating the contact in the **SIM**.

4.  Choose where you would like to create the contact, and then add a new contact by filling in a name and phone number.

5.  Go to the People **Settings** screen.

6.  Verify that you can see both an **export contacts to SIM** button and an **import SIM contacts** button.

    -   The **import SIM contacts** button will not be activated unless the SIM you used for testing already contains SIM contacts or the contact you created in step 4 was created in the SIM.

    -   The **export contacts to SIM** button will not be activated unless there are contacts in your Microsoft account.

 

 






