---
title: Reproduce the test failure by running the test from the command line
Description: Reproduce the test failure by running the test from the command line
ms.assetid: d10a52eb-5275-4f2b-88ea-72dbc3007cb2
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Reproduce the test failure by running the test from the command line

It is sometimes convenient to reproduce test failures by running the tests from command line.

## Run a Device Fundamentals Reliability test from the command line

1.  Create a **c:\\temp** folder on the system under test (SUT).

2.  Copy all files from **\\\\**&lt;<placeholder>hckcontroller</placeholder>**&gt;\\taefbinaries\\**&lt;<placeholder>arch</placeholder>&gt; folder to **c:\\temp** on the SUT.

    Where &lt;<placeholder>hckcontroller</placeholder> is the name of the Windows Hardware Lab Kit (Windows HLK) controller, and &lt;<placeholder>arch</placeholder>&gt; is the SUT platform.

3.  To install and start the TAEF service, type the following commands from a command line:

    1.  cd c:\\temp

    2.  wex.services.exe /install:Te.Service

    3.  sc start Te.Service

4.  Copy all files that have **Utility\_** in the name from **\\\\**&lt;<placeholder>hckcontroller</placeholder>**&gt;\\tests\\**&lt;<placeholder>arch</placeholder>&gt; directory to **c:\\temp**.

5.  Copy **Devfund\_\*** from **\\\\**&lt;<placeholder>hckcontroller</placeholder>&gt;\\**tests\\**&lt;<placeholder>arch</placeholder>&gt; to **c:\\temp**.

6.  Change directory to **c:\\temp** and run the following command:

    <example>
    `c:\temp\Te.exe Devfund_<testname>.<ext>/P:”DQ=DeviceID=’<Device Instance Path of device under test from Device Manager>’” /RebootStateFile:asdf.st /Name:”*< test case name>*”`

    </example>
    Where &lt;<placeholder>test case name</placeholder>&gt; is the name of the test.

You can get the test name by reviewing the **Run Test** task for the failing job. Open Windows HLK Manager, click **Explorer**, click **Job Explorer**, click **Search for failing job** (eg. ‘Device Path Exerciser Test (Certification)’). Right-click the failing job, click **Open Job**, click the **Tasks** tab, click **Regular** tasks, and double click **Run Test** to view the test binary name.

The /**Name** switch is optional. The /**Name** switch specifies that only the test names you specify are run; if unspecified, all test cases contained in the test binary are executed in sequence. You can get the list of test case names in a test binary by running the following command:

<example>
`Te.exe Devfund_<testname>.<ext> /listproperties`
</example>
<mark type="bullet_intro"></b>

## How to use /BreakOnError to break into the debugger

If the Run Test task in a device fundamentals tests fails and you want to review the system state in the kernel debugger at the same time that the test logs a failure, you can run the test manually from a command line together with the kernel debugger and pass the **/BreakOnError** command line switch to **Te.exe**.

Running Te.exe with the **/BreakOnError** switch causes the system to break into the kernel debugger when the test is ready to log an error. For more information on setting up a kernel debugger, see <xref hlink="http://go.microsoft.com/fwlink/?LinkID=299467">Setting Up Kernel-Mode Debugging Manually</b>.

To run a device fundamentals test by using the /**BreakOnError** switch, add the switch as shown below:

<example>
`Run c:\temp\Te.exe Devfund_<testname>.<ext>/P:”DQ=DeviceID=’<Device Instance Path of device under test from Device Manager>’” /RebootStateFile:asdf.st /BreakOnError /Name:”*<test case name>*”`
</example>
Where &lt;<placeholder>test case name</placeholder>&gt; is the name of the test.

## Example debug scenario

You can investigate the following failure by rerunning the test and having the system to break into the debugger when the test logs the failure on re-run.

<example>
`WDTF_FUZZTEST             : INFO  :    Running IOCTL Fuzzing Test on surface \DosDevices\usb#vid_045e&pid_f0ca&mi_00#7&12099dde&0&0000#{0b9f1048-b94b-dc9a-4ed7-fe4fed3a0deb}\{8de0ff21-6c06-4c27-bfe0-e62612c015ae}. Access Mode=NO SYNC. Open Type=TREE_CONNECT. Opened with access 1201bf   WDTF_FUZZTEST             : ERROR :    Test thread exceeded timeout limit. Terminating thread  WDTF_FUZZTEST             : ERROR :    Last logged operation: ZwDeviceIoControlFile, CtrlCode=0x22e10b, InBuf=0xfffffc00, 0 OutBuf=0xfffffc00, 0  WDTF_FUZZTEST             : INFO  :    Successfully terminated test thread.`
</example>
You can set a break in the debugger using the following command:

<example>
`Te.exe Devfund_DevicePathExerciser_WLK.dll /P:”DQ=DeviceID=’ USB\VID_045E&PID_F0CA&MI_00\7&12099DDE&0&0000’” /RebootStateFile:asdf.st /BreakOnError /Name:”*IOCTLTest*”`
</example>
Device Fundamentals tests run as Te.ProcessHost.exe (if it exists) or as Te.exe (if Te.ProcessHost.exe doesn’t exist). Reviewing threads running in these test processes can help with triaging hangs and/or test failures.

You can get the process id of **Te.ProcessHost.exe** by running the following command:

<example>
`!process 0 0 Te.ProcessHost.exe`
</example>
Switch the process context in the debugger to the test process:

<example>
`.process /p /r <process id>`
</example>
Dump process info:

<example>
`!process <process id>`
</example>
<seealso> <xref rid="p_hlk_test.troubleshooting_device_fundamentals_reliability_testing_by_using_the_windows_hck">Troubleshooting Device Fundamentals Reliability Testing by using the Windows HLK</b> </seealso>



