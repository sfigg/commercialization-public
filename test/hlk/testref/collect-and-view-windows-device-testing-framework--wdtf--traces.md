---
title: Collect and View Windows Device Testing Framework (WDTF) Traces
description: Collect and View Windows Device Testing Framework (WDTF) Traces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2df7344b-fd7d-4904-af94-818936440667
---

# Collect and View Windows Device Testing Framework (WDTF) Traces


Most device fundamentals reliability tests in Windows Hardware Lab Kit (Windows HLK) are written by using [Windows Device Testing Framework (WDTF)](http://go.microsoft.com/fwlink/?LinkID=296367). It can be useful to collect and view WDTF traces when you troubleshoot device fundamentals test failures.

## <span id="collect"></span><span id="COLLECT"></span>How to Collect WDTF Traces


To collect WDTF traces, you must perform the following steps:

-   Start a new trace collection session.

-   Run the test from command line and reproduce the failure. (See [Reproduce the test failure by running the test from the command line](reproduce-the-test-failure-by-running-the-test-from-the-command-line.md))

-   Stop the trace collection session.

### <span id="Start_a_WDTF_trace"></span><span id="start_a_wdtf_trace"></span><span id="START_A_WDTF_TRACE"></span>Start a WDTF trace

You can start a WDTF trace collection from the command line, as shown in the following procedure.

**To start a WDTF trace from the command line**

1.  Open a command prompt by using administrative privileges.

2.  Type the following commands:

    ``` syntax
    logman create trace "autosession\WDTF" -p {6210f559-c7f7-4d2f-b674-4bc9315cecc7} 0xffffffff 0xff -o c:\WDTF_Traces\TraceFile.etl
    reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v LogFileMode /t REG_DWORD /d 1 /f
    reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v FileMax /t REG_DWORD /d 16 /f
    reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v MaxFileSize /t REG_DWORD /d 0 /f
    ```

3.  Reboot the computer.

**Note**  
For more information about trace options, see [Configuring and Starting an AutoLogger Session](http://go.microsoft.com/fwlink/?LinkID=296751) and [Logman](http://go.microsoft.com/fwlink/?LinkID=296752).

 

### <span id="Stop_Collecting_Traces"></span><span id="stop_collecting_traces"></span><span id="STOP_COLLECTING_TRACES"></span>Stop Collecting Traces

You can stop a WDTF trace collection from the command line, as shown in the following procedure.

**To stop a WDTF trace from the command line**

1.  Open a command prompt by using administrative privileges.

2.  Type the following commands:

    ``` syntax
    logman -stop -ets WDTF
    logman delete "autosession\WDTF"
    ```

3.  Reboot the computer.

### <span id="Delete_collected_traces"></span><span id="delete_collected_traces"></span><span id="DELETE_COLLECTED_TRACES"></span>Delete collected traces

Collected event trace log (.etl) files can be very large. We recommend that you copy them from the test system to another system for later analysis, and that you delete them from the test system.

## <span id="view"></span><span id="VIEW"></span>How to View WDTF Traces


To view WDTF traces, you must first format the collected .etl files into text or comma-separated, variable-length (CSV) versions.

You can run [Tracefmt](http://go.microsoft.com/fwlink/?LinkID=296461) from the command line to create the formatted log files:

**To create formatted log files from the command line**

1.  Open a command prompt by using administrative privileges.

2.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;***full path to ETL file***&gt; -o OutputTxtFile.txt**

3.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;***full path to ETL file***&gt; -csv –o OutputCsvFile.csv**

You can open CSV files in Microsoft<sup>®</sup> Excel; you can use the filtering features of Excel to filter collected traces, and to search for traces from certain time periods, from certain WDTF components, and other specific criteria.

## <span id="related_topics"></span>Related topics


[Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_test\p_hlk_test%5D:%20Collect%20and%20View%20Windows%20Device%20Testing%20Framework%20%28WDTF%29%20Traces%20%20RELEASE:%20%288/29/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")





