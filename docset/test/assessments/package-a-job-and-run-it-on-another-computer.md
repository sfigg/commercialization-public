---
title: Package a job and run it on another computer
description: Package a job and run it on another computer
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e4271d06-2f50-44d2-b073-bf72b4d37d99
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Package a job and run it on another computer


When you create a job that you want to run on a different computer, you don't have to install the Windows Assessment Toolkit on that computer. You can use the Windows Assessment Console to package that job so that it includes all the necessary files and tools to run on a different computer.

**Important**  
A packaged job can run from a network share, but for best results run the job from the local computer to reduce run-time failures, or performance issues caused by the network.

 

**To package a job to run on a different computer**

1.  To find and start the Windows Assessment Console, click **Start**, type **assessment console**, and then click **Windows Assessment Console**.

2.  In the Windows Assessment Console, select a job from the **Home** page, select a single assessment, create a new job, or open an existing job.

3.  After you open the job, adjust the job settings and the assessment parameters as needed.

4.  Click **Package**.

5.  In the **Package a Job to Run on Another Computer** dialog box, type notes that will help you identify your job when you select results to open and view.

6.  In the **Package path** box, type the location where you want to store the job package. This location can be on the local computer, or removable media such as a USB flash drive.

7.  In the **Results path** box, type the location where you want to store the results. By default, this is the relative path of a \\Results folder in the same location where the job runs.

8.  Click **OK**.

    When the job is packaged, the location where you stored the job will open. You can take the folder to another computer and run the job without installing the Windows Assessment Toolkit by using the RunJob.cmd file that's in the folder.

**To run a packaged job on a different computer**

1.  Take the folder that contains the packaged job to the computer where you want to run the job.

2.  Open the folder and double-click the **RunJob.cmd** file.

3.  In **User Account Control**, click **Yes**.

4.  In the **Assessment Launcher** window, add run notes.

5.  In the **Results path** box, type a new location if you want to change the location that was specified when the job was packaged.

6.  Click **Run Job on this Machine**.

7.  If the **Microsoft Assessment Launcher** window appears, you can cancel the job or click **Details** to monitor the progress of the job.

    **Note**  
    For some assessments, you'll see the **Assessment Launcher** window briefly, but it doesn't persist for job monitoring.

     

8.  Before the job starts, the job checks the computer configuration to make sure that the assessment can run successfully. The job generates error messages, warnings, and informational messages based on the computer configuration and the needs of the assessment.

9.  When the job finishes, the results appear in the Windows Assessment Console and are saved in the \\Results folder that you specified.

After you run a job on a different computer, you can import the results into the results library on the computer where the Windows Assessment Console is installed and compare the results across multiple computers.

## Related topics


[Windows Assessment Console common scenarios](windows-assessment-console-common-scenarios.md)

[Windows Assessment Console](windows-assessment-console.md)

[Compare Results](compare-results.md)

[Import Results](import-results.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Package%20a%20job%20and%20run%20it%20on%20another%20computer%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





