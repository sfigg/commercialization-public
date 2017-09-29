---
title: Customizations for desktop devices
description: Customizations for desktop devices allow you to change the UI and other settings for a desktop image.
ms.author: alhopper
ms.date: 10/17/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customizations for desktop devices

You have the following options to customize your image. Depending on which options you’d like to use, you’ll employ the associated method or choice of methods to apply the customization.

| Feature                             | Unattend                             | Modification file                             |
|:------------------------------------|:-------------------------------------|:----------------------------------------------|
| Taskbar                             | subset                               | TaskbarLayoutModification.xml                 |
| Colors                              | yes                                  | n/a                                           |
| Darkmode                            | yes                                  | n/a                                           |
| Out of Box Experience (OOBE)        | subset                               | OOBE.xml                                      |
| Get Help app                        | yes                                  | n/a                                           |
<!--
| Pen & Windows Ink Workspace         | subset                               | InkWorkspaceModification.xml                  |
-->

## In this section

These are some common ways to customize your desktop device. You will also find the technical reference for Unattend and WSIM.

| Topic                                                   | Description                                                                                         |
|:--------------------------------------------------------|:----------------------------------------------------------------------------------------------------|
| [Customize the taskbar](customize-the-taskbar.md)       | You can pin up to three additional apps to the taskbar by adding a taskbar layout modification file, for example, TaskbarLayoutModification.xml. You can specify different taskbar configurations based on SKU, device locale, or region.                                |
| [Customize OOBE](customize-oobe.md)                     | When customers turn on their Windows PCs for the first time, they will see the Windows Out of Box Experience (OOBE). Customize OOBE to determine how much work customers must do to complete the OOBE screens before they can enjoy their PCs running Windows 10. |
| [Customize the Get Help app](customize-get-help-app.md) | The Get Help app empowers customers to self-help with troubleshooters, instant answers, Microsoft support articles, and more, before contacting assisted support. You can customize the Get Help app to surface your support app or support website.                      |
| [Customize the Country and Operator Settings Asset](customize-cosa.md) | When a SIM is inserted in a COSA-enabled Windows-based device, the provisioning framework attempts to establish a cellular connection by searching for the matching profile and APN in COSA.                                                              |
| [Windows SIM Technical Reference](wsim/windows-system-image-manager-technical-reference.md) | Settings reference for Windows System Image Manager.            |
| [Unattended Windows Setup Reference](unattend/index.md) | Settings reference for Unattend.                                                                    |