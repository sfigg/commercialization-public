
# Delivering a great energy efficiency experience

Battery life and energy efficiency are among the most active topics in
modern computing. Recent studies indicate that 76% of consumers rate
battery life as "extremely important" when choosing a tablet and mobile
PC. Because of its role as a competitive differentiator, battery life is
crucial.

It’s important to take a holistic approach to optimize the power
consumption (watts used) across the Windows base hardware platform,
Windows image, and extensions (drivers, software preload, services, and
so on).

## Considerations

The energy efficiency and battery life of your PC is affected at every
step of the design and development process.

### How to select battery capacity

Determine your battery life goals, industrial design, target cost, and
the target market for your PC to help you select an appropriate battery
capacity. Consider this early in your planning and development phase so
that you don’t end up with too small of a battery to meet your goals.
For more information about modeling battery life runtime, see the
*Battery Guidelines* document included with the WEGs on Connect.

### How to design an OEM image to improve battery life

The design of a complete Windows image can improve or degrade battery
performance. For example, your selection of apps, drivers, and power
plans can change the power consumption of the PC.

You can run tests during all phases of image design and development to
identify performance problems early and make design decisions based on
the results.

## Recommended goals

The goals described in this section are intended to help you design a
fully integrated platform that delivers a competitive battery life while
running Windows. The goals described aren’t a commitment for Windows to
deliver, they are targets for you to meet on your hardware. The goals
will continually be adjusted based on feedback from ecosystem partners,
Windows development, and platform power management validation.

Carefully analyze the device's battery capacity and power draw to meet
your battery life goals. Measure reasonable consumer usage scenarios and
environments to accurately project your device’s battery life.

The following tables show what our user research indicates is the
minimum quality bar according to user expectations. You should also
compare your battery life goals with in-market products. You can use the
Windows battery assessment test available in the Windows Assessment and
Deployment Kit (ADK), a comparable energy efficiency test tool or a
comparable test to measure reasonable consumer usage scenarios and
environments to validate battery life.

| Scenario                                                                      | Tablet (CS)     | Convertible     | Notebook |
|-------------------------------------------------------------------------------|-----------------|-----------------|--------------|
| Battery life video playback @ 150 - 200 nits (hours) depending on form factor | &gt;= 12        | &gt;= 6         | &gt;= 5 |


| Metric                               | Target |
|--------------------------------------|--------|
| System timer resolution              | 15 ms |
| Maximum processor state on DC and AC<br/>(Processor Power Management)<br/>Doesn’t apply to connected standby–capable systems. |   100% |

                                         


## Validation and testing

You can use the Windows Assessment Toolkit, a comparable energy
efficiency test tool or a comparable test to measure reasonable consumer
usage scenarios and environments to improve performance of your PC
beyond minimum requirements. Windows assessments related to active
workload battery life include:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Idle Energy Efficiency Job</strong></dt>
<dd>
<p>Identifies issues with software, drivers, and devices during system idle
that reduce your system’s energy efficiency.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Battery Run Down Job</strong></dt>
<dd>
<p>Measures battery life during a typical system usage scenario and reports
energy efficiency issues during idle periods of the system.</p>
<p>This job includes both the Idle Energy Efficiency workload and a Local
Video Playback Energy Efficiency workload.</p>
</dd>
</dl>


### Changes in Energy Efficiency job parameters for ADK 8.1

There have been some modifications to the Energy Efficiency job
parameters UI in the ADK 8.1:

-   If the **Loop workloads until specified battery level** checkbox is
    selected, then the assessment will run only one loop of all
    chosen workload.

-   If you choose to **Generate diagnostic information** then you will
    get **diagnostics**, which will collect traces during the
    workload runs.

	-   **Create Power Profile Issues** will collect Powercfg.exe /energy
		data and add it to the report.

	-   **Collect analysis Trace** will allow you to collect an advanced
		Idle analysis trace which runs for 3 minutes and gathers CPU
		sampling stacks.

The ADK 8.0 scenarios can then be translated into the following:

-   Rundown without diagnostics

	-   Choose **Loop workloads until specified battery level**.

		Uncheck **Generate diagnostic information**.

-   Rundown with diagnostics

	-   Choose **Loop workloads until specified battery level**.

	-   Check **Generate diagnostic information**, along with **Create Power
		Profile Issues** and **Collect Analysis Trace**.

-   Diagnostics only

	-   Uncheck **Loop workloads until specified battery level**.

	-   Check **Generate diagnostic information**, along with **Create Power
		Profile Issues** and **Collect Analysis Trace**.

### Configure your PC for testing

