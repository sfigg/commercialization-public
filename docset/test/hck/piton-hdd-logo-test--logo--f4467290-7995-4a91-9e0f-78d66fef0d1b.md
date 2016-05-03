---
author: joshbax-msft
title: Piton HDD Logo Test (LOGO)
description: Piton HDD Logo Test (LOGO)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2e71cfd5-9029-4976-bad5-5b4f73e346ff
---

# Piton HDD Logo Test (LOGO)


This test validates and verifies if the hybrid disk drive is in compliance with the standards and achieve the performance and power management requirements.

**Note**  
A hybrid hard disk (H-HDD) is a hard disk drive with nonvolatile Flash memory that acts as a cache that holds written and pinned LBAs within the drive. The main purpose of a hybrid hard drive is to provide a nonvolatile cache (NV Cache) mechanism by using the Flash memory that is accessible at all times for writes and low-latency reads including when the magnetic media spindle is stopped.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Storage.Hd.Piton.BasicFunction</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows Server 2008 x64 Windows Server 2008 x86Windows 8.1 x64Windows 8.1 x86Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~60 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Hard Disk Drive Testing Prerequisites](hard-disk-drive-testing-prerequisites.md).

In addition, this test requires the following software:

-   The current release of the Windows Driver Kit

If the driver verifier is enabled on the system, please disable it before running the test. The driver verifier would interfere with the logo test IOs.

Verify that there are no Ready Boost configured devices on the system. The Ready Boost features in the operating system might interfere with logo test IOs.

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Storage Testing](troubleshooting-devicestorage-testing.md).

## More information


During power savings periods, the disk is spun down most of the time and reads and writes happen from the NV Cache. The Disk will spin up if the data has to be flushed to the disk from the cache or the read request could not be resolved from data in the cache. The power consumption for the disk can be minimized because the disk is spun down most of the time. The power savings are targeted at portable computer systems powered by a battery. The ATA command set has been extended to support the NV Cache and power management functionalities of the H-HDD.

A hard disk drive that is implemented as a Hybrid Hard Disk responds to an ATA command set extension - Non Volatile Cache Command Proposal for ATA8-ACS, Feb. 4th, 2006, Revision 6.

The Microsoft Windows operating system must be able to perform the following tasks when a Hybrid Disk Drive is installed on a system:

-   Detect the hybrid hard disk.

-   Enable NV-Cache mode when on battery power.

-   Pin boot or resume LBAs as required to enhance boot and resume performance.

-   Pin as many LBAs as the Identify Device reports as the size of the NV Cache.

-   Use the current ATA command set as released to T13 (which is referenced earlier).

The device must be configured to allow these command sets to function properly and control the resource in an appropriate fashion (spinning down the drive to save power when in NV Cache mode).

Systems that implement a hybrid hard disk must meet the requirements that are outlined in this topic.

The Hybrid Disk Logo test verifies the following requirements of the hybrid disk drive:

-   Basic logo requirements:

    -   The hybrid disk is detectable.

    -   The disk satisfies the minimum NV cache size requirement.

-   The disk supports the ATA command set extension.

-   Performance requirements.

### LOGO test requirements

Basic Requirements tests:

-   Detect the hybrid hard disk when installed.

-   NV cache size is at least 50 MB.

NV Cache ATA command support:

-   Should be in compliance with the ATA7 command set along with the ATA8-ACS command set extensions for NV Cache proposed to T13:

    -   Identify command.

    -   Power Management commands.

    -   Cache Management commands.

**Warning**  
The command set proposal is available from the Technical Committee T13 Web site.

 

NV cache Management tests:

-   Pin Lba(s) into NV cache.

-   Unpin LBA(s) from NV cache.

-   Validate the behavior of the disk in the NV cache power save mode for read and write requests

-   Validate the behavior of the disk for the NV Cache commands in non-power save mode.

-   Latency requirements in power mode:

    -   In Boot/resume scenarios the read, write latencies for a 512 bytes block should be less than 3 seconds.

    -   In normal operation, the read/write latencies for 4 K block should be less than 3 milliseconds and for 4.5 K block it should be less than 4 milliseconds.

Performance test:

-   Verifies the read/write latency is less than:

    -   3 ms for a 4 K random block.

    -   4 ms for a 4.5 K random block.

**Note**  
10% of the IOs can exceed the latency requirements. But none of the IOs should take more than 5 ms for 4 K random/sequential block scenario and 10 ms for 4.5 K random/same block scenario

 

