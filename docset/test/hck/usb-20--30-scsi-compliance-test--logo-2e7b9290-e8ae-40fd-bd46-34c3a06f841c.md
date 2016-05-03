---
author: joshbax-msft
title: USB 2.0 3.0 SCSI Compliance test (LOGO)
description: USB 2.0 3.0 SCSI Compliance test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: b33ef7eb-ee08-4b8c-a078-3aa0780c7197
---

# USB 2.0 & 3.0 SCSI Compliance test (LOGO)


This automated test verifies Small Computer System Interface (SCSI) Command Descriptor Blocks (CDBs) sent to the Universal Serial Bus (USB) device.

**Note**  
For more information, please refer to the "More information" section of the [SCSI Compliance Test (LOGO)](scsi-compliance-test--logo-8193d65b-1e18-43d8-9fe7-fca3fb178f67.md).

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Uas.Compliance Device.Storage.Hd.Usb.Compatibility Device.Storage.Hd.Usb3.Compliance</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows RT 8.1Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~5 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md)

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

The test writes the results to the log file Scsicompliance.wtl and Scsicompliance.wtl.txt. Use the results to determine:

-   If a device is compliant with the SCSI specification.

-   The optional SCSI commands that are supported by a device.

To pass, the USB device must support every mandatory command and must be fully compliant with those commands. Each command has a different threshold for pass or fail, and the expectations are specified explicitly in the test and in the log file.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

Optional commands are also tested. If a device supports the optional commands and the commands are found to be non-compliant, the test fails. If the device does not support optional commands, the test passes.

During the test, if you are having trouble removing a LUN that is failing or are unable to create a LUN from the storage controller, follow these steps:

1.  Prior to running this test, verify that the storage device works properly. Open Diskmgmt.msc and select disk. Make sure you can put the device Online and in initialized state.

2.  Restart the Windows HCK test computer.

3.  Select and rerun the USB SCSI Compliance Test. Do not run any test before it.

4.  If the test failed, run the individual failing command data blocks (cdbs) one at a time with the logging verbosity level set to 4 (the highest level of test logging). This will show what data was sent and what data was returned. We have seen previous instances where test fail after several cdbs were completed but pass standalone. If this occurs, there is a problem in the firmware or the test. There might have been a device reset leading to the device falling off the bus and resulting in subsequent commands to fail. To resolve this issue, follow these steps:

    1.  Copy the test binary (Scsicompliance.exe) from the Windows HCK controller. This file is located here: \\\\controllername\\tests\\\[processorarchitectureofyourclient\]\\NTTEST\\DriversTest\\storage\\wdk\\

    2.  Copy the wttlog.dll file from the Windows HCK controller. This file is located here: \\\\&lt;controllername&gt;\\Tests\\&lt;processorarchitectureofyourclient &gt;\\wtt

    3.  Place both of these files on the test computer in a separate folder.

    4.  From a command prompt, from the directory containing the test binary, type the following command: Scsicompliance.exe /device &lt;deviceID&gt; /verbosity 4 /operation test /scenario &lt;scenario&gt; /Version &lt;version&gt; /protocol &lt;protocol&gt; /CDB &lt;failingcdbname&gt;

        **Note**  
        DeviceID, scenario, version and protocol values can be found by checking the repro line within the test log. The failingcdbname can be found by running the test binary with the /?option (scsicompliance.exe /?).

         

    5.  Go back to the same directory and review the results to see if you can determine the reason for the test failure.

    6.  If you need additional help, collect the txt and wtl logs and share the logs with Microsoft Customer Support Services.

## More information


### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command option</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Scsicompliance.exe</strong></p></td>
<td><p>The options for the test are listed below.</p></td>
</tr>
<tr class="even">
<td><p><strong>/device</strong></p></td>
<td><p>The device which test is to run on. Example: /Device &lt;physical device path&gt;</p></td>
</tr>
<tr class="odd">
<td><p><strong>/operation</strong></p></td>
<td><p>The operation to run. Example: /Operation Test</p></td>
</tr>
<tr class="even">
<td><p><strong>/scenario</strong></p></td>
<td><p>The feature to be tested for. Example: /Scenario USBDisk</p></td>
</tr>
<tr class="odd">
<td><p><strong>/version</strong></p></td>
<td><p>Device's USB Version number. Example: /version 3</p></td>
</tr>
<tr class="even">
<td><p><strong>/protocol</strong></p></td>
<td><p>Device’s USB protocol. Example: /protocol UAS</p></td>
</tr>
<tr class="odd">
<td><p><strong>/verbosity</strong></p></td>
<td><p>The level of logging verbosity. Larger values cause more verbose output. Example: /Verbosity 4</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/?**.

 

### File list

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Scsicompliance.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\nttest\driverstest\storage\wdk</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20USB%202.0%20&%203.0%20SCSI%20Compliance%20test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




