<!--
# Device.BusController.SdioController

 - [Device.BusController.SdioController](#Device.BusController.SdioController)
-->

<a name="Device.BusController.SdioController"></a>
# Device.BusController.SdioController

## Device.BusController.SdioController.ComplyWithIndustrySpec

*SDIO controller must comply with the industry standard.*

<table>
<tr>
<th>Applies to</th>
<td>
<p>Windows v10.0 Client x64</p>
<p>Windows v10.0 Client x86</p>
<p>Windows v10.0 Mobile ARM</p>
<p>Windows v10.0 Mobile ARM64</p>
<p>Windows v10.0 Mobile x86</p>
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Secure Digital I/O (SDIO) host controllers must comply with PCI 2.3 or later requirements for that interface. For PCI configuration registers and interface information, see the SD Host Controller Specification, Version 1.0, Appendix A.

## Device.BusController.SdioController.WdfKmdfDriver

*SDIO controller driver must be a WDF KMDF implementation.*

<table>
<tr>
<th>Applies to</th>
<td>
<p>Windows v10.0 Client x64</p>
<p>Windows v10.0 Client x86</p>
<p>Windows v10.0 Mobile ARM</p>
<p>Windows v10.0 Mobile ARM64</p>
<p>Windows v10.0 Mobile x86</p>
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

The SDIO controller driver must be written using the Windows Driver Framework (WDF) Kernel Mode Driver Framework for the driver's implementation.

