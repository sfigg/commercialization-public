Filter.Driver.DeviceGuard 
=========================

*All kernel drivers must be built to be compatible with [Device Guard](http://blogs.msdn.com/b/windows_hardware_certification/archive/2015/05/22/driver-compatibility-with-device-guard-in-windows-10.aspx).*

### Filter.Driver.DeviceGuard.DriverCompatibility

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Windows 10 has a feature called [*Device Guard*](http://blogs.windows.com/business/2015/04/21/windows-10-security-innovations-at-rsa-device-guard-windows-hello-and-microsoft-passport/) that gives organizations the ability to lock down devices in a way that provides advanced malware protection against new and unknown malware variants as well as Advanced Persistent Threats (APTs). Device Guard can use hardware technology and virtualization to isolate the Code Integrity (CI) decision-making function from the rest of the Windows operating system. When using virtualization-based security to isolate Code Integrity, the only way kernel memory can become executable is through a Code Integrity verification. This means that kernel memory pages can never be Writable and Executable (W+X) and executable code cannot be directly modified.

Details are available on the [Windows Hardware Certification Blog](http://aka.ms/DeviceGuard).

The following attributes must be set on the sys file.
<table>
<tr><th>Name of attribute</th><th>Description</th></tr>
<tr><td>CompanyName</td><td>Company name</td></tr>
<tr><td>FileDescription</td><td>File/Product description of the driver</td></tr>
<tr><td>OriginalFilename</td><td>Original file name</td></tr>
<tr><td>ProductName</td><td></td></tr>
<tr><td>VS\_FIXEDFILEINFO:</td><td></td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;FileVer</td><td>File version number</td></tr>
<tr><td>&nbsp;&nbsp;&nbsp;FileVer</td><td>Product version number</td></tr>
</table>

You can find more details on the following MSDN page:

-   <https://msdn.microsoft.com/en-us/library/windows/desktop/aa381058(v=vs.85).aspx>

All kernel drivers on Windows MUST be signed by Microsoft (WHQL certificate) through the SysDev dashboard.
