---
author: joshbax-msft
title: CRASH - Legacy Display Stress
description: CRASH - Legacy Display Stress
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c04968f6-9b82-4e6e-a796-9bab846e617b
---

# CRASH - Legacy Display Stress


This automated test verifies system stability over a specified time. If the system does not stop responding or encounter a bug check during this specified time, the test is considered a pass.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Graphics.XDDM.Stability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows Server 2008 R2 (x64)</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Graphic Adapter or Chipset Testing Prerequisites](graphic-adapter-or-chipset-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Graphics Testing](troubleshooting-devicegraphics-testing.md).

To determine the profile that was run, review the first statement of the test log to find out how long it took for the test to run.

1.  Go to the log file and locate the start time of the test. This can be found about 15 lines from the top.

2.  Scroll to the bottom of the log and locate the end time. This can be found in the last line above the Runtime row. If the total time is less than what you expected for the profile to be run, the system stopped responding, or rebooted during the test. To resolve the problem, connect the system to a debugger and rerun the test.

### CRASH log messages

In log files for failed tests, the following messages may appear:

-   TRIAGE: Unable to create path for dump archive. Error Code: 3 - The system cannot find the path specified.

-   TRIAGE: Bad Dump file archive path specified. Using CRASH.exe location.

-   TRIAGE: Dump file archive folder already exists.

-   No dump file found, result = Hung.

These messages are in error and do not contribute to the actual failure of the test. In addition, the CrashDump file is not included in the results.

The CRASH test should run for 1 to12 hours, depending on the job being executed. A test pass either runs to completion or not. If it does not, it is either because the system stopped responding, or generated a bug check with no warning. If the system generates a bug check, it creates a .dmp file. The CRASH test looks this .dmp file in the location that is specified by the system. If there is no .dmp file, either the system stopped responding, the user rebooted with no warning, or the system generated a bug check but a user interrupted the .dmp file generation. There is no way for the CRASH test to determine what the user did, so the test responds as if the system stopped responding. To determine what is causing the test to stop prematurely and fail, run the test under a kernel mode debugger.

## More information


The CRASH test runs a specified length of time, based on the profiles that are provided. The Windows 7 profiles include more information than others, but the main difference between the profiles is the amount of time set aside for the test to run.

