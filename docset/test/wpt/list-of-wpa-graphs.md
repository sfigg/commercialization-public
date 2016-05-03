---
title: List of WPA Graphs
description: List of WPA Graphs
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 71EC5490-7245-45B4-91B0-8B689404A885
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: msdn
---

# List of WPA Graphs


\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.\]

The Graph Explorer window in Windows Performance Analyzer (WPA) displays thumbnails of all graphs that you can use to view the data of the current recording. The thumbnails are grouped by type under the following six categories:

-   System Activity
-   Computation
-   Storage
-   Memory
-   Video
-   Power

The following sections detail the available graphs for each graph type.

**Note**  Depending on the trace recorded and saved in the .etl file, not all graphs listed in the following tables may display in the Graph Explorer when performing your analysis.

 

### System Activity graphs

|                     |                                      |       |
|---------------------|--------------------------------------|-------|
| Graph Name          | Subtype Name                         | Notes |
| UI Delays           | Delays By Process, Type              |       |
| Marks               | Grouped By Mark                      |       |
| Device I/O          | Timeline by Module                   |       |
|                     | Counts by Module                     |       |
| Processes           | Lifetime by Process                  |       |
|                     | Transient Process Tree               |       |
| Window in Focus     | Focus by Process, Thread             |       |
| Images              | Transient Lifetime by Process, Image |       |
|                     | Lifetime By Process, Image           |       |
| Generic Events      | Activity by Provider, Task, Opcode   |       |
|                     | Trace markers                        |       |
|                     | VSync-DwmFrame                       |       |
| Application State   | Application State Timeline           |       |
| Regions of Interest | Regions of Interest                  |       |
|                     | Thread Activities                    |       |
| Thread Lifetimes    | By Process, Thread                   |       |
|                     | Lifetime By Process, Thread          |       |
| Stacks              | Count by Event Name                  |       |

 

### Computation graphs

|                        |                                           |       |
|------------------------|-------------------------------------------|-------|
| Graph Name             | Subtype                                   | Notes |
| CPU Usage (Sampled)    | Utilization by Process, Stack             |       |
|                        | DPC and ISR Usage by Module, Stack        |       |
|                        | Utilization by CPU                        |       |
|                        | Utilization by Priority                   |       |
|                        | Utilization by Process and Thread         |       |
| CPU Usage (Precise)    | Utilization by Process, Thread            |       |
|                        | Context Switch Count by Process, Thread   |       |
|                        | Context Switch Rate by CPU                |       |
|                        | Timeline by CPU                           |       |
|                        | Timeline by Process, Thread               |       |
|                        | Usage by Priority at Context Switch Begin |       |
|                        | Utilization by CPU                        |       |
| DPC/ISR                | DPC/ISR Duration by Module, Function      |       |
|                        | DPC Duration by CPU                       |       |
|                        | DPC Duration by Module, Function          |       |
|                        | DPC Timeline by Module, Function          |       |
|                        | DPC/ISR Duration by CPU                   |       |
|                        | DPC/ISR Timeline by Module, Function      |       |
|                        | ISR Duration                              |       |
|                        | ISR Duration by Module, Function          |       |
|                        | ISR Timeline by Module, Function          |       |
| CPU Usage (Attributed) | Utilization by Process, Thread, Activity  |       |

 

### Storage graphs

|                    |                                                  |       |
|--------------------|--------------------------------------------------|-------|
| Graph Name         | Subtype                                          | Notes |
| Mini-Filter Delays | Timeline by Driver, Process, Thread              |       |
|                    | Count by Mini-Filter                             |       |
| Disk Usage         | Utilization by Disk, Priority                    |       |
|                    | Activity by IO Type, Process                     |       |
|                    | Counts by IO Type, Priority                      |       |
|                    | Counts by Process, IO Type                       |       |
|                    | Disk Offset                                      |       |
|                    | IO Time by Process, IO Type                      |       |
|                    | Service Time by Process, Path Name, Stack        |       |
|                    | Size by Process, Path Name, Stack                |       |
|                    | Throughput by Process, IO Type                   |       |
|                    | Utilization by Disk                              |       |
|                    | Utilization by IO Type, Priority                 |       |
|                    | Utilization by Process, Path Name, Stack         |       |
| Registry           | County by Operation, Process, Key                |       |
|                    | Cumulative Handle Count by Process, Key          |       |
|                    | Elapsed Time by Operation, Process, Key          |       |
|                    | Elapsed Time By Process, Operation, Key          |       |
| File I/O           | Count by Type                                    |       |
|                    | Activity by Process, Thread, Type                |       |
|                    | Count by Process, Thread, Type                   |       |
|                    | Duration by Process, Thread, Type                |       |
|                    | Size by File Name, Process, Stack for Read/Write |       |
|                    | Size by Process, Stack for Read/Write            |       |

 

