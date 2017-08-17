---
title: Trusted Plaform Module (TPM) 2.0 requirements
description: Provides guidance on what an OEM should do to enable TPM 2.0
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: dawnwood
ms.date: 08/30/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

#Trusted Platform Module 2.0 requirements
Trusted Platform Module (TPM) technology is designed to provide hardware-based, security-related functions. A TPM chip is a secure crypto-processor that helps you with actions such as generating, storing, and limiting the use of cryptographic keys. The chip includes multiple physical security mechanisms to make it tamper resistant, and malicious software is unable to tamper with the security functions of the TPM. 

Starting with Windows 10, the operating system automatically initializes and takes ownership of the TPM. That means that IT professionals should not have to configure or monitor the system. You as the Original Equipment Manufacturer(OEM) must provide the TPM 2.0 chip with PRC[7] support in your devices in order for this protection to be enabled for customers. For more information about the specific requirements that must be met, see [System.Fundamentals.TPM20](https://docs.microsoft.com/en-us/windows-hardware/design/compatibility/1703/systems#system.fundamentals.tpm20)

**Note:** If you are an IT Professional and want to understand how TPM works in your enterprise, see [Trusted Platform Module](https://docs.microsoft.com/en-us/windows/device-security/tpm/trusted-platform-module-top-node)