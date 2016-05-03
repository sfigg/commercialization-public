---
title: Deploy Windows using Windows Assessment Services
description: Deploy Windows using Windows Assessment Services
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e86b9140-36dc-4802-b672-ffe94f1eed6a
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Deploy Windows using Windows Assessment Services


There are three ways to set up jobs and associated assets. You can set up a job to perform the following:

-   Assess computers that already have a supported, running operating system.

-   Deploy a supported operating system to a computer by using Windows Assessment Services, and then assess the computer.

-   Use other deployment tools or methods to deploy a supported operating system to a computer, and then assess the computer.

This topic describes all three of these deployment options.

**To add assets to a job and deploy an image**

1.  In the Windows ASC, create or open a job.

2.  Under **Job settings**, click **Overview**, and verify that the **Apply image** check box is selected.

3.  If you want to inject matching Plug and Play drivers from a Dynamic Driver Provisioning driver store during image deployment, select **Dynamic Driver Provisioning**.

4.  Under **Job settings**, click **Assets**, and then click **Add** to select the computers that you want run the job on.

5.  In the **Select Evaluation Assets** window, select the computers that you want to assess, click **Next**, and then click **Finish**.

6.  The computers appear on the right side of the Windows ASC under **Evaluation assets**. Select a computer, click **Change Image**, select the image that you want to apply to that computer, and then click **OK**.

    **Note**  
    The computer and the image architecture must match, except that you can select an x86-based image to deploy to an x64-based computer.

     

**To add assets to a job and use custom deployment**

1.  In the Windows ASC, create or open a job.

2.  Under **Job settings**, click **Overview**, and verify that the **Apply image** check box is selected.

3.  Clear the **Dynamic Driver Provisioning** check box.

4.  Under **Job settings**, click **Assets**, and then click **Add** to select the computers that you want run the job on.

5.  In the **Select Evaluation Assets** window, select the computers that you want to assess, and then click **Next**.

6.  Click **&lt;Use Predeployed Image&gt;**, and then click **Finish**.

    **Note**  
    When you schedule a job by using **&lt;Use Predeployed Image&gt;**, the job does not start until you deploy Windows and run **\\\\%WASServer%\\relax\\scripts\\testmachine\\completedeployment.cmd AUTO** at an elevated command prompt.

     

**To add assets to a job without deploying an image**

1.  In the Windows ASC, create or open a job.

2.  Under **Job settings**, click **Overview**, and then clear the **Apply image** check box.

3.  Under **Job settings**, click **Assets**, and then click **Add** to select the computers that you want run the job on.

4.  In the **Select Evaluation Assets** window, select the computers that you want to assess, and then click **Finish**.

## Related topics


[Windows Assessment Services common scenarios](windows-assessment-services-how-to-topics--wastechref.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Deploy%20Windows%20using%20Windows%20Assessment%20Services%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





