---
title: Validating modern standby
description: This section describes test and validation best practices for system designers and integrators who are building modern standby PCs.
MS-HAID:
- 'cstandby.validating\_connected\_standby'
- 'p\_weg\_hardware.validating\_modern\_standby'
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C1433DBB-1A0A-4391-ADAF-A592E9262418
---

# Validating modern standby


Enabling the low power consumption and constant connectivity of modern standby is a test and validation challenge for the system integrator. All components in the system—hardware and software—must work together to quickly turn power on and off while maintaining connection to the Internet.

This section describes test and validation best practices for system designers and integrators who are building modern standby PCs. It explains what platform components you should have functionally working before you begin testing power management during modern standby. Also included in this section is information about the built-in power management diagnostics in Windows 8.1, and a description of how to use [Windows Performance Analyzer (WPA)](../../test/wpt/windows-performance-analyzer.md) to observe specific operations during modern standby. This information applies to Windows 8 and Windows 8.1.

## About modern standby validation


Starting with Windows 8, the modern standby power model enables applications to stay fresh, up-to-date, and reachable whenever a suitable network is available. For more information, see [Modern Standby](p_WEG_hardware.modern_standby).

Windows supports modern standby only on low-power PC platforms that include low-power hardware and meet Windows Certification requirements. Systems that are not specifically designed for modern standby continue to use the traditional PC power model, which is fully supported in Windows 8 and Windows 8.1. This section pertains only to PCs that implement the modern standby power model. It does not provide test guidance for PCs that implement the traditional ACPI Sleep (S3) and Hibernate (S4) system power states.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Validating%20modern%20standby%20%20RELEASE:%20%2811/28/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




