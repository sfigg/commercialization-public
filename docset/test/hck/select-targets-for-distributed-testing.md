---
author: joshbax-msft
title: Select targets for distributed testing
description: Select targets for distributed testing
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 74332944-f719-43ae-a254-d6556caca632
---

# Select targets for distributed testing


By default, Windows Hardware Certification Kit (Windows HCK) tries to enable distributed testing by combining similar, selected targets. This is accomplished by matching similar targets under the same target family.

When two or more targets are considered similar, the set of tests for all the targets is reduced by removing duplicate distributable tests. Tests that are marked as non-distributable must be run on each target.

Targets that are in the same target family (distributed) have the notation **\[Group – XX\]** in the machine column. Targets that are in their own target family (non-distributed) have the machine name where the target was located.

The rules for determining whether two targets are similar include:

-   Target type must match

-   Target platform must match

-   Targets must be in the same machine pool

-   Targets cannot be from the same machine

-   Targets must have the same hardware Id or be in the same device family.

-   Drivers must match

**Note**  
When there are multiple secondary matched targets on the same system, the target check box activation is retained from the previously displayed dialog for the same targets. This causes secondary targets to be grayed out. You can activate the grayed-out secondary targets by selecting and then de-selecting the checkbox for these targets.

 

## Related topics


[Configuration Page - Distributed and Multi-Device Options](configuration-page---distributed-and-multi-device-options.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Select%20targets%20for%20distributed%20testing%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





