---
author: joshbax-msft
title: Signed Driver Test Workaround for Failover Cluster Kit
description: Signed Driver Test Workaround for Failover Cluster Kit
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: be28a762-f7d3-458a-8784-f7eb2749615d
---

# Signed Driver Test Workaround for Failover Cluster Kit


Updated: May 8, 2008

The job packaging of the CHKLogo-Signed Driver Test contains a problem that affects the 1.2 release of the Windows Server 2008 Failover Cluster Kit. The problem causes false passes if devices or drivers that qualified only for Windows Vista are used in a Windows Server submission and causes false failures in devices and drivers that are qualified only for Windows Server 2008. We have created a workaround that minimally impacts users of the Failover Cluster Kit. This workaround requires users to perform a small, one-time manual intervention on the Driver Test Manager (DTM) controller. The fix is persistent and can be removed only by uninstalling the DTM controller. The change causes an anti-tampering message to appear, which can be ignored.

1.  Open DTM Studio, and then open Job Explorer.

2.  Click the query builder icon and create the following query:

    **Field Name**: Name

    **Operator**: Equals

    **Value**: Run Signed Driver Check

3.  Click **Refresh**.

    Two **Signed Driver Check** jobs appear in the box below.

4.  Select the job with **Automated** as the **Role**, click **The job**, and then click **Edit Job** on the top toolbar. Six tabs (**Details, Parameter, Constraints, LMS, Tasks,** and **Attributes**) appear.

5.  Click the **Parameters** tab.

    Three parameters (TargetOS, WDKSubmissionIDParameter, and WDKFileSigList.txt) appear.

6.  Select the **TargetOS** parameter and then type **/2008** in the **Value** field.

7.  Click **Save Job** on the top toolbar.

8.  To return the other tests into view:

    -   Right-click the query that you created in step 2 and click **Delete Clause**.

    -   To close the query builder pane, click the query builder icon.

    -   To view all cluster tests, click **Refresh**.

 

 






