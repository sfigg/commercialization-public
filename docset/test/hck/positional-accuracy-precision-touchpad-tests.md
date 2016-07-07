---
author: joshbax-msft
title: Positional Accuracy
description: Positional Accuracy
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 373fedb2-b4a3-4ff8-b77d-d1d1e9692e45
---

# Positional Accuracy


## Test name


**Test.PositionalAccuracy.json**

## Core requirements tested


Device.Input.PrecisionTouchpad.Precision.Position

## Test purpose


Verifies that the device is able to report absolute position accurately.

## Tools required


**PTLogo.exe**

## Validation steps


1.  Start **Test.PositionalAccuracy.json**.

2.  Following the directions on the screen, you will perform three taps in an indicated area on the touchpad. After each set of three taps, the instructions will indicate you move to a different area, for a total of 15 taps. If instructions say to tap in a corner, tap as close to that corner as possible.

    For each iteration:

    1.  Tap the location specified on the screen.

        **Note**  
        The location is calculated as a 13mm square area. For example, if the instructions say **Top Left corner**, you should tap somewhere within the top-left most 13mm of the touchpad.

         

    2.  If no tap is registered by the device, manually fail the iteration.

## Common errors


\[25\] packet not in expected position: XXX, YYY

-   Tap must occur at the location specified.

-   The given values specify the logical coordinates of where the contact was reported.

    ![positional accuracy failure unexpected position](images/hck-winb-positionalaccuracyfailurepacketnotinexpectedposition.png)

    **Figure 1 Positional Accuracy Failure - Packet Not In Expected Position**

## Passing


15/15 (100%) iterations must pass in order to complete with passing status.

## Related topics


[Precision Touchpad Tests](precision-touchpad-tests.md)

 

 







