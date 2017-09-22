---
author: kpacquer
Description: Converting Windows Universal OEM Packages
ms.assetid: cbae6949-ccfe-4015-a9b0-a269f6f30d5a
MSHAttr: 'PreferredLib:/library'
title: Converting Windows Mobile and IoT Packages to Windows Universal OEM Packages
ms.author: kenpacq
ms.date: 09/02/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Converting Windows Universal OEM Packages

We've created a new packaging standard that will be compatible with more devices.

If you've created packages for Windows Mobile or Windows IoT Core in the past, and you want to use them on Windows IoT Core, version 1709, you'll need to either recreate your packages, or convert them using the convertpackagexml tool. 

After you convert the packages, you may need to modify the wm.xml file to make sure that it follows the [schema](package-schema.md).


```text
c:\oemsample>convert_package_xml.exe ...
```

## Command-line

Convert_package_xml.exe [project] /universalbsp ...

```
  [project]··········· Full path to input file : .wm.xml, .pkg.xml, .man
                       Values:<Free Text> Default=NULL

  [universalbsp]······ Convert wm.xml BSP package to cab
                       Values:<true | false> Default=False

  [variables]········· Additional variables used in the project file,syntax:<name>=<value>;<name>=<value>;....
                       Values:<Free Text> Default=NULL

  [cpu]··············· CPU type. Values: (x86|arm|arm64|amd64)
                       Values:<Free Text> Default="arm"

  [languages]········· Supported language identifier list, separated by ';'
                       Values:<Free Text> Default=NULL

  [version]··········· Version string in the form of <major>.<minor>.<qfe>.<build>
                       Values:<Free Text> Default="1.0.0.0"

  [output]············ Output directory for the CAB(s).
                       Values:<Free Text> Default="CurrentDir"
```

Related topics:
[Creating Windows Universal OEM Packages](create-packages.md)
