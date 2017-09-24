---
title: Powercfg command-line options
description: You can use the powercfg.exe tool to control power schemes (also named power plans) to use the available sleep states, to control the power states of individual devices, and to analyze the system for common energy-efficiency and battery-life problems.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6A6E2E98-2B6B-4C58-B0F9-A28B650383CF
ms.author: sapaetsc
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Powercfg command-line options

Use powercfg.exe to control *power plans*&mdash;also called *power schemes*&mdash;to use the available sleep states, to control the power states of individual devices, and to analyze the system for common energy-efficiency and battery-life problems.


## Syntax

Powercfg command lines use the following syntax:

<p style="margin: 1em 0 0 1.5em;"><code><strong>powercfg</strong>&nbsp;<strong>/</strong><<em>option</em>> [<em>arguments</em>] [<strong>/?</strong>]</code></p>

where <em>option</em> is one of the options listed in the following table and described in more detail later in this topic.

| Option | Description |
|--------|-------------|
| /?, -HELP                 | Displays information about command-line parameters. |
| /LIST, /L                 | Lists all power schemes. |
| /QUERY, /Q                | Displays the contents of a power scheme. |
| /CHANGE, /X               | Modifies a setting value in the current power scheme. |
| /CHANGENAME               | Modifies the name and description of a power scheme. |
| /DUPLICATESCHEME          | Duplicates a power scheme. |
| /DELETE, /D               | Deletes a power scheme. |
| /DELETESETTING            | Deletes a power setting. |
| /SETACTIVE, /S            | Makes a power scheme active on the system. |
| /GETACTIVESCHEME          | Retrieves the currently active power scheme. |
| /SETACVALUEINDEX          | Sets the value associated with a power setting while the system is powered by AC power. |
| /SETDCVALUEINDEX          | Sets the value associated with a power setting while the system is powered by DC power. |
| /IMPORT                   | Imports all power settings from a file. |
| /EXPORT                   | Exports a power scheme to a file. |
| /ALIASES                  | Displays all aliases and their corresponding GUIDs. |
| /GETSECURITYDESCRIPTOR    | Gets a security descriptor associated with a specified power setting, power scheme, or action. |
| /SETSECURITYDESCRIPTOR    | Sets a security descriptor associated with a power setting, power scheme, or action. |
| /HIBERNATE, /H            | Enables and disables the hibernate feature. |
| /AVAILABLESLEEPSTATES, /A | Reports the sleep states available on the system. |
| /DEVICEQUERY              | Returns a list of devices that meet specified criteria. |
| /DEVICEENABLEWAKE         | Enables a device to wake the system from a sleep state. |
| /DEVICEDISABLEWAKE        | Disables a device from waking the system from a sleep state. |
| /LASTWAKE                 | Reports information about what woke the system from the last sleep transition. |
| /WAKETIMERS               | Enumerates active wake timers. |
| /REQUESTS                 | Enumerates application and driver Power Requests. |
| /REQUESTSOVERRIDE         | Sets a Power Request override for a particular Process, Service, or Driver. |
| /ENERGY                   | Analyzes the system for common energy-efficiency and battery life problems. |
| /BATTERYREPORT            | Generates a report of battery usage. |
| /SLEEPSTUDY               | Generates a diagnostic system power transition report. |
| /SRUMUTIL                 | Dumps Energy Estimation data from System Resource Usage Monitor (SRUM). |
| /SYSTEMSLEEPDIAGNOSTICS   | Generates a diagnostic report of system sleep transitions. |
| /SYSTEMPOWERREPORT        | Generates a diagnostic system power transition report. |
|---------------------------|----------------------------------------------|

Running the command **powercfg.exe**&mdash;**/?** displays a list of the command-line options.



## \/?, -HELP

Lists options, descriptions, and examples for a command line.



## \/LIST, \/L 
  
<p>Lists all power schemes.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /LIST</code></pre>



## \/QUERY, /QUERY

