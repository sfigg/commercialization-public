---
author: joshbax-msft
title: ScatterGather (SYSTEM)
description: ScatterGather (SYSTEM)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 15a3a99c-ad75-4402-a497-880c92c18b14
---

# ScatterGather (SYSTEM)


This test validates file system I/O reliability scenarios, primarily asynchronously, utilizing the ReadFile/WriteFile/ReadFileScatter/WriteFileGather APIs. HCK tests exercises predefined automated regression variations.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.StorageAndBoot.BootPerformance</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x86) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~240 minutes</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [WDTF System Fundamentals Testing Prerequisites](wdtf-system-fundamentals-testing-prerequisites.md).

Simultaneously performs I/O (both writes and read) in a multi-threaded fashion utilizing I/O completion ports to complete the I/O. It will start out by initially setting the EOF of the file and scheduling the I/O threads. While the file is being written, it performs online verification where it expects zero or offset computed value. Once the entire file has been written, it performs full verification of the file and will fail the test if zero or an unexpected value is encountered.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio.

## More information


**Supported test modes:**

We expect most users to use predefined regression variations.

**Default**, **Regression** (predefined variations) and **stress** indicate certain types of failures, such as Virtual Alloc retries etc. For default mode, there is a flagsauto flag which manages most of the parameters if the user doesn't want to supply the parameters manually. In addition **timer functionality** is supported with default and stress modes. For regression mode, there is a pre-defined timer variation.

Supported read/write modes:

Read/Write mode:

-   RW( Read, Write)

-   RWG( Read, Write Gather)

-   RSW( Read Scatter, Write)

-   RSWG( Read Scatter, Write Gather)

-   RRW( Random Read, Write)

-   RRWG( Random Read, Write Gather)

-   RWR( Read, Random Write)

-   RSWR( Read Scatter, Random Write)

-   RRWR( Random Read, Random Write - Approx. 50% Scatter/Gather) -&gt; Default

-   RRWR7( Random Read, Random Write - Approx. 30% Scatter/Gather)

