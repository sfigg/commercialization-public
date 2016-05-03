---
title: Analyze results on another device
description: Analyze results on another device
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2775a4c2-6eb5-467c-b7b3-35529930cc16
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Analyze results on another device


You can run an assessment to collect traces on one PC, and analyze the data on another PC or at another time. You might want to collect traces without analysis in order to:

-   Run analysis on a PC with more memory or a faster processor

-   Delay analysis to free up time for other high priority uses of the machines

-   Run on a PC that already has symbols configured

-   Reanalyze assessment data later with updated diagnostic modules or symbols

-   Collect the data on all devices, but analyze only those that meet specific criteria

**To collect trace files without running analysis**

1.  Select a job or assessment to run.

2.  On the **Configure job** screen, select **Collect traces only**.

3.  Run the job.

4.  Trace files for the assessment will be saved to *%UserProfile%\\Documents\\Assessment Results*.

    **Note**  
    Collecting trace files without analysis is not available for all jobs and assessments.

     

## Run analysis on another device


You can load symbols on the PC where you want to analyze trace files. For more information, see [Symbol Support](../wpt/symbol-support.md).

**To run analysis on trace files using WAC**

1.  In the Windows Assessment Console, click **Options**, and then click **Open Results** to see all the job results that are available for viewing.

2.  In the **Select Results** window, select the results that you want to analyze.

3.  Click **Open** to open the results in details view.

    The **Analysis complete** row of the results shows **False**.

4.  Click **Analyze**.

    If you have multiple results open that can be analyzed, you can select which ones to analyze.

## Related topics


[Package a job and run it on another computer](package-a-job-and-run-it-on-another-computer.md)

[Import results](import-results.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Analyze%20results%20on%20another%20device%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