Throughput test:

-   Verifies the following throughput values:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Scenario</th>
    <th>Throughput</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>4 KB Random Read</p></td>
    <td><p>4 MB/sec</p></td>
    </tr>
    <tr class="even">
    <td><p>4 KB Random Write</p></td>
    <td><p>4 MB/sec</p></td>
    </tr>
    <tr class="odd">
    <td><p>64 KB Sequential Read</p></td>
    <td><p>16 MB/sec</p></td>
    </tr>
    <tr class="even">
    <td><p>64 KB Sequential Write</p></td>
    <td><p>8 MB/sec</p></td>
    </tr>
    <tr class="odd">
    <td><p>1 MB Random Read</p></td>
    <td><p>16 MB/sec</p></td>
    </tr>
    <tr class="even">
    <td><p>1 MB Random Write</p></td>
    <td><p>10 MB/sec</p></td>
    </tr>
    </tbody>
    </table>

     

### Logo test assumptions

The test should be run on a secondary disk. The test reads and writes to the disk directly. The test verifies IOs on the entire disk, so it expects the disk to be formatted, empty, and have only one partition. The disk must not be active, and the test will not run if the disk is active. To verify that your disk is not active, or to remove the active property if it is active, follow these steps:

1.  Open Disk Management (type **diskmgmt.msc** in the **Run** dialog or **Start** menu search box.

2.  Your system/startup disk and hybrid drive will appear.

3.  The hybrid drive must not have the word **Active** in its description. If the drive is marked **Active** (for example, if it says *Healthy (Active, Primary Partition),* then it must be made inactive before the test is run. To do this using the Disk Management Method, follow these steps:

    1.  Right-click the secondary drive in Disk Management, and select Delete Volume. You will receive the following warning if the drive has an active partition

        *This is the active partition on this disk....*

        Click **Yes** to continue.

    2.  The drive will now be unallocated. Right-click the disk again and select **New Simple Volume** using the default values. You can select **Quick Format** if you don't want to wait for a full format.

    3.  The disk in **Disk Manager** will now say **Healthy (Primary Partition)** without the word "Active".

### Test overview

1.  Check if the drive supports NV cache.

    -   Send the IDENTIFY command.

    -   Check if bit 0 and bit 4 are set in the word 214 in the response. Skip the test if those bits are not set.

    -   Skip the test if the test drive is a boot drive or a system drive.

2.  Check if the drive supports write cache.

    -   If the drive supports this feature, check if the write cache is disabled. If the write cache is not disabled, disable the write cache.

3.  Run the test cases.

4.  Enable the write cache, if the test disabled it.

### Test cases

1.  IDENTIFY TEST

    Description: This test verifies if the device correctly identifies itself as a hybrid hard disk drive.

    1.1 Send identify device command

    ATA Command: Identify Device - ECh

    1.2 Check for the following data in the response.

    1.3 NV cache mode support flag is 1

    Bit 0 in word 214

    1.4 NV cache mode commands support flag is 1

    Bit 4 in word 214

    1.5 Device estimated time to spin up in seconds is not 0

    Bits 0-7 in word 219

    1.6 NV cache size is at least 50MB

    Bits 0-15 in word 215 for MSW of cache size in LBAs

    Bits 0-15 in word 216 for LSW of cache size in LBAs

    Result: The drive should properly set the NV Cache parameters in response for the IDENTIFY command.

2.  NV CACHE POWER MODE TEST

    Description: This test ensures that the drive responds appropriately to the NV Cache Power mode command.

    Windows Vista uses this command to manage drive spin down and improve battery life.

    2.1 Set NV cache power mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    2.2 Check the power mode of the disk after 15 seconds

    **ATA Command: Check Power Mode - E5h**

    2.3 If the disk is not in the power save mode, the test fails

    2.4 Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    2.5 Check the power mode state of the drive

    **ATA Command: Check Power Mode - E5h**

    2.6 If the disk is still in power save mode, the test fails

    Result: The drive should respond correctly for the enable/disable power mode commands.

3.  NV CACHE MAX PIN AREA TEST

    Description: This test ensures that the drive correctly reports the number of LBAs that are available to Windows Vista for pinning data. Windows Vista uses this number to determine how much data it can place into the NV cache.

    3.1 Set NV cache power mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    3.2 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    3.3 Wait for Unpin all LBAs operation to complete

    3.4 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    3.5 Wait for Flush operation to complete

    3.6 Send Add LBA command to pin 0 LBAs. The drive should respond with number of unpinned LBAs equal to NV Cache size.

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    3.7 Check for NV Cache number of remaining unpinned LBAs in the response data

    3.8 If the number of unpinned LBAs is not equal to NV Cache, the test case fails.

    3.9 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: When the NV Cache is empty, the drive should report that the number of the unpinned LBAs is equal to the NV Cache size.

4.  POWER MODE SPIN UP TIME TEST

    Description: This test measures whether Windows Vista can put a H-HDD into a given power mode and that the drive appropriately obeys the spin up hold time. This feature enables Windows Vista to aggressively conserve power by spinning down the drive.

    4.1 Enable Power Mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    4.2 Check for the drive spindle state for 5 seconds.

    **ATA Command: Check Power Mode - E5h**

    4.3 Disk spindle should be up for at least 5 seconds; otherwise, the test case fails.

    4.4 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: When the power mode is enabled with some minimum high power time, the drive should be in spin up state at least for the high power time before going to spun down state.

5.  POWER MODE STATE TEST

    Description: These tests ensure that the drive correctly sets power mode states so that Windows Vista can improve battery life.

    5.1 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    5.2 Set the disk power state to D3.

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D3**

    5.3 Sleep for 5 seconds to make sure the disk spindle will be in idle state.

    5.4 Set the disk power state to D0.

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D0**

    5.5 Check the power mode of the disk

    **ATA Command: Check Power Mode - E5h**

    5.6 If the disk is not in the power save mode, the test fails.

    5.7 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    5.8 Set the disk power state to D3.

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D3**

    5.9 Sleep for 5 seconds to make sure the disk spindle will be in idle state.

    5.10 Set the disk power state to D0.

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D0**

    5.11 Check the power mode of the disk.

    **ATA Command: Check Power Mode - E5h**

    5.12 If the disk is in power save mode, the test fails.

    5.13 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should retain its power mode state even when its device power state is changed.

6.  PIN LBA TEST

    Description: This test ensures that Windows Vista can correctly pin data into the NVCache. Pinning forms the foundation for many of the performance and spin-down improvements.

    6.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 6.2 to 6.9. Otherwise, perform only steps 6.7 to 6.8.

    6.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    6.3 Unpin all LBAs in the NV Cache.

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    6.4 Wait for Unpin all LBAs operation to complete

    6.5 Flush the NV cache.

    **ATA Command: Flush NV Cache - B6/14h**

    6.6 Wait for Flush operation to complete

    6.7 Pin one random LBA with populate immediately flag.

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    6.8 Query for NV cache pinned LBAs set and check for the NV cache LBA range that we just pinned. If that range entry is not found, the test fails.

    **ATA Command: Query NV Cache Pinned Set - B6/12h**

    6.9 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should respond to the Pin LBA command properly.

7.  UNPIN LBA TEST

    Description: This ensures that Windows Vista can remove data from the NV cache to manage the cache.

    7.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 7.2 to 7.10. Otherwise, perform only steps 7.7 to 7.9.

    7.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    7.3 Unpin all LBAs in the NV Cache.

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    7.4 Wait for Unpin all LBAs operation to complete

    7.5 Flush the NV cache.

    **ATA Command: Flush NV Cache - B6/14h**

    7.6 Wait for Flush operation to complete

    7.7 Pin one random LBA with populate immediately flag.

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    7.8 Remove (unpin) the LBA that we just pinned.

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h**

    7.9 Query for NV Cache pinned LBAs set and check for the NVCache LBA range that we just unpinned; if that range entry is found, the test fails.

    **ATA Command: Query NV Cache Pinned Set - B6/12h**

    7.10 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should respond to the Remove LBA command properly.

8.  PIN MAXIMUM (64) LBA ENTRIES TEST

    Description: This command ensures that the drive appropriately pins large blocks of data by pinning the maximum allowable number of LBAs. Pinning large amounts of data enables Windows Vista to efficiently populate the drive.

    8.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 8.2 to 8.10. Otherwise, perform only steps 8.7 to 8.9.

    8.2 Set NV cache power mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    8.3 Unpin all LBAs in the NV Cache.

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    8.4 Wait for Unpin all LBAs operation to complete

    8.5 Flush the NV cache.

    **ATA Command: Flush NV Cache - B6/14h**

    8.6 Wait for Flush operation to complete

    8.7 Create a list of 64 Random LBAs entries list, of chunk size 1 LBA (512 bytes).

    8.8 Pin all the LBAs in the entry list with populate immediately flag.

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    8.9 Query for NV Cache pinned LBAs set and check for the all the NVCache LBA range entries that we just pinned; if any of those ranges are not found, the test fails.

    **ATA Command: Query NV Cache Pinned Set - B6/12h**

    8.10 Disable NV cache power mode.

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should respond to the Pin LBA and Query NV Cache Pinned set commands properly.

9.  PIN LBAS UPTO NV CACHE SIZE

    Description: This test ensures that Windows Vista can use all the LBAs in the NV Cache. If the entire NV Cache is not available to Windows Vista, it cannot optimally manage the cache.

    9.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 9.2 to 9.9. Otherwise, perform only steps 9.7 to 9.8.

    9.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    9.3 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    9.4 Wait for Unpin all LBAs operation to complete

    9.5 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    9.6 Wait for Flush operation to complete

    9.7 Pin the number of LBAs of 64 KB chunks up to the size of the NV cache with populate immediately flag

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    9.8 If the pinning is unsuccessful, the logo test fails.

    9.9 Disable NV cache power mode

    ATA Command: Return from NV Cache Power Mode - B6/01h

    Result: The drive should allow us to pin the LBAs upto NVCache size.

10. PIN LBAS MORE THAN NVCACHE SIZE

    Description: This verifies that the drive correctly handles a request to pin more data than the drive can physically accommodate.

    Description: This verifies that the drive correctly handles a request to pin more data than the drive can physically accommodate.

    10.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    10.3 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    10.4 Wait for Unpin all LBAs operation to complete

    10.5 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    10.6 Wait for Flush operation to complete

    10.7 Pin the number of LBAs of 128 KB chunks up to one LBA more than the size of the NV cache with populate immediately flag

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    10.8 If the pinning is successful then the logo test fails

    10.9 If the pinning is unsuccessful, validate the response; the error code should reflect that there is no enough NV cache space to complete the request; otherwise, the test fails.

    10.10 Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should not allow us to pin the LBAs more than NVCache size.

11. NV CACHE MISS TEST

    Description: This test verifies that the drive correctly reports NV Cache misses. Windows Vista uses this information to optimize the set of data that it places in the cache.

    11.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 11.2 to 11.9. Otherwise, perform only steps 11.7 to 11.8.

    11.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    11.3 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    11.4 Wait for Unpin all LBAs operation to complete

    11.5 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    11.6 Wait for Flush operation to complete

    11.7 Query NV cache misses

    **ATA Command: Query NV Cache Misses - B6/13h**

    11.8 Check the response for the query NV cache misses command

    11.9 Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The drive should respond to Query NV Cache Misses command properly.

12. READ LBA TEST

    Description: This tests determines whether Windows Vista can read LBAs from the NV Cache and verifies the integrity of the data read.

    12.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 12.2 to 12.22. Otherwise, perform only steps 12.7 to 12.21.

    12.2 Set NV cache power mode with 5 seconds minimum high power time.

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    12.3 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) From NV Cache Pinned Set - B6/11h with unpin all flag set**

    12.4 Wait for Unpin all LBAs operation to complete

    12.5 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    12.6 Wait for Flush operation to complete

    12.7 Select a random LBA between 0 - 1024

    12.8 Write data to the selected LBA

    **ATA Command: WRITE DMA EXT - 35h, DMA**

    12.9 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    12.10 Wait for Unpin all LBAs operation to complete

    12.11 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    12.12 Wait for Flush operation to complete

    12.13 Pin the selected LBA to NV cache with populate Immediately flag

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    12.14 Set the disk power state to D3

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D3**

    12.15 Sleep for 5 seconds to make sure the disk spindle will be in idle state

    12.16 Set the disk power state to D0

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D0**

    12.17 Calculate the time stamp T1

    12.18 Send the read request for the pinned LBA

    **ATA Command: Read DMA EXT - 25h, DMA**

    12.19 Calculate the time stamp T2

    12.20 Calculate the time (T2-T1) it took to access the LBA in the NV cache and compare it with the threshold time (3 seconds). If the access time is exceeding the threshold time, the test fails.

    12.21 Validate the data of the LBA by comparing with the data that we initially wrote. The test fails if the validation fails.

    12.22 Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The test writes to an LBA and pins that LBA. Then, it checks if the read latency is less than three seconds when the drive is still trying to startup. This check is to verify pinning the LBA with populate immediately flag would make the drive to copy the LBA from the disk to the NVCache.

13. WRITE LBA TEST

    Description: This test measures the drive's ability to write an LBA into NVRAM when in power saving mode without spinning up the drive. Writing to the NVRAM without spinning up the drive is critical to extend the battery life.

    13.1 This scenario is verified in both power save mode and without power save mode. If this scenario is being verified in power save mode, perform steps 13.2 to 13.18. Otherwise, perform only steps 13.7 to 13.17.

    13.2 Set NV cache power mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    13.3 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    13.4 Wait for Unpin all LBAs operation to complete

    13.5 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    13.6 Wait for Flush operation to complete

    13.7 Select one Random LBA

    13.8 Pin the selected LBA to NV cache with populate immediately flag

    **ATA Command: Add LBA(s) to NV Cache Pinned Set - B6/10h**

    13.9 Write some date to the selected LBA

    **ATA Command: WRITE DMA EXT - 35h, DMA**

    13.10 Set the disk power state to D3

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D3**

    13.11 Sleep for 5 seconds to make sure the disk spindle will be in idle state

    13.12 Set the disk power state to D0

    **Send IOCTL IOCTL\_PT\_SET\_DEVICE\_POWER\_STATE to the powertst.sys to set the power state of the hybrid hard disk to D0**

    13.13 Calculate the time stamp T1

    13.14 Send the read request for the pinned LBA

    **ATA Command: Read DMA EXT - 25h, DMA**

    13.15 Calculate the time stamp T2

    13.16 Calculate the time (T2-T1) it took to access the LBA in the NV cache and compare it with the threshold time (3 seconds). If the access time is exceeding the threshold time, the test fails.

    13.17 Validate the data of the LBA by comparing with the data that we initially wrote. The test fails if the validation fails.

    13.18 Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: The test pins an LBA and write to that LBA. Then, it checks if the read latency is less than three seconds when the drive is still trying to startup. This check is to verify whether the writes go to the NV Cache when that LBA is already in the pinned set.

14. PERFORMANCE TEST

    Description: This test verifies that the drive meets the minimum criteria for random and sequential reads and writes. Setting a minimum performance bar ensures that the user will have an acceptable experience when using a H-HDD.

    14.1 Set NV cache power mode with 5 seconds minimum high power time

    14.2 Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    14.3 Wait for Unpin all LBAs operation to complete

    14.4 Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    14.5 Wait for Flush operation to complete

    a) 1024 RANDOM 4 KB BLOCK READ WRITES

    a. Generate list of 1024 different random 4 KB blocks which are 512b aligned to the disk offsets (but no overlapping ranges).

    b. Generate a random 32-bit number and fill that number in the 4 KB write buffer.

    c. Write to the 4 KB random block.

    -   Measure the IO latency; it should be less than 3 ms.

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    d. Sleep for 50 ms.

    e. Read from the 4 KB random block.

    -   Measure the latency; it should take less than 3 ms.

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    -   Validate the read data. The read data should match with the data written to that location before.

    f. Repeat steps 2 to 5 on 1024 random 4 KB blocks.

    g. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    h. Wait for Unpin all LBAs operation to complete

    i. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    j. Wait for Flush operation to complete.

    (b) 1024 RANDOM 4.5K BLOCK READ WRITES

    a. Generate list of 1024 different random 4.5KB blocks which are 512b aligned to the disk offsets (but no overlapping ranges).

    b. Generate a random 32-bit number and fill that number in the 4.5K write buffer

    c. Write to the 4.5K random block.

    -   Measure the IO latency; it should take less than 4 ms.

    -   If the IO latency exceeds 4 ms but less than 10 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 10 ms, fail the test.

    d.

    e. Read from the 4.5K random block.

    -   Measure the IO latency; it should take less than 4 ms.

    -   If the IO latency exceeds 4 ms but less than 10 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 10 ms, fail the test.

    -   Validate the read data. The read data should match with the data that was written to that location before.

    f. Repeat steps 2 to 5 on 1024 random 4.5K blocks.

    g. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    h. Wait for Unpin all LBAs operation to complete

    i. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    j. Wait for Flush operation to complete

    (c) SAME 4.5K BLOCK READ WRITES

    a. Generate a random 32-bit number and fill that number in the 4.5K write buffer.

    b. Select a 4.5 K random lock that is the last block on a 64-KB boundary and pin that block.

    c. Write to the 4.5 K random Block.

    -   Measure the IO latency; it should take less than 4 ms.

    -   If the IO latency exceeds 4 ms but less than 10 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 10 ms, fail the test.

    d. Sleep for 50ms.

    e. Read from the 4.5K random block.

    -   Measure the IO latency; it should take less than 4 ms.

    -   If the IO latency exceeds 4 ms but less than 10 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 10 ms, fail the test.

    -   Validate the read data. The read data should match with the data that was written to that location before.

    f. Repeat steps 1 to 4 on the same random block 1024 times.

    g. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    h. Wait for Unpin all LBAs operation to complete.

    i. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    j. Wait for Flush operation to complete.

    (d) 1024 SEQUENTIALLY INCREASING 4 KB BLOCK READ WRITES

    a. Generate list of 1024 sequential (increasing order) 4 KB blocks which are 512-b aligned to the disk offsets (but no overlapping ranges).

    b. Generate a random 32-bit number and fill that number in the 4 KB write buffer.

    c. Write to the 4 KB block.

    -   Measure the IO latency; it should take less than 3 ms.

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    d. Sleep for 50 ms

    e. Read from the 4 KB block.

    -   Measure the IO latency; it should take less than 3 ms.

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    -   Validate the read data. The read data should match with the data that was written to that location before.

    f. Repeat steps 2 to 5 on 1024 sequentially incrementing 4 KB blocks.

    g. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    h. Wait for Unpin all LBAs operation to complete.

    i. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    j. Wait for Flush operation to complete.

    (e) 1024 SEQUENTIALLY DECREASING 4 KB BLOCK READ WRITES:

    a. Generate list of 1024 sequential (decreasing order) 4 KB blocks which are 512b aligned to the disk offsets (but no overlapping ranges).

    b. Generate a random 32-bit number and fill that number in the 4 KB write buffer.

    c. Write to the 4 KB block.

    -   Measure the IO latency; it should take less than 3 ms.

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    d. Sleep for 50 ms.

    e. Read from the 4 K block.

    -   Measure the IO latency; it should take less than 3 ms

    -   If the IO latency exceeds 3 ms but less than 5 ms, print a warning message. 10% of the IOs are allowed to exceed the latency requirements. But if the number of IOs that fail the performance requirements is more than 10%, fail the test.

    -   If the IO latency is more than 5 ms, fail the test.

    -   Validate the read data. The read data should match with the data that was written to that location before.

    f. Repeat steps 2 to 5 on 1024 sequentially decrementing 4 KB blocks.

    g. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    h. Wait for Unpin all LBAs operation to complete.

    i. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    j. Wait for Flush operation to complete.

    k. Make sure the device is set back to non NV cache by the end of the test case.

    l. Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

    Result: Read/Write latencies should be less than:

    -   1 ms for a 4 K random/sequential block.

    -   1.2 ms for a 4.5 K random/sequential block

