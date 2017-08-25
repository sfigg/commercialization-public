---
title: Step 7 View test results and log files
description: Step 7 View test results and log files
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e010ab9a-f231-4842-8b1c-9aa227610a96
---

# Step 7: View test results and log files


The **Results** tab displays detailed information about each test. As each test completes, the status column updates with the result—pass or fail.

The following image shows the Studio **Results** tab.

![hlk studio results tab](images/hlk-studio-results-tab.png)

## <span id="Troubleshooting_a_failed_test"></span><span id="troubleshooting_a_failed_test"></span><span id="TROUBLESHOOTING_A_FAILED_TEST"></span>Troubleshooting a failed test


If a test fails, you can expand the test details to review the associated log file.

1.  From the list, select a failed test, indicated by a red X or the system crash icon (![system crash icon](images/test-fail-bugcheck-icon.png)).

2.  Expand the **Test Name** node, expand the **Logs** node, and then double-click the log file.

    You can review these log files:

    -   **.log file.** Text dump.

    -   **.wtl file.** Open to view error reports.

    -   **.xml file.** Change file name extension to .wtl to view error reports.

Right-click any test to see additional test details, including:

-   [Bugcheck Summary information](p_hlk.hlk_studio___results_tab#sysx) for system crashes that occur during test runs

-   Task logs

-   Additional files

-   Applied filters

-   Errors

-   Infrastructure (gather and execution logs)

To learn more about the different options on this page, including distributed and multi-device support, see [HLK Studio - Results Tab](p_hlk.hlk_studio___results_tab).

## <span id="Exporting_failed_HLK_jobs"></span><span id="exporting_failed_hlk_jobs"></span><span id="EXPORTING_FAILED_HLK_JOBS"></span>Exporting failed HLK jobs


You can now export a failed job and re-run it on a machine that does not have the HLK Client installed. For more information, see [Exporting a Failed HLK Job](p_hlk.exporting_a_failed_hlk_job).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_hlk\p_sxs_hlk%5D:%20Step%207:%20View%20test%20results%20and%20log%20files%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




