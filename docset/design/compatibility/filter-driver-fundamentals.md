Filter.Driver.Fundamentals
==========================

*Corresponds to device driver fundamentals, but for filter drivers.*

### Filter.Driver.Fundamentals.DriverQuality

*A filter driver must be of high quality.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Driver components must not cause the system to crash or leak resources. These resources include, but are not limited to the following:  

-   Memory

-   Graphics Device Interface (GDI) or user objects

-   Kernel objects such as files, mutex, semaphore, and device handles

-   Critical sections

-   Disk space

-   Printer handles

*Design Notes*:

Sleep & PNP with IO Before And After Test - Test cycles the system through all sleep states and does basic PNP on all devices on the system.

This test will be run with Driver Verifier enabled with standard settings.
