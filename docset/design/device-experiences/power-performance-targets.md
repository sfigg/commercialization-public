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

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Power/performance%20targets%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




