---
author: kpacquer
Description: Develop MMOS test applications
MS-HAID: 'p\_phManuRetail.develop\_mmos\_test\_applications'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Develop MMOS test applications
---

# Develop MMOS test applications


Developing user-mode tests in MMOS is very similar to developing user-mode applications.

## <span id="Test_development_in_MMOS"></span><span id="test_development_in_mmos"></span><span id="TEST_DEVELOPMENT_IN_MMOS"></span>Test development in MMOS


Use the following steps to create, deploy, and test a MMOS test application.

1.  Create an app.

2.  Add code to test the desired component and display or send those results as desired. For example, this sample code can be used to display a console message in MMOS.

    ``` syntax
#include <stdio.h>
#include <Windows.h>

    int main()
    {
        int i = 0;
        for(;;)
        {    
            wprintf(L"Test");
            Sleep(500);
            if (i == 12)
            {
                wprintf(L"Done");
                break;
            }
            i++;
        }
        return 0;
    }
    ```

3.  Build the test application in Visual Studio.

4.  Locate the binaries generated when you built the app. Typically they are in a subdirectory of the projects folder, such as *\\MyProject\\arm\\debug\\*.

5.  Sign the executable by using the sign.cmd script in the “%WPDKCONTENTROOT%\\Tools\\bin\\i386” folder, as shown in the example below.

    ``` syntax
    sign.cmd ApplicationForDrivers.exe
    ```

6.  To test your app, copy it to the device in the C:\\Data\\test directory by using FTP and run it via Telnet. For more info, see [Deploy and test a user-mode test application in MMOS](deploy-and-test-a-user-mode-test-application-in-mmos.md).

## <span id="Libraries_in_MMOS"></span><span id="libraries_in_mmos"></span><span id="LIBRARIES_IN_MMOS"></span>Libraries in MMOS


Adding a lib in MMOS is similar to adding a lib in the production OS. Currently, this default lib location for the kit is configured in Visual Studio.

``` syntax
$(WPDKInstallDir)lib\$(KitOs)\wp_um\$(Platform)
$(WPDKInstallDir)Tools\WPE\CRT\lib\$(Platform)
```

To add a lib in Visual Studio, select **Project** &gt; **Properties** &gt; **Configuration Properties** &gt; **VC++ Directories** &gt; **Include Directories**. To use the MMOS libraries, append the following directory to the path.

``` syntax
$(WPDKContentRoot)include\mmos
```

Add the arm directory. In Visual Studio, select **Project** &gt; **Properties** &gt; **Configuration Properties** &gt; **Linker** &gt; **General** &gt; **Additional Library Directories**. To use the MMOS libraries, append the following directories to the path.

``` syntax
$(WPDKContentRoot)lib\win8\mmos\arm
```

## <span id="Security_in_MMOS"></span><span id="security_in_mmos"></span><span id="SECURITY_IN_MMOS"></span>Security in MMOS


In development environments, user-mode test binaries can be test signed (not production signed). Use the process described in [Sign binaries and packages](https://msdn.microsoft.com/library/windows/hardware/dn789217) to test sign the binaries.

If the test binaries are not signed and code integrity checking is active as it normally is, you will receive an error message similar to the following in the debug window.

``` syntax
* This is not a failure in CI, but a problem with the failing binary.
* Please contact the binary owner for getting the binary correctly signed.
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Develop%20MMOS%20test%20applications%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



