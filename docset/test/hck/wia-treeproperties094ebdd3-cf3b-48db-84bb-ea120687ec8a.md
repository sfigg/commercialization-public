---
author: joshbax-msft
title: WIA Treeproperties
description: WIA Treeproperties
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 71b4363a-77b4-47a4-8e91-4ad49cc15e92
---

# WIA Treeproperties


This automated test uses the Windows® Image Acquisition (WIA) test tool to verify that all WIA properties for pre-Vista style drivers are implemented according to the Windows Driver Kit (WDK) and Windows Vista Logo requirements. It also verifies that the structure of the WIA item tree that is built by a pre-Vista scanner driver is correct.

This test will help driver developers to detect property errors and item tree implementation errors.

**Note**  
WIA 2.0 is a requirement for the test to pass in Windows 8, Windows 7, Windows Server 2008 R2 and Windows Server 2012. WIA 2.0 is not a requirement for Windows Vista.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Scanner.Base.dataTransfer Device.Imaging.Scanner.Base.wia20 Device.Imaging.Scanner.Base.WIAProperties</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Scanner Testing Prerequisites](scanner-testing-prerequisites.md).

If your device supports automatic document feeding, this test requires the following:

-   Enough paper in the feeder (usually about 50 pages).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md)

If failure is reported somewhere in the middle of a large log file, try to determine which test script caused it. Then run this script by itself, without combining it with other tests. For example:

``` syntax
WiaTreeProperties.exe -r scripts\DPA\DPA_DEVICE_TIME.wia -debug -w
```

If the test crashes, try running WiaTreeProperties.exe from a command prompt under a debugger to determine the reason for the crash.

The **UseDebugLogs** parameter should only be used if the test is failing and Microsoft Support Services asks you to use this parameter.

## More information


This tool uses information stored in an XML file and test scripts to verify the correct implementation of WIA Properties. Each WIA property defined in Windows SDK and WDK documentation has the following attributes:

-   Data type

-   Access type

-   Required items

-   Optional items

-   Legal values (list or range)

-   Dependencies on other properties

The tool consists of a test application, an XML file listing all properties, and one test script per property. The test application allows a tested property or set of properties to be specified through command line parameters, reads property test scripts and XML data, and compares the results to the property implementation in a WIA Driver. The test fails if the expected property attributes and implemented property attributes do not match. The test succeeds if all tested properties are implemented according to WDK requirements.

This tool includes:

-   Console test application WiaTreeProperties.exe - supports multiple command line parameters. The console test application also exports test information to a WTT log file, console, and custom log window (optional).

-   GUI application WiaTreePropertiesGUI.exe - collects test parameters through UI and runs WiaTreeProperties.exe to perform testing.

-   WiaTestLog.exe - custom log window, which may be used for displaying test output. See the -w command switch.

-   WiaPropDB.dll - managed assembly for reading WIA Properties. The XML database is stored in WiaTreeProp.xml file

-   \*.wis files - test suites (groups of test scripts)

-   \*.wia files - test scripts, used by WiaTreeProperties.exe application

**Running WIA Tree Properties test**

WIA tests may fail if you do not use the WIA Friendly name. To resolve this, follow these steps:

1.  Restart the DTM Client and wait for it to log in.

2.  Close the Device Console.

3.  Re-open the submission.

This will ensure that the gatherer data is in-sync and that the friendly name is populated.

If the steps above do not work, please work with your driver developer to make sure that the INF is referencing the driver correctly.

 

 






