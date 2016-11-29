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

Resume from Standby
Exceptional
Less than 300 ms
On track
Less than 500 ms
 

Battery rate of drain
Exceptional
9 days or longer of battery life.

Use of hibernate timer for battery conservation is optional.

On track
6 days or longer of battery life.

Use of hibernate timer after 24 hours in standby is recommended.

 

Configuration decisions and trade-offs based on the selected battery capacity and the level of power floor optimization determine where in the recommended target spectrum a system appears.

Battery Size (Whr)
Days of Standby with a given power floor
1000 mW
500 mW
300 mW
200 mW
150 mW
120 mW
100 mW
20
0.8
1.7
2.8
4.2
5.6
6.9\*
8.3\*
25
1.0
2.1
3.5
5.2
6.9\*
8.7\*
10.4\*\*
30
1.3
2.5
4.2
6.3\*
8.3\*
10.4\*\*
12.5\*\*
35
1.5
2.9
4.9
7.3\*
9.7\*\*
12.2\*\*
14.6\*\*
40
1.7
3.3
5.6
8.3\*
11.1\*\*
13.9\*\*
16.7\*\*
45
1.9
3.8
6.3
9.4\*\*
12.5\*\*
15.6\*\*
18.8\*\*
50
2.1
4.2
6.9
10.4\*\*
13.9\*\*
17.4\*\*
20.8\*\*
 

**Note**  \* = On Track; \*\* = Exceptional

 

 

 






