---
title: PackageWriter.AddDriver Method
description: PackageWriter.AddDriver Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 46610e75-4b6c-4acf-8226-767aadfb4b12
---

# PackageWriter.AddDriver Method


This method adds driver files to the submission package and checks the driver files for driver signability. This method can only be used for submission packages. It cannot be used for update packages. The signability tests are done when drivers are added to the package. If the signability tests fail the driver is not added to the package. Down level OS signability tests are automatically run. Errors from these signability results will not prevent submission creation (will not cause a false return value). The error messages for down level operating system signability runs will be captured and returned as warnings.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel.Submission (in Microsoft.Windows.Kits.Hardware.ObjectModel.Submission)

## <span id="Usage"></span><span id="usage"></span><span id="USAGE"></span>Usage


**Visual Basic**

`Dim instance As PackageWriter`

`Dim pathToDriver As String`

`Dim pathToSymbols As String`

`Dim targets As ReadOnlyCollection(Of Target)`

`Dim locales As ReadOnlyCollection(Of String)`

`Dim errorMessages As StringCollection`

`Dim warningMessages As StringCollection`

`Dim returnValue As Boolean`

`returnValue = instance.AddDriver(pathToDriver, pathToSymbols, targets, locales, errorMessages, warningMessages)`

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**Visual Basic**

`Public Function AddDriver ( _`

          `pathToDriver As String, _`

          `pathToSymbols As String, _`

          `targets As ReadOnlyCollection(Of Target), _`

          `locales As ReadOnlyCollection(Of String), _`

          `<OutAttribute> ByRef errorMessages As StringCollection, _`

          `<OutAttribute> ByRef warningMessages As StringCollection _`

`) As Boolean`

**C#**

`public bool AddDriver (`

          `string pathToDriver,`

          `string pathToSymbols,`

          `ReadOnlyCollection<Target> targets,`

          `ReadOnlyCollection<string> locales,`

          `out StringCollection errorMessages,`

          `out StringCollection warningMessages`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*pathToDriver*

     The path to the driver files. All files in this directory and all subdirectories will be packaged.

*pathToSymbols*

     The path to the symbol files for this driver. This parameter is optional.

*targets*

     The set of supported test targets for this driver.

*locales*

     The set of supported locales for this driver.

*errorMessages*

     A reference to a string collection that contains all the error messages for the submission package.

*warningMessages*

     A reference to a string collection that contains all the warning messages for the submission package

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


**true** if the signability tests passed and the driver was added to the package; otherwise, **false**.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


An exception is thrown when:

-   The *pathToDriver* paramter, the *targets* parameter or the *locales* parameter is **null**.

-   The *pathToDrivers* parameter is empty or there are no *targets* or *locales* values in the parameter lists or the *targets* specified do not exist in the project.

-   The directory does not exist for the *pathToDriver* parameter or the *pathToSymbol* parameter.

-   The **PackageWriter** object has already been disposed.

-   The method calls an invalid connection type.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PackageWriter.AddDriver%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