15. THROUGHPUT TEST

    Description: This test is to measure performance of the drive; it focuses on total throughput rather than responsiveness for individual operations.

    This test case is sub divided into three test cases. Each test case verifies the Read Write throughput on 32 MB.

    -   4 KB Random blocks (8192 IOs)

    -   64 KB Sequential blocks (512 IOs)

    -   1 MB Random blocks (32 IOs)

    The throughput is calculated based on the read write latencies to these blocks.

    Perform steps 1 to 11 on 4 KB random blocks, 64 KB sequential blocks, and 1 MB random blocks.

    a. Set NV cache power mode with 5 seconds minimum high power time

    **ATA Command: Set NV Cache Power Mode - B6/00h**

    b. Unpin all LBAs in the NV Cache

    **ATA Command: Remove LBA(s) from NV Cache Pinned Set - B6/11h with unpin all flag set**

    c. Wait for Unpin all LBAs operation to complete

    d. Flush the NV cache

    **ATA Command: Flush NV Cache - B6/14h**

    e. Wait for Flush operation to complete

    f. Generate a list of test blocks for 32 MB data that are not overlapping. These blocks will be 512 bytes aligned to the disk offsets if the scenario that is being tested is the 4 KB random or 64 KB Sequential scenario. The blocks will be 1 MB aligned for the 1 MB random clock scenario. Pin all the test data blocks.

    g. Generate random 32-bit value for each location. These random 32-bit random values are used to fill the data blocks.

    h. Write to the tests data blocks. Measure the time it took to write.

    i. Generate random IO blocks of the same block size and send write IOs to those blocks. This step is to make sure that the data in the DRAM cache is overwritten with this data.

    j. Read from the test data blocks. Measure the time it took to read. Validate the read data; it should be filled with the value we wrote to that location before.

    k. Calculate the throughput for these reads and writes.

    l. The drive should meet the following requirements.

     

    m. Disable NV cache power mode

    **ATA Command: Return from NV Cache Power Mode - B6/01h**

