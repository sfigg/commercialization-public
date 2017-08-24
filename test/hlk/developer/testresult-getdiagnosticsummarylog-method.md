---
title: GetDiagnosticSummaryLog Method
description: GetDiagnosticSummaryLog Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 9E8934BE-3281-4235-AF11-CAD82EDEE0F1
---

# GetDiagnosticSummaryLog Method


This method retrieves an instance of the diagnostic summary object for the test run, if one is available.

A diagnostic summary log is copied to the controller only after the test run is complete (the test could pass or fail).

The diagnostic summary log captures any bugcheck(s) that occur during the test run.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


For sample usage, see the [Diagnostic Bugcheck Summary](diagnostic-bugcheck-summary.md) sample.

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public DiagnosticSummaryLog GetDiagnosticSummaryLog()`

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


Returns [DiagnosticSummaryLog](diagnosticsummarylog-class.md), an object representation of a diagnostic summary log, if one is available. Otherwise, returns **null**.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20GetDiagnosticSummaryLog%20Method%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




