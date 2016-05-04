---
author: joshbax-msft
title: Step 6 Select and run tests
description: Step 6 Select and run tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c894c7ed-2be5-489d-988a-5ba72887b971
---

# Step 6: Select and run tests


The **Tests** tab displays all of the tests associated with the features found on your device. You filter and sort the test results by:

-   Level (Basic, Functional, Reliability, Certification, Experiences, Optional)

-   Status

-   Test Name

-   Type (manual, non-distributed, special configuration, multiple machine)

-   Length

-   Target

-   Machine(s)

Because manual tests interrupt the test process to await user input, we recommend that you run them separately from automated tests. Some automated tests require additional parameters before you can run them.

The following image shows the Studio Tests tab.

![hck 2.1 studio tests tab](images/hck-winb-studio-tests-tab.png)

## To run a test


1.  Filter the test results using the **View By** drop-down list.

2.  Select the check box next to each test that you want to run.

3.  To run the selected tests, click **Run Selected**.

    A progress bar appears. A slight delay occurs when you run a test.

    Some tests require additional input before they run. Windows HCK Studio prompts you accordingly for more information. To learn more about any test, select the test from the list and press **F1** key or right-click and select **Help**. To cancel any running test, right-click it and select **Cancel**.

As tests complete, the results of each one is displayed in the **Status** column. A green checkmark means that it passed; a red X means that it failed. The right pane displays project summary information, including target(s) selected, operating systems being tested, product types you qualify for, and status of all tests.

To learn more about the different options on this page, see [HCK Studio - Tests Tab](hck-studio---tests-tab.md).

 

 






