---
author: joshbax-msft
title: NDISTest 6.5 - LWF Logo test
description: NDISTest 6.5 - LWF Logo test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 822cd142-dce2-4110-a68f-f6471d34a947
---

# NDISTest 6.5 - LWF Logo test


This automated test targets LWF by validating that the all the requirements specified for the light weight filter driver are satisfied, and that they comply with NDIS specification on MSDN.

The test installs two of the NDISTest virtual miniports - “NDISTest 6.30 - CL - Default w/TCPIP”, which would be used as the test and support adapters for running the LWF logo test. These virtual miniports are uninstalled in the cleanup phase of the test.

Windows 8 has a requirement that all NDIS LWF drivers are NDIS 6.30. This is validated by ConfigCheck test, which will fail the filter logo test if the Filter driver is not NDIS 6.30.

ConfigCheck test also validates that the Filter driver selected as the target, is actually bound to the test adapter, and an error is thrown if the filter is not bound to the test adapter.

It is also validated that the filter driver is able to process packets that are larger than miniport's MTU size.

This also runs a filter stress test which is designed to stress the datapath and PnP paths of NDIS filter drivers.  The test will limit the test virtual miniport's receive descriptors such that a significant number of receive indications will happen with the receive resources flag.  This test performs the following actions in a multi-threaded way:

-   Stress traffic from the support miniport directed to the test miniport

-   Stress traffic from the test miniport directed to the support miniport

-   Stop/start the test miniport (which triggers a pause and subsequent restart operations)

-   Test adapter indicating media disconnected/connected

-   Test adapter resetting

Finally, basic send and receive connectivity will be tested between the test/support adapters.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Filter.Driver.Network.LWF.Base Filter.Driver.Network.LWF.MTUSize</p>
<p>[See the filter hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254485)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT (ARM-based) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~2 minutes</p></td>
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


Before you run the test, you need to manually install your filter driver on the test machine.

Follow these steps to run the test:

1.  Configure the HCK Server and HCK Client machines. Filter Logo tests need just the one client machine.

2.  Install the Light Weight Filter driver on the Client machine.

3.  Restart the Client machine.

4.  From the HCK Server, add the client on which the LWF is installed to a new machine pool, and change the machine status to ‘Ready’.

5.  From HCK studio, create a new project under the **Project** tab in HCK Studio.

6.  In the **Selection** tab of the HCK studio, select the machine pool that was created in the previous steps from the dropdown.

7.  Select **software device**, and select the LightWeightFilter driver that was installed and needs to be tested (see the following figure).

    ![select filter driver](images/ndistest65-lwf-logo-test.png)

8.  Run all of the tests listed in the **Tests** tab against the filter driver.

## Troubleshooting


For troubleshooting information, see [Troubleshooting the Windows HCK Environment](troubleshooting-the-windows-hck-environment.md).

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20NDISTest%206.5%20-%20LWF%20Logo%20test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




