---
title: ProductType
description: ProductType
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7B788FE7-591F-4CFB-9C1B-5F2C85564241
---

# ProductType


The **ProductType** object represents a type of product (for example, a printer or a scanner), and is a collection of **Feature** objects. For example, **ProductType** for a basic printer might require only the "device.prints" feature, but **ProductType** for a business printer might require "device.prints" and "device.prints-2-sided" features. ProductType is mostly used for reporting and categorizing a submission, and it has no bearing on test selection or other processing.

**ProductType** is determined at the product instance level. For example, if **ProductType** for a small business printer requires both "device.prints" and "device.scanner" features, a product instance that has one **Target** object of type printer and another **Target** object of type scanner is allowed

The product taxonomy is a means of categorizing product types into well-known groups and is provided by the Windows® Certification Program team.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20ProductType%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




