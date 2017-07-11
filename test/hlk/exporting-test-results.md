---
title: Exporting Test Results
description: Exporting Test Results
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7A7A0619-F709-431A-BE32-478DC511F099
---

# Exporting Test Results


Use the [Export(string outputLocation)](irunexport-export-method.md) method to export a result that can be run standalone to the specified location on the local file system. Before calling Export(), check the value of CanExport to determine whether the test result can be exported.

When you call **Export()**, the Windows Hardware Lab Kit (Windows HLK) verifies these items:

-   A machine is still associated with the test result. If the machine association with the test result has been removed, the result may not be exportable.
-   Tests must have been executed and completed with a passed, failed, or cancelled status.
-   The test run must successfully return infrastructure logs from the client system. These files are necessary to export the test.
-   Only single machine tests can be exported. Tests that require multiple machines to execute are not exportable.
-   Tests must be run using the HLK desktop client. Test runs on OneCore or Proxy Mobile Client systems are not exportable.
-   Tests tagged as non-exportable due to known infrastructure issues or other reasons are not exportable.

If any of the preceding checks fail, a **TestException** is thrown. The **CanExport** method automatically verifies these items without throwing an exception and can be used to filter out non-exportable test results.

The output directory specified by the outputLocation parameter will be created if it doesn't exist. Under the directory specified by outputLocation, two directories and one file will be created:

-   The infrastructure directory contains an installer with an executable called setup(*architecture*).exe, where *architecture* is the architecture of the machine on which the test was originally run. Running setup(*architecture*).exe installs the components required to run the standalone test on a target system.
-   The test directory contains a batch file plus the binaries required to run the test. Copying the directory to the target system and running the run.cmd file from an elevated command prompt from within the directory containing run.cmd starts standalone test execution of the test on the target system. The directory must not contain any spaces, as this will cause some tests to fail.
-   Readme1st.txt contains instructions and notes on how to run the infrastructure installer and the test.

Exporting different tests to the same directory will succeed as long as the same test is not exported to the directory twice. The Infrastructure and readme1st directories will simply be overwritten if they already exist.

For more information, including how to export a failed HLK job from within the HLK, see [Exporting a Failed HLK Job](p_hlk.exporting_a_failed_hlk_job).

## <span id="related_topics"></span>Related topics


[IRunExport Interface](irunexport-interface.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Exporting%20Test%20Results%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





