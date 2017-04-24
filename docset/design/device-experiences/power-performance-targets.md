---
title: Power/performance targets
description: Requirements for each system are dictated by the target market, workload, and form factor. Recommended targets for power/performance based on real-world systems are summarized in this topic.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: EC8F535E-A59E-462A-A100-D01DC2791CBC
---

# Power/performance targets

Requirements for each system are dictated by the target market, workload, and form factor.

The following list describes the recommended targets. This list is based on Connected Standby telemetry data from real world systems (tablets and laptops) running Windows 8.1, and are not specific to a single system configuration.

<table>
    <tr>
    	<th colspan="2">Resume from Standby</th>
    </tr>
	<tr>
    	<td>Exceptional</td>
        <td>Less than 300 ms</td>
    </tr>
	<tr>
    	<td>On track</td>
        <td>Less than 500 ms</td>
    </tr>
</table>

<table>
    <tr>
        <th colspan="2">Battery rate of drain</th>
    </tr>
    <tr>
        <td>Exceptional</td>
        <td>
            <p>9 days or longer of battery life.</p>
            <p>Use of hibernate timer for battery conservation is optional.</p>
        </td>
    </tr>
    <tr>
        <td>On track</td>
        <td>
            <p>6 days or longer of battery life.</p>
            <p>Use of hibernate timer after 24 hours in standby is recommended.</p>
        </td>
    </tr>
</table>

Configuration decisions and trade-offs based on the selected battery capacity and the level of power floor optimization determine where in the recommended target spectrum a system appears.

<table>
    <tr>
        <th>Battery Size (Whr)</th>
        <th>Days of Standby with a given power floor</th>
        <th colspan="2"></th>
        <th></th>
        <th></th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td></td>
        <td>1000 mW</td>
        <td>500 mW</td>
        <td>300 mW</td>
        <td>200 mW</td>
        <td>150 mW</td>
        <td>120 mW</td>
        <td>100 mW</td>
    </tr>
    <tr>
        <td>20</td>
        <td>0.8</td>
        <td>1.7</td>
        <td>2.8</td>
        <td>4.2</td>
        <td>5.6</td>
        <td>6.9*</td>
        <td>8.3*</td>
    </tr>
    <tr>
        <td>25</td>
        <td>1.0</td>
        <td>2.1</td>
        <td>3.5</td>
        <td>5.2</td>
        <td>6.9*</td>
        <td>8.7*</td>
        <td>10.4**</td>
    </tr>
    <tr>
        <td>30</td>
        <td>1.3</td>
        <td>2.5</td>
        <td>4.2</td>
        <td>6.3*</td>
        <td>8.3*</td>
        <td>10.4**</td>
        <td>12.5**</td>
    </tr>
    <tr>
        <td>35</td>
        <td>1.5</td>
        <td>2.9</td>
        <td>4.9</td>
        <td>7.3*</td>
        <td>9.7**</td>
        <td>12.2**</td>
        <td>14.6**</td>
    </tr>
    <tr>
        <td>40</td>
        <td>1.7</td>
        <td>3.3</td>
        <td>5.6</td>
        <td>8.3*</td>
        <td>11.1**</td>
        <td>13.9**</td>
        <td>16.7**</td>
    </tr>
    <tr>
        <td>45</td>
        <td>1.9</td>
        <td>3.8</td>
        <td>6.3</td>
        <td>9.4**</td>
        <td>12.5**</td>
        <td>15.6**</td>
        <td>18.8**</td>
    </tr>
    <tr>
        <td>50</td>
        <td>2.1</td>
        <td>4.2</td>
        <td>6.9</td>
        <td>10.4**</td>
        <td>13.9**</td>
        <td>17.4**</td>
        <td>20.8**</td>
    </tr>
</table>

> **Note**  \* = On Track; \*\* = Exceptional

 

 

 






