---
title: Troubleshooting Assessments
description: Troubleshooting Assessments
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c0ab73ed-ba51-45f7-b498-916f2492154f
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Troubleshooting Assessments


The following information can help you diagnose what causes assessments to fail.

## Assessment Didn't Produce Any Results


If you receive an error message and the assessment didn't produce any results, use this method to view the log files:

-   In the Windows Assessment Console, on the **View Results** page, choose **Total errors**, and then expand the error that appears in the details pane on the right.

-   Choose the link under **Further analysis** to open the folder where the log files are stored. The folder contains AxeLog.etl trace files that you can open in Windows Performance Analyzer (WPA). The folder also contains ErrorWarnings.xml files and AXELog.txt files. The text file is a compilation of all of the Event Trace Log (ETL) files that are produced after the job finishes.

## The Assessment fails to complete


The job completes, but the assessment doesn't run. One of the following error codes might be reported by the assessment:

-   0x80050006

-   0x80004005

This error occurs when maintenance tasks have been registered on the PC but have not completed before the assessment run. This prevents the assessment from running, as maintenance tasks often impact assessment metrics.

To resolve this issue, do one of the following:

1.  Ensure that the computer is connected to a network and is running on AC power. Manually initiate pending maintenance tasks with the following command from an elevated prompt:

    **rundll32.exe advapi32.dll,ProcessIdleTasks**

2.  Disable regular and idle maintenance tasks, and stop all maintenance tasks before running the assessment

## Related topics


[Windows Assessment Toolkit](windows-assessment-toolkit-technical-reference.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Troubleshooting%20Assessments%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





