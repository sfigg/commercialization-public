---
title: Windows Hello biometric requirements
description: Windows Hello biometric requirements
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8A910CB3-BAC3-408C-8194-8602D702C737
---

# Windows Hello biometric requirements


Learn about the hardware requirements for biometric equipment, such as IR camera and fingerprint readers in order to support Windows Hello.

## Terminology


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Term</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>False Accept Rate (FAR)</td>
<td>Represents the number of instances that a biometric identification solution verifies an unauthorized person. This is normally represented as a ratio of number of instances in a given population size, for example 1 in 100,000. This can also be represented as a percentage of occurrence, for example, 0.001 percent. This measurement is heavily considered the most important with regards to the security of the biometric algorithm.</td>
</tr>
<tr class="even">
<td>True Accept Rate (TAR)</td>
<td>Represents the number of instances a biometric identification solution verifies the authorized user correctly. This is normally represented as a percentage. It is always held that the sum of the True Accept Rate and False Reject Rate is 1.</td>
</tr>
<tr class="odd">
<td>False Reject Rate (FRR)</td>
<td>Represents the number of instances a biometric identification solution fails to verify an authorized user correctly. Usually represented as a percentage, the sum of the True Accept Rate and False Reject Rate is 1.</td>
</tr>
<tr class="even">
<td>Confidence</td>
<td>The confidence in a claimed FAR represents the robustness of the analysis performed in verifying a claimed FAR. Depending on the target or claimed FAR and the importance of the target use case, confidence levels can be varied.</td>
</tr>
<tr class="odd">
<td>Biometric sample</td>
<td>This refers to the complete biometric sample required to perform a verification operation. For example, a single fingerprint is required to perform a verification. In the case of Iris, if the algorithm requires both eyes to perform a verification, then both eyes are considered a biometric sample. If only one eye is required to perform a match, then each eye can be treated as a separate biometric sample.</td>
</tr>
<tr class="even">
<td>Biometric spoof</td>
<td>This refers to a synthetic replica of a biometric sample. For the purpose of combating spoofs, antispoofing and liveness detection systems should be able to combat the following types of spoofs dependent of biometric modality:
<ul>
<li><strong>Fingerprint:</strong>Wood glue and gelatin spoofs made from a latent prints collectable with a reasonable amount of effort. For example, collection off a surface without the cooperation of the target.</li>
<li><strong>Face:</strong> Spoofs created from both visible and inferred sources, replicated on paper or other, non-3D mechanisms. For example, advanced 3D masks that require professional assistance to create. Once again, collection of information must be achieved using a reasonable amount of effort without the cooperation of the target.</li>
<li><strong>Iris:</strong> Spoofs created from both visible and inferred sources, replicated on paper or other, non-3D mechanisms. For example, advanced 3D masks that require professional assistance to create. Once again, collection of information must be achieved using a reasonable amount of effort without the cooperation of the target.</li>
</ul></td>
</tr>
</tbody>
</table>

 

## Fingerprint reader requirements


Large Area sensors (a sensor matrix of 160 x160 Pixels or more at a dpi of 500 or greater):

-   FAR &lt; 0.001%.
-   FRR without antispoofing or liveness detection &lt; 5%.
-   Effective, real world FRR with antispoofing or liveness detection &lt;10%.
-   Antispoofing measures are a requirement.
-   Configuration of antispoofing measures is preferred.

Small Area sensors (a sensor matrix of less than 160x160 at a dpi of 500 or greater):

-   FAR &lt; 0.002%.
-   FRR without antispoofing or liveness detection &lt; 5%.
-   Effective, real world FRR with antispoofing or liveness detection &lt;10%.
-   Antispoofing measures are a requirement.
-   Configuration of antispoofing measures is preferred.

Swipe sensors:

-   FAR &lt; 0.002%.
-   FRR without antispoofing or liveness detection &lt; 5%.
-   Effective, real world FRR with antispoofing or liveness detection &lt;10%.
-   Antispoofing measures are a requirement.
-   Configuration of antispoofing measures is preferred.

## Facial feature recognition requirements


-   FAR &lt; 0.001%.
-   FRR without antispoofing or liveness detection &lt; 5%.
-   Effective, real world FRR with antispoofing or liveness detection &lt;10%.
-   Antispoofing measures are a requirement.
-   Configuration of antispoofing measures is preferred.

## Iris feature recognition requirements


-   FAR &lt; 0.001%.
-   FRR without antispoofing or liveness detection &lt; 5%.
-   Effective, real world FRR with antispoofing or liveness detection &lt;10%.
-   Antispoofing measures are a requirement.
-   Configuration of antispoofing measures is preferred.

## Confidence in FAR claims


Although we currently do not require third-party verification of the FAR claims, we do require that partners provide a guideline to the steps taken to verify FAR claims.

In the case of FAR claims of less than 0.001%, we require a confidence of 96% or greater. In the case of FAR claims 0.002% to 0.001%, we require a confidence of 96% of greater.

For simplicity, confidence can be calculated through straight-forward data collection and experimental testing. The rule of 30 is best used to verify confidence at a level of 96%.

In this case, carry out as many unique comparisons as required to achieve 30 errors. An error in this case represents an event where two unique samples were classified as the same sample, such as a False acceptance.

Once 30 errors occur, your confidence is calculated as:

*Conf=1-1/((\# of Comparisons)×FAR)*

where *FAR* is the desired False Accept Rate and *Conf* is the desired Confidence.

For an example of this calculation, please refer to the Appendix below.

## Appendix


The number of comparisons required to verify a particular level of confidence in a claimed FAR is shown below:

*\# of Unique Comparisons = C = 1/((1-Conf)) × 1/((FAR))*

where *FAR* is the desired False Accept Rate and *Conf* is the desired Confidence.

For example, with a desired FAR of 0.001%, at a confidence of 96%:

*\# of Unique Comparisions = C = 1/((1-0.96)) × 1/((0.00001))*

*C = 25 × 100,000*

*C = 2,500,000*

In this case, 2,500,000 comparisons would be required to reach the desired confidence in the claimed FAR.

To determine the number of unique biometric samples, *n*, to be collected to achieve these comparisons, the formula below can be used:

*\# of Comparisons = n!/2(n-2)!*

*C = n(n-1)/2*

*∴ n^2-n = 2C*

where *n* is the number of unique biometric samples.

In the cases where *n*^2&gt;&gt;*n*, the above formula can be simplified to:

*n^2 ≈ 2C*

*∴ n ≈ √2C*

Continuing with the example above, the number of unique biometric samples needed would be:

*n ≈ √(2×2,500,000)*

*n ≈ 2,236.1*

Meaning about 2,237 unique biometric samples will be needed to verify the confidence in the claimed FAR.

## Related topics


[Windows Hello face authentication](windows-hello-face-authentication.md)

[Windows Hello](windows-hello.md)

[Windows Hello OEM and IHV app scenarios](p_phpartappdev.windows_hello_oem_and_ihv_app_scenarios)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Hello%20biometric%20requirements%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