### Memory graphs

|                               |                                |       |
|-------------------------------|--------------------------------|-------|
| Graph Name                    | Subtype                        | Notes |
| Memory Utilization            | Utilization by Category        |       |
| Page Faults                   | Count by Process               |       |
| Hard Faults                   | Count                          |       |
|                               | Count by Process, File Name    |       |
|                               | IO Time by Process, File Name  |       |
| VirtualAlloc Commit LifeTimes | Outstanding Commit by Process  |       |
| Handles                       | Outstanding Count by Process   |       |
|                               | Cumulative Count by Process    |       |
| Virtual Memory Snapshots      | Default                        |       |
| Pool Graphs                   | Outstanding Size by Paged, Tag |       |

 

### Video graphs

|                      |                               |       |
|----------------------|-------------------------------|-------|
| Graph Name           | Subtype                       | Notes |
| DX Frames            | Duration by Process, FlipType |       |
| GPU Utilization (FM) | GPU by Process                |       |
| Dwm Frame Details    | Dwm Frame Rate                |       |
|                      | Dwm Frame E2E                 |       |
|                      | Dwm Frame GPU                 |       |
|                      | Rectangle by Type             |       |

 

### Power graphs

Text

|                                        |                                        |       |
|----------------------------------------|----------------------------------------|-------|
| Graph Name                             | Subtype                                | Notes |
| CPU Frequency                          | Frequency by CPU                       |       |
| CPU Idle States                        | State by Type, Cpu                     |       |
|                                        | State Diagram by Flags                 |       |
|                                        | State Diagram by Type, Cpu             |       |
| Device Dstate                          | DState by Type, Device                 |       |
| PoFx Component FState                  | FState by Device, Component            |       |
| PoFx Device Power Requirement          | Power req by Device                    |       |
| PDC Resiliency Activity                | Resiliency activity by activator       |       |
| Platform Idle State                    | Platform IdleState                     |       |
|                                        | Platform IdleState, by Time            |       |
|                                        | Platform IdleState, Targeted vs Actual |       |
| ThermalZone Temperature                | Temperature(K) by ThermalZone          |       |
| Battery Drain                          | Battery Drain                          |       |
| System Latency Tolerance               | System Latency Tolerance(ns)           |       |
| SPM Scenarios                          | SPM Duration by State, Scenario        |       |
|                                        | SPM Duration by Scenario, State        |       |
| Processor Profiles                     | Processor Profiles                     |       |
| Processor Utility                      | Utility by Processor                   |       |
|                                        | Affinitized Utility by Processor       |       |
| Processor Utilization                  | Utilization by Processor               |       |
| Processor Parking State                | Parking State by Processor             |       |
| Core Parking Instantaneous Concurrency | Instant Concurrency by Parking Node    |       |
| Core Parking Concurrency               | Concurrency by Parking Node            |       |
| Core Parking Cap State                 | Unpark Cores Cap by Parking Node       |       |
| Processor Performance                  | Performance by Processor               |       |
| Processor Frequency                    | Frequency by Processor                 |       |
| Processor Constraints                  | Constraints by Processor               |       |

 

## Related topics


[Analysis Tab](analysis-tab.md)

[Graph Explorer](graph-explorer.md)

[WPA User Interface](wpa-user-interface.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20List%20of%20WPA%20Graphs%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