### FUNCTION TO WAIT FOR UNPIN ALL OPERATION TO COMPLETE

1.  Send the unpin all command.

2.  Poll the device to find the "Number unpinned LBAs remaining" (N).

3.  If 'N' is equal to NV cache size, then unpin all operation is complete, so exit the loop with success.

4.  If the previous value of 'N' is less than its current value then the unpin all operation is considered as progressing, So time out counter will be reset to zero.

5.  If the previous value of 'N' is &gt;= to its current value then the test would consider the unpin all operation is not progression, so the time out counter is incremented.

6.  If the time out counter is &gt;= 60, then the test will generate an error saying "ERR: TIMEOUT - NV cache Unpin all operation is not progressing for the last one minute." and exits the test case.

7.  Sleep for 1 second.

8.  Go to step2.

### FUNCTION TO WAIT FOR FLUSH OPERATION TO COMPLETE

1.  Send the Flush command and check the response for "Number of LBAs still to be removed" (N).

2.  If 'N' is equal to zero, then the flush operation is complete, so exit the loop with success.

3.  If the current value of 'N' is less than its previous value then the flush operation is considered as progressing, so time out counter will be reset to zero.

4.  If the current value of 'N' is &gt;= to its previous value then the test would consider flush operation is not progression, so the time out counter is incremented.

