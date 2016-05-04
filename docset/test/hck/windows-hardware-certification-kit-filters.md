---
author: joshbax-msft
title: Windows Hardware Certification Kit Filters
description: Windows Hardware Certification Kit Filters
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 12af9334-f448-4391-b2c5-f7a8ef62535c
---

# Windows Hardware Certification Kit Filters


When Microsoft discovers a problem in either a Windows Hardware Certification Kit (HCK) test or in the operating system itself that causes certification tests to fail incorrectly, we create an errata that allows partners to pass the problematic test. Many errata use filters to automatically filter the failure from the submission results.  Filters are applied within Windows HCK Studio.

-   **Errata** – These filters override tests that have errors that cause them to fail incorrectly. These filters apply to the test for all end users.

-   **Contingency** – These filters allow companies to pass certain tests based on a legal agreement with Microsoft to fix device or system bugs within an agreed time period. These are specific to a particular case.

-   **Autotriage** – These filters don’t change the status of a test from fail to pass. They display information on common errors that can cause test failures.

## To install filters


![download image](images/downloadbutton.jpg)[Download the latest HCK Filters](http://sysdev.microsoft.com/member/SubmissionWizard/LegalExemptions/HCKFilterUpdates.cab)

**Note**  
If your HCK environment doesn’t have access to the Internet, you can copy the file to your test server.

 

1.  Review the ReadMe file to learn how to install the filters on the controller.

2.  Download **HCKFilterUpdates.cab** to your controller.

3.  Open the downloaded **HCKFilterUpdates.cab** file.

4.  Click and drag **UpdateFilters.sql** from the zip file to your desktop.

5.  Click and drag the **UpdateFilters.sql** file from your desktop to the **%Program Files (x86)%\\Windows Kits\\***&lt;version&gt;***\\Hardware Certification Kit\\Controller ** directory.

    Where *&lt;version&gt;* is the version of the HCK.

6.  Close all instances of HCK Studio.

7.  From that directory, run the **UpdateFilters.exe** command.

You can install more than one HCKFilterUpdates.cab file to your controller, and you can download and install the latest version of the HCKFilterUpdates.cab file whenever a new one is published.

To determine if the current .cab file is the latest one, see the time stamp in the ReadMe file, or use the RSS feed on the Hardware Dashboard to receive a notification whenever a new filter is available.

## To apply filters


After you install a new HCKFilterUpdates.cab file, the new filters will be automatically applied to new results as they are generated.

For existing results, you must select the **Apply Filters** option on the **Results** tab to reapply the filters to the results.

## Limitations


-   Existing test results, made prior to new filters being added, need to have new filters applied manually. To do this, load the project you want to apply the filters to, and click the **Apply Filters** button as described in the process above.

-   There is no notification that a filter has been applied, but you can view filter results in the test results.

-   If you open a package (.hckx) in HCK Studio that previously contained a filter failed result, HCK Studio will display that result as failed. This is a known issue when opening a package.

## Related topics


[Windows Hardware Certification Kit QFE Updates](windows-hardware-certification-kit-qfe-updates.md)

[Subscribe to the errata filters RSS feed to be alerted when new filters are available](http://sysdev.microsoft.com/member/SubmissionWizard/LegalExemptions/HCKFilterUpdates.xml)

[Review released filters on the Errata Contingency page](https://sysdev.microsoft.com/EC/)

 

 







