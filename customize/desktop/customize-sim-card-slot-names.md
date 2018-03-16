---
title: Customize SIM card slot names
description: Customize the names of SIM card slots on the device. The names you choose are displayed in Settings.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.author: alhopper
ms.date: 03/16/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customize SIM card slot names

You can customize the names of SIM card slots on the device to more easily differentiate between the them. For example, if the device has both an embedded SIM slot and an external SIM slot, customizing the names will help your customers understand which is which.

> [!Important]
> Only devices with a Dual SIM Single Activation (DSSA) configuration support this customization.

The SIM card slot names that you choose are displayed in **Settings**, under **Network & Internet** > **Cellular**. If no custom names are provided, the default names are **SIM1** and **SIM2**.

## Instructions

1. Create a provisioning XML file (prov.xml). For instructions, see [Create a Prov.xml](https://msdn.microsoft.com/en-us/library/dn499756.aspx).
1. Add the following XML to your provisioning XML file:

   ```XML
    <wap-provisioningdoc>
        <characteristic type="Registry">
            <characteristic type="HKLM\Software\Microsoft\Cellular\MVSettings\DeviceSpecific\CellUX>
                <parm name="SlotSelectionSim1Name" value="Your SIM name 1" datatype="string"/>
                <parm name="SlotSelectionSim1Name" value="Your SIM name 2" datatype="string"/>
            </characteristic>
        </characteristic>
    </wap-provisioningdoc>
   ```

1. Replace "Your SIM name 1" and "Your SIM name 2" with the desired names for your SIM card slots. Save your changes.
1. Create a resource-only .dll for the localized versions of your SIM card slot names. See [Create a resource-only .dll for localized strings](https://docs.microsoft.com/en-us/windows-hardware/customize/mobile/mcsf/create-a-resource-only-dll-for-localized-strings) for instructions.