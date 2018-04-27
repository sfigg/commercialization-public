---
author: alhopper
Description: Instructions on how to download and install the Windows ADK
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Download and install the Windows ADK
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Download and install the Windows ADK

The Windows Assessment and Deployment Kit (Windows ADK) has the tools you need to customize Windows images for large-scale deployment, and to test the quality and performance of your system, its added components, and the applications running on it. The latest version of this kit is available for download below.

Windows Insiders can also [get the Windows ADK Insider Preview](https://www.microsoft.com/software-download/windowsinsiderpreviewADK).

By default, the ADK is installed using an online installer and GUI. If you have a scenario where you cannot use the online ADK installer with GUI, see [Install the ADK offline](adk-offline-install.md).

## Download the latest Windows ADK

[Download the Windows ADK for Windows 10, version 1709](https://go.microsoft.com/fwlink/p/?linkid=859206)

The latest version of the Windows ADK includes:

* The Windows Assessment Toolkit and the Windows Performance Toolkit to assess the quality and performance of systems or components.
* Deployment tools such as WinPE, Sysprep, DISM and other tools that you can use to customize and deploy Windows 10 images.

See [What's new in ADK tools](what-s-new-in-kits-and-tools.md) to learn more about the Windows ADK for Windows 10, version 1709.

## Other ADK downloads

| ADK version                               | Description                                           |
|:------------------------------------------|:------------------------------------------------------|
| [Windows ADK for Windows 10, version 1703](https://go.microsoft.com/fwlink/p/?LinkId=845542) | You must use Windows 10, version 1703, with this version of the Windows ADK and the Windows 10 IoT Core ADK Add-Ons for version 1703. [Learn more](what-s-new-in-kits-and-tools.md#whats-new-in-the-windows-adk-for-windows-10-version-1703).  |
| [Windows ADK for Windows 10, version 1607](https://go.microsoft.com/fwlink/p/?LinkId=526740) | You must use Windows 10, version 1607, with this version of the Windows ADK and the Windows 10 IoT Core ADK Add-Ons for version 1607. [Learn more](what-s-new-in-kits-and-tools.md#whats-new-in-the-windows-adk-for-windows-10-version-1607). |
| [Windows ADK for Windows 8.1 Update](https://go.microsoft.com/fwlink/p/?LinkId=393005) | The Windows ADK for Windows 8.1 Update includes new OEM-specific tools to reduce the amount of space Windows uses on solid state storage devices. [Learn more](https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-8.1-and-8/dn247001(v=win.10)). |
| [Windows 10 IoT Core ADK Add-Ons](https://go.microsoft.com/fwlink/p/?LinkId=735028) | The IoT Core ADK Add-Ons include OEM-specific tools to help you create images for your devices with Windows apps, BSPs, drivers, and other chosen features. [Learn more](https://docs.microsoft.com/en-us/windows-hardware/manufacture/iot/iot-core-adk-addons). |
| [Windows OEM HAL Extension Test Cert 2017](https://go.microsoft.com/fwlink/?linkid=872294) | To use the Windows ADK to work with HAL Extensions, download and install the updated Windows OEM HAL Extension Test Cert 2017 (TEST ONLY) certificate. [Learn more](https://support.microsoft.com/help/4131991). |

For older versions of Windows:

* [Download for Windows 8](https://www.microsoft.com/en-us/download/details.aspx?id=30652)
* [Download for Windows 7 (AIK)](https://www.microsoft.com/en-us/download/details.aspx?id=5753)

## Install the ADK

Install the ADK based on what works best for your environment.

* For computers that are connected to the internet, you can use any of the download links above.
* For secure manufacturing environments, you can [install the Windows ADK offline](adk-offline-install.md).
* For automated installs, you can [silently install the Windows ADK](adk-offline-install.md#install-the-windows-adk-on-an-offline-computer-using-the-command-line).

## Windows ADK tools for IT pros

Windows ADK contains core assessment and deployment tools that IT Pros can use to deploy Windows 10 company-wide, including the User State Migration Tool (USMT) and Volume Activation Management Tool (VAMT).

* [Learn more about VAMT](https://docs.microsoft.com/en-us/windows/deployment/volume-activation/volume-activation-management-tool)
* [Learn more about USMT](https://docs.microsoft.com/en-us/windows/deployment/usmt/usmt-technical-reference)
* [Learn more about Application Virtualization (App-V)](https://docs.microsoft.com/en-us/windows/application-management/app-v/appv-for-windows)
* [Learn more about IT Pro scenarios](https://docs.microsoft.com/en-us/windows/deployment/windows-adk-scenarios-for-it-pros)

## Related downloads

* [Download the Windows Driver Kit](https://developer.microsoft.com/en-us/windows/hardware/windows-driver-kit)
* [Download the Windows HLK, HCK, or Logo Kit](https://developer.microsoft.com/en-us/windows/hardware/windows-hardware-lab-kit)
* [Download the debugging tools for Windows (WinDbg)](https://developer.microsoft.com/en-us/windows/hardware/download-windbg)
* [Download the Windows Symbols Packages](https://developer.microsoft.com/en-us/windows/hardware/download-symbols)
* [Download Windows ADK Insider Preview builds](https://www.microsoft.com/en-us/software-download/windowsinsiderpreviewADK)