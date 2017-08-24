---
title: Tests
description: Tests
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2064de61-d2de-4655-a07a-13f47c64978a
---

# Tests


Tests map to one or more requirements and are assigned to a specific target (as shown in the following illustration). You can use this mapping to determine which tests are required for each certification submission that you create.

![targetid](images/hck-win8-om-targetid.png)

Each test has a pass/fail status, which is the aggregate of all the test results.

When you schedule a test, the outcome (that is, a **TestResult** object) is instantiated.

Test result status is tracked in the following ways:

-   If a test has any passing result, it's marked as **Passed**, and the total passing count is incremented.

-   If a test is both running and waiting to run, it's marked as **Running**, and the running count is incremented.

-   If a test has a failed result, it's marked as **Failed**, and the total failed count is incremented.

-   If a test has not yet run or has been canceled, it's marked as **NotRun**, and the **NotRun** count is incremented.

The **TotalCount** property represents the number of all the tests that are passing, failing, and not yet run. If a test has previous **Running**/**InQueue** results, the results are deleted when a new test starts.

A **TestResult** object is a test outcome. It's instantiated when a test is scheduled. **TestResult** includes information such as start/end time, pass/fail count, logs, and task results. You can schedule a test to run multiple times, and each test pass has its own result.

## <span id="related_topics"></span>Related topics


[Distributing Tests](distributing-tests.md)

[Scheduling Tests](scheduling-tests.md)

[Machine Sets](machine-sets.md)

[Setting Test Parameters](setting-test-parameters.md)

[Running Tests](running-tests.md)

[Exporting Test Results](exporting-test-results.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Tests%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





