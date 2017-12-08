---
title: Windows 10 S features and requirements
description: Provides guidance for OEMs on the security features of Windows 10S, and what they need to do to use 10S.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 12/12/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# 

| Hardware requirement | Details |
|----------------------|---------|
| 64-bit CPU | Virtualization-based security (VBS) requires the Windows hypervisor, which is only supported on 64-bit IA processors with virtualization extensions, including Intel VT-X and AMD-v. |
| Second Level Address Translation (SLAT) | VBS also requires that the processor’s virtualization support includes Second Level Address Translation (SLAT), either Intel VT-X2 with Extended Page Tables (EPT), or AMD-v with Rapid Virtualization Indexing (RVI). |
| IOMMUs or SMMUs (Intel VT-D, AMD-Vi, ARM64 SMMUs) | All I/O devices capable of DMA must be behind an IOMMU or SMMU.  An IOMMU can be used to enhance system resiliency against memory attacks. |
| Trusted Platform Module (TPM) 2.0 | TPMs, either discrete or firmware, will suffice. For more information, see [Trusted Platform Module (TPM) 2.0](OEM-TPM.md). |


## Related topics

