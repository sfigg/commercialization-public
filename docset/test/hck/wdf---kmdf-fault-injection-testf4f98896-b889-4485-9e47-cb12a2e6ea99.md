---
author: joshbax-msft
title: Wdf - Kmdf Fault Injection Test
description: Wdf - Kmdf Fault Injection Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 83317964-23b4-46ec-a5c6-139a393b5f14
---

# Wdf - Kmdf Fault Injection Test


This automated test verifies the reliability and robustness of the Windows Driver Framework (WDF) drivers. This test is checking against resource and handle leaks and it verifies that the WDF driver handles DDI failures gracefully.

For information included in the Windows Driver Kit on this test, see [WDF DDI Fault Injection Tester (WdfFiTester) (Windows Drivers)](http://go.microsoft.com/fwlink/p/?LinkId=248710).

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.DevFund.DriverFramework.KMDF.HandleDDIFailures Device.DevFund.DriverFramework.KMDF.Reliability</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows RT 8.1Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~12 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Device.Fundamentals Reliability Testing Prerequisites](devicefundamentals-reliability-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device Fundamentals Reliability Testing by using the Windows HCK](troubleshooting-device-fundamentals-reliability-testing-by-using-the-windows-hck.md).

### Fault Injection Test causes the system to bugcheck (BSOD)

The most common failure for this test is a bugcheck. To identify whether the test failed due to a bugcheck, click the **Results** tab in Windows Hardware Certification Kit (Windows HCK) Studio, right-click **Execute Fault Injection**, and select the **Error** option. For a bugcheck, the error will read:

``` syntax
Cause: Machine Rebooted Unexpectedly when Task “Execute Fault Injection” was running
Failure: Task Cancelled Because of an Unexpected Reboot
```