A processor-intensive driver, an incorrect firmware setting, or a poorly
configured power setting can cause a significant increase in power
consumption. When designing and testing your system, experiment with
multiple configurations of these aspects to achieve the best balance of
performance and energy efficiency. Use your test results to drive
improvements back into the design of your PC and your Windows image to
deliver a great active workload battery life.

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze hardware components</strong></dt>
<dd>
<p>Ask hardware manufacturers for their
power-consumption test results for each hardware component.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze drivers</strong></dt>
<dd>
<p>Validate each new driver for battery impact. As
each new driver is added to the system, observe its effect on power
consumption. One poorly performing driver can greatly affect system
performance.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Analyze apps, services, and other software</strong></dt>
<dd>
<p>Validate each new app
and system service for battery impact. As each new app is added to the
system, observe the effect to power consumption. One poorly performing
app can greatly affect system performance.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Configure power plans</strong></dt>
<dd>
<p>Optimize Windows power-plan settings to
balance performance needs and battery life. This is not applicable to
connected standby–enabled systems.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Test the power of the PC</strong></dt>
<dd>
<p>Compare the overall power of the PC to the
power consumed using a Windows installation with only drivers installed.
Some PCs have shown a 40% decrease in battery performance when
preinstalled apps and power policies are added to the image.</p>
</dd>
</dl>

We recommend that you use the following environment settings when you
test battery life on your PC. These settings will help you to get
consistent and reliable data for realistic user scenarios.

<table>
<thead>
<tr class="header">
<th>Component</th>
<th>Setting</th>
<th>Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Display setting</strong></td>
<td>Brightness = 150 - 200 nits depending on form factor</td>
<td>Brightness is measured on a white desktop background with the brightness meter placed in the center of the screen</td>
</tr>
<tr class="even">
<td><strong>Power policy</strong></td>
<td><p>Balanced</p>
<p>Display dimming timeout disabled</p>
<p>Display off timeout disabled</p>
<p>Adaptive brightness disabled</p>
<p>S3 timeout disabled (does not apply to systems capable of connected standby)</p>
<p>S4 timeout disabled</p></td>
<td>n/a</td>
</tr>
<tr class="odd">
<td><strong>Radios</strong></td>
<td><p>Wi-Fi on <em>and</em> connected</p>
<p>All other radios on but not connected</p></td>
<td>Connect to a consumer class wireless router that has Internet access</td>
</tr>
<tr class="even">
<td><strong>Other networking</strong></td>
<td>Ethernet disconnected</td>
<td><p>Disconnect before starting test</p>
<p>Reconnect after battery rundown is complete</p></td>
</tr>
</tbody>
</table>



## Tools and technical reference

You can learn more about battery life and download tools to help you
analyze performance from these resources:

| Resource title                                               | Content type | Description                                                                                                                                                                                                                                                                | Download link |
|--------------------------------------------------------------|--------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Windows Assessment and Deployment Kit<br/><br/>Idle Energy Efficiency and Battery Run Down jobs | Tool | The Windows ADK helps you measure energy efficiency on your PC. | Use the latest Windows ADK drop from Connect |
| Windows Engineering Readiness Training: Battery Life Session | Reference    | Includes information on user research, using the ADK tools, and selecting a battery.  | [Connect](http://go.microsoft.com/fwlink/?LinkId=306535) (https://connect.microsoft.com/site1304/Downloads/DownloadDetails.aspx?DownloadID=48261) |
| Delivering Great Performance and Battery Life                | Video        | Describes how to create high-performance and energy efficient experiences on the full spectrum of Windows 8 platforms. Learn app design and development practices that maximize the performance of apps and power consumption as a whole.                                  | [Channel9](http://go.microsoft.com/fwlink/?LinkId=306082) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-459T) |
| Improving Battery Life and Energy Efficiency                 | Video        | Demonstrates how the Windows ADK has made it easy to consistently measure battery life, and to identify and fix energy efficiency problems. Learn how to configure battery life assessments, and design assessment workflows, for multiple scenarios.  |  [Channel9](http://go.microsoft.com/fwlink/?LinkId=306083) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-149P) |
| Results for Idle Energy Efficiency                           | Document     | This topic helps you interpret the results produced by an Energy Efficiency job that uses the Idle workload. |  [MSDN](http://msdn.microsoft.com/en-us/library/windows/hardware/jj130809.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/jj130809.aspx)  |
| Mobile Battery Life Solutions                                | Document     | Outlines issues and solutions for advancing battery life for portable computers that run the Windows 7 operating system. Provides system design, power policy guidelines, and preinstallation configuration recommendations as well as test configuration recommendations. | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306534) (https://msdn.microsoft.com/en-us/library/windows/hardware/dn641606.aspx) |
| Using PowerCfg to Evaluate System Energy Efficiency          | Document     | Provides information about functionality in the PowerCfg utility for evaluating system energy efficiency for the Windows family of operating systems.  | [MSDN](http://go.microsoft.com/fwlink/?LinkId=306533) (https://msdn.microsoft.com/en-US/library/windows/hardware/dn550976) |


