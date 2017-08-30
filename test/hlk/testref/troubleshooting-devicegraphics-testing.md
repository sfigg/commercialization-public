---
title: Troubleshooting Device.Graphics Testing
description: Troubleshooting Device.Graphics Testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: dc485fbe-7e9e-4400-909a-e4cba9e2d383
---

# Troubleshooting Device.Graphics Testing


To troubleshoot issues that occur with Device.Graphic tests, follow these steps:

1.  Review [Troubleshooting Windows HLK Test Failures](p_hlk.troubleshooting_windows_hlk_test_failures).

2.  Review one of the following topics, depending on the type of graphic device that you want to test:

    -   [Display Monitor Testing Prerequisites](display-monitor-testing-prerequisites.md)

    -   [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md)

3.  For a test failure, look for usable information in the Windows HLK Studio test log. If you find usable information, resolve the issue and rerun the test.

### <span id="Specific_information_about_DXVA_testing"></span><span id="specific_information_about_dxva_testing"></span><span id="SPECIFIC_INFORMATION_ABOUT_DXVA_TESTING"></span>Specific information about DXVA testing

The DXVA tests require the following:

-   **Supplemental Content for Windows HLK Tests for DXVA and HMFT Multimedia Tests**: Download and install the Supplemental Content for Windows HLK Tests for DXVA and HMFT Multimedia Tests from the MSDN® website at <http://msdn.microsoft.com/en-us/windows/hardware/hh852358>.

    **Important**  
    Before running the DXVA tests on x86 or amd64 systems, you must install the Windows 8 Professional SKU and then install Windows Anytime Upgrade for Media Center, otherwise the MPEG2 tests will fail.

     

### <span id="Common_errors"></span><span id="common_errors"></span><span id="COMMON_ERRORS"></span>Common errors

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Error</th>
<th>Description</th>
<th>Solution</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>ERROR&gt;&gt; Failed to find input source file.</p></td>
<td><p>Content not available to client machine.</p></td>
<td><p>Ensure that the <strong>ContentSource</strong> parameter points to the correct location of the source content at run time.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Device.Graphics Tests](device-graphics-tests.md)

[Troubleshooting Windows HLK](p_hlk.troubleshooting_windows_hlk)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Troubleshooting%20Device.Graphics%20Testing%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





