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

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20LoadGen%20SC%20LMS%20Workaround%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




