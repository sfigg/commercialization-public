---
author: themar
Description: 'Windows 10 S WinPE, CI policy, OOBE, and DISM information.'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Windows 10 S manufacturing considerations'
ms.author: themar
ms.date: 0/07/2017
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Manufacturing considerations

## Overview

This topic covers information about how the manufacturing environment works with Windows 10 S.

## Code integrity policy

The code integrity policy (CI) blocks the execution of unsigned or improperly signed binaries. Using unsupported binaries is only recommended when performing lab or factory image customization, or deployment where the execution environment is either WinPE or Audit Mode.

Once the CI policy is enabled on a system, it is enabled in two places:
1. Windows 10 S, enforced at boot.
2. EFI firmware policy, enforced during firmware load and OS boot.

## WinPE

WinPE behaves the same for Windows 10 S as it does for Windows Home or Windows Profesional until the CI policy is enabled and Secure Boot is turned on. Once the policy is enabled and Secure Boot is turned on, WinPE (EFI\Boot folder) needs the CI policy (winsipolicy.p7b) to boot, or you must turn off Secure Boot.

The winsipolicy.p7b file is in the Windows 10 S install.wim in the `Windows\Boot\EFI\` folder and should be copied to the WinPE Boot location (EFI\Boot) on the WinPE media.

## DISM

### Adding a Windows 10 S image to a WIM

If you want a single WIM that includes multiple Windows editions including Windows 10 S, you can add/append your Windows 10 S image to an existing WIM, which allows you to specify the Windows 10 S image index during DISM /apply.

### Detect Windows 10 S with DISM

You can use DISM to detect Windows 10 S (offline in WinPE or in Audit mode). In Audit mode, use `DISM /online /get-currentedition`. If an image is Windows 10 S, the command should return S. In WinPE, use `DISM /image:c:\ /get-currentedition`.

## OOBE

If you need access to the Command Prompt from the first OOBE screen, Secure Boot must be disabled and the manufacturing registry key must be in place. Prior to shipping a device, Secure Boot must be enabled and the manufacturing registry key removed.

## Factory device diagnostics

During factory testing, Win32-based diagnostic tools can be run by using one of the following options:

1. Windows 10 S in Audit Mode with with Secure Boot turned off and the manufacturing registry key in place.

    or 

2. In a separate non-Windows 10 S test operating system.

