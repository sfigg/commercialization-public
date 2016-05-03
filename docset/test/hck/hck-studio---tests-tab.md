---
author: joshbax-msft
title: HCK Studio - Tests Tab
description: HCK Studio - Tests Tab
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4fdcadb1-de57-4feb-8b0e-2774fb716c62
---

# HCK Studio - Tests Tab


![hck 2.1 studio tests tab](images/hck-winb-studio-tests-tab.png)

The **Tests** tab displays all of the tests that are associated with the features that are found on a device. You can schedule a test by selecting its corresponding checkbox. You can press **F1** key on any test name to get more information about that test.

You can filter and sort the test results by the following criteria:

-   Level (Basic, Functional, Reliability, Certification, Experiences, Optional)

-   Name

-   Type (manual, distributed, special configuration)

-   Length

**Note**  
A grayed-out test indicates one of the following states:

-   The machine with the selected target is unavailable (debug mode or missing, etc.)

-   The project is opened from a package, which means the date is read-only.

 

## Test Type Definition


The Type column provides additional information about each test. Some tests require additional configuration and/or manual interaction. Use this information in addition to **F1** key to plan your testing strategy.

The **View Details** option defines each icon and displays the number of tests are found for each type. It is important that you review this information before you schedule any test, especially special configuration tests that require additional configuration before they can be run.

![test type details dialog box](images/hck-winb-test-type-details-db.png)

-   **Special Configuration** – this test requires hardware or software configuration changes before it is run; you must read the test documentation to determine what steps are needed.

-   **Manual** – this test requires manual interaction with the test on the target system while the test is running; you must read the test documentation to determine what input is required.

-   **Non-Distributable** – this test is required to run on each target in the target family.

## Test Parameters


Some tests require additional parameters before they can be run. When you select a test that supports parameters, the following parameter dialog appears:

![hck studio test parameter dialog box](images/hck-winb-parameter-db.png)

**Note**  
The parameter dialog displays only when you schedule (run) the test. If you schedule multiple tests that require parameter input, the parameter dialog displays all the parameters. For additional help on each parameter value, click the **F1** key.

 

## Related topics


[Step 6: Select and run tests](step-6-select-and-run-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20HCK%20Studio%20-%20Tests%20Tab%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





