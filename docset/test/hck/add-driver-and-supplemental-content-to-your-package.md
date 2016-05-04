---
author: joshbax-msft
title: Add driver and supplemental content to your package
description: Add driver and supplemental content to your package
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 44772187-6a8d-4208-85f1-9b6adbf94a01
---

# Add driver and supplemental content to your package


## Adding a driver package


For device submissions, the driver(s) being used must be added. The purpose of adding the driver accomplishes two objectives, if the submission passes:

-   The driver(s) called the Driver Package are catalog-signed and returned. These are now the **certified** set of drivers.

-   The driver package can be posted on Windows Update, for broad distribution (as applicable).

Some device submissions (for example, devices which are certified for Server systems) also require the debug symbols to be attached.

These requirements are explicitly called out in documentation. Unless specifically stated, it is not necessary to submit driver symbols.

**To add a driver**

1.  On the **Package** tab, click **Add Driver Folder**.

2.  Select folder where driver package is located.

3.  Click **OK**.

4.  When **Driver Properties** dialog appears, select appropriate **Products** and **Locales** for your package.

5.  Click **OK** to close **Driver Properties** dialog.

**To add symbols**

1.  Right-click selected driver.

2.  Select **Add Symbols**.

## Adding supplemental content


Depending on the Device or System to be certified, additional information may be required.   For example, devices being certified for SERVER systems must include the Static Driver Verifier (SDV) logs.

The requirements for these are covered in the necessary documentation.  Unless explicitly called out, it is not necessary to add supplemental content.

**To add supplemental content**

1.  On the **Package** tab, click **Add Supplemental Folder**.

2.  Select folder where supplemental content is located.

3.  Click **OK**.

 

 