<p>[<i>&lt;SCHEME_GUID&gt;</i> [<i>&lt;SUB_GUID&gt;</i>]]</p>
<p>Displays the contents of the specified power scheme. If neither the parameter <i>SCHEME_GUID</i> or <i>SUB_GUID</i> are provided, the settings of the current active power scheme are displayed. If the parameter <i>SUB_GUID</i> is not specified, all settings in the specified power scheme are displayed.</p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. The <code>POWERCFG /LIST</code> command returns a power scheme GUID.</p>
</li>
<li>
<p><i>&lt;SUB_GUID&gt;</i> Specifies a power-setting subgroup GUID. A power setting subgroup GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /QUERY</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /QUERY 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20</code></pre>



## \/CHANGE, \/x

<p><i>&lt;SETTING&gt; &lt;VALUE&gt;</i></p>
<p>Modifies a setting value in the current power scheme.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;SETTING&gt;</i> Specifies one of the following options: <b>monitor-timeout-ac</b><b>monitor-timeout-dc</b><b>disk-timeout-ac</b><b>disk-timeout-dc</b><b>standby-timeout-ac</b><b>standby-timeout-dc</b><b>hibernate-timeout-ac</b><b>hibernate-timeout-dc</b></p>
</li>
<li>
<p><i>&lt;VALUE&gt;</i> Specifies the new value, in minutes.</p>
</li>
</ul>
<p>Examples: </p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /CHANGE monitor-timeout-ac 5</code></pre>



## \/CHANGENAME

<p><i>&lt;SCHEME_GUID&gt; &lt;NAME&gt;</i> [<i>&lt;DESCRIPTION&gt;</i>]</p>
<p>Modifies the name of a power scheme and optionally its description.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. The <code>POWERCFG /LIST</code> command returns a power scheme GUID. </p>
</li>
<li>
<p><i>&lt;NAME&gt;</i> Specifies the power scheme's new name.</p>
</li>
<li>
<p><i>&lt;DESCRIPTION&gt;</i> Specifies the power scheme's new description. If no description is specified, only the name is changed.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /CHANGENAME 381b4222-f694-41f0-9685-ff5bb260df2e "Customized Balanced"</code></pre>



## \/DUPLICATESCHEME

<p><i>&lt;SCHEME_GUID&gt;</i> [<i>&lt;DESTINATION_GUID&gt;</i>]</p>
<p>Duplicates the specified power scheme. The resulting GUID which represents the new scheme is displayed.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command.</p>
</li>
<li>
<p><i>&lt;DESTINATION_GUID&gt;</i> Specifies the new power scheme's GUID. If no GUID is specified, a new GUID is created.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DUPLICATESCHEME 381b4222-f694-41f0-9685-ff5bb260df2e</code></pre>



## \/DELETE, /D

<p><i>&lt;SCHEME_GUID&gt;</i></p>
<p>Deletes the power scheme with the specified GUID.</p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DELETE 381b4222-f694-41f0-9685-ff5bb260df2e</code></pre>



## \/DELETESETTING

<p><i>&lt;SUB_GUID&gt; &lt;SETTING_GUID&gt;</i></p>
<p>Deletes a power setting.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;SUB_GUID&gt;</i> Specifies a power setting subgroup GUID. A power setting subgroup GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
<li>
<p><i>&lt;SETTING_GUID&gt;</i> Specifies a power setting GUID. A power setting GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DELETESETTING 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da</code></pre>



## \/SETACTIVE, /S

<p><i>&lt;SCHEME_GUID&gt;</i></p>
<p>Makes the specified power scheme active on the system.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SETACTIVE 381b4222-f694-41f0-9685-ff5bb260df2e</code></pre>



## \/GETACTIVESCHEME

<p>Retrieves the currently active power scheme.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /GETACTIVESCHEME</code></pre>
<p><b>/SETACVALUEINDEX</b></p>
<p><i>&lt;SCHEME_GUID&gt; &lt;SUB_GUID&gt; &lt;SETTING_GUID&gt; &lt;SETTING_INDEX&gt;</i></p>
<p>Sets the value associated with a specified power setting while the system is powered by AC power. </p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command.</p>
</li>
<li>
<p><i>&lt;SUB_GUID&gt;</i> Specifies a power setting subgroup GUID. A power setting subgroup GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
<li>
<p><i>&lt;SETTING_GUID&gt;</i> Specifies a power setting GUID. A power setting GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
<li>
<p><i>&lt;SETTING_INDEX&gt;</i> Specifies which possible value this setting is set to. A list of possible values is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SETACVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 0</code></pre>



