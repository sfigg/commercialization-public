---
title: Configure OOBE.xml
description: Configure your OOBE.xml file to support OEM registration pages
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 01/23/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Configure OOBE.xml

To include your registration pages in OOBE, you must configure the appropriate settings of your OOBE.xml file.

| Element | Setting | Description | Value |
| ------- | ------ | ----------- | ----- |
| <**oem**> |  |  |  |
|  | \<registration> | Optional. Additional details are below. |
| <**registration**> | | | |
| | \<title> | Required if registration element is used. Text to title the registration pages. | String of up to 25 characters. |
| | \<subtitle> | Required if registration element is used. Text to describe the Registration pages. |
| <**customerinfo**> | | | |
| | \<label> | Text to label the consent checkbox on registration page two. Required to display the customer information fields on registration page one. | String of up to 250 characters. We strongly recommend that you use no more than 100 characters because this length of text will fit on one line. |
| | \<defaultvalue> | Value to set the default state of the consent checkbox. True or False. True means the check box default condition is selected. False means the check box default condition isn't selected. Default is False. If this field is checked, customer information from the four input fields on registration page one will be provided via asymmetric key encryption. If not checked, no information from the four input fields will be provided. |  |
| <**checkbox1**> | | | |
| | \<label> | Text to label checkbox1. Required for checkbox1 to appear on registration page two. | String of up to 250 characters. We strongly recommend that you use no more than 100 characters because this length of text will fit on one line. |
| | \<defaultvalue> | Value to set checkbox1 as selected or not selected. | True or False. True means the check box default condition is selected. False means the check box default condition isn't selected. Default is False. |
| \<**checkbox2**> | | | |
| | \<label> | Text to label checkbox2. Required for checkbox2 to appear on registration page two. | String of up to 250 characters. We strongly recommend that you use no more than 100 characters because this length of text will fit on one line. |
| | \<defaultvalue> | Value to set checkbox3 as selected or not selected. | True or False. True means the check box default condition is selected. False means the check box default condition isn't selected. Default is False. |
| <**checkbox3**> | | | |
| | \<label> | Text to label checkbox3. Required for checkbox3 to appear on registration page two. | String of up to 250 characters. We strongly recommend that you use no more than 100 characters because this length of text will fit on one line. |
| | \<defaultvalue> | Value to set checkbox3 as selected or not selected. | True or False. True means the check box default condition is selected. False means the check box default condition isn't selected. Default is False. |
| <**link1**> | | | |
| | \<label> | Label for the link to the HTML file. Required for link1 to appear on registration page one, underneath the four customer information fields. | String of up to 100 characters.|
| | \<link> | File must be named linkfile1.html. OOBE searches for these files under the oobe\info folder. OOBE searches for files under the appropriate locale and language specific subfolders of oobe\info. | linkfile1.html |
| <**link2**> | | | |
| | \<label> | Label for the link to the HTML file. Required for link2 to appear on registration page two. | String of up to 100 characters.|
| | \<link> | File must be named linkfile2.html. OOBE searches for these files under the oobe\info folder. OOBE searches for files under the appropriate locale and language specific subfolders of oobe\info. | linkfile2.html |
| <**link3**> | | | |
| | \<label> | Label for the link to the HTML file. Required for link3 to appear on registration page two. | String of up to 100 characters.|
| | \<link> | File must be named linkfile3.html. OOBE searches for these files under the oobe\info folder. OOBE searches for files under the appropriate locale and language specific subfolders of oobe\info. | linkfile3.html |
| <**hideSkip**> | | Optional. Controls whether or not the Skip button is displayed to the user on registration page one. | True or False. True means the skip button is not visible to the user. False means the skip button is displayed as an option to the user. Default is False, resulting in the skip button being visible. |

A minimum amount of information is required for the registration pages to display during OOBE. You must provide a page title, a page subtitle, a consent checkbox label (the `customerinfo` element), and at least one checkbox **or** one link.

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
              <label>Let Fabrikam contact you</label>
          </customerinfo>
          <checkbox1>
              <label>Use Contoso Antimalware to help protect your PC</label>
              <defaultvalue>true</defaultvalue>
          </checkbox1>
          <checkbox2>
              <label>Let Fabrikam send you offers</label>
          </checkbox2>
          <checkbox3>
              <label>This is checkbox3, and its default state is unselected</label>
          </checkbox3>
          <link1>
              <label>Fabrikam privacy statement</label>
          </link1>
          <link2>
              <label>Learn more about Contoso Antimalware</label>
          </link2>
          <link3>
              <label>Learn more about Fabrikam offers</label>
          </link3>
          <hideSkip>false</hideSkip>
      </registration>
    </oem>
</oobe>
```

Here are the OEM registration pages that will appear as a result of the XML example above:

![OEM registration page 1](images/oem-registration-page1.png)

![OEM registration page 2](images/oem-registration-page2-customized.png)