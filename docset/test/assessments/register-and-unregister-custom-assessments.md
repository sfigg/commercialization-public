---
title: Register custom assessments
description: Register custom assessments
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b86c6b47-08d0-441a-ba92-3a7be65ebe16
ms.prod: W10
ms.mktglfcycl: plan
ms.sitesec: msdn
---

# Register custom assessments


The assessments that are installed with the Windows Assessment Toolkit are automatically registered when they're installed. However, if you develop your own assessments by using the Assessment Platform APIs, you must manually register the assessments so that they appear in the Windows Assessment Console and the Windows Assessment Services - Client (Windows ASC).

**Note**  
You can use a set of public APIs to create and extend assessments that are compatible with the Assessment Platform. For more information, see [MSDN: Assessment Execution Engine](http://go.microsoft.com/fwlink/?LinkId=236367).

 

You can use the following command-line options to register or unregister custom assessments.

To register an assessment:

**Regasmt***&lt;path\_of\_assessment&gt;*

To unregister an assessment:

**Regasmt/u***&lt;path of assessment&gt;*

**Note**  
**Regasmt.exe** is installed by default when the Windows Assessment Toolkit is installed. By default, **Regasmt.exe** is installed at %PROGRAMFILES%\\Windows Kits\\10\\Assessment and Deployment Kit\\Windows Assessment Toolkit\\x86. There is no x64 version.

You must have administrative rights to run these commands.

 

**To register an assessment**

1.  At an elevated command prompt, type this:

    ``` syntax
    regasmt C:\MyAssessments\example.asmtmanifest.asmtx
    ```

    Where C:\\MyAssessments\\example.asmtmanifest is the path of the assessment. Relative paths are supported.

2.  To register more than one assessment, list the assessments. For example:

    ``` syntax
    regasmt C:\MyAssessments\example.asmtmanifest.asmtx example2.asmtmanifest.asmtx
    ```

**To unregister an assessment**

-   At an elevated command prompt, type this:

    ``` syntax
    regasmt /u C:\MyAssessments\example.asmtmanifest.asmtx
    ```

    **Note**  
    Unregistering an assessment does not uninstall it. You can unregister more than one assessment at a time.

     

## Related topics


[Windows Assessment Toolkit](windows-assessment-toolkit-technical-reference.md)

[Windows Assessment Console common scenarios](windows-assessment-console-common-scenarios.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_assessments\p_assessments%5D:%20Register%20custom%20assessments%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