During the CRASH test, several applications start and stop repeatedly. The applications do not need to survive the given time frame to have the overall test be considered a pass. However, the graphic adapter must not timeout detection and recovery (TDR) while the test is running. If a failure happens related to a TDR, the failure information is captured in the cleanup task TDRWatch. Additional information about the CRASH test, including information about how to run it outside of the Device Test Manager (DTM) test harness, can be found in the CRASH folder. This folder is located on the DTM Controller under: %TestBinRoot%\\tests\\x86\\nttest\\windowstest\\graphics\\tests\\crash.

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
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\Display_Stress_Premium-x64.crash&quot; -auto</strong></p></td>
<td><p>Runs the CRASH - Display Stress 2-Hour WDDM Profile test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\Display_Stress_Premium-x86.crash&quot;</strong></p></td>
<td><p>Runs the CRASH - Display Stress 2-Hour WDDM Profile (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\WDDM_Logo_4Hrs-64bit.crash&quot; -auto</strong></p></td>
<td><p>Runs the CRASH - Display Stress 4-hour WDDM Profile test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\WDDM_Logo_4Hrs-32bit.crash&quot; -auto</strong></p></td>
<td><p>Runs the CRASH - Display Stress 4-hour WDDM Profile (WoW64) test job.</p></td>
</tr>
<tr class="odd">
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\WDDM_Targeted_12Hrs-64bit.crash&quot; -auto</strong></p></td>
<td><p>Runs the CRASH - Display Stress 12-hour WDDM Profile test job.</p></td>
</tr>
<tr class="even">
<td><p><strong>Crash -input &quot;[WTTRunWorkingDir]\profiles\WDDM_Targeted_12Hrs-32bit.crash&quot; -auto</strong></p></td>
<td><p>Runs the CRASH - Display Stress 12-hour WDDM Profile (WoW64) test job.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command line help for this test binary, type **/h**.

 

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
<td><p>2danimation.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>30SecondsOfRed.wmv</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_Camera.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_DrawingBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_DrawingBrush_Scale.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_EmissiveMaterial_NoLight.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_ImageBrush_Scale.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_ImageBrush_Stretch_Absolute.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_ImageBrush_Stretch_MixedUV.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_ImageBrush_Stretch_Relative.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_ImageBrush_Tile.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_ImageBrush_Tile_MixedUV.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_ImageBrush_TileNone.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_Integrate2D_Canvas.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_Integrate2D_DockPanel.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_LinearGradient_DirectionalLight.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_MixedMaterial.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_MultipleLights.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_MultipleMaterials_Transparency.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_PointLight_Attenuation.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_PointLight_Transparency.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>3D_RandomMaterialSphere.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>3D_Transforms.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>AllPathSegments.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>AmbientSphere.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>ArcBezierPath.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Arial.ttf</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Avalon.png</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>AverageColorWithPaddings.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>B10g10r10.wmv</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>BasicShaderEffect_EffectOnElmentInDrwingBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>BasicShaderEffect_InControlTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>BasicShaderEffect_Viewport2DVisual3D.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>BasicShaderEffect_WithOpacityMask.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Bezier.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Blink.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>BlobsWarp10_d2d.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>BlurWithNestedDropShadow.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>BorderedRotatedGlyphs.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>BumpEarth10_d2d.exe</p></td>
<td><p><em>[testbinroot]\nttest\</em></p></td>
</tr>
<tr class="odd">
<td><p>Canvas_Clip.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Canvas_Opacity.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Canvas_RenderTransform.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Canvas_Resources.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Canvas_xml_lang.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Cars.bmp</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>CCDApiStress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>CombinedGeometry.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Configdisplay.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Crash.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Crash3DTest.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>CrashDrawingTest.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>CrashHostTest.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Crashtriage.ini</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>CrashVideoTest.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>CrashXamlTest.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>D3d10ref.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>D3dcompiler_test.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>D3dref9.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>D3dx10_test.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>DashedPen.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Devicestress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Devstress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Display_Stress.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Display_Stress_Premium-x64.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Display_Stress_Premium-x86.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Display_Stress_Standard-x64.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Display_Stress_Standard-x86.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>DrDeath.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>DrDeath2.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>DropShadow_BlurRadius0.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>DropShadow_ColorBlue.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>DropShadow_Opacity05.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>DropShadow_ShadwoDepth100.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>DropShadow_WithTransform.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Ellipse.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Factories.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>FillRule.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GeometryGroup.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>GlyphRunDrawingFilledInRectangle.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GlyphsDrawingBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>GlyphsImageBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GlyphsSample.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>GlyphsShadow.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GlyphsSideways.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>GlyphsVisualBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GlyphsWithBitmapEffectAndClip.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>GlyphsWithBitmapEffectAndOpacityMask.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>GraphicsScenario.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Gumball.bmp</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Gumball.jpg</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Gumball.png</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Heightfield.bmp</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>HostingSample.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Hyper9.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Imagebrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Lddmstress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Life.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>LinearGradient.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>LinearGradientScaleTransformTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>LinearGradientTransformTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>LineCaps.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>LocalDeformablePRT10_d2d.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Lockstress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Macaw.jpg</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>MaterialStates.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>MinimumTestRuntime.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Moo.bmp</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Moo2.bmp</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>MultiInput_DoubleInputEffect_EffectWithDrawingImageInVisualBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>MultiInput_MultiInputEffect_NestUnderBlur.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>MultiInput_MultiInputEffect_VisualBrushTransform.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Natived3dapp.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Ntlog.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>NTLogger.ini</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>OpacityMask.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Path_Clip.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Path_DashPen.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Path_Data.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Path_Fill.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Path_Opacity.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Path_RenderTransform.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>PathGeometry.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Puppies.jpg</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>QuadraticPath.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>RadialGradient.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>RadialGradientTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>RadialGradientTransformTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Radius0BoxBlur.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Radius10GaussianBlur.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Radius50BoxBlur.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Rectangle.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Rendereffect.fx</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>RenderingBias.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Rotshape.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Sch_Stress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>ShaderEffects.dll</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>SimpliestBlur.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>SolidColorBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>SolidColorTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>SolidColorTransformTemplate.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Spin9.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>StrokeLineCaps.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>StrokeLineJoin.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>StrokeMiterLimit.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Surfboard.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TDRWatch.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TextDrawingBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TextTransformed.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TextWaterfall.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>TextWithLinearGradientForeground.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>TextWithRadialGradientForeground.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Three3DRings.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Trek.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Unmappedaperture.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>VisualBrush.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>WDDM_Targeted_12Hrs-64bit.crash</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Wdk.wmv</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>Wdksample.wmv</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="even">
<td><p>Winsatstress.exe</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
<tr class="odd">
<td><p>XorGeometry.xaml</p></td>
<td><p>[testbinroot]\nttest\</p></td>
</tr>
</tbody>
</table>

 

 

 






