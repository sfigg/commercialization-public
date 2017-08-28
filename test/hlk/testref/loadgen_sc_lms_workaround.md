---
title: LoadGen SC LMS Workaround
Description: LoadGen SC LMS Workaround
ms.assetid: 67ad8e97-5533-467d-a59f-cfcd20e378d6
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# LoadGen SC LMS Workaround

Due to a limitation in the HLK scheduling engine, the following steps must be applied to each test machine before any multi-machine tests like LoadGen can be scheduled on them.

## Run Hardware Lab Kit - Prepare client for submission job on every machine in the machine pool.

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

## Get Crash Dump Copy Back Setting for the machine pool

1.  In HLK Studio, choose the **Configuration** option.
2.  Select a machine pool
3.  Right click on the machine pool
4.  Your crash dump setting could be one of the following options:
    -   Disable
    -   Full
    -   Kernel
    -   Mini

## Run Enable Crash Dump Collection job on every machine in the machine pool

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




