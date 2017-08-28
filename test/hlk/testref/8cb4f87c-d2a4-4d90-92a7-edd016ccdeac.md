---
title: LoadGen Server Stress - Run Last - Reset Machine Policies
Description: LoadGen Server Stress - Run Last - Reset Machine Policies
ms.assetid: 44b82c4a-5467-40a8-9a6f-f3943bca79df
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# LoadGen Server Stress - Run Last - Reset Machine Policies

<conditional_block> <conditions> <docset value="standalone"></docset> </conditions>

>[!NOTE]
You can find the latest version of this test documentation on MSDN at the following link:

-   <xref hlink="http://msdn.microsoft.com/en-us/library/windows/hardware/44b82c4a-5467-40a8-9a6f-f3943bca79df">http://msdn.microsoft.com/en-us/library/windows/hardware/44b82c4a-5467-40a8-9a6f-f3943bca79df</b>


</conditional_block>

This automated test resets the machine policies that are used by the test on the test computers in the machine pool.

>[!NOTE]
This test should be run after all other tests are finished.


This test job completes the following actions:

1.  RunJob - ReSet the policies on SUT

2.  Reset AutoLogon on SUT

3.  Reboot SUT

4.  Reset AutoLogon on MC

5.  RunJob - ReSet the policies on MC

6.  Reboot MC

7.  Remove stressclients dimension on MC

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
<li>System.Server.SystemStress.ServerStress</li>
<li>System.Server.FaultTolerant.Core</li>
<li>System.Server.SVVP.SVVP</li>
</ul></td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Platforms</b></td>
<td><ul>
<li><tla rid="win_threshold_server"></tla> x64</li>
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
<td>30</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Category</b></td>
<td>Scenario</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Timeout (in minutes)</b></td>
<td>30</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Requires reboot</b></td>
<td>false</td>
</tr>
<tr class="even">
<td><mark type="bullet_intro">Requires special configuration</b></td>
<td>false</td>
</tr>
<tr class="odd">
<td><mark type="bullet_intro">Type</b></td>
<td>automatic</td>
</tr>
</tbody>
</table>

## Additional documentation

Tests in this feature area might have additional documentation, including prerequisites, setup, and troubleshooting information, that can be found in the following topic(s):

-   <xref rid="p_hlk_test.system_server_additional_documentation">System.Server additional documentation</b>

## Running the test

Before you run the test, complete the test setup as described in the test requirements: <xref rid="p_hlk_test.system_server_testing_prerequisites">System Server Testing Prerequisites</b> and <xref rid="p_hlk_test.test_server_configuration">Test Server Configuration</b>. This test should be run after all other tests are finished.

1.  Navigate to the **Tests** tab
2.  Select **LoadGen Server Stress - Run Last - Reset Machine Policies**
3.  Click the **Run Selected** link
4.  In the **Schedule** dialog, map machines to roles
    -   Use the **Role** dropdown to select machines for the MC and SC roles (SUT will be prepopulated)
5.  Click **OK** to schedule the test

## Troubleshooting

For generic troubleshooting of HLK test failures, see <xref rid="p_hlk.troubleshooting_windows_hlk_test_failures">Troubleshooting Windows HLK Test Failures</b>.

For troubleshooting information, see <xref rid="p_hlk_test.troubleshooting_system_server_testing">Troubleshooting System Server Testing</b>.



