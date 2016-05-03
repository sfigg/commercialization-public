---
title: Windows Assessment Services
description: Windows Assessment Services is a test framework used to automate running assessments that measure performance, reliability and functionality on multiple computers in a lab environment.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 133202cf-da0e-48d1-a130-364c9fdcc148
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Windows Assessment Services


Windows Assessment Services is a test framework used to automate running assessments that measure performance, reliability and functionality on multiple computers in a lab environment. It helps you eliminate fragmented, error-prone, expensive, pre-deployment test processes, and enables you to replace multiple steps and inconsistent tools with just one tool.

Windows Assessment Services is included with the Windows ADK.

The Windows Assessment Services - Client (Windows ASC) is the graphical user interface that interacts with Windows Assessment Services. This enables you to manage settings and assets, such as which lab computers to test, which images should be applied to those computers, and which assessments should be run on the test computers. You can use Windows ASC to monitor the progress of a running job, and to view and compare the results that were produced. Additional benefits include being able to import results into a central database for consolidated report generation.

The following diagram shows the workflow for the first-time use of Windows Assessment Services and the client UI:

![windows asc workflow diagram](images/adk-wasc-workflow.jpg)

The Windows Assessment Services Technical Reference provides technical details, advanced how-to information, troubleshooting and related resources. To learn how to use Windows ASC in an end-to-end scenario, see the [Windows Assessment Services step-by-step guide](windows-assessment-services-step-by-step-guide-was.md).

## In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p>[Installing Windows Assessment Services](installing-windows-assessment-services-wastechref.md)</p></td>
<td><p>Learn about system requirements and the installation process for server and client computers.</p></td>
</tr>
<tr class="even">
<td><p>[Windows Assessment Services setup and configuration](windows-assessment-services-setup-and-configuration-wastechref.md)</p></td>
<td><p>Configure Windows Assessment Services server, prepare Windows PE, and add inventory such as computers, images and drivers.</p></td>
</tr>
<tr class="odd">
<td><p>[Windows Assessment Services overview](windows-assessment-services-overview--wastechref.md)</p></td>
<td><p>Learn the benefits, common scenarios, limitations, and dependencies for Windows Assessment Services.</p></td>
</tr>
<tr class="even">
<td><p>[Windows Assessment Services step-by-step guide](windows-assessment-services-how-to-topics--wastechref.md)</p></td>
<td><p>Learn how to install the Windows Assessment Toolkit, configure Windows Assessment Services and the Windows ASC, assess multiple computers, and review results.</p></td>
</tr>
<tr class="odd">
<td><p>[Windows Assessment Services common scenarios](windows-assessment-services-how-to-topics--wastechref.md)</p></td>
<td><p>Automate deployment, running assessments and collecting results. This section includes several advanced how-to topics.</p></td>
</tr>
<tr class="even">
<td><p>[ResultsUtil Command-Line options](resultsutil-command-line-options.md)</p></td>
<td><p>Use the ResultsUtil command-line options to import results into a SQL database.</p></td>
</tr>
<tr class="odd">
<td><p>[Troubleshooting Windows Assessment Services](troubleshooting-windows-assessment-services--wastechref.md)</p></td>
<td><p>Learn about common problems and solutions.</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Windows%20Assessment%20Services%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