## \/SETDCVALUEINDEX

<p><i>&lt;SCHEME_GUID&gt; &lt;SUB_GUID&gt; &lt;SETTING_GUID&gt; &lt;SETTING_INDEX&gt;</i></p>
<p>Sets the value associated with a specified power setting while the system is powered by DC power. </p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;SCHEME_GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command.</p>
</li>
<li>
<p><i>&lt;SUB_GUID&gt;</i> Specifies a power setting subgroup GUID. A power setting subgroup GUID is returned from the <code>POWERCFG /QUERY</code> command. </p>
</li>
<li>
<p><i>&lt;SETTING_GUID&gt;</i> Specifies a power setting GUID. A power setting GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
<li>
<p><i>&lt;SETTING_INDEX&gt;</i> Specifies which possible value this setting is set to. A list of possible values is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SETDCVALUEINDEX 381b4222-f694-41f0-9685-ff5bb260df2e 238c9fa8-0aad-41ed-83f4-97be242c8f20 29f6c1db-86da-48c5-9fdb-f2b67b1f44da 300</code></pre>



## \/IMPORT

<p><i>&lt;FILENAME&gt;</i> [<i>&lt;GUID&gt;</i>]</p>
<p>Imports a power scheme from the specified file. </p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;FILENAME&gt;</i> Specifies a fully-qualified path to a file generated by the <code>POWERCFG /EXPORT</code> command. </p>
</li>
<li>
<p><i>&lt;GUID&gt;</i> Specifies the GUID for the imported scheme. If no GUID is specified, a new GUID is created.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /IMPORT c:\scheme.pow</code></pre>




## \/EXPORT

<p><i>&lt;FILENAME&gt; &lt;GUID&gt;</i></p>
<p>Exports a power scheme, represented by the specified GUID, to the specified file. </p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;FILENAME&gt;</i> Specifies a fully-qualified path to a destination file. </p>
</li>
<li>
<p><i>&lt;GUID&gt;</i> Specifies a power scheme GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command. </p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /EXPORT c:\scheme.pow 381b4222-f694-41f0-9685-ff5bb260df2e</code></pre>



## \/ALIASES

<p>Displays a list of aliases and their corresponding GUIDs. These aliases may be used instead of a GUID in any command.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /ALIASES</code></pre>
<div class="alert"><b>Note</b>  <p class="note">Some settings do not contain aliases. For a full list of GUIDs, use <code>powercfg -q</code>.</p>
</div>



## \/GETSECURITYDESCRIPTOR

<p><i>&lt;GUID|ACTION&gt;</i></p>
<p>Gets the security descriptor associated with the specified power setting, power scheme, or action.</p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;GUID&gt;</i> Specifies a power scheme or a power setting GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command. A power setting GUID is returned from the <code>POWERCFG /QUERY</code> command. </p>
</li>
<li>
<p><i>&lt;ACTION&gt;</i> Specifies one of the following actions: <b>ActionSetActive</b>, <b>ActionCreate</b>, <b>ActionDefault</b>.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /GETSECURITYDESCRIPTOR 381b4222-f694-41f0-9685-ff5bb260df2e</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /GETSECURITYDESCRIPTOR ActionSetActive</code></pre>



## \/SETSECURITYDESCRIPTOR

