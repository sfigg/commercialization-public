---
title: IProxyRunTests.QueueTest Method (IEnumerable Test , IEnumerable Machine , TemplateParameters)
description: IProxyRunTests.QueueTest Method (IEnumerable Test , IEnumerable Machine , TemplateParameters)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 045B3D8E-3F73-4808-B7FB-F717816FF3BA
---

# IProxyRunTests.QueueTest Method (IEnumerable{Test}, IEnumerable{Machine}, TemplateParameters)


This method schedules the test for execution on a specific subset of machines.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

` IList<TestResult> QueueTest (`

          `IEnumerable<Test> testList,`

          `IEnumerable<Machine> machineList,`

          `TemplateParameters templateParameters`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*testList*

A list of tests to consolidate with the current test.

*machineList*

List of machines that can run the test.

*templateParameters*

Template parameters to use for running tests on a Proxy Client.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


*IList&lt;TestResult&gt;*

A list of results for the tests that were scheduled.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


This is useful to specify a subset of possible machines. For example in the case where manual tests would prefer to run on specific machines.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20IProxyRunTests.QueueTest%20Method%20%28IEnumerable%7BTest%7D,%20IEnumerable%7BMachine%7D,%20TemplateParameters%29%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




