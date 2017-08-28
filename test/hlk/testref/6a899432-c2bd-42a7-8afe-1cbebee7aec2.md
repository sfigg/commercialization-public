---
title: Graphics Driver Installation During OS Setup.
Description: Graphics Driver Installation During OS Setup.
ms.assetid: c419f2c7-f73b-4c0e-b0ad-3110e3529710
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Graphics Driver Installation During OS Setup.

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/c419f2c7-f73b-4c0e-b0ad-3110e3529710">http://msdn.microsoft.com/en-us/library/windows/hardware/c419f2c7-f73b-4c0e-b0ad-3110e3529710</b>


</conditional_block> This test verifies that a driver can be injected into an OS image, that it installs during the setup phase of the OS, and is working when the user first boots into the OS during personalization stage. In order to accomplish this the following steps need to be done: 1. Copy an existing build folder to a Windows 8.1 machine. 2. Inject the driver being tested into the image using DISM.exe 3. Enable Test signing in the image file if using test signed drivers. 4. Use the image created to install a test machine. 5. Verify the driver was installed successfully and is working. A dialog prompt requiring user intervention to indicate Pass or Fail will be presented on the HCK client. The script that can be used for creating the OS setup image is located at \\\\\[HCKControllerName\]\\Tests\\amd64\\NTTEST\\windowstest\\tools\\InjectDriversToWim.cmd The script takes the following paramerters: First parameter is the path to the location of the build folder. Second parameter is the location of the folder that contains the drivers to be injected. Example: InjectDriversToWim.cmd "c:\\Build\_9405\\Client" "C:\\MyDrivers\\AMD64" After verifying the script completed successfully installation of the OS can be ran. In the example passed setup.exe contained in the "c:\\Build\_9405\\Client" can be run to install the OS.

## Test details

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><mark type="bullet_intro">Specifications</b></td>
<td><ul>
<li>Device.Graphics.WDDM.DisplayRender.DriverSetupCompatible</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_desktop"></tla> x86</li>
<li><tla rid="win_threshold_desktop"></tla> x64</li>
<li><tla rid="win_threshold_desktop"></tla> ARM64</li>
</ul></td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Supported Releases</b></td>
<td><ul>
<li><tla rid="win_10"></tla></li>
<li><tla rid="win_10_th2"></tla></li>
<li><tla rid="win_10_rs1"></tla></li>
<li>Windows 10, version 1703</li>
<li>Windows 10, version 1709</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Expected run time (in minutes)</b></td>
<td>5</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Compatibility</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>5</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>true</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.device_graphics_additional_documentation">Device.Graphics additional documentation</b>

## More information

## Parameters

| Parameter name                                         | Parameter description                                |
|--------------------------------------------------------|------------------------------------------------------|
| <mark type="bullet_intro">LLU\_NetAccessOnly</b>       | The name of your machine's LLU                       |
| <mark type="bullet_intro">ConfigDisplayCommandLine</b> | Custom Command Line for ConfigDisplay. Default: logo |
| <mark type="bullet_intro">TDRArgs</b>                  | /get or /set                                         |

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.



