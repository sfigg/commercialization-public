---
title: Reboot CSP
description: Reboot CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 4E3F1225-BBAD-40F5-A1AB-FF221B6BAF48
---

# Reboot CSP


The Reboot configuration service provider is used to configure reboot settings.

The following diagram shows the Reboot configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

![reboot](images/reboot-csp.png)

<a href="" id="--vendor-msft-reboot"></a>**./Vendor/MSFT/Reboot**  
The root node for the Reboot configuration service provider.

The supported operation is Get.

<a href="" id="rebootnow"></a>**RebootNow**  
This node executes a reboot of the device.

**Note**  If this node is left in the Execute state, the device will reboot at every sync. We recommend that you clear the Execute state once the sync has occurred.

 

The supported operation is Execute.

<a href="" id="schedule"></a>**Schedule**  
The supported operation is Get.

<a href="" id="schedule-single"></a>**Schedule/Single**  
This node will execute a reboot at a scheduled date and time. Setting a null (empty) date will delete the existing schedule. The date and time value is ISO8601, and both the date and time are required. For example: 2015-12-15T07:36:25Z

The supported operation is Get and Replace.

<a href="" id="schedule-dailyrecurrent"></a>**Schedule/DailyRecurrent**  
This node will execute a reboot each day at a scheduled time starting at the configured starting time and date. Setting a null (empty) date will delete the existing schedule. The date and time value is ISO8601, and both the date and time are required. For example: 2015-12-15T07:36:25Z

The supported operation is Get and Replace.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 

10/10/2016




