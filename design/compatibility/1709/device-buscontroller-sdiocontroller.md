---
title: Device.BusController.SdioController
Description: 'Requirements.'
ms.assetid: 
MSHAttr: 
author: beneluxboy
ms.author: dongill
ms.date: 05/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

<!--
# Device.BusController.SdioController
 - [Device.BusController.SdioController](#device.buscontroller.sdiocontroller)
-->

<a name="device.buscontroller.sdiocontroller"></a>
## Device.BusController.SdioController

### Device.BusController.SdioController.ComplyWithIndustrySpec

*SDIO controller must comply with the industry standard.*

<table>
<tr>
<td>Applies to</td>
<td>
<p>Windows 10 Client x64</p>
<p>Windows 10 Client x86</p>
<p>Windows 10 Mobile ARM</p>
<p>Windows 10 Mobile x86</p>
<p>Windows Server 2016 x64</p>
</td></tr></table>

**Description**

Secure Digital I/O (SDIO) host controllers must comply with PCI 2.3 or later requirements for that interface. For PCI configuration registers and interface information, see the SD Host Controller Specification, Version 1.0, Appendix A.

### Device.BusController.SdioController.WdfKmdfDriver

*SDIO controller driver must be a WDF KMDF implementation.*

<table>
<tr>
<td>Applies to</td>
<td>
<p>Windows 10 Client x64</p>
<p>Windows 10 Client x86</p>
<p>Windows 10 Mobile ARM</p>
<p>Windows 10 Mobile x86</p>
<p>Windows Server 2016 x64</p>
</td></tr></table>

**Description**

The SDIO controller driver must be written using the Windows Driver Framework (WDF) Kernel Mode Driver Framework for the driver's implementation.

