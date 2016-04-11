---
Description: Windows Setup Log Files and Event Logs
MS-HAID: 'p\_adk\_online.windows\_setup\_log\_files\_and\_event\_logs'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Windows Setup Log Files and Event Logs
---

# Windows Setup Log Files and Event Logs


Windows® Setup creates log files for all actions that occur during installation. If you are experiencing problems installing Windows, consult the log files to troubleshoot the installation.

Windows Setup log files are available in the following directories:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Log file location</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>$windows.~bt\Sources\Panther</p></td>
<td align="left"><p>Log location before Setup can access the drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>$windows.~bt\Sources\Rollback</p></td>
<td align="left"><p>Log location when Setup rolls back in the event of a fatal error.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>%WINDIR%\Panther</p></td>
<td align="left"><p>Log location of Setup actions after disk configuration.</p></td>
</tr>
<tr class="even">
<td align="left"><p>%WINDIR%\Inf\Setupapi*.log</p></td>
<td align="left"><p>Used to log Plug and Play device installations.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>%WINDIR%\Memory.dmp</p></td>
<td align="left"><p>Location of memory dump from bug checks.</p></td>
</tr>
<tr class="even">
<td align="left"><p>%WINDIR%\Minidump\*.dmp</p></td>
<td align="left"><p>Location of log minidumps from bug checks.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>%WINDIR%\System32\Sysprep\Panther</p></td>
<td align="left"><p>Location of Sysprep logs.</p></td>
</tr>
</tbody>
</table>

 

## <span id="Windows_Setup_Event_Logs"></span><span id="windows_setup_event_logs"></span><span id="WINDOWS_SETUP_EVENT_LOGS"></span>Windows Setup Event Logs


Windows Setup includes the ability to review the Windows Setup performance events in the Windows Event Log viewer. This enables you to more easily review the actions that occurred during Windows Setup and to review the performance statistics for different parts of Windows Setup. You can filter the log so as to view only relevant items that you are interested in. The Windows Setup performance events are saved into a log file that is named Setup.etl, which is available in the %WINDIR%\\Panther directory of all installations. To view the logs, you must use the Event Viewer included with the Windows media that corresponds to the version of the customized image that you are building.

To view the logs on a computer that does not include the corresponding kit, you must run a script from the root of the media that installs the Event Trace for Windows (ETW) provider. From the command line, type:

``` syntax
Cscript D:\sources\etwproviders\etwproviderinstall.vbs install D:\sources\etwproviders
```

where *D* is the drive letter of the Windows DVD media.

### <span id="To_view_the_Windows_Setup_event_logs"></span><span id="to_view_the_windows_setup_event_logs"></span><span id="TO_VIEW_THE_WINDOWS_SETUP_EVENT_LOGS"></span>To view the Windows Setup event logs

1.  Start the Event Viewer, expand the Windows Logs node, and then click **System**.

2.  In the **Actions** pane, click **Open Saved Log** and then locate the Setup.etl file. By default, this file is available in the %WINDIR%\\Panther directory.

3.  The log file contents appear in the Event Viewer.

### <span id="To_Export_the_log_to_a_file"></span><span id="to_export_the_log_to_a_file"></span><span id="TO_EXPORT_THE_LOG_TO_A_FILE"></span>To Export the log to a file

From the command line, use the **Wevtutil** or **Tracerpt** commands to save the log to an .xml or text file. For information about how to use these tools, see the command-line Help. The following commands show examples of how to use the tools:

``` syntax
Wevtutil qe /lf C:\windows\panther\setup.etl 
```

- or -

``` syntax
Tracerpt /l C:\windows\panther\setup.etl
```

## <span id="related_topics"></span>Related topics


[Windows Setup Command-Line Options](windows_setup_command_line_options.md)

[Windows Setup States](windows-setup-states.md)

[Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)](windows_setup_edition_configuration_and_product_id_files__eicfg_and_pidtxt_.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%20Setup%20Log%20Files%20and%20Event%20Logs%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




