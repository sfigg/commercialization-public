---
author: joshbax-msft
title: LoadGen SC LMS Workaround
description: LoadGen SC LMS Workaround
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8113dc8b-c48c-4ab5-9b05-2a7ae12731ee
---

# LoadGen SC LMS Workaround


This topic describes a workaround to LoadGen SC LMS.

1.  Open HCK Manager.

2.  On the **Explorers** menu, click **Job Explorer**.

3.  In Job Explorer, press CTRL+Q to open the query pane, and search for jobs where Name Equals **Windows Logo Kit- Prepare client for submission**.

4.  In the **Results** pane, note the **Job ID** for the matching job.

5.  On the **Explorers** menu, click **Job Monitor**.

6.  In **Job Monitor**, navigate to the machine pool that contains the SUT, MC, and SCs that will be used, and highlight all target machines. Make sure to select all stress clients.

7.  Right-click the machine selection and click **Schedule by Job ID**.

8.  In the prompt area, enter the **Job ID** from step 4, and then click **OK**.

9.  In the **Schedule Jobs** window, in the **Local Parameters** pane, set the *WdkSubmissionId* parameter equal to **Client Prepared**.

10. In the toolbar, click **Create Schedule**.

11. Wait for the job to run and all of the selected machines to return to the **Ready** state.

 

 