5.  If the time out counter is &gt;= 60, then the test will generate an error saying "ERR: TIMEOUT - NV Cache Flush operation is not progressing for the last one minute." and exits the test case.

6.  Sleep for 1 second.

7.  Go to step 1.

### Running Hybrid Hard Disk Drive Logo Test

To run the test manually, do the following:

1.  Copy the following test binaries to a folder:

    -   PitonLogoTestsetup.exe

    -   PitonLogotest.exe

    -   Powertst.sys

    -   Wttlog.dll

2.  Start a command prompt with administrator privileges and use that command window for steps 3 and 4.

3.  Install the powertst.sys driver by running the setup application with the PitonLogoTestSetup.exe -install command.

4.  Run the logo test by using the PitonLogoTest.exe -deviceid &lt;deviceid&gt; command.

**Warning**  
The powertst.sys driver does not automatically start when the computer is restarted. You must manually start the driver before you run the logo test by using PitonLogoTestSetup.exe -install or net start powertst.

 

### Parameters

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>StorageDriveNumber</p></td>
<td><p>The device ID.</p></td>
</tr>
</tbody>
</table>

 

### Command syntax

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Command</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>PitonLogotestSetup.exe -install</strong></p></td>
<td><p>Install the powertst.sys driver.</p></td>
</tr>
<tr class="even">
<td><p><strong>PitonLogotest.exe -deviceid [StorageDriveNumber] -hct</strong></p></td>
<td><p>Runs the test on the disk drive with the specified device ID.</p></td>
</tr>
<tr class="odd">
<td><p><strong>PitonLogotestSetup.exe -uninstall</strong></p></td>
<td><p>Uninstall the powertst.sys driver.</p></td>
</tr>
</tbody>
</table>

 

**Note**  
For command-line help for this test binary, type **/h**.

 

### File List

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>File</th>
<th>Location</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Pitonlogotest.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\storage\wdk\piton\test\</p></td>
</tr>
<tr class="even">
<td><p>Pitonlogotestsetup.exe</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\storage\wdk\piton\setup\</p></td>
</tr>
<tr class="odd">
<td><p>powertst.sys</p></td>
<td><p><em>&lt;testbinroot&gt;</em>\nttest\storage\wdk\piton\sys\</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Piton%20HDD%20Logo%20Test%20%28LOGO%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




