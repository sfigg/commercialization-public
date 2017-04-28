
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


# Instrumenting Your Code with ETW

Event Tracing for Windows (ETW) is a high speed tracing facility built
into Windows. Using a buffering and logging mechanism implemented in the
operating system kernel, ETW provides an infrastructure for events
raised by both user mode (apps) and kernel mode components (drivers).
ETW can be used for system and app diagnosis, troubleshooting, and
performance monitoring. Historically, tracing was used to diagnose
unexpected behavior both in hardware and apps. Recently there has been
increasing demand for managing and monitoring system stability and
performance to meet business demands. As a result, performance analysis
in development and production environments became a critical part of the
computing world. In contrast to failures and errors, performance related
issues are difficult to detect and diagnose because they’re often
dependent on configuration and workload. Tracing in a production
environment provides valuable data for detecting root-cause performance
related issues, as well as capacity planning and evaluation.

The ETW mechanism lets you control tracing sessions dynamically, which
makes it possible to capture detailed tracing in production environments
without system reboot or app restart.

This section will show you how to use ETW to do precise performance
measurement and analysis.

-   Kernel-mode driver code
-   Traditional desktop processes and services
-   Windows Store apps (C\#)

## Overview

Following are some of the beneficial characteristics of ETW:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Robust</strong></dt>
<dd>
<p>It provides efficient buffering and logging mechanisms.
    The tracing buffer is managed by the kernel. Tracing through ETW is
    immune to app crashes and hangs. In case of system failure, unsaved
    events are accessible in a memory dump file.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Dynamic</strong></dt>
<dd>
<p>Tracing sessions can be started, stopped, reconfigured,
    and paused dynamically without system reboot or app restarts. ETW
    offers multiple modes to meet various demands.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Built into Windows</strong></dt>
<dd>
<p>Other than the controller app, you don’t
    need additional tools. Windows has a few inbox controllers as well
    as consumer apps.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Lightweight</strong></dt>
<dd>
<p>The overhead of historical tracing and saved log
    files are highly optimized so they don’t affect app or
    system performance. The logging mechanism uses kernel mode buffers
    that will be written to disk by a separate writer thread so that
    overhead from tracing is limited.</p>
</dd>
</dl>

Only basic text-based tracing mechanisms were available in Windows
before Windows 2000. They were **DbgPrint**() and **DebugPrint**() APIs. They
required debuggers and typically weren’t dynamically controllable. The
Windows tracing mechanism evolved over time, and there are four
different tracing mechanisms available today. ETW and Event Log API sets
were merged into the Unified Event Logging API set in Windows Vista.
This gives users and developers a unified mechanism for raising events.

There are three types of events:

1.  Windows software trace preprocessor (WPP) and Classic ETW

2.  Managed Object Format (MOF): The MOF is a way to describe WMI objects and enable and decode events.

3.  Manifest based: An XML-based unified tracing definition was
    introduced in Windows Vista. An XML file contains elements for
    events that a provider writes. For more information, see [Writing an
    Instrumentation
    Manifest](http://go.microsoft.com/fwlink/?LinkId=309789) (https://msdn.microsoft.com/library/dd996930.aspx).

![Note](images/note-regular.gif)**Note**&nbsp;&nbsp;&nbsp;The guidance in this section will focus solely on manifest-based event
instrumentation.

Here are some important characteristics of ETW:

-   Developers can choose the right sets of implementation based on intended usage (e.g., Printf, like WPP implementation, is easy to add for debugging purpose events)

-   The infrastructure manages commonly used information like timestamps, function names, and source file line numbers

-   The same implementation is used for user mode apps and kernel mode components

-   It’s accessible in crash dumps and live debug

-   It can be redirected to the kernel debugger for a real-time view

-   Real-time view

-   Log files are saved in a binary log file (an ETL file)

-   It supports multiple processes logging

-   High throughput

-   Log files can be viewed on another machine

-   It supports circular buffering for continuous logging and monitoring

-   It can be grouped into one of the channels based on the target audience

## ETW architecture

There are four main components in ETW: provider, session, controller,
and consumer.

![Diagram of the four main components of the ETW architecture.](images/weg-diagram-etw-architecture-four-components.png)

### Provider

A *provider* is an instrumented component that generates events. A
provider can be a user mode app, a kernel mode driver, or the Windows
kernel itself. In addition to fixed event data (header), an event can
carry user data.

An *event* is an event-based representation of data. The data can be
used for in-depth analysis. An event can also be used to produce
counters. *Counters* provide a sample-based view of data. They typically
contain a small set of data to show current state, for example I/O bytes
per second and interrupts per second.

A provider must register with ETW and send events from its code by
calling the ETW Logging APIs. Providers register a callback function for
enable and disable notification so that tracing can be enabled and
disabled dynamically.

### Session

The ETW session infrastructure works as an intermediate broker that
relays the events from one or more providers to the consumer. A session
is a kernel object that collects events into kernel buffer and sends
them to a specified file or real-time consumer process. Multiple
providers can be mapped to a single session, which allows users to
collect data from multiple sources.

### Controller

A controller starts, stops, or updates a trace session. A session is a
unit for tracing. Providers are mapped (or enabled) to a specific
session. A controller enables and disables providers so that they can
start sending events to ETW. Controller functionalities can be invoked
with tools provided by Microsoft, or you can write your own app.

Logman.exe is an in-box controller app. Windows Performance Recorder
(WPR) in the Windows Performance Toolkit is the recommended controller
process.

### Consumer

A *consumer* is an app that reads a logged trace file (ETL file), or
captures events in an active trace session in real time, and processes
events. Event Viewer and Resource Monitor are in-box ETW consumer apps.

Windows Performance Analyzer (WPA) in the Windows Performance Toolkit is
the recommended consumer process.

## Implementing ETW instrumentation

<!--There was no content provided here in the original Word file.-->

### Plan your instrumentation

Decide where you’ll log ETW events in your code. This should correlate
with important user scenarios or frequent use cases that you want to
measure, analyze, and eventually improve. These are some examples of
what could be instrumented:

-   State changes
-   Begin/End of significant operations
-   Resource creation/deletion
-   Other events related to performance or reliability
-   Debug events

### Create a manifest file and implement your provider

Manifest-based ETW events can be implemented in user-mode apps,
including services, as well as in kernel mode components like drivers,
using an XML file called the *event manifest*. For more information, see
[Event Tracing Functions](http://go.microsoft.com/fwlink/?LinkId=309791)
(https://msdn.microsoft.com/library/windows/desktop/aa363795.aspx).

An event manifest is divided into the following sections:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Provider definition: &lt;provider&gt;</strong></dt>
<dd>
<p>Contains the name and GUID of the provider you’re creating, and the
location of the binary that’s instrumented (eventually containing the
instrumentation resources needed by the ETW framework).</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Event payload: &lt;templates&gt;</strong></dt>
<dd>
<p>Contains definitions of the data types that will be included as payload
in the events. Available types include:</p>
<ul>
<li>
<p>Signed and unsigned 8-bit, 16-bit, 32-bit, and 64-bit integers</p>
</li>
<li>
<p>ANSI and Unicode strings</p>
</li>
<li>
<p>Float and double</p>
</li>
<li>
<p>Boolean, Binary, GUID, Pointer, FILETIME, SYSTEMTIME, SID, and HexInt32</p>
</li>
</ul>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Static event data</strong></dt>
<dd>
<p>Used to help interpret, sort, and group the events.</p>
<ul>
<li>
<p>&lt;Tasks&gt; define the names of the operations (or tasks) that are being instrumented.</p>
</li>
<li>
<p>&lt;Opcodes&gt; define the types of operations that you want to
    create for your events, like the Start event, the Stop event for
    delimiting operations in time, the Informational event for logging
    debug data, and so on.</p>
</li>
<li>
<p>Event definition: &lt;events&gt;</p>
<p>Ties together payload and static data. Your code will emit events as
defined by what is listed in this section.</p>
</li>
</ul>
</dd>
</dl>


Here’s an example of an event manifest:

```
<provider
    guid="{3877cf22-0702-4dfc-965e-7fdc7780cd74}"
    name="MyEventProvider"
    symbol="MY_EVENT_PROVIDER"
    messageFileName="%temp%\MyProviderBinary.exe"
    resourceFileName="%temp%\MyProviderBinary.exe“
    >
  <templates>
    <template tid="T_MyProvider_1">
      <data inType="win:Int32" name="Operation Id" />
      <data inType="win:Int32" name="Memory Allocated (MB)" />
    </template>
  </templates>
  <opcodes>
    <opcode name="DebugInfo" symbol="_DebugInfo" value="10"/>  
  </opcodes>
  <tasks>
    <task name="OpMemAllocation" symbol="OpMemAllocation_Task" value="1“
          eventGUID="{87ebca33-bf25-442c-9256-82ba484586e8}"/>
  </tasks>
  <events>
    <event symbol="DebugInfo" template="T_MyProvider_1" value="200" 
       task="OpMemAllocation" opcode="DebugInfo" />
  </events>
```

To write your manifest file, you can use:

-   Manifest Generator (ECManGen.exe), available in the Platform SDK

-   Visual Studio (Eventman.xsd), available in the Platform SDK

### Compile the event manifest

The next step is to compile the manifest by using the [Message
Compiler](http://go.microsoft.com/fwlink/?LinkId=309792)
(<https://msdn.microsoft.com/library/windows/desktop/aa385638.aspx>)
tool (mc.exe), which is available in the Platform SDK. This will
generate a few files needed to instrument, compile, and build your
instrumented code:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileName.h</strong></dt>
<dd>Contains event descriptors to use in code.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileName.rc</strong></dt>
<dd>A resource compiler script.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>MSG00001.bin</strong></dt>
<dd>A language resource.</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>ManifestFileNameTEMP.bin</strong></dt>
<dd>A template resource (provider and metadata).</dd>
</dl>

To compile user mode code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -um** \[*ManifestFileName*\]

To compile kernel mode code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -km** \[*ManifestFileName*\]

To compile managed or JavaScript code, type this:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -cs** \[*ManifestFileName*\]<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -css** \[*ManifestFileName*\]<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**mc.exe -generateProjections** \[*ManifestFileName*\]

### Update your code

The next step is to add instrumentation to your code. Run Visual Studio,
add the header file generated by the Message Compiler, and don’t forget
to build the resource file into your program.

Look for the following in the header to find what macros (or class
methods) to call in your code:

-   EventRegister&lt;*YourProviderName*&gt;

	Used to register your provider (at app start).

-   EventUnregister&lt;*YourProviderName*&gt;

	Used to unregister your provider (at app finish).

-   EventWrite

One macro (or method) for each event defined in your manifest (in the
&lt;events&gt; node).

Once your code is properly instrumented, you can build your binary.

For drivers, review the
[EventDrv](http://go.microsoft.com/fwlink/?LinkId=256109)
(https://code.msdn.microsoft.com/windowshardware/Eventdrv-42894135)
sample available on MSDN. Register the driver as an event provider by
using the ETW kernel mode EtwRegister function:

-   Add this function in your DriverEntry routine after the code that
    creates and initializes the device object.

-   Match the call to the EtwRegister function with a call to
    EtwUnregister in your driver's Unload routine.

### Log and visualize events

Once you have a properly instrumented component, you can start logging
events on a test system. You first need to prepare that system for
logging by registering your provider by using wevtutil, the inbox tool.

1.	Copy your component to the location that was specified in your manifest by the resourceFileName attribute:

	**xcopy /y** *MyProviderBinary.exe* **%temp%**

2.	Register the providers:

	**wevtutil um** *etwmanifest.man*<br/>
	**wetvutil im** *etwmanifest.man*

3.	Verify that the provider is visible:

	**logman query providers** 

	Your provider name/GUID should show up in the list.

Remember that event metadata is stored in the instrumented binary, not
in the manifest file. Using wevtutil to install a manifest on the PC
puts a link into the registry connecting the provider GUID to the binary
that contains the event metadata. The name and path of that binary is
taken from the manifest file provided. You can discard the manifest file
afterwards.

This implies that the binary that contains the event metadata also needs
to be accessible and loadable, as it is on the machine you’re using to
decode. WPR/xperf makes the process more portable by injecting the
metadata in the trace.

Now that your provider is properly installed on this system, you can
start a tracing session to gather events from your component into an ETL
file. You can use either Windows Performance Recorder (WPR) or Xperf, the
command line tool, both available in the Windows Performance Toolkit.

1.  Start tracing:

	**xperf** **-start** *MySession* **-on** *MyEventProvider* **-f** *MySession.etl*

	In that command line, **-start** gives the event collection session a name,
	and **-on** tells ETW that you want to collect events from your provider in
	this session. (There can be multiple **-on** arguments.)

2.	Execute your workload.

3.	Stop tracing:

	**xperf** **-stop** *MySession*

Once you have an ETL file, you can open it with the Windows Performance
Analyzer tool and visualize your events with the Generic Events graph
and table.

![Graph and charts of generic events in Windows Performance Advisor (WPA).](images/weg-wpa-screen-generic-events-graph-and-table.jpg)

# Performance Tools

Microsoft provides tools to help you improve the performance of your
device. You can use test tools from other publishers to measure and
improve the performance of your devices as well.

This section includes information about the Windows ADK and download
links for the Windows ADK and other Microsoft performance tools.

## Download performance tools

You can download these tools to assess and improve the performance of
your PC.

<table>
<thead>
<tr class="header">
<th><strong>Tool</strong></th>
<th><strong>Description</strong></th>
<th><strong>Download link</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Windows Assessment and Deployment Kit (ADK)</td>
<td><p>Tools to assess and deploy Windows images. You can use tools in the Windows ADK to improve the performance of your PC running Windows beyond the minimum requirements of the Windows HCK.</p>
<p>Includes:</p>
<ul>
<li><p>Windows Assessment Toolkit</p></li>
<li><p>Windows Assessment Services</p></li>
<li><p>Windows Performance Toolkit (WPT)</p></li>
</ul></td>
<td>Use the latest ADK drop from Connect.</td>
</tr>
<tr class="even">
<td>Windows Hardware Lab Kit (HLK)</td>
<td>Tools to test whether your PC running Windows meets the requirements for compatibility. You can use the performance tools in the Windows ADK to improve the performance of your PC beyond the Windows HLK requirements.</td>
<td>Use the latest HCK drop from Connect.</td>
</tr>
<tr class="odd">
<td>PowerCFG.exe</td>
<td><p>Inbox tool to control power schemes (also named power plans), to use the available sleep states, to control the power states of individual devices, and to analyze the system for common energy-efficiency and battery-life problems.</p>
<p>Prerelease <a href="http://go.microsoft.com/fwlink/p/?LinkID=264942">MSDN documentation</a> (https://technet.microsoft.com/en-us/library/hh824902.aspx?f=255&amp;MSPPError=-2147217396) might not yet include new features like /sleepstudy.</p></td>
<td>Inbox.</td>
</tr>
<tr class="even">
<td>PwrTest.exe</td>
<td><p>Test tool that enables developers, testers, and system integrators to exercise and record power management information from the system. You can use PwrTest to automate sleep and resume transitions and to record processor power management and battery information from the system over a period of time.</p>
<p>See <a href="http://go.microsoft.com/fwlink/?LinkId=309778">PwrTest</a> (https://msdn.microsoft.com/library/windows/hardware/ff550682.aspx) for more information.</p></td>
<td>Available in WDK (see below).</td>
</tr>
<tr class="odd">
<td>Media eXperience Analyzer</td>
<td>Media performance, quality, and power analysis tool that’s used by developers and testers to optimize media scenarios on devices running Windows. This tool helps you analyze failures in media playback, webcam capture, and real-time communications HCK requirements.</td>
<td><a href="http://www.microsoft.com/en-us/download/details.aspx?id=43105">Download center</a> (http://www.microsoft.com/en-us/download/details.aspx?id=43105)</td>
</tr>
<tr class="even">
<td>Visual Studio Professional 2012</td>
<td>Visual Studio Professional 2012 is a professional-quality integrated development environment that simplifies the tasks of creating, debugging, and deploying software for Windows, Microsoft Office, and the web.</td>
<td><a href="http://go.microsoft.com/fwlink/?LinkId=309780">MSDN</a><br />
(https://msdn.microsoft.com/en-us/windows/hardware/gg454513)</td>
</tr>
<tr class="odd">
<td>Windows Driver Kit (WDK)</td>
<td>WDK integrates with Visual Studio Professional 2012 to provide a complete environment for developing, deploying, testing, and debugging drivers.</td>
<td>Use the latest WDK drop from Connect.</td>
</tr>
</tbody>
</table>


# Understanding the Windows ADK tools

The Windows Assessment Toolkit and the Windows Performance Toolkit make
up the Windows Assessment and Deployment Kit (ADK). Together they
provide a complete solution for evaluating overall computer performance
and automating the deployment of the Windows operating system to new
PCs.

This section focuses on the Windows Assessment Toolkit. The assessment
results are used to diagnose potential problems, so that the hardware
and apps you develop are responsive and have a minimal impact on battery
life, startup performance, and shutdown time. The same assessments are
available for OEMs, ISVs, IHVs, enthusiasts, and other members of the
community to establish a common framework to measure, compare, and
review various aspects of quality.

Important business objectives can be achieved by using the Windows
Assessment Toolkit:

<dl>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Measure & compare</strong></dt>
<dd>
<p>You can use the data to compare components (apps, drivers, or both)
against other similar components to facilitate your decision making,
recommendations, and competitive benchmarking.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Improve quality</strong></dt>
<dd>
<p>You can work independently or involve partners to build a component
(app, driver, or both) as per pre-defined quality criteria.</p>
</dd>
<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Track quality</strong></dt>
<dd>
<p>You can create a process for efficiently tracking the quality of
component versions and detect regressions after each iteration.</p>
</dd>
</dl>


The Assessment Toolkit is typically used in these scenarios:

<table>
<thead>
<tr class="header">
<th>Scenario</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>&quot;Black box&quot;</td>
<td>Run a predefined job and examine the results for any unusual values or indications of issues with drivers, memory usage, or other areas that the assessments address.</td>
</tr>
<tr class="even">
<td>Comparing results</td>
<td><ul>
<li><p>Run a single assessment using the recommended settings on any computer that’s running a supported operating system.</p></li>
<li><p>Use the Windows AC to package the job to run on another computer.</p></li>
<li><p>Save the results to a share so that you can compare them.</p></li>
<li><p>Compare the results from any computer running Windows with those of any other supported operating system to identify differences.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td>Clean computer</td>
<td>Run assessments on a clean computer that includes only the operating system to establish baseline system results.</td>
</tr>
<tr class="even">
<td>Computer with added hardware or app components</td>
<td>Add new hardware or apps to the clean computer system and then re-run the assessments to compare the results with clean computer results.</td>
</tr>
<tr class="odd">
<td>Creating assessments</td>
<td>Use public APIs to develop or extend an assessment, or integrate assessments with your tools and infrastructure.</td>
</tr>
</tbody>
</table>

For more information, see [Windows Assessments and Deployment
Kit](http://go.microsoft.com/fwlink/?LinkId=206587)
(https://msdn.microsoft.com/en-us/library/windows/hardware/hh825420.aspx).

<table>
<thead>
<tr class="header">
<th>Tool</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Windows Assessment Toolkit</td>
<td><p>Tools to discover and run assessments on a single PC. <em>Assessments</em> are tasks that simulate user activity and examine the state of the PC. Assessments produce metrics for various aspects of the system, and provide recommendations for making improvements. The Windows Assessment Toolkit includes:</p>
<ul>
<li><p>Windows Assessment Console</p></li>
<li><p>Assessments</p></li>
</ul>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=214554">Windows Assessment Toolkit</a> (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825508.aspx).</p></td>
</tr>
<tr class="even">
<td>Windows Assessment Services</td>
<td><p>App for remotely managing settings, PCs, images, and assessments in a lab environment where Windows Assessment Services is installed. This app can run on any PC that has access to the server that’s running Windows Assessment Services.</p>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=215628">Windows Assessment Services</a> (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825573.aspx).</p></td>
</tr>
<tr class="odd">
<td>Windows Performance Toolkit (WPT)</td>
<td><p>Tools to record system events by using Event Tracing for Windows, and a tool to analyze performance data in a graphical user interface. Includes:</p>
<ul>
<li><p>Windows Performance Recorder</p></li>
<li><p>Windows Performance Analyzer</p></li>
<li><p>Xperf</p></li>
</ul>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=228914">Windows Performance Toolkit</a> (https://msdn.microsoft.com/en-us/library/hh162945.aspx).</p></td>
</tr>
<tr class="even">
<td>Assessment Execution Engine (AXE)</td>
<td><p>The Assessment Execution Engine (AXE) lets you manage and execute Windows system assessments. AXE provides infrastructure needed to manage assessments using a UX tool or script, run assessments, make measurements, process raw data into results, run diagnostics, and publish the results.</p>
<p>For more information, see <a href="http://go.microsoft.com/fwlink/?LinkId=309781">Assessment Execution Engine</a> (https://msdn.microsoft.com/library/windows/desktop/hh437709.aspx).</p></td>
</tr>
</tbody>
</table>


## Understanding the Windows Performance Toolkit

| Resource title                                               | Content type  | Description                                                                                                                                                                                                                                                                                                                 | Link |
|--------------------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Windows Performance Analyzer                                 | Documentation | WPT Documentation and videos                                                                                                                                                                                                                                                                                                | [MSDN](https://msdn.microsoft.com/en-us/library/windows/hardware/hh448170.aspx) (https://msdn.microsoft.com/en-us/library/windows/hardware/hh448170.aspx) |
| CPU Analysis Techniques                                      | White paper   | This guide provides detailed techniques that you can use to investigate Central Processing Units (CPU)-related issues that impact assessment metrics.                                                                                                                                                                       | [MSDN](http://msdn.microsoft.com/en-us/library/windows/desktop/jj679884.aspx) (https://msdn.microsoft.com/en-us/library/windows/desktop/jj679884.aspx) |
| Engineering performance with the Windows Performance Toolkit | Video         | The Windows Performance Toolkit (WPT) is a powerful tool, used widely by the Windows engineering team within Microsoft, for improving app and system performance. This session focuses on providing tips and tricks, in a case study format with videos, for using the WPT along with WPS traces to optimize your own apps. | [Channel 9](http://channel9.msdn.com/events/BUILD/BUILD2011/HW-59T) (http://channel9.msdn.com/events/BUILD/BUILD2011/HW-59T) |



# Setting up a test environment for ADK and WAS

Installing Windows Assessment Service (WAS) server to a server machine
is straightforward. But configuring the network environment might not be
so simple. Incorrect network topology can cause assessment job failures
for various reasons. It’s important to understand your organization’s
requirements, network policy, and so on.

Before you begin, get familiar with those two resources:

-   [Windows Assessment Services Step-by-Step
    Guide](http://go.microsoft.com/fwlink/?LinkId=215630) (https://msdn.microsoft.com/en-us/library/windows/hardware/hh825315.aspx)

-   [Installing Windows Assessment
    Services](http://go.microsoft.com/fwlink/?LinkId=253667) (https://msdn.microsoft.com/library/windows/hardware/hh825515)

## Network topology considerations

This section covers the things you have to consider to implement a WAS
infrastructure in your lab, and some optional items to achieve
additional features and automations. The objective is to set up a local
network to better simulate the “quiet” environment that customers will
experience at home.

These items are required:

| Item               | Type              | Note |
|--------------------|-------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Ethernet           | Hardware          | WAS requires Ethernet. For robustness and efficiency, we recommend gigabit Ethernet. |
| Symbols            | Internet access   | ADK’s auto-analysis feature doesn’t work without symbol files. After RTM, operating system binaries are updated via Windows Update, and it isn’t practical to collect updated symbol files. We recommend that you use public symbol server and cache the symbol files locally for re-use.<br/><br/>For Connect operating system drops, use the provided symbols packages and cache them locally on the WAS server. ||
| Wi-Fi Access Point | Hardware          | Recommended to connect to a Wi-Fi network when you run Energy Efficiency assessments. |
| DHCP Server        | Hardware/Software | PXE Boot requires DHCP. **The WAS server can be a DHCP server as well**. You can use a Wi-Fi router as a DHCP server. If you don’t plan to push the operating system image by using WAS via PXE boot, you don’t have to have DHCP. |
| File Share         | Hardware          | Depending on how you want to store your results files. **Results can be stored on the WAS server as well.** |
| USB Flash Drives   | Hardware          | You can boot into Windows PE to inventory a bare metal machine to WAS, for example. |

These items are not required, but are often necessary depending on your
needs and corporate network policy:

| Item                    | Type              | Note |
|-------------------------|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| DNS Server              | Hardware/Software | Typically not required, as your test network is single subnet. If you need to configure multiple subnets, you need to have name resolution, like DNS Server. |
| IP Control Power Switch | Hardware          | You can buy a power switch that you can control remotely. You can use this to fully automate Energy Efficiency assessments. |
| USB to Ethernet Adapter | Hardware          | Some form factors don’t have Ethernet. You can use Wi-Fi as well. We recommend that you use an USB Ethernet adapter with inbox driver support so you don’t have to customize Relax Windows PE. |

The diagram below illustrates one possible network configuration.

![Diagram of an example network of devices and connections.](images/web-diagram-network-example-configuration.png)

Typical corporations require this type of test environment to be
isolated from the corporate network. Corporate IT policy doesn’t allow
you to have your own DHCP server, for example. But you might want to
access WAS so that you can remotely schedule jobs, monitor progress, and
review results. In addition, performance data might be affected if you
have DUTs on the corporate network because the corporate network might
generate special network traffic.

Servers are typically equipped with a multiport Ethernet adapter or
multiple Ethernet adapters. You can consider making your WAS server a
multi-home server. A multi-home server has one Ethernet adapter
connected to an isolated test network and another to your corporate
network. With this configuration, people in your organization can access
WAS without being in your test lab, via WASC or Remote Desktop.

## Optional SQL database

Windows Assessment Services also lets you import results from one or
more Windows Assessment Services labs into a central SQL database for
generating consolidated reports. The SQL database is an optional
component of the WAS infrastructure.

Keep in mind that results stored in this optional SQL Server database
don’t include the Assessment Platform presentation layer and can’t be
viewed in the Windows Assessment Services - Client (Windows ASC). This
component lets you develop custom reporting solutions to fulfill any
needs not covered by the default WAS/WAC reporting layer.

You can use the ResultsUtil command to configure the WAS server to
automatically use the database or to import existing results in it. For
more information, see [ResultsUtil Command-Line
Options](http://go.microsoft.com/fwlink/?LinkId=309787)
(https://msdn.microsoft.com/library/windows/hardware/hh825313.aspx).

## Symbol files, symbol server, symbol cache

By Default, WAS sets the following symbol information. You can override
these settings with the setx command if you have other symbol servers or
locations.

```
set _NT_SYMBOL_PATH=

\\<WASServer>\Relax\Symbols;srv*http://msdl.microsoft.com/download/symbols

set _NT_SYMCACHE_PATH=\\<WASServer>\Relax\Symcache
```

# Onboarding and preparing a system for ADK testing

**To set up the device**

1.	Plug the Device Under Test (DUT) in to an AC power source and turn it on.

2.	Enter the firmware settings page (e.g., press F2 while booting).

3.	On the firmware settings page, set the following:

	-   Restore all default settings.

	-   Ensure that the DUT is configured to boot using UEFI without CSM.

4.	Install the OEM image to the DUT. If the OEM image is already
    installed, skip this step.

	Running Sysprep specializes on the factory floor and other processes
	should be part of the OEM deployment process.

5.	Complete the First Boot Experience.

	Use &lt;*system model*&gt;-&lt;*hardware stage* (EV, DV, or PV)
	&gt;-&lt;*revision number*&gt; as the Computer Name (for example,
	Frabrikam-ModelXYZ-PV-REV1). Always use the same computer name when
	testing any given model.

6.	You can use a local admin account instead of a Microsoft account for testing.

## Policies for setting up the device

-   Wired or OEM-provided network adaptors should be used over
    USB adapters.

	-   If you use local testing with WAC or prepackaged jobs, wired LAN
		doesn't apply.

	-   If you use WAS, we recommended that you deploy assessments through
		wired LAN. If you can’t, we recommend that you use wireless.

	-   Don’t enable sharing when connecting to a network.

-   UEFI should be enabled on all DUTs.

-   All DUTs should have all signed/certified Windows 8 drivers before
    you run the assessments.

-   No external devices should be plugged in unless they are provided
    with the system.

	
## Testing the device

**To test the device**

<ol>
<li>
<p>Activate the system using the appropriate product key.</p>
</li>
<li>
<p>Some operating system components change their behaviors based on some WinSAT metrics. Make sure that the WinSAT datastore has been populated in the following path: <strong>%WINDIR%\performance\winsat\datastore\</strong></p>
<p>You can run <strong>Winsat prepop</strong> on an elevated command line or follow the <a href="http://technet.microsoft.com/en-us/library/jj573887.aspx">deployment guidance</a> (https://technet.microsoft.com/en-us/library/jj573887.aspx).</p>
</li>
<li>
<p>Run Windows Update and install all driver and Windows updates (even optional ones).</p>
</li>
<li>
<p>Disable Automatic Updates by selecting <strong>Never check updates</strong> in the Windows Update settings. You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg <strong>add</strong> &quot;HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update&quot; /v AUOptions /t REG_DWORD /d 1 /f</strong></p>
</li>
<li>
<p>Use Device Manager to verify that the DUT has no problems with drivers or devices.</p>
<img src="images/weg-device-manager-dysfunctional-device.png" width="311" height="74" alt="A dysfunctional device is identified in Device Manager."/>
<p>Investigate and fix all devices marked with a &quot;!&quot;.</p>
</li>
<li>
<p>Download the latest virus definition files and perform a scan using the default antimalware app.</p>
</li>
<li>
<p>Force execution of IdleTasks once a day (when system is under test) to ensure that no maintenance tasks interfere with ADK assessment execution. Run the following command from an elevated command prompt:</p>
<p><strong>rundll32.exe advapi32.dll,ProcessIdleTasks</strong></p>
</li>
<li>
<p>Disable Windows Store updates, after applying all available updates.</p>
<ol type="a">
<li><p>Open the Store settings, go to <strong>App updates</strong>.</p></li>
<li><p>Set <strong>Automatically download updates for my apps</strong> to <strong>No</strong>.</p></li>
<li><p>You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate&quot; /v AutoDownload /t REG_DWORD /d 2 /f</strong></p>
</li>
</ol>
</li>
<li>
<p>Enable autologon.</p>
<ul>
<li>
<p>Certain assessments reboot the PC and require the user to log on before continuing the assessment run. Since the assessments are often measuring the boot time, delays caused by the user logging on to the PC can cause unpredictable variance in the metrics.</p>
</li>
<li>
<p>A best practice is to enable automatic logon for the user account running the assessments. You can configure automatic logon in the registry, under the following key: <strong>HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon</strong></p>
<p>The following five values should be configured.</p>
<table>
<thead>
<tr class="header">
<th>Value name</th>
<th>Value type</th>
<th>Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>DefaultUserName</td>
<td>REG_SZ</td>
<td>&lt;<em>TestUserName</em>&gt;</td>
</tr>
<tr class="even">
<td>DefaultPassword</td>
<td>REG_SZ</td>
<td>&lt;<em>LOCALPASSWORD</em>&gt;</td>
</tr>
<tr class="odd">
<td>AutoAdminLogon</td>
<td>REG_SZ</td>
<td>1</td>
</tr>
</tbody>
</table>
</li>
</ul>
</li>
<li>
<p>If the system has access to a timer server, make sure the clock has been synchronized with the server time. If the clock time changes during assessment execution, it might cause failures.</p>
</li>
<li>
<p>Disable Windows system restore, to present System Restore point creation during the test which would skew test result:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore&quot; /v RPSessionInterval /t REG_DWORD /d 0 /f</strong></p>
<p><strong>reg DELETE &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SPP\Clients&quot; /f</strong></p>
</li>
<li>
<p>Disable scheduled hard drive defragmentation:</p>
<p><strong>schtasks /change /tn &quot;Microsoft\Windows\Defrag\ScheduledDefrag&quot; /disable</strong></p>
</li>
<li>
<p>Make sure that all .NET compilation targets are up to date:</p>
<p><strong>C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe executequeueditems</strong></p>
<p><strong>C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe executequeueditems</strong></p>
</li>
<li>
<p>Restart the DUT.</p>
</li>
</ol>