This error occurs because the KMDF driver that is being fault injected is not gracefully handling failures when DDIs are fault injected to return an error NTSTATUS. An unhandled failure in kernel mode usually results in a bugcheck. To analyze the failure, you must run the test with the client attached to a kernel debugger. See [Setting Up Kernel-Mode Debugging Manually](http://go.microsoft.com/fwlink/p/?linkid=299467) for information on how to set up a kernel debugger.

You can also debug the problem by opening the dump file from the debugger that was created by the bugcheck after reboot. For more details on Kernel-Mode Dump Files, see [Kernel-Mode Dump Files](http://go.microsoft.com/fwlink/p/?linkid=308945). The default location for the dump file is **%systemdrive%\\MEMORY.dmp**. To change the dump file path and type, see **System Properties\\Advanced\\Startup and Recovery\\Settings\\Systemfailure**.

To analyze the issue, you can use the following debugger commands in Kernel debugger when it breaks automatically before a bugcheck occurs. You can use the same commands to triage the issue by opening the dump file from the debugger.

1.  **k** – This command shows the callstack at the point where the bugcheck occurs.

2.  **!analyze -v** – This command shows the information about the faulting component. The Fault injection test uses a driver that is called **wdftester.sys**, which hooks into all KMDF DDIs that are called by the driver under test to perform fault injection. When a DDI isn’t getting fault injected before calling into framework (**wdf01000.sys**), **wdftester.sys** appears in the stack. Therefore, when a crash happens during a call into framework, **!analyze** shows **wdftester.sys** as the faulty component. However, the actual component that causes the crash is the driver that is fault injected.–**Wdftester.sys** is just forwarding the call from the driver to the framework. You should first find out which DDI call caused this crash to happen; it’s very possible that the driver assumed the actual fault injected DDI completed correctly, and the subsequently driver used an invalid pointer that was returned from the failed DDI to call into the other DDI, that then bugchecked the system.

3.  **!rcrdrkd.rcdrlogdump wdftester** - You can find out the actual DDI that is currently being fault-injected by the **wdftester.sys** driver, by reading the wpp trace logs in the **wdftester.sys** driver through the Rcdrkd debugger extensions. You must first run **.load rcdrkd.dll**, and then view the wpp logs by using **!rcdrlogdump wdftester**. This command reveals the current DDI that is being fault-injected. The last log shows the DDI that is being fault-injected; for example:

    ``` syntax
    FiHookWdfTimerCreate - <drivername>.sys: FI failing WdfTimerCreate with status: 0xc0000001 (STATUS_UNSUCCESSFUL)
    ```

4.  You should use Kernel-Mode Driver Framework Extensions (**wdfkd.dll**) to continue analyzing the bugcheck. **Wdfkd.dll** is installed with the Windows Debugging Tools. For more information about debugging tools for Windows, see [Download and Install Debugging Tools for Windows](http://go.microsoft.com/fwlink/p/?linkid=299373).

    You must first execute **.load wdfkd.dll** from the debugger to load the debugger extension. Framework’s internal even log, named IFR log, is very helpful for investigating issues. You can view the history of the driver: **!wdfkd.wdflogdump** &lt;*drivername*&gt; will dump the driver’s log. For more details on debugging a KMDF driver, see [Debugging a KMDF Driver](http://go.microsoft.com/fwlink/p/?linkid=308947).

You can use the information from the callstack (**k**), **!analyze**, wdftester logs **(!rcdrkd.rcdrlogdump wdftester**) and the IFR logs in the framework**(!wdfkd.wdflogdump** &lt;*drivername*&gt;) to determine the cause for the bugcheck. If you discover that the faulting KMDF driver is a Microsoft component, you can create a kernel dump, copy the outputs of the debugger commands as shown above, and send this information to Microsoft. For information about how to contact Microsoft Support for a Windows HCK test issue, see [Windows HCK Support](windows-hck-support.md).

### Fault Injection Test causes the system to hang

If the test looks like it’s hung or the test output seems to indicate that it is in an infinite loop with the message `CEventSink – QueryInterfaceCalled` shown in the logs, break into the debugger before Windows HCK cancels the test run, and debug the issue similarly to the case of failure of the test due to a bugcheck as described above. In this scenario, you should look for cases where the driver is in a deadlock, which might be caused by the fault induced by the test and not handled by the driver. You can check the DDI that is currently being fault-injected by the test from the wdftester's wpp logs (see step 3 above), and you can further debug the driver by using KMDF debugger extension **wdfkd.dll** (see step 4 above).

For example, consider a debugging scenario where the Fault Injection Test causes a bugcheck for the driver **drivertemp.sys**. The **!analyze** output is shown here:

``` syntax
kd> !analyze -v********************************************************************************                                                                             **                        Bugcheck Analysis                                    **                                                                             ********************************************************************************Unknown bugcheck code (0)Unknown bugcheck descriptionArguments:Arg1: 00000000Arg2: 00000000Arg3: 00000000Arg4: 00000000Debugging Details:------------------PROCESS_NAME:  KHALMNPR.exeFAULTING_IP: nt!DbgBreakPoint+0 [d:\wm\minkernel\ntos\rtl\i386\debug2.asm @ 59]81722ecc cc              int     3EXCEPTION_RECORD:  ffffffff -- (.exr 0xffffffffffffffff)ExceptionAddress: 81722ecc (nt!DbgBreakPoint)   ExceptionCode: 80000003 (Break instruction exception)  ExceptionFlags: 00000000NumberParameters: 3   Parameter[0]: 00000000   Parameter[1]: 9839bd00   Parameter[2]: 00000008ERROR_CODE: (NTSTATUS) 0x80000003 - {EXCEPTION}  Breakpoint  A breakpoint has been reached.EXCEPTION_CODE: (HRESULT) 0x80000003 (2147483651) - One or more arguments are invalidEXCEPTION_PARAMETER1:  00000000EXCEPTION_PARAMETER2:  9839bd00EXCEPTION_PARAMETER3:  00000008DEFAULT_BUCKET_ID:  WIN8_DRIVER_FAULTBUGCHECK_STR:  0x0CURRENT_IRQL:  2LAST_CONTROL_TRANSFER:  from 8086e99b to 81722eccSTACK_TEXT:  a0ba4ce8 8086e99b 89c48fd0 878663b0 6173b070 nt!DbgBreakPoint [d:\wm\minkernel\ntos\rtl\i386\debug2.asm @ 59]a0ba4d14 80641b4c a1d68fa0 5e297058 6173b070 Wdf01000!imp_WdfCollectionRemove+0x1e3 [d:\wm\minkernel\wdf\framework\kmdf\src\support\fxcollectionapi.cpp @ 270]a0ba4d54 97d034fc 87846008 5e297058 6173b070 wdftester!wdftester_WdfCollectionRemove+0x11c [d:\src\stg\drivers\wdf\kmdf\tests\tools\wdftester\driver\basehookstubs.cpp @ 2008]a0ba4d6c 80825e25 6173b070 89b9cf98 89c48ee8 drivertemp +0x34fca0ba4d94 8082581c 89d32f48 89ac6f24 89d32f48 Wdf01000!FxPkgGeneral::OnClose+0xc8 [d:\wm\minkernel\wdf\framework\kmdf\src\irphandlers\general\fxpkggeneral.cpp @ 1771]a0ba4db4 80824b0d 89d32f48 87bf6730 89d32f48 Wdf01000!FxPkgGeneral::Dispatch+0xc0 [d:\wm\minkernel\wdf\framework\kmdf\src\irphandlers\general\fxpkggeneral.cpp @ 777]a0ba4ddc 8081f02a 00bf6730 89d32f48 87bf6730 Wdf01000!FxDevice::Dispatch+0x155 [d:\wm\minkernel\wdf\framework\kmdf\src\core\fxdevice.cpp @ 1864]a0ba4df8 81ad7acb 87bf6730 89d32f48 89d32f48 Wdf01000!FxDevice::DispatchWithLock+0x77 [d:\wm\minkernel\wdf\framework\kmdf\src\core\fxdevice.cpp @ 1708]a0ba4e18 816aa4a5 818dd29b 9ab8e918 a0ba4e64 nt!IovCallDriver+0x2e3 [d:\wm\minkernel\ntos\io\iomgr\ioverifier.c @ 602]a0ba4e28 818dd29b 84759d10 9ab8e900 9ab8e918 nt!IofCallDriver+0x72 [d:\wm\minkernel\ntos\io\iomgr\iosubs.c @ 2647]a0ba4e64 818db5ca 9ab8e918 9ab8e900 00000000 nt!IopDeleteFile+0xef [d:\wm\minkernel\ntos\io\iomgr\objsup.c @ 877]a0ba4e7c 8176c6f6 00000000 9ab8e918 9ab8e900 nt!ObpRemoveObjectRoutine+0x70 [d:\wm\minkernel\ntos\ob\obref.c @ 2995]a0ba4e98 818d9bcf 9e62a9e0 000004f0 9839bd00 nt!ObfDereferenceObjectWithTag+0x95 [d:\wm\minkernel\ntos\ob\obref.c @ 555]a0ba4ef4 818d997c 9e612700 9e62a9e0 9ab1c580 nt!ObCloseHandleTableEntry+0x123 [d:\wm\minkernel\ntos\ob\obclose.c @ 220]a0ba4f2c 818d9867 9e612700 a0ba4f01 0013fabc nt!ObpCloseHandle+0x9a [d:\wm\minkernel\ntos\ob\obclose.c @ 398]a0ba4f48 817a860c 000004f0 0013fac0 77a99454 nt!NtClose+0x31 [d:\wm\minkernel\ntos\ob\obclose.c @ 459]…STACK_COMMAND:  kbFOLLOWUP_IP: wdftester!wdftester_WdfCollectionRemove+11c [d:\src\stg\drivers\wdf\kmdf\tests\tools\wdftester\driver\basehookstubs.cpp @ 2008]80641b4c 8b4dfc          mov     ecx,dword ptr [ebp-4]FAULTING_SOURCE_LINE:  d:\src\stg\drivers\wdf\kmdf\tests\tools\wdftester\driver\basehookstubs.cppFAULTING_SOURCE_FILE:  d:\src\stg\drivers\wdf\kmdf\tests\tools\wdftester\driver\basehookstubs.cppFAULTING_SOURCE_LINE_NUMBER:  2008SYMBOL_STACK_INDEX:  2SYMBOL_NAME:  wdftester!wdftester_WdfCollectionRemove+11cFOLLOWUP_NAME:  wintriagMODULE_NAME: wdftesterIMAGE_NAME:  wdftester.sysDEBUG_FLR_IMAGE_TIMESTAMP:  4f975eaeFAILURE_BUCKET_ID:  0x0_VRF_wdftester!wdftester_WdfCollectionRemove+11cBUCKET_ID:  0x0_VRF_wdftester!wdftester_WdfCollectionRemove+11cFollowup: wintriag
```

The bugcheck in this example occurs when **drivertemp.sys** calls into WdfCollectionRemove. Wdftester forwards this call into **wdf01000.sys**. **!analyze** indicates that wdftester is the faulty component because wdftester was the last component that called into the framework. However, wdftester is just a pass-through and **drivertemp.sys** should be investigated to understand why it causes the WdfCollectionRemove call to crash the system.

The wpp trace logs for **wdftester.sys** driver are shown here:

``` syntax
kd> !rcdrkd.rcdrlogdump wdftesterTrace searchpath is:  Trace format prefix is: %7!u!: %!FUNC! - Trying to extract TMF information from - C:\WinDbg\sym\wdftester.pdb\8DB88EB4966743BCAE335C804B6B3DBB1\wdftester.pdb--- start of log ---//…19: WmiMethodConfigureDdiFi - FI enabled for Ddi: WdfDriverCreate (116), Driver: drivertemp.sys20: LoadImageCallback - SUCCESS: WdfTester Enabled for driver \Device\HarddiskVolume1\Windows\System32\Drivers\ drivertemp.sys21: FiHookWdfDriverCreate - drivertemp.sys: FI failing WdfDriverCreate with status: 0xc0000001 (STATUS_UNSUCCESSFUL)22: WmiMethodConfigureDdiFi - FI disabled for Ddi: WdfDriverCreate (116), Driver: drivertemp.sys23: WmiMethodConfigureDdiFi - FI enabled for Ddi: WdfCollectionAdd (15), Driver: drivertemp.sys24: LoadImageCallback - SUCCESS: WdfTester Enabled for driver \Device\HarddiskVolume1\Windows\System32\Drivers\drivertemp.sys25: FiHookWdfCollectionAdd -  drivertemp.sys: FI failing WdfCollectionAdd with status: 0xc0000001 (STATUS_UNSUCCESSFUL)
```

This indicates that the driver call to WdfCollectionAdd was injected with a fault to return STATUS\_UNSCUCCESSFUL. In the logdump for drivertemp, the stack frame of the following thread shows that WdfCollectionRemove hit a debug break, as shown here:

``` syntax
kd> kChildEBP RetAddr  a0ba4ce8 8086e99b nt!DbgBreakPoint [d:\wm\minkernel\ntos\rtl\i386\debug2.asm @ 59](Inline) -------- Wdf01000!Mx::MxDbgBreakPoint+0x6 [d:\wm\minkernel\wdf\framework\shared\inc\primitives\km\mxgeneralkm.h @ 154](Inline) -------- Wdf01000!FxVerifierDbgBreakPoint+0x1f [d:\wm\minkernel\wdf\framework\shared\inc\private\km\fxverifierkm.h @ 57]a0ba4d14 80641b4c Wdf01000!imp_WdfCollectionRemove+0x1e3 [d:\wm\minkernel\wdf\framework\kmdf\src\support\fxcollectionapi.cpp @ 270]a0ba4d54 97d034fc wdftester!wdftester_WdfCollectionRemove+0x11c [d:\src\stg\drivers\wdf\kmdf\tests\tools\wdftester\driver\basehookstubs.cpp @ 2008]a0ba4d6c 80825e25 drivertemp+0x34fckd> .load wdfkd.dllkd> !wdflogdump drivertemp% read so far ... 10, 20, 30, 40, 50, 60, 70, 80, 90, 100There are 75 log entries--- start of log ---//…125: FxPkgPnp::Dispatch - WDFDEVICE 0x765559F0 !devobj 0x87BFE208, IRP_MJ_PNP, 0x00000007(IRP_MN_QUERY_DEVICE_RELATIONS) type RemovalRelations IRP 0x89A94CE0126: imp_WdfCollectionRemove - WDFOBJECT 6173B070 not in WDFCOLLECTION 5E297058, 0xc0000225(STATUS_NOT_FOUND)
```

KMDF log indicates that the driver tried to remove an object from a WDF collection, but the object doesn’t belong to the collection. When WdfVerifier is enabled, framework issues this debug break. You can display the objects that are stored in a collection object by using **!wdfcollection**, as shown here:

``` syntax
kd> !wdfcollection 5E297058
Number of Items: 0
```

This WDF collection object doesn’t contain any objects, but **drivertemp.sys** is trying to remove a WDF object 6173B070. You can check the type of this object by using **!wdfhandle**, as shown here:

``` syntax
kd> !wdfhandle 6173B070 Dumping WDFHANDLE 0x6173b070=============================Handle type is WDFFILEOBJECTRefcount: 1Contexts:    context:  dt 0x9e8c4ff0 RAWPDO_GENERIC_FILE_EXTENSION (size is 0x10 bytes)    <no associated attribute callbacks>Parent: !wdfhandle 0x76539198, type is WDFDEVICEOwning device: !wdfdevice 0x76539198!wdftagtracker 0x89da4d80State history:  [0] FxObjectStateCreated (0x1)!wdfobject 0x9e8c4f88
```

As shown in the previous example, this handle is for a WDFFILEOBJECT, and the object context is of type RAWPDO\_GENERIC\_FILE\_EXTENSION. **!wdfhandle** debugger extension also displays the parent object, which is a WDFDEVICE, the tagtracker for verifier’s handle tracking feature, state history of the WDFFILEOBJECT, and the pointer to the framework’s internal object. This can be further investigated by using **!wdfobject 0x9e8c4f88**.

In this case, the WDFFILEOBJECT was never added to the WDFCOLLECTION. The driver code should be investigated to determine where the driver adds the WDFFILEOBJECT to the WDFCOLLECTION and whether the necessary checks are in place to verify that WDFFILEOBJECT was correctly added into the WDFCOLLECTION before trying to remove it. Fault injection occurs for the driver’s startup and removal path. The bug check occurrence because of this logo test reveals a driver issue with verifying the return value for DDI calls on this code path.

 

 






