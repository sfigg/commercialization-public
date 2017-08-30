---
title: LoadGen SC LMS Workaround
description: LoadGen SC LMS Workaround
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 67ad8e97-5533-467d-a59f-cfcd20e378d6
---

# LoadGen SC LMS Workaround


Due to a limitation in the HLK scheduling engine, the following steps must be applied to each test machine before any multi-machine tests like LoadGen can be scheduled on them.

### <span id="Run_Hardware_Lab_Kit_-_Prepare_client_for_submission_job_on_every_machine_in_the_machine_pool."></span><span id="run_hardware_lab_kit_-_prepare_client_for_submission_job_on_every_machine_in_the_machine_pool."></span><span id="RUN_HARDWARE_LAB_KIT_-_PREPARE_CLIENT_FOR_SUBMISSION_JOB_ON_EVERY_MACHINE_IN_THE_MACHINE_POOL."></span>Run Hardware Lab Kit - Prepare client for submission job on every machine in the machine pool.

1.  Open HLK Manager.
2.  On the **Explorers** menu, click **Job Explorer**.
3.  In **Job Explorer**, press CTRL+Q to open the query pane, and search for jobs where **Name Equals Windows Logo Kit- Prepare client for submission**.
4.  In the **Results** pane, note the **Job ID** for the matching job.
5.  On the **Explorers** menu, click **Job Monitor**.
6.  In **Job Monitor**, navigate to the machine pool that contains the SUT, MC, and SCs that will be used, and highlight all target machines. Make sure to select all stress clients.
7.  Right-click the machine selection and click **Schedule by Job ID**.
8.  In the prompt area, enter the **Job ID** from step 4, and then click **OK**.
9.  In the **Schedule Jobs** window, in the Local Parameters pane, set the **WdkSubmissionId** parameter equal to **Client Prepared**.
10. In the toolbar, click **Create Schedule**.
11. Wait for the job to run and all of the selected machines to return to the **Ready state**.

### <span id="Get_Crash_Dump_Copy_Back_Setting_for_the_machine_pool"></span><span id="get_crash_dump_copy_back_setting_for_the_machine_pool"></span><span id="GET_CRASH_DUMP_COPY_BACK_SETTING_FOR_THE_MACHINE_POOL"></span>Get Crash Dump Copy Back Setting for the machine pool

1.  In HLK Studio, choose the **Configuration** option.
2.  Select a machine pool
3.  Right click on the machine pool
4.  Your crash dump setting could be one of the following options:
    -   Disable
    -   Full
    -   Kernel
    -   Mini

### <span id="Run_Enable_Crash_Dump_Collection_job_on_every_machine_in_the_machine_pool"></span><span id="run_enable_crash_dump_collection_job_on_every_machine_in_the_machine_pool"></span><span id="RUN_ENABLE_CRASH_DUMP_COLLECTION_JOB_ON_EVERY_MACHINE_IN_THE_MACHINE_POOL"></span>Run Enable Crash Dump Collection job on every machine in the machine pool

1.  Open HLK Manager.
2.  On the Explorers menu, click Job Explorer.
3.  In Job Explorer, press CTRL+Q to open the query pane, and search for jobs where Name Equals Enable Crash Dump Collection.
    1.  Right click the job and click **Edit**
    2.  In the edit window, switch from **Details** tab to **Parameters** tab
    3.  Check the **ScheduleDisplay** checkbox for **CrashDumpClientSetting** parameter and press CTRL+S to save the change
    4.  In the **Results** pane, note the **Job ID** for the matching job.
    5.  On the **Explorers** menu, click **Job Monitor**.
    6.  In **Job Monitor**, navigate to the machine pool that contains the SUT, MC, and SCs that will be used, and highlight all target machines. Make sure to select all stress clients.
    7.  Right-click the machine selection and click **Schedule by Job ID**.
    8.  In the prompt area, enter the **Job ID** from step 4, and then click **OK**.
    9.  In the **Schedule Jobs** window, in the **Local Parameters** pane, set the **CrashDumpClientSetting** parameter equal to the **Crash Dump Copy Back** setting for the machine pool. The possible values are Disable, Full, Kernel, or Mini.
    10. In the toolbar, click **Create Schedule**.
    11. Wait for the job to run and all of the selected machines to return to the **Ready** state.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20LoadGen%20SC%20LMS%20Workaround%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