-   RRWR3( Random Read, Random Write - Approx. 70% Scatter/Gather

Additionally, the test supports Reverse Read and Reverse Write.

**I/O Throttle Mechanism:**

Supports **Upper & Lower threshold** for controlled IO requests. **Bypass mode** is also possible which essentially blasts the system with I/O.

**Data Pattern:**

Simple Offset computed alphabetic value. For timer variation, there can be holes though.

**Data Validation Modes:**

Supports both online (simultaneous validation along with writes), fullcheck (which is after all write’s completed), and offline verification modes. All these modes can be turned off/on. If online verification is turned off, essentially only writes are happening during the initial phase after which fullcheck will be performed.

Difference between Online and Full check is that full check is only done after all the writes are completed by single thread while online verification is done simultaneously during the writes and during, which it either expects zero or offset computed value, unlike fullcheck where it only excepts offset computed value.

### Command usage

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>ScatterMultiThread.exe -default -rwmode:rw -iomode:sync</strong></p></td>
<td><p>Perform Read Write IO in Sync mode with default file size.</p></td>
</tr>
<tr class="even">
<td><p><strong>ScatterMultiThread.exe -default -rwmode:RSWG -RR -RER:2 -TESTPATH:d:\Scatter -FILESIZE:500m</strong></p></td>
<td><p>Perform full Scatter Gather, 500m file, in the testpath specified with random offset and reverse read.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ScatterMultiThread.exe -default -rwmode:RRWR -FILESIZE:2g -IODIFFUPPERTHRESHOLD:500 -IODIFFLOWERTHRESHOLD:100</strong></p></td>
<td><p>Perform 50% Scatter Gather IO 2GB file with I/O upper and lower threshold</p></td>
</tr>
<tr class="even">
<td><p><strong>ScatterMultiThread.exe -regression -regression:6</strong></p></td>
<td><p>Perform pre-defined regression variation 6.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ScatterMultiThread.exe -stress -RWMODE:rrwr -THREADS:2 -BS:100k</strong></p></td>
<td><p>Perform scatter gather in stress mode with 2 reader and 2 writer threads with I/O block size of 100k/</p></td>
</tr>
<tr class="even">
<td><p><strong>ScatterMultiThread.exe -default -FILE:timer.dat -timer:19s -FILESIZE:5g -ONLINEVERIFY:FALSE</strong></p></td>
<td><p>Timer mode ReadWrite Unbuffered I/O and no OnlineVerify mode.</p></td>
</tr>
<tr class="odd">
<td><p><strong>ScatterMultiThread.exe -default -OFFLINEVERIFY -FILE:timer.dat -FULLCHECK:FALSE -ALLOWZERO4VERIFY</strong></p></td>
<td><p>Offline verification of the above variation with fullcheck disabled and AllowZero4Verify mode.</p></td>
</tr>
</tbody>
</table>

 

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
<td><p>ScatterMultiThread.exe</p></td>
<td><p>The command line options for the test are listed below.</p></td>
</tr>
<tr class="even">
<td><p>-help or /?</p></td>
<td><p>Displays help.</p></td>
</tr>
<tr class="odd">
<td><p>-default</p></td>
<td><p>Runs the default variation with test parameters from the command-line.</p></td>
</tr>
<tr class="even">
<td><p>-stress</p></td>
<td><p>Stress mode. Retries the memory allocation failures, etc.</p></td>
</tr>
<tr class="odd">
<td><p>-regression</p></td>
<td><p>Regression mode. Runs the predefined regression mode.</p></td>
</tr>
<tr class="even">
<td><p>-testpath</p></td>
<td><p>Full path to the file.</p>
<p>Default value: CWD</p></td>
</tr>
<tr class="odd">
<td><p>-file</p></td>
<td><p>File in the testpath or full path to the file.</p>
<p>Default value: Scatter.dat</p></td>
</tr>
<tr class="even">
<td><p>-filesize</p></td>
<td><p>File size in bytes. You can also append k, m, g, or t.</p>
<p>Default value: 1m</p></td>
</tr>
<tr class="odd">
<td><p>-threads</p></td>
<td><p>Number of exclusive reader and writer threads.</p>
<p>Default value: 2</p></td>
</tr>
<tr class="even">
<td><p>-completionthreads</p></td>
<td><p>The number of completion threads.</p>
<p>Default value: Twice the number of processors</p></td>
</tr>
<tr class="odd">
<td><p>-rwmode</p></td>
<td><p>Read/write mode:</p>
<ul>
<li><p>RW( Read, Write)</p></li>
<li><p>RWG( Read, Write Gather)</p></li>
<li><p>RSW( Read Scatter, Write)</p></li>
<li><p>RSWG( Read Scatter, Write Gather)</p></li>
<li><p>RRW( Random Read, Write)</p></li>
<li><p>RRWG( Random Read, Write Gather)</p></li>
<li><p>RWR( Read, Random Write)</p></li>
<li><p>RSWR( Read Scatter, Random Write)</p></li>
<li><p>RRWR( Random Read, Random Write – Approximately 50% Scatter/Gather) -&gt; Default</p></li>
<li><p>RRWR7( Random Read, Random Write - Approximately 30% Scatter/Gather)</p></li>
<li><p>RRWR3( Random Read, Random Write - Approximately 70% Scatter/Gather</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p>-iomode</p></td>
<td><p>sync or async</p>
<p>Default value: async</p></td>
</tr>
<tr class="odd">
<td><p>-flagsauto</p></td>
<td><p>TRUE or FALSE</p>
<p>Default value: TRUE</p>
<div class="alert">
<strong>Note</strong>  
<p>Certain file flags are automatically managed based on the situations</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>-ffnb</p></td>
<td><p>TRUE or FALSE</p>
<p>Default value: FALSE</p>
<div class="alert">
<strong>Note</strong>  
<p>FILE_FLAG_NO_BUFFERING will be automatically turned on in certain situations like Scatter/Gather.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>-ffss</p></td>
<td><p>TRUE or FALSE</p>
<p>Default value: FALSE</p>
<div class="alert">
<strong>Note</strong>  
<p>FILE_FLAG_SEQUENTIAL_SCAN will be automatically turned on in certain situations like serialized I/O.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>-ffra</p></td>
<td><p>TRUE or FALSE</p>
<p>Default value: FALSE</p>
<div class="alert">
<strong>Note</strong>  
<p>FILE_FLAG_RANDOM_ACCESS will be automatically turned on in certain situations like random I/O.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>-ffwt</p></td>
<td><p>TRUE or FALSE</p>
<p>Default value: FALSE</p>
<div class="alert">
<strong>Note</strong>  
<p>FILE_FLAG_WRITE_THROUGH will not be turned on automatically, unless manually specified.</p>
<p>Disable FLAGSAUTO flag for independent management of file flags and attributes.</p>
<p>FLAGSAUTO behavior will change depending on other parameters such as shared file handle or reverse I/O, etc.</p>
<p>The FFSS and FFRA flags have no effect if the file system does not support cached I/O and FFNB is not supported by the file system or specified.</p>
<p>FFSS and FFRA flags are mutually exclusive and cannot be combined as it's self-defeating.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>-bs</p></td>
<td><p>Block Size in bytes. You can append k, m, g, t.</p>
<p>Default: 64k</p></td>
</tr>
<tr class="odd">
<td><p>-bypass</p></td>
<td><p>Bypasses the I/O Threshold wait. This can be either TRUE or FALSE.</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="even">
<td><p>-nsegments</p></td>
<td><p>The segment array size for Scatter/Gather.</p>
<p>Default value: 16</p>
<div class="alert">
<strong>Note</strong>  
<p>This option automatically gets corrected in certain situations for Scatter/Gather/</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>-totalsleep</p></td>
<td><p>The total sleep time for failed virtual allocation or I/O threshold scenarios.</p>
<p>Default value: 30 minutes</p></td>
</tr>
<tr class="even">
<td><p>-sleepint</p></td>
<td><p>The loop sleep interval for failed virtual allocation scenarios</p>
<p>Default value: 2 minutes</p></td>
</tr>
<tr class="odd">
<td><p>-iodifferupperthreshold</p></td>
<td><p>The upper threshold for issuing I/O requests.</p>
<p>Default value: 1000</p></td>
</tr>
<tr class="even">
<td><p>-iodifflowerthreshold</p></td>
<td><p>The lower threshold to resume I/O requested after I/O diff falls below this number.</p>
<p>Default value: 100</p>
<div class="alert">
<strong>Note</strong>  
<p>This option is mutually exclusive with bypass mode and is ignored if bypass mode is on.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p>-wfw</p></td>
<td><p>The writer(WFW) flag waits for WriterThreads to be done before any read happens. This option can be either true or false.</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="even">
<td><p>-rr</p></td>
<td><p>The random offset read (RR) option makes ReaderThreads starts at a random offset. This value can be either true or false.</p>
<p>Default value: TRUE</p></td>
</tr>
<tr class="odd">
<td><p>-rw</p></td>
<td><p>The random offset write (RW) option makes WriterThreads start at random offset. This value can be either true of false.</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="even">
<td><p>-rer</p></td>
<td><p>The reverse read from starting offset. This value can be either 0, 1, or 2.</p>
<p>Default value: 2</p></td>
</tr>
<tr class="odd">
<td><p>-rew</p></td>
<td><p>The reverse write from starting offset. This value can be either 0, 1, or 2.</p>
<p>Default value: 0</p>
<div class="alert">
<strong>Note</strong>  
<p>For RER and REW flags, 0 means no reversal, 1 means straight reversal, and 2 means random reversal (not applied always).</p>
<p>For RER and REW flags, full file I/O may not complete and the statistics and results reported might be inaccurate.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>-timer</p></td>
<td><p>Timer mode (in seconds). You can append s, m, h.</p>
<p>Default value: 0</p>
<p>This performs I/O until the timer has expired.</p></td>
</tr>
<tr class="odd">
<td><p>-timerloop</p></td>
<td><p>The timer loop interval (in seconds). You can append s, m, h.</p>
<p>Default value: same as the timer option</p>
<div class="alert">
<strong>Note</strong>  
<p>The timer option is only for issuing requests and the completion will still go through (no timer is applicable for completion).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p>-onlineverify</p></td>
<td><p>Verifies the contents of the file after issuing write requests in online mode.</p>
<p>Default value: TRUE</p></td>
</tr>
<tr class="odd">
<td><p>-offlineverify</p></td>
<td><p>Verifies the contents of the file in offline mode by rerunning the test again.</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="even">
<td><p>-allowzero4verify</p></td>
<td><p>Allows a zero to be part of the full verify (OFFLINE or ONLINE).</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="odd">
<td><p>-onlyzero4verify</p></td>
<td><p>Allows a zero to be part of the full verify(OFFLINE or ONLINE).</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="even">
<td><p>-sharedfh</p></td>
<td><p>Allows the same file handle to be used for all I/O.</p>
<p>Default value: FALSE</p></td>
</tr>
<tr class="odd">
<td><p>-regression</p></td>
<td><p>The regression variation. This value can be either – 1 - 10, or 1001(refers to all variations)</p>
<p>Default value: 0 (no regression)</p></td>
</tr>
<tr class="even">
<td><p>-displayprogress</p></td>
<td><p>Display I/O progress (in seconds), You can append s, m, h,</p>
<p>Default value: 2m</p></td>
</tr>
<tr class="odd">
<td><p>-fullcheck</p></td>
<td><p>Full verification of the data after the online or offline verify.</p>
<p>Default value: true</p></td>
</tr>
<tr class="even">
<td><p>-dbgcheck</p></td>
<td><p>Breaks into a kernel debugger on failure. This value can be either true or false.</p>
<p>Default value: true</p></td>
</tr>
<tr class="odd">
<td><p>-toleratesurpriseremove</p></td>
<td><p>Do not break into a kernel debugger on a SurpriseRemove failure. This value can be either true or false.</p>
<p>Default value: false</p></td>
</tr>
<tr class="even">
<td><p>-toleraterepair</p></td>
<td><p>Do not break into a kernel debugger on a repair failure. This value can be either true or false.</p>
<p>Default value: false</p></td>
</tr>
<tr class="odd">
<td><p>-toleratefailio</p></td>
<td><p>Do not break into a kernel debugger on a FailIO failure. This value can be either true or false.</p>
<p>Default value: false</p></td>
</tr>
<tr class="even">
<td><p>-exitonerror</p></td>
<td><p>Exit on a failure. This value can be either true or false.</p>
<p>Default value: False</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test, type **/?**.

 

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
<td><p>ScatterMultiThread.exe</p></td>
<td><p><em>&lt;[testbinroot]&gt;</em>\NTTest\BASETEST\core_file_services\NTFS\ScatterGather\</p></td>
</tr>
<tr class="even">
<td><p>ntlog.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTest\CommonTest\NtLog\</p></td>
</tr>
<tr class="odd">
<td><p>ntlogger.ini</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\NTTest\CommonTest\NtLog\</p></td>
</tr>
<tr class="even">
<td><p>stresslog.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\basetest\core_file_services\shared_libs\</p></td>
</tr>
<tr class="odd">
<td><p>fbslog.dll</p></td>
<td><p><em>&lt;[osbinroot]&gt;</em>\basetest\core_file_services\shared_libs\fbslog\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20ScatterGather%20%28SYSTEM%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