<p><i>&lt;GUID|ACTION&gt; &lt;SDDL&gt;</i></p>
<p>Sets a security descriptor associated with the specified power setting, power scheme, or action.</p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;GUID&gt;</i> Specifies a power scheme or a power setting GUID. A power scheme GUID is returned from the <code>POWERCFG /LIST</code> command. A power setting GUID is returned from the <code>POWERCFG /QUERY</code> command.</p>
</li>
<li>
<p><i>&lt;ACTION&gt;</i> Specifies one of the following actions: <b>ActionSetActive</b>, <b>ActionCreate</b>, <b>ActionDefault</b>. </p>
</li>
<li>
<p><i>&lt;SDDL&gt;</i> Specifies a valid security descriptor string in SDDL format. An example SDDL string can be obtained from the <code>POWERCFG /GETSECURITYDESCRIPTOR</code> command.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SETSECURITYDESCRIPTOR 381b4222-f694-41f0-9685-ff5bb260df2e O:BAG:SYD:P(A;CI;KRKW;;;BU)(A;CI;KA;;;BA)(A;CI;KA;;;SY)(A;CI;KA;;;CO)</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SETSECURITYDESCRIPTOR ActionSetActive O:BAG:SYD:P(A;CI;KR;;;BU)(A;CI;KA;;;BA)(A;CI;KA;;;SY)(A;CI;KA;;;CO)</code></pre>



## \/HIBERNATE, /H

<p>[<b>ON</b> | <b>OFF</b>]</p>
<p>[<b>/SIZE </b><i>&lt;PERCENT_SIZE&gt;</i>]</p>
<p>[<b>/TYPE </b><i>&lt;REDUCED | FULL&gt;</i>]</p>
<p>Enables or disables the hibernate feature or sets the hiberfile size.</p>
<p>Arguments: </p>
<ul>
<li>
<p><b>ON</b> Enables the hibernate feature.</p>
</li>
<li>
<p><b>OFF</b> Disables the hibernate feature.</p>
</li>
<li>
<p><b>/SIZE </b><i>&lt;PERCENT_SIZE&gt;</i> Specifies the desired hiberfile size as a percentage of the total memory size. The default size cannot be smaller than 50. This parameter also causes hibernation to be enabled.</p>
</li>
<li>
<p><b>/TYPE </b><i>&lt;REDUCED | FULL&gt;</i> Specifies the desired hiberfile type. A reduced hiberfile only supports hiberboot.</p>
<div class="alert"><b>Note</b>  <p class="note">A hiberfile that has a custom default size, or HiberFileSizePercent &gt;= 40, is considered as a full hiberfile. To change the hiberfile type to reduced, the OS has to manage the default hiberfile size. To do this, run the following commands:</p>
<p class="note">POWERCFG /HIBERNATE /SIZE 0</p>
<p class="note">POWERCFG /HIBERNATE /TYPE REDUCED</p>
</div>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /HIBERNATE OFF</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /HIBERNATE /SIZE 100</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /HIBERNATE /TYPE REDUCED</code></pre>



## \/AVAILABLESLEEPSTATES, /A

<p>Reports the sleep states available on the system. Attempts to report reasons why sleep states are unavailable.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /AVAILABLESLEEPSTATES</code></pre>



## \/DEVICEQUERY

<p><i>&lt;QUERYFLAG&gt;</i></p>
<p>Returns a list of devices that meet the specified criteria. </p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;QUERYFLAG&gt;</i> Specifies one of the following criteria: </p>
<p><b>wake_from_S1_supported</b> Returns all devices that support waking the system from a light sleep state. </p>
<p><b>wake_from_S2_supported</b> Returns all devices that support waking the system from a deeper sleep state. </p>
<p><b>wake_from_S3_supported</b> Returns all devices that support waking the system from the deepest sleep state. </p>
<p><b>wake_from_any</b> Returns all devices that support waking the system from any sleep state. </p>
<p><b>S1_supported</b> Lists devices supporting light sleep. </p>
<p><b>S2_supported</b> Lists devices supporting deeper sleep. </p>
<p><b>S3_supported</b> Lists devices supporting deepest sleep. S4_supported List devices supporting hibernation. </p>
<p><b>wake_programmable</b> Lists devices that are user-configurable to wake the system from a sleep state. </p>
<p><b>wake_armed</b> Lists devices that are currently configured to wake the system from any sleep state. </p>
<p><b>all_devices</b> Returns all devices present in the system. </p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DEVICEQUERY wake_armed</code></pre>



## \/DEVICEENABLEWAKE

