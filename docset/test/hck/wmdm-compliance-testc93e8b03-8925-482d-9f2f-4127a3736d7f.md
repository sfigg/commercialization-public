---
author: joshbax-msft
title: WMDM Compliance Test
description: WMDM Compliance Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: abf18e0e-ba15-47ee-8b84-c5524d8c1740
---

# WMDM Compliance Test


This test validates common WMDM scenarios for Portable Media Devices by exercising content transfer, device initialization, and content cancellation scenarios at the WMDM level.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Portable.MediaPlayer.MTP Device.Portable.MobilePhone.MTP</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows 8.1 x64 Windows 8.1 x86</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Device.Portable Testing Prerequisites](deviceportable-testing-prerequisites.md).

**Note**  
You may need additional hardware if the test device provides bus-specific support. To determine whether you need additional hardware, see the description for each bus-specific test.

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Portable Testing](troubleshooting-deviceportable-testing.md).

## More Information


The WMDM Compliance test consists of these test cases:

-   Device storage initialization

-   Transfer cancellation from PC to Device

-   Transfer cancellation from Device to PC

### <a href="" id="initialize-device-storage-"></a>Initialize Device Storage

This test case initializes (formats) the device by using the WMDM device interface. The device must be Windows® Portable Device (WPD) compliant and support the WMDM interface. No other setup is required.

Command line: **WmdmCopy WmdmCopy.exe wmdmcopy\_Format.pro –c -e “{44CDDF79-39E8-41b2-AB57-4B49530CEFC3}" -l "s98wtt.dll"**

1.  Get WMDM interface. (Test will be skipped if the device does not support WMDM.)

2.  Get device data

3.  IF WMDM interface exists and can be initialized

    1.  Get root storage (IWMDMStorageGlobals)

    2.  Initialize storage

    3.  Sleep 5 seconds //some devices reboot after format

    4.  Set MaxFormatRetryCount to 10

    5.  WHILE WMDM device is not found

    6.  ENDWHILE

        1.  Refresh the device list

        2.  If WMDM device exists break

        3.  If retry count greater than 10

        4.  FAIL test

        5.  break

        6.  ENDIF

        7.  Sleep 2 seconds

4.  ENDIF

### Transfer Cancellation from PC to Device

This test case verifies cancellation while transferring content to the device by using the WMDM device interface. The device must be WPD compliant and support the WMDM interface. No other setup is required.

Command line: **WmdmCopy.exe WmdmCopy\_Content\_Transfer\_Cancellation.pro -c -e “{C8853606-B76C-42c4-9E51-C0ADFA156DEA}” -l “s98wtt.dll”**

1.  Get WMDM interface. (Test will be skipped if device does not support WMDM.)

2.  Get device data

3.  IF WMDM interface exists and can be initialized

    1.  Get test content directory

    2.  FOR count of 10

        1.  Transfer test file from PC to WMDM device

        2.  Cancel transfer before completed

        3.  IF transfer passed FAIL test

    3.  ENDFOR

    4.  Transfer file from PC to WMDM device

    5.  IF transfer failed FAIL test

4.  ENDIF

### <a href="" id="transfer-cancellation-from-device-to-pc-"></a>Transfer Cancellation from Device to PC

This test case verifies cancellation while transferring content to the device by using the WMDM device interface. The device must be WPD compliant and support the WMDM interface. No other setup is required.

Command line: **WmdmCopy.exe WmdmCopy\_Content\_Transfer\_From\_Device\_Cancellation.pro -c -e “{BA63CCBB-30FD-4432-A8F6-A6597D87BA0F}” -l “s98wtt.dll”**

1.  Get WMDM interface. (Test will be skipped if device does not support WMDM.)

2.  Get device data

3.  IF WMDM interface exists and can be initialized

    1.  Get test content directory

    2.  FOR count of 10

        1.  Transfer test file from WMDM device to PC

        2.  Cancel transfer before completed

        3.  IF transfer passed FAIL test

    3.  ENDFOR

    4.  Transfer file from WMDM device to PC

    5.  IF transfer failed FAIL test

4.  ENDIF

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
<td><p>wmdmcopy.exe</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="even">
<td><p>test.mp3</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>test.wma</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="even">
<td><p>proghelp.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\proghelp\</p></td>
</tr>
<tr class="odd">
<td><p>s98wtt.dll</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\Common\</p></td>
</tr>
<tr class="even">
<td><p>test.asf</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>test.wav</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="even">
<td><p>test.wmv</p></td>
<td><p><em>[Wow64TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\wdk\</p></td>
</tr>
<tr class="odd">
<td><p>WmdmCopy_Content_Transfer_From_Device_Cancellation.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="even">
<td><p>WmdmCopy_Content_Transfer_Cancellation.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
<tr class="odd">
<td><p>WmdmCopy_Initialize_Device_Storage.pro</p></td>
<td><p><em>[TestBinRoot]</em>\NTTEST\MULTIMEDIATEST\wmdm\wmdmcopy\</p></td>
</tr>
</tbody>
</table>

 

 

 






