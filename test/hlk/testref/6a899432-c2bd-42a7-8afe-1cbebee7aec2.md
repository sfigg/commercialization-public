---
title: Graphics Driver Installation During OS Setup.
description: Graphics Driver Installation During OS Setup.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c419f2c7-f73b-4c0e-b0ad-3110e3529710
---

# <span id="p_hlk_test.6a899432-c2bd-42a7-8afe-1cbebee7aec2"></span>Graphics Driver Installation During OS Setup.


This test verifies that a driver can be injected into an OS image, that it installs during the setup phase of the OS, and is working when the user first boots into the OS during personalization stage. In order to accomplish this the following steps need to be done: 1. Copy an existing build folder to a Windows 8.1 machine. 2. Inject the driver being tested into the image using DISM.exe 3. Enable Test signing in the image file if using test signed drivers. 4. Use the image created to install a test machine. 5. Verify the driver was installed successfully and is working. A dialog prompt requiring user intervention to indicate Pass or Fail will be presented on the HCK client. The script that can be used for creating the OS setup image is located at \\\\\[HCKControllerName\]\\Tests\\amd64\\NTTEST\\windowstest\\tools\\InjectDriversToWim.cmd The script takes the following paramerters: First parameter is the path to the location of the build folder. Second parameter is the location of the folder that contains the drivers to be injected. Example: InjectDriversToWim.cmd "c:\\Build\_9405\\Client" "C:\\MyDrivers\\AMD64" After verifying the script completed successfully installation of the OS can be ran. In the example passed setup.exe contained in the "c:\\Build\_9405\\Client" can be run to install the OS.

## <span id="Test_details"></span><span id="test_details"></span><span id="TEST_DETAILS"></span>Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><strong>Specifications</strong></td>
<td><ul>
<li>Device.Graphics.WDDM.DisplayRender.DriverSetupCompatible</li>
</ul></td>
</tr>
<tr class="even">
<td><strong>Platforms</strong></td>
<td><ul>
<li>Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) x86</li>
<li>Windows 10 for desktop editions x64</li>
</ul></td>
</tr>
<tr class="odd">
<td><strong>Supported Releases</strong></td>
<td><ul>
<li>Windows 10</li>
<li>Windows 10, version 1511</li>
<li>Windows 10, version 1607</li>
<li>Windows 10, version 1703</li>
</ul></td>
</tr>
<tr class="even">
<td><strong>Expected run time (in minutes)</strong></td>
<td>5</td>
</tr>
<tr class="odd">
<td><strong>Category</strong></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><strong>Timeout (in minutes)</strong></td>
<td>300</td>
</tr>
<tr class="odd">
<td><strong>Requires reboot</strong></td>
<td>false</td>
</tr>
<tr class="even">
<td><strong>Requires special configuration</strong></td>
<td>true</td>
</tr>
<tr class="odd">
<td><strong>Type</strong></td>
<td>automatic</td>
</tr>
</tbody>
</table>

 

## <span id="Additional_documentation"></span><span id="additional_documentation"></span><span id="ADDITIONAL_DOCUMENTATION"></span>Additional documentation


Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   [Device.Graphics additional documentation](device-graphics-additional-documentation.md)

## <span id="More_information"></span><span id="more_information"></span><span id="MORE_INFORMATION"></span>More information


### <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters

| Parameter name               | Parameter description                                |
|------------------------------|------------------------------------------------------|
| **LLU\_NetAccessOnly**       | The name of your machine's LLU                       |
| **ConfigDisplayCommandLine** | Custom Command Line for ConfigDisplay. Default: logo |
| **TDRArgs**                  | /get or /set                                         |

 

## <span id="Troubleshooting"></span><span id="troubleshooting"></span><span id="TROUBLESHOOTING"></span>Troubleshooting


For generic troubleshooting of HLK test failures, see [Troubleshooting Windows HLK Test Failures](p_hlk.troubleshooting_windows_hlk_test_failures).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Graphics%20Driver%20Installation%20During%20OS%20Setup.%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




