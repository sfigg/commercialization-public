---
author: Justinha
Description: DISM Supported Platforms
MS-HAID: 'p\_adk\_online.dism\_supported\_platforms'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: DISM Supported Platforms
---

# DISM Supported Platforms


The Windows 10 version of Deployment Image Servicing and Management (DISM) is available in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education), Windows Server 2016 Technical Preview, and Windows Preinstallation Environment (WinPE) for Windows 10.

To service Windows 10 images, you’ll need the Windows 10 version of DISM, otherwise the image may become corrupted.

To use the Windows 10 version of DISM onto a previous version of Windows, install the Windows Assessment and Deployment Kit (ADK) [from this website](http://go.microsoft.com/fwlink/p/?LinkId=526803), and install the **Deployment Tools**. Then, start the **Deployment and Imaging Tools Environment** to run DISM commands.

To use the Windows 10 version of DISM with a previous version of Windows PE, see [Install Windows 10 using a previous version of Windows PE](copy-dism-to-another-computer.md).

Note, newer DISM features don’t always work when servicing images of previous versions of Windows. To learn more, see the [DISM Reference](dism-reference--deployment-image-servicing-and-management.md).

## <span id="DTSP_DISM"></span><span id="dtsp_dism"></span>Supported Platforms


The host deployment environment is the operating system where DISM runs. The target image is the image that is being serviced.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Host deployment environment</th>
<th align="left">Target Image:Windows 10 , Windows 10, or WinPE for Windows 10</th>
<th align="left">Target Image: , Windows 8.1, Windows Server 2016 Technical Preview, Windows Server 2012 R2, or WinPE 5.0 (x86 or x64)</th>
<th align="left">Target Image: Windows 8, Windows Server 2012, or WinPE 4.0 (x86 or x64)</th>
<th align="left">Target Image: Windows 7, Windows Server 2008 R2, or WinPE 3.0 (x86 or x64)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 10 (x86 or x64)</p></td>
<td align="left">Supported</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2016 Technical Preview (x86 or x64)</p></td>
<td align="left">Supported</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8.1 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 8(x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported, using the Windows 8 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported, using the Windows 8 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 SP2 (x86 or x64)</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported, using the Windows 8 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="even">
<td align="left"><p>WinPE for Windows 10 x86</p></td>
<td align="left">Supported</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WinPE for Windows 10 x64</p></td>
<td align="left">Supported: X64 target image only</td>
<td align="left"><p>Supported: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
</tr>
<tr class="even">
<td align="left"><p>WinPE 5.0 x86</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WinPE 5.0 x64</p></td>
<td align="left">Supported, using the Windows 10 version of DISM: X64 target image only</td>
<td align="left"><p>Supported: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
</tr>
<tr class="even">
<td align="left"><p>WinPE 4.0 x86</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WinPE 4.0 x64</p></td>
<td align="left">Supported, using the Windows 10 version of DISM: X64 target image only</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
</tr>
<tr class="even">
<td align="left"><p>WinPE 3.0 x86</p></td>
<td align="left">Supported, using the Windows 10 version of DISM</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later</p></td>
<td align="left"><p>Supported, using the Windows 8 version of DISM or later</p></td>
<td align="left"><p>Supported</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WinPE 3.0 x64</p></td>
<td align="left">Supported, using the Windows 10 version of DISM: X64 target image only</td>
<td align="left"><p>Supported, using the Windows 8.1 version of DISM or later: X64 target image only</p></td>
<td align="left"><p>Supported, using the Windows 8 version of DISM or later: X64 target image only</p></td>
<td align="left"><p>Supported: X64 target image only</p></td>
</tr>
</tbody>
</table>

 

Resilient File System (REFS) is not supported.

## <span id="related_topics"></span>Related topics


[Install the Windows 10 Assessment and Deployment Kit (ADK)](http://go.microsoft.com/fwlink/p/?LinkId=526803)

[DISM Reference (Deployment Image Servicing and Management)](dism-reference--deployment-image-servicing-and-management.md)

[Install Windows 10 using a previous version of Windows PE](copy-dism-to-another-computer.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20DISM%20Supported%20Platforms%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




