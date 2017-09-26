---
title: Configure OOBE.xml
description: Configure your OOBE.xml file to support OEM registration pages
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 09/27/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Configure OOBE.xml

To include your registration pages in OOBE, you must configure the appropriate settings of your OOBE.xml file.

| Element             | Setting             | Description                                                                               |
|:--------------------------|:--------------------------|:------------------------------------------------------------------------------|
| \<registration>     | \<title>            | String. Required to display pages. Text to title the registration page.                   |
| \<registration>     | \<subtitle>         | String. Required to display pages. Text to describe the registration pages.               |
| \<customerinfo>     | \<label>            | String. Text to label Customer Info section on pages. Required to display Customer Info.  |
| \<customerinfo>     | \<defaultvalue>     | True or false. Value to set customerinfo as selected or not. If this field is checked, information from the four input fields will be provided via asymmetric key encryption. If not checked, no information from the four input fields will be provided.                     |
| \<checkbox1>        | \<label>            | String. Text to label checkbox 1. Required to display checkbox.                           |
| \<checkbox1>        | \<defaultvalue>     | True or false. Value to set checkbox 1 as selected or not selected.                       |
| \<checkbox2>        | \<label>            | String. Text to label checkbox 2. Required to display checkbox.                           |
| \<checkbox2>        | \<defaultvalue>     | True or false. Value to set checkbox 2 as selected or not selected.                       |
| \<checkbox3>        | \<label>            | String. Text to label checkbox 3. Required to display checkbox.                           |
| \<checkbox3>        | \<defaultvalue>     | True or false. Value to set checkbox 3 as selected or not selected.                       |
| \<link1>            | \<label>            | String. Label for the link to the HTML file. Required for link 1 to appear.               |
| \<link1>            | \<link>             | Must be linkfile1.html. OOBE searches for these files under the oobe\info folder.         |
| \<link2>            | \<label>            | String. Label for the link to the HTML file. Required for link 2 to appear.               |
| \<link2>            | \<link>             | Must be linkfile2.html. OOBE searches for these files under the oobe\info folder.         |
| \<link3>            | \<label>            | String. Label for the link to the HTML file. Required for link 3 to appear.               |
| \<link3>            | \<link>             | Must be linkfile3.html. OOBE searches for these files under the oobe\info folder.         |
| \<hideSkip>         | \<title>            | True or false. Optional. Controls whether the Skip button is displayed to the user. Default is False, resulting in the skip button being visible.                                                                                                                                |

At least one element (for example, `customerinfo`) is required in order for the registration screens to display during OOBE.

> [!Tip]
> For more information on these settings, and the others you can configure, please see [Oobe.xml Settings](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/oobexml-settings).

## XML example

```xml
<oobe>
    <oem>
      <registration>
        <title>Register your PC</title>
        <subtitle>This page will help Fabrikam know about you.</subtitle>
        <customerinfo>
          <label>Let Fabriakm contact you</label>
          <defaultvalue>true</defaultvalue>
        </customerinfo>
        <checkbox1>
          <label>Use Contoso Antimalware to help protect your PC</label>
          <defaultvalue>true</defaultvalue>
        </checkbox1>
        <checkbox2>
          <label>Let Fabrikam send you offers</label>
        </checkbox2>
        <checkbox3>
          <label>Let Fabrikam send you offers</label>
        </checkbox3>
        <link1>
          <label>Learn more about Contoso Antimalware</label>
        </link1>
        <link2>
          <label>Learn more about Fabrikam offers</label>
        </link2>
        <link3>
          <label>Fabrikam privacy statement</label>
        </link3>
        <hideSkip>true</hideSkip>
      </registration>
    </oem>
</oobe>
```