---
title: Device.Network.DevFund
Description: 'Network requirements.'
ms.assetid: 
MSHAttr: 
author: beneluxboy
---

<!--
# Device.Network.DevFund

 - [Device.Network.DevFund](#Device.Network.DevFund)
-->

<a name="Device.Network.DevFund"></a>
## Device.Network.DevFund

*Network requirements *

### Device.Network.DevFund.NdisVersion

*NDIS devices must conform to the NDIS 6.x requirements in the Windows Driver Kit.*

<table>
<tr>
<th>Applies to</th>
<td>
<p>Windows v10.0 Desktop 32-bit</p>
<p>Windows v10.0 Desktop 64-bit</p>
<p>Windows v10.0 Mobile 32-bit</p>
<p>Windows v10.0 Mobile 64-bit</p>
<p>Windows v10.0 Server vNext x64</p>
</td></tr></table>

**Description**

All NDIS device must conform to NDIS 6.x specified in the Windows Driver Kit.

*Design Notes*

See the Windows Driver Kit, "NDIS."

### Device.Network.DevFund.NPOS

*Network Devices must support No Pause On Suspend (NPOS).*

<table>
<tr>
<th>Applies to</th>
<td>
<p>Windows v10.0 Desktop 32-bit</p>
<p>Windows v10.0 Desktop 64-bit</p>
<p>Windows v10.0 Mobile 32-bit</p>
<p>Windows v10.0 Mobile 64-bit</p>
<p>Windows v10.0 Server vNext x64</p>
</td></tr></table>

**Description**

NDIS miniport drivers must support No Pause On Suspend (NPOS) on client SKUs (feature support on server SKUs is optional).

*Design Notes*

See the No Pause On Suspend Specification.

### Device.Network.DevFund.SelectiveSuspend

*NDIS devices must meet Selective Suspend requirements.*

<table>
<tr>
<th>Applies to</th>
<td>
<p>Windows v10.0 Desktop 32-bit</p>
<p>Windows v10.0 Desktop 64-bit</p>
<p>Windows v10.0 Mobile 32-bit</p>
<p>Windows v10.0 Mobile 64-bit</p>
<p>Windows v10.0 Server vNext x64</p>
</td></tr></table>

**Description**

NDIS devices must meet Selective Suspend requirements.

