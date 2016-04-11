---
Description: 'You can determine whether the device is in Manufacturing Mode or not by using either a kernel mode or user mode API.'
MS-HAID: 'p\_phManuRetail.how\_to\_detect\_manufacturing\_mode'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Detect Manufacturing Mode
---

# Detect Manufacturing Mode


You can determine whether the device is in Manufacturing Mode or not by using either a kernel mode or user mode API.

In kernel mode, a new API has been defined in wdm.h:

``` syntax
_IRQL_requires_max_(APC_LEVEL)
NTKERNELAPI
BOOLEAN
ExIsManufacturingModeEnabled (
    VOID
    );
```

Here's an example of how you might use it:

``` syntax
BOOLEAN ManufacturingModeEnabled = FALSE;

NTSTATUS
DriverEntry(
    PDRIVER_OBJECT DriverObject,
    PUNICODE_STRING RegistryPath
    )
{
...
    ManufacturingModeEnabled = ExIsManufacturingModeEnabled();
...
}

NTSTATUS
DoManufacturingOperation(
    VOID
    )
{
    if (ManufacturingModeEnabled == FALSE) {
        return STATUS_NOT_SUPPORTED;
    }
...
    return STATUS_SUCCESS;
}
```

In user mode, the API is defined in sysinfoapi.h:

``` syntax
WINBASEAPI
BOOL
WINAPI
GetOsManufacturingMode(
    _Out_ PBOOL pbEnabled
    );
```

Here's an example of how you might use it:

``` syntax
DWORD
DoManufacturingOperation(
    VOID
    )
{
    DWORD Error = ERROR_SUCCESS;
    BOOL ManufacturingModeEnabled = FALSE;

    if (!GetOsManufacturingMode(&ManufacturingModeEnabled)) {
        Error = GetLastError();
    }

    if ((Error != ERROR_SUCCESS) ||
        (ManufacturingModeEnabled == FALSE)) {
        return ERROR_NOT_SUPPORTED;
    }
...
    return ERROR_SUCCESS;
}
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Detect%20Manufacturing%20Mode%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



