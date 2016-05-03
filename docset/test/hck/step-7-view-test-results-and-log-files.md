---
author: joshbax-msft
title: Step 7 View test results and log files
description: Step 7 View test results and log files
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e2dacfae-6e27-4452-af9e-bcdc44703626
---

# Step 7: View test results and log files


The **Results** tab displays detailed information about each test. As each test completes, the status column updates with the result—pass or fail.

The following image shows the Studio Results tab.

![hck 2.1 studio results tab](images/hck-winb-studio-results-tab.png)

## To troubleshoot a failed test


If a test fails, you can expand the test details to review the associated log file.

1.  From the list, select a failed test, indicated by a red X.

2.  Expand the **Test Name** node, expand the **Logs** node, and then double-click the log file.

    You can review these log files:

    -   **.log file.** Text dump.

    -   **.wtl file.** Open to view error reports.

    -   **.xml file.** Change file name extension to .wtl to view error reports.

Right-click any test to see additional test details, including:

-   Task logs.

-   Additional files.

-   Applied filters.

-   Errors.

-   Infrastructure (gather and execution logs).

To learn more about the different options on this page including distributed and multi-device support, see [HCK Studio - Results Tab](hck-studio---results-tab.md).

## Related topics


[Troubleshooting Windows HCK Test Failures](http://go.microsoft.com/fwlink/?LinkId=317856)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Step%207:%20View%20test%20results%20and%20log%20files%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





