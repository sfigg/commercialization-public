---
author: joshbax-msft
title: Ambient Light Sensor Calibration Test (ARM)
description: Ambient Light Sensor Calibration Test (ARM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8ff842f4-07ab-4928-8c47-181b67436bdf
---

# Ambient Light Sensor Calibration Test (ARM)


This test verifies the ALS has a wide enough viewing angle to not impact sensor test scenarios.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Input.Sensor.ALS.CalibrationTest</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1</p></td>
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
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Sensor Device Testing Prerequisites](sensor-device-testing-prerequisites.md)

The goal of this test is to guarantee that the ALS has a wide enough viewing angle. As seen in the following image, the viewing angle is affected by the depth of the embedded ALS as well as the width of the aperture (using a light pipe can also make a difference).

![viewing angle](images/hck-winb-fig1-viewingangle.png)

**Figure 1 Viewing Angle**

Generally, the observed lux attenuates based on the cosine of the incident angle of the light – this is unavoidable. However, a viewing angle that is too small will prematurely cause an exponential drop in lux readings, detracting from the user experience by falsely triggering our Autobrightness feature and other features that are dependent on ALS.

Therefore, the test measures the impact of incident angle on the fully integrated system’s ALS.  There are two main stages to this test after setup.

**Pre-Test**: Use an adjustable halogen light source and verify with a lux meter at the testing distance (~1 ft) that there is 100 lux incident light.  There should be no other light source in the room (top-left image below).

1.  Place the System Under Test so that the ALS aperture is directly under the light with NO offset (top-right image below).  The device must read within +/- 10% accuracy: 90-110 lux.

2.  Rotate the System Under Test about the ALS aperture so that the incident light is at a 35 degree angle (bottom images below).  The aperture should be at the same testing distance as before.  The device must read NO MORE than 50% attenuation from before: 50-110 lux.

    ![light sources](images/hck-winb-fig2-lightsource.png)

    **Figure 2 Light Sources**

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Input Testing](troubleshooting-deviceinput-testing.md).

If you cannot meet the accuracy requirements when the device is exposed to light at a 45 degree angle and the ambient light sensor reading is below 30% attenuation, you should decrease the Change Sensitivity of the senor by using the [Sensor Diagnostic Tool](http://msdn.microsoft.com/library/windows/hardware/Hh780319.aspx) included with the Windows Driver Kit.

 

 






