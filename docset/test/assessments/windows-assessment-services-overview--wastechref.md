---
title: Windows Assessment Services overview
description: Windows Assessment Services overview
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 192c0739-dabd-4ff8-9ac8-5bf6e026757f
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Windows Assessment Services overview


Windows Assessment Services is used to automate the scheduling of assessments from a central location to run on many computers. It is used to find quality issues and to speed up resolution of issues. It is ideal for providing consistency in test processes and for enabling faster resolution of issues.

## How does Windows Assessment Services work?


Windows Assessment Services is test framework that is configured to interact with and store assets such as test computers, Windows images and answer files in Windows Assessment Services shares. When it is installed on Windows Server 2012, Windows Deployment Services (Windows DS) provides Dynamic Driver Provisioning (DDP) and is used for computer discovery and PXE-based image deployment to test computers. When an assessment is completed, the results are copied to the server and stored in the Windows Assessment Services results share so that they are available in the Windows Assessment Services - Client (Windows ASC). The Windows ASC is a graphical user interface that is used to interact with Windows Assessment Services.

Windows Assessment Services and the Windows ASC enable you to do the following:

-   Send multiple job requests from Windows ASC computers to one Windows Assessment Services server

-   Manage computer inventory and assess all or a subset of the test computers that are in inventory

-   Create projects using various computers and various images

-   Create jobs that include one or more assessments

-   Run jobs on one or more test computers

-   Run analysis of assessment results on the server to free up test computers for other uses

-   Run analysis of assessment results on a server with greater resources than test computers

-   Rerun analysis of assessment results using updated diagnostics or symbols

-   Monitor job status while the assessment runs on the test computer

-   Access results from the server results share and present them consistently for review and comparison purposes

## Common scenarios


-   Apply an image to a set of specified computers and run specific assessments on those computers to compare computer and image characteristics.

-   Run the same assessment on multiple computers, or multiple assessments on the same computer or multiple assessments on multiple computers.

-   Import results from multiple Windows Assessment Services labs into a central SQL database for generating consolidated reports.

-   Run analysis of assessment results on the server to free up the target computer for other uses, take advantage of the resources on the server to save time running the analysis, and use symbols already loaded on the server.

## Benefits


-   Expedited resolution for quality issues through the collaboration of OEM, ODM, IHV and ISV before the computer goes to manufacturing.

-   An end-to-end testing and validation platform for use in the OEM and ODM factory process that uses Microsoft tests, diagnostics, and debugging expertise.

-   Easily identifiable quality differentiators for OEMs, retailers, and retail customers.

## Limitations


-   Windows Assessment Services supports running a job on a maximum of 150 test computers at the same time. You might see a decrease in performance when assessing more than 150 computers at the same time.

-   The test computers must not be joined to a domain. WinRM doesn’t grant permissions to run programs on domain joined computers.

## Related topics


[Windows Assessment Services](windows-assessment-services-technical-reference.md)

[Windows Assessment Services common scenarios](windows-assessment-services-how-to-topics--wastechref.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Windows%20Assessment%20Services%20overview%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





