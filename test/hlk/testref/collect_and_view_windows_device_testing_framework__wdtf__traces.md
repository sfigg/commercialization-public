---
title: Collect and View Windows Device Testing Framework (WDTF) Traces
Description: Collect and View Windows Device Testing Framework (WDTF) Traces
ms.assetid: 2df7344b-fd7d-4904-af94-818936440667
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Collect and View Windows Device Testing Framework (WDTF) Traces

Most device fundamentals reliability tests in Windows Hardware Lab Kit (Windows HLK) are written by using <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296367">Windows Device Testing Framework (WDTF)</b>. It can be useful to collect and view WDTF traces when you troubleshoot device fundamentals test failures.

## How to Collect WDTF Traces

To collect WDTF traces, you must perform the following steps:

-   Start a new trace collection session.

-   Run the test from command line and reproduce the failure. (See <xref rid="p_hlk_test.reproduce_the_test_failure_by_running_the_test_from_the_command_line">Reproduce the test failure by running the test from the command line</b>)

-   Stop the trace collection session.

## Start a WDTF trace

You can start a WDTF trace collection from the command line, as shown in the following procedure.

1.  Open a command prompt by using administrative privileges.

2.  Type the following commands:

    <example>
    `logman create trace "autosession\WDTF" -p {6210f559-c7f7-4d2f-b674-4bc9315cecc7} 0xffffffff 0xff -o c:\WDTF_Traces\TraceFile.etl reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v LogFileMode /t REG_DWORD /d 1 /f reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v FileMax /t REG_DWORD /d 16 /f reg add HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WDTF /v MaxFileSize /t REG_DWORD /d 0 /f`

    </example>
3.  Reboot the computer.

>[!NOTE]
For more information about trace options, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296751">Configuring and Starting an AutoLogger Session</b> and <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296752">Logman</b>.


## Stop Collecting Traces

You can stop a WDTF trace collection from the command line, as shown in the following procedure.

1.  Open a command prompt by using administrative privileges.

2.  Type the following commands:

    <example>
    `logman -stop -ets WDTF logman delete "autosession\WDTF"`

    </example>
3.  Reboot the computer.

## Delete collected traces

Collected event trace log (.etl) files can be very large. We recommend that you copy them from the test system to another system for later analysis, and that you delete them from the test system.

## How to View WDTF Traces

To view WDTF traces, you must first format the collected .etl files into text or comma-separated, variable-length (CSV) versions.

You can run <xref hlink="http://go.microsoft.com/fwlink/?LinkID=296461">Tracefmt</b> from the command line to create the formatted log files:

1.  Open a command prompt by using administrative privileges.

2.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;**<placeholder>full path to ETL file</placeholder>**&gt; -o OutputTxtFile.txt**

3.  Type **Tracefmt.exe –r http://msdl.microsoft.com/download/symbols &lt;**<placeholder>full path to ETL file</placeholder>**&gt; -csv –o OutputCsvFile.csv**

You can open CSV files in Microsoft<sup>®</sup> Excel; you can use the filtering features of Excel to filter collected traces, and to search for traces from certain time periods, from certain WDTF components, and other specific criteria.

<seealso> <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> </seealso>