<p><i>&lt;DEVICENAME&gt;</i></p>
<p>Enables the specified device to wake the system from a sleep state. </p>
<p>Arguments: </p>
<ul>
<li>
<p>&lt;DEVICENAME&gt; Specifies a device. This device name may be retrieved using <code>POWERCFG /DEVICEQUERY wake_programmable</code>.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DEVICEENABLEWAKE "Microsoft USB IntelliMouse Optical"</code></pre>



## \/DEVICEDISABLEWAKE

<p><i>&lt;DEVICENAME&gt;</i></p>
<p>Disables the specified device from waking the system from a sleep state.</p>
<p>Arguments:</p>
<ul>
<li>
<p><i>&lt;DEVICENAME&gt;</i> Specifies a device. This device name may be retrieved using <code>POWERCFG /DEVICEQUERY wake_armed</code>.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /DEVICEDISABLEWAKE "Microsoft USB IntelliMouse Optical"</code></pre>



## \/LASTWAKE

<p>Reports information about what woke the system from the last sleep transition.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /LASTWAKE</code></pre>



## \/WAKETIMERS

<p>Enumerates the active wake timers. If enabled, the expiration of a wake timer wakes the system from sleep and hibernate states.</p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /WAKETIMERS</code></pre>



## \/REQUESTS

<p>Enumerates application and driver Power Requests. Power Requests prevent the computer from automatically powering off the display or entering a low-power sleep mode. </p>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /REQUESTS</code></pre>



## \/REQUESTSOVERRIDE

<p>[<i>&lt;CALLER_TYPE&gt; &lt;NAME&gt; </i><i>&lt;REQUEST&gt;</i>]</p>
<p>Sets a Power Request override for a particular process, service, or driver. If no parameters are specified, this command displays the current list of Power Request overrides.</p>
<p>Arguments: </p>
<ul>
<li>
<p><i>&lt;CALLER_TYPE&gt;</i> Specifies one of the following caller types: <b>PROCESS</b>, <b>SERVICE</b>, <b>DRIVER</b>. This is obtained by calling the <code>POWERCFG /REQUESTS</code> command.</p>
</li>
<li>
<p><i>&lt;NAME&gt;</i> Specifies the caller name. This is the name returned from calling the <code>POWERCFG /REQUESTS</code> command. </p>
</li>
<li>
<p><i>&lt;REQUEST&gt;</i> Specifies one or more of the following Power Request types: <b>DISPLAY</b>, <b>SYSTEM</b>, <b>AWAYMODE</b>.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /REQUESTSOVERRIDE PROCESS wmplayer.exe DISPLAY SYSTEM</code></pre>



## \/ENERGY

<p>[<b>/OUTPUT </b><i>&lt;FILENAME&gt;</i>] [<b>/XML</b>] [<b>/DURATION </b><i>&lt;SECONDS&gt;</i>]</p>
<p>or</p>
<p><b>/TRACE</b> [<b>/D </b><i>&lt;FILEPATH&gt;</i>] [<b>/XML</b>] [<b>/DURATION </b><i>&lt;SECONDS&gt;</i>]</p>
<p>Analyzes the system for common energy-efficiency and battery-life problems. The ENERGY command should be used when the computer is idle and has no open programs or documents. The ENERGY command generates an HTML report file in the current path. </p>
<p>Arguments: </p>
<ul>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt;</i> Specify the path and file name to store the energy report HTML or XML file.</p>
</li>
<li>
<p><b>/XML</b> Formats the report file as XML.</p>
</li>
<li>
<p><b>/DURATION </b><i>&lt;SECONDS&gt;</i> Specifies the number of seconds to observe system behavior. Default is 60 seconds. </p>
</li>
<li>
<p><b>/TRACE</b> Records system behavior and does not perform analysis. Trace files are generated in the current path unless the <b>/D</b> parameter is specified. </p>
</li>
<li>
<p><b>/D </b><i>&lt;FILEPATH&gt;</i> Specify the directory to store trace data. May only be used with the <b>/TRACE</b> parameter.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /ENERGY</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /ENERGY /OUTPUT "longtrace.html" /DURATION 120</code></pre>



