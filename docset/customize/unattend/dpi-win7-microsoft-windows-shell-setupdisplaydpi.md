---
title: DPI
description: DPI
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 16d85288-aa61-4ab5-83bc-952b95d08697
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: msdn
---

# DPI


The `DPI` setting specifies what size to show text and other items on the desktop. This does not affect the Start screen.

**Important**  
This setting has been deprecated in Windows® 8.1. The information about this deprecated setting is provided for reference only. The setting continues to exist for Windows 8 and Windows® 7.

 

We recommend that you use the automatic DPI configuration in Windows 8 and Windows® 7 to calculate an appropriate size. To do this, leave the `DPI` value empty.

**Note**  
If you manually set `DPI`:

-   Choose a supported Windows® DPI value that is close to the *physical DPI*.

    The *physical DPI* of a display is the measurement of the dots per inch that display is capable of. For example, for a display with a native resolution of 1440 x 900 pixels, and a physical display size of 14.4 inches x 9 inches, the physical DPI is 100 (1440 horizontal pixels ÷ 14.4 horizontal inches = 100 DPI).

-   Windows 7 requires a minimum *effective vertical resolution* of 600. To avoid application compatibility issues, we recommend using a minimum *effective resolution* of 1024 x 768.

    The *effective resolution* is the available visible resolution when the text and graphics are enlarged.

 

