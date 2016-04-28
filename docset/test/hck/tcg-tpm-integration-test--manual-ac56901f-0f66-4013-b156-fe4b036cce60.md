---
author: joshbax-msft
title: TCG TPM Integration Test (Manual)
description: TCG TPM Integration Test (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 49696b35-9471-413d-9a7c-9653fcec590b
---

# TCG TPM Integration Test (Manual)


This test validates that the integration of the Trusted Platform Module (TPM) on the system motherboard meets the BitLocker Drive Encryption feature requirements for Windows.

This test is run after a full boot and exercises the TPM and BIOS base, including the setting of physical presence, taking ownership of the TPM, and ACPI interfaces.

The test will restart the system several times during the test, requiring interaction with the machine to verify physical presence according to the BIOS vendor.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>System.Fundamentals.TrustedPlatformModule.TPMEnablesFullUseThroughSystemFirmware System.Fundamentals.TrustedPlatformModule.Windows7SystemsTPM</p>
<p>[See the system hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254482)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, review the prerequisites in [TPM System Fundamentals Testing Prerequisites](tpm-system-fundamentals-testing-prerequisites.md).

This test has no additional test parameters.

The test will prompt you with a certificate. Click **OK** to accept.

## Troubleshooting


For troubleshooting information, see [Troubleshooting System Fundamentals Testing](troubleshooting-system-fundamentals-testing.md).

This test returns Pass or Fail. To review test details, review the test log from Windows Hardware Certification Kit (Windows HCK) Studio. You can enable TPM logging to diagnose implementation issues.

**To enable TPM logging**

1.  Make sure the following resources are installed on the test client.

    -   TraceView.exe be available in the execution path. This program is available from the Windows WDK.

    -   [Windows Symbol Packages](http://msdn.microsoft.com/windows/hardware/gg463028) for formatting of the log files. The following instructions assume that the debug symbols for the appropriate operating system have been installed to **C:\\Symbols**.

2.  Turn on the TPM driver tracing from the registry. This following will log multiple boot cycles to one log file per boot cycle.

    ``` syntax
    reg add HKLM\System\CurrentControlSet\Control\WMI\Autologger\Tpm /v Start /t REG_DWORD /d 1 /f
    reg add HKLM\System\CurrentControlSet\Control\WMI\Autologger\Tpm /v LogFileMode /t REG_DWORD /d 0x10000004 /f
    reg delete HKLM\System\CurrentControlSet\Control\WMI\Autologger\Tpm /v FileMax  
    reg delete HKLM\System\CurrentControlSet\Control\WMI\Autologger\Tpm /vFileCounter.
    ```

    If you log many boot cycles, you may want to increase the 'MaxFileSize' value (given in MB).

3.  Restart the test client to start logging.

4.  Run your TPM scenario or TPM tests.

**To view TPM logs**

1.  Open an elevated command prompt.

2.  Change to the log directory: **cd %SystemRoot%\\System32\\LogFiles\\WMI**

3.  Stop the logging: **logman stop tpm -ets**

4.  Format the trace file: **TraceView -process &lt;tpm.etl&gt; -pdb &lt;SymbolPath&gt;\\tpm.pdb\\&lt;ID&gt;\\tpm.pdb**

    Where *&lt;tpm.etl&gt;* identifies the specific **.etl** file if **FileMax** was set in the registry (otherwise, just 'tpm.etl'), *&lt;SymbolPath&gt;* is the directory to which the symbols were installed (usually 'C:\\Symbols'), and *&lt;ID&gt;* is a subdirectory of the tpm.pdb symbol directory. If there is more than one subdirectory of the tpm.pdb symbol directory, use the one that reports the fewest events as "Unknown".)

    The formatted trace is in the file **FmtFile.txt**.

**To turn off TPM logging**

Set the following registry.

``` syntax
reg add HKLM\System\CurrentControlSet\Control\WMI\Autologger\Tpm /v Start /t REG_DWORD /d 0 /f
```

**Note**  
When supplying log files to Microsoft, it is recommended you provide the .etl file, to avoid potential loss of information during the formatting process. Also specify the operating system on which the log file was obtained.

 

## Related topics


[System.Fundamentals Tests](systemfundamentals-tests.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20TCG%20TPM%20Integration%20Test%20%28Manual%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