## \/BATTERYREPORT

<p>[<b>/OUTPUT </b><i>&lt;FILENAME&gt;</i>] [<b>/XML</b>] </p>
<p>[<b>/DURATION </b><i>&lt;DAYS&gt;</i>]</p>
<p>Generates a report of battery usage characteristics over the lifetime of the system. The <b>/BATTERYREPORT</b> command will generate an HTML report file in the current path.</p>
<p>Arguments: </p>
<ul>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt; </i> Specify the path and file name to store the battery report HTML.</p>
</li>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt;</i><b>/XML </b> Formats the battery  report file as XML.</p>
</li>
<li>
<p><b>/DURATION </b><i>&lt;DAYS&gt; </i> Specifies the number of days to analyze for the report.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /BATTERYREPORT /OUTPUT "batteryreport.html"</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /BATTERYREPORT /DURATION 4</code></pre>



## \/SLEEPSTUDY

<p>[<b>/OUTPUT </b><i>&lt;FILENAME&gt;</i>] [<b>/XML</b>] </p>
<p>[<b>/DURATION </b><i>&lt;DAYS&gt;</i>]</p>
<p>[<b>/TRANSFORMXML </b><i>&lt;FILENAME.XML&gt;</i>] [<b>/OUTPUT </b><i>&lt;FILENAME.HTML&gt;</i>]</p>
<p>Generates a diagnostic report of modern standby quality over the last three days on the system. The <b>/SLEEPSTUDY</b> command will generate an HTML report file in the current path.</p>
<p>Arguments: </p>
<ul>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt; </i> Specify the path and file name to store the Sleepstudy report HTML.</p>
</li>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt;</i><b>/XML </b> Formats the Sleepstudy  report file as XML.</p>
</li>
<li>
<p><b>/DURATION </b><i>&lt;DAYS&gt; </i> Specifies the number of days to analyze for the report.</p>
</li>
<li>
<p><b>/TRANSFORMXML </b><i>&lt;FILENAME.XML&gt; </i><b>/OUTPUT </b><i>&lt;FILENAME.HTML&gt; </i> Transforms the Sleepstudy report from XML to HTML.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SLEEPSTUDY /OUTPUT "sleepstudy.html"</code></pre>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /SLEEPSTUDY /DURATION 7</code></pre>



## \/SRUMUTIL

<p>[<b>/OUTPUT </b><i>&lt;FILENAME&gt;</i>] [<b>/XML</b>] [<b>/CSV</b>] </p>
</td>
<td>
<p>Enumerates the entire Energy Estimation data from the System Resource Usage Monitor (SRUM) in an XML or CSV file.</p>
<p>Arguments: </p>
<ul>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt; </i> Specify the path and file name to store the SRUM data.</p>
</li>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt;</i><b>/XML </b> Formats the file as XML.</p>
</li>
<li>
<p><b>/OUTPUT </b><i>&lt;FILENAME&gt;</i><b>/CSV </b> Formats the file as CSV.</p>
</li>
</ul>
<p>Examples:</p>
<pre class="syntax" xml:space="preserve"><code>POWERCFG /BATTERYREPORT /OUTPUT "srumreport.xml" /XML</code></pre>



<p><a href="mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback [p_weg_hardware\p_weg_hardware]:%20Powercfg command-line options%20 RELEASE:%20(10/3/2016)&amp;body=%0A%0APRIVACY STATEMENT%0A%0AWe use your feedback to improve the documentation. We don't use your email address for any other purpose, and we'll remove your email address from our system after the issue that you're reporting is fixed. While we're working to fix this issue, we might send you an email message to ask for more info. Later, we might also send you an email message to let you know that we've addressed your feedback.%0A%0AFor more info about Microsoft's privacy policy, see http://privacy.microsoft.com/en-us/default.aspx." title="Send comments about this topic to Microsoft">Send comments about this topic to Microsoft</a></p>
</div>
<p style="text-align:left;font-family:Arial,sanserif;font-size:100%;color:black">
&#x00a9;&#x00a0;2016 Microsoft. All rights reserved.</p>