This setting appears in the **Display** item in Control Panel. For more information, see the MSDN topic: [High DPI](http://go.microsoft.com/fwlink/?LinkId=149149).

## Values


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><em>Windows DPI value</em></p></td>
<td><p>Specifies what size to show text and other items on the screen. <em>Windows DPI value</em> is an integer between 96 and 480. Supported values include 96, 120, and 144.</p>
<p>By default, Windows uses automatic DPI configuration.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="windowsautomaticdpiconfiguration"></a>Windows Automatic DPI Configuration

The following table shows the relationship between a monitor's physical DPI and the resulting default size:

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Monitor’s physical DPI</th>
<th>Automatic configuration selects the following Windows DPI value</th>
<th>Scale level</th>
<th>Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Less than 116</p></td>
<td><p>96</p></td>
<td><p>100%</p></td>
<td><p>Displays text and graphics at a smaller size.</p></td>
</tr>
<tr class="even">
<td><p>116 to 138</p></td>
<td><p>120*</p></td>
<td><p>125%</p></td>
<td><p>Displays text and graphics at a medium size.</p></td>
</tr>
<tr class="odd">
<td><p>More than 138</p></td>
<td><p>144*</p></td>
<td><p>150%</p></td>
<td><p>Displays text and graphics at a larger size.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
\* If enlarging the screen would create an *effective resolution* of less than 1024 x 768, Windows chooses a smaller Windows DPI value.

 

The monitor’s physical DPI is calculated by using data in the Extended Display Identification Data (EDID) on applicable systems. When using automatic configuration, confirm that the EDID for the display is correct. For information on EDID, see the [VESA E-EDID Implementation Guide](http://go.microsoft.com/fwlink/?LinkId=247449).

The following table shows automatic DPI configuration values for the desktop for sample monitors:

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th>Description</th>
<th>Horizontal</th>
<th>Vertical</th>
<th>Physical DPI</th>
<th>Windows DPI value</th>
<th>Scale level</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>10.1-inch</p></td>
<td><p>1366</p></td>
<td><p>768</p></td>
<td><p>155</p></td>
<td><p>96*</p></td>
<td><p>100%</p></td>
</tr>
<tr class="even">
<td><p>10.1-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>218</p></td>
<td><p>120*</p></td>
<td><p>125%</p></td>
</tr>
<tr class="odd">
<td><p>10.1-inch</p></td>
<td><p>2560</p></td>
<td><p>1440</p></td>
<td><p>291</p></td>
<td><p>144</p></td>
<td><p>150%</p></td>
</tr>
<tr class="even">
<td><p>11.6-inch</p></td>
<td><p>1366</p></td>
<td><p>768</p></td>
<td><p>135</p></td>
<td><p>96*</p></td>
<td><p>100%</p></td>
</tr>
<tr class="odd">
<td><p>11.6-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>190</p></td>
<td><p>120*</p></td>
<td><p>125%</p></td>
</tr>
<tr class="even">
<td><p>11.6-inch</p></td>
<td><p>2560</p></td>
<td><p>1440</p></td>
<td><p>253</p></td>
<td><p>144</p></td>
<td><p>150%</p></td>
</tr>
<tr class="odd">
<td><p>12-inch</p></td>
<td><p>1280</p></td>
<td><p>800</p></td>
<td><p>125</p></td>
<td><p>96*</p></td>
<td><p>100%</p></td>
</tr>
<tr class="even">
<td><p>14-inch</p></td>
<td><p>1366</p></td>
<td><p>768</p></td>
<td><p>112</p></td>
<td><p>96</p></td>
<td><p>100%</p></td>
</tr>
<tr class="odd">
<td><p>14-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>157</p></td>
<td><p>120*</p></td>
<td><p>125%</p></td>
</tr>
<tr class="even">
<td><p>15.6-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>141</p></td>
<td><p>120*</p></td>
<td><p>125%</p></td>
</tr>
<tr class="odd">
<td><p>17-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>130</p></td>
<td><p>120</p></td>
<td><p>125%</p></td>
</tr>
<tr class="even">
<td><p>23-inch</p></td>
<td><p>1920</p></td>
<td><p>1080</p></td>
<td><p>96</p></td>
<td><p>96</p></td>
<td><p>100%</p></td>
</tr>
<tr class="odd">
<td><p>27-inch</p></td>
<td><p>2560</p></td>
<td><p>1440</p></td>
<td><p>109</p></td>
<td><p>96</p></td>
<td><p>100%</p></td>
</tr>
</tbody>
</table>

 

**Note**  
\* For these sample monitors, Windows uses a smaller DPI value to avoid application-compatibility issues.

 

## Manually Selecting a Windows DPI Value


You can override automatic DPI configuration. This is useful for special displays, such as small displays or touch-enabled displays.

### Use a Supported Size so that Graphics are Displayed Clearly

We recommend using one of the following three values: 96, 120, or 144. The Windows user interface is optimized for these values. Non-supported values may make fonts and graphics appear blurry.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows DPI value</th>
<th>Scale level</th>
<th>Effect</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>96</p></td>
<td><p>100%</p></td>
<td><p>Displays text and graphics at a smaller size.</p></td>
</tr>
<tr class="even">
<td><p>120</p></td>
<td><p>125%</p></td>
<td><p>Displays text and graphics at a medium size.</p></td>
</tr>
<tr class="odd">
<td><p>144</p></td>
<td><p>150%</p></td>
<td><p>Displays text and graphics at a larger size.</p></td>
</tr>
</tbody>
</table>

 

### Use a Size that is Legible

Use a supported Windows DPI value that is close to the physical DPI. For guidance in choosing a Windows DPI value, see the table in the [Windows Automatic DPI Configuration](#windowsautomaticdpiconfiguration) section earlier in this topic.

-   **Calculation:**

    For example, on a 17-inch WUXGA monitor, with a native resolution of 1920 x 1200:

    17-inch WUXGA = 14.4 inches x 9 inches.

    1920 horizontal pixels ÷ 14.4 horizontal inches = 133 physical DPI.

    Consider using the supported Windows DPI value of 120 (125% scale level), because the physical DPI is between 116 and 138.

### Use a Size that Avoids Application-Compatibility Issues

Use a supported Windows DPI value that creates a resolution that is at least as large as the minimum recommended and required Windows resolutions.

Windows 7 requires a minimum *effective vertical resolution* of 600. We recommend using a minimum *effective resolution* of 1024 x 768.

-   **Calculation:**

    For example, on a 17-inch WUXGA monitor, with a native resolution of 1920 x 1200, using a Windows DPI value of 144 (150% scale level):

    Effective horizontal resolution = 1920 ÷ 150% = 1280.

    Effective vertical resolution = 1200 ÷ 150% = 800.

    These values exceed the recommended minimum and required Windows resolutions.

## Valid Configuration Passes


auditSystem

auditUser

oobeSystem

specialize

## Parent Hierarchy


[Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md) | [Display](display-win7-microsoft-windows-shell-setupdisplay.md) | **DPI**

## Applies To


For a list of the supported Windows editions and architectures that this component supports, see [Microsoft-Windows-Shell-Setup](microsoft-windows-shell-setup-win7-microsoft-windows-shell-setup.md).

## XML Examples


The following XML output sets the display resolution to 1920 x 1200, and does not set a value for `DPI`. As a result, Windows automatically adjusts the text and graphics to appear at a medium size (~120 DPI) on a 17-inch WUXGA+ monitor, and at a larger size (~144 DPI) on a 15.4-inch WSXGA+ monitor.

``` syntax
<Display>
   <HorizontalResolution>1920</HorizontalResolution>
   <VerticalResolution>1200</VerticalResolution>
   <!-- Note: DPI is not set. Windows will use automatic configuration. -->
</Display>
```

The following XML output sets the display resolution to 1280 x 1024, and adjusts the text and graphics to appear at a medium size (120 DPI). This results in an effective resolution of 1024 x 819.

``` syntax
<Display>
   <HorizontalResolution>1280</HorizontalResolution>
   <VerticalResolution>1024</VerticalResolution>
   <DPI>120</DPI>
</Display>
```

The following XML output sets the display resolution to 1900 x 1200, and adjusts the text and graphics to appear at a larger size (144 DPI). This results in an effective resolution of 1266 x 800.

``` syntax
<Display>
   <HorizontalResolution>1900</HorizontalResolution>
   <VerticalResolution>1200</VerticalResolution>
   <DPI>144</DPI>
</Display>
```

## Related topics


[Display](display-win7-microsoft-windows-shell-setupdisplay.md)

[TouchUISize](p_unattend.touchuisize_win7_microsoft_windows_tabletpc_platform_input_coretouchuisize)

[High DPI](http://go.microsoft.com/fwlink/?LinkId=149149)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_unattend\p_unattend%5D:%20DPI%20%20RELEASE:%20%2810/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





