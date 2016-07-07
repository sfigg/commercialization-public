---
author: joshbax-msft
title: Collect and View Windows Device Testing Framework (WDTF) Traces
description: Collect and View Windows Device Testing Framework (WDTF) Traces
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3336caf5-05bf-4264-ac9f-8bb08fe828eb
---

# Collect and View Windows Device Testing Framework (WDTF) Traces


Most device fundamentals reliability tests in Windows Hardware Certification Kit (Windows HCK) are written by using [Windows Device Testing Framework (WDTF)](http://go.microsoft.com/fwlink/p/?linkid=296367). It can be useful to collect and view WDTF traces when you troubleshoot device fundamentals test failures.

## <a href="" id="collect"></a>How to Collect WDTF Traces


To collect WDTF traces, you must perform the following steps:

-   Start a new trace collection session.

-   Run the test from command line and reproduce the failure. (See [Reproduce the test failure by running the test from the command line](reproduce-the-test-failure-by-running-the-test-from-the-command-line.md))

-   Stop the trace collection session.

### Start a WDTF trace

You can start a WDTF trace collection by running the [Diagnosability - Tracing Jobs - WDTF - Start WDTF trace collection](diagnosability---tracing-jobs---wdtf---start-wdtf-trace-collection-d490d110-c85e-4a4b-9900-d122180a1334.md) optional job in Windows HCK.

Alternatively, you can start a WDTF trace collection from the command line, as shown in the following procedure.

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
For more information about trace options, see [Configuring and Starting an AutoLogger Session](http://go.microsoft.com/fwlink/p/?linkid=296751) and [Logman](http://go.microsoft.com/fwlink/p/?linkid=296752).

 

### Stop Collecting Traces

You can stop a WDTF trace collection by running the [Diagnosability - Tracing Jobs - WDTF - Stop WDTF trace collection](diagnosability---tracing-jobs---wdtf---stop-wdtf-trace-collection-cc751bd6-2935-4d0a-8742-ec69cc7cea8e.md) job in Windows HCK.

Alternatively, you can stop a WDTF trace collection from the command line, as shown in the following procedure.

**To stop a WDTF trace from the command line**

1.  Open a command prompt by using administrative privileges.

2.  Type the following commands:

    ``` syntax
    logman -stop -ets WDTFlogman delete "autosession\WDTF"
    ```

3.  Reboot the computer.

### Delete collected traces

Collected event trace log (.etl) files can be very large. We recommend that you copy them from the test system to another system for later analysis, and that you delete them from the test system. You can use the [Diagnosability - Tracing Jobs - WDTF - Delete collected WDTF traces](diagnosability---tracing-jobs---wdtf---delete-collected-wdtf-traces-8ba85d90-72c4-4464-8922-a3e6d18d5f21.md) optional job in Windows HCK to delete collected WDTF traces.

## <a href="" id="view"></a>How to View WDTF Traces


To view WDTF traces, you must first format the collected .etl files into text or comma-separated, variable-length (CSV) versions.

You can use [Diagnosability - Install Jobs - Install tracing tools](diagnosability---install-jobs---install-tracing-tools-147a1834-d3b3-4604-8515-4aa26ebc099c.md) and [Diagnosability - Tracing Jobs - WDTF - Format collected WDTF traces](diagnosability---tracing-jobs---wdtf---format-collected-wdtf-traces-45a9be48-20c2-40ab-b6bc-2721f4c9fc88.md) optional jobs in Windows HCK to create these files. The formatted traces are saved to the **%systemdrive%\\WDTF\_Traces** folder on the test system.

Alternatively, you can run [Tracefmt](http://go.microsoft.com/fwlink/p/?linkid=296461) from the command line to create the formatted log files:

**To create formatted log files from the command line**

1.  Open a command prompt by using administrative privileges.

2.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;***full path to ETL file***&gt; -o OutputTxtFile.txt**

3.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;***full path to ETL file***&gt; -csv –o OutputCsvFile.csv**

You can open CSV files in Microsoft<sup>®</sup> Excel; you can use the filtering features of Excel to filter collected traces, and to search for traces from certain time periods, from certain WDTF components, and other specific criteria.

## Related topics


[Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md)

 

 







