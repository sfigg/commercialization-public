---
author: joshbax-msft
title: UART Controller Test(Stress)
description: UART Controller Test(Stress)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 3981b4c0-53fb-4a01-9e85-aa10c3fd2b0b
---

# UART Controller Test(Stress)


This automated test verifies requirements of Universal Asynchronous Receiver/Transmitter (UART) controllers. This test performs the following tasks:

-   One-hour stress test that uses random read, write, IOCTL, and cancel operations. Data transfer failure is expected and is ignored by the test during the time that the test is checking for driver stability issues under stress conditions.

-   Basic write/read IO is run after the stress test.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.BusController.UART.Cancellation Device.BusController.UART.DMA Device.BusController.UART.FlowControl Device.BusController.UART.FlushFIFO Device.BusController.UART.HCKTestability Device.BusController.UART.ReadWrite Device.BusController.UART.Stress Device.BusController.UART.SupportedBaudRates</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows RT 8.1 Windows 8.1 x64 Windows 8.1 x86</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~65 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites


This test requires external connectivity pin-outs. The test also requires that you change the Advanced Configuration and Power Interface (ACPI) firmware to enumerate the UART test.

Before you run the test, perform the following steps. For all steps, *&lt;hckcontrollername&gt;* is a Windows HCK controller and *&lt;architecture&gt;* is the architecture of the device under test (DUT); these are ARM, AMD64, or x86.

1.  Perform the system changes that are described under the Device.BusController.UART.HCKTestability requirement.

2.  Update the ACPI table for UART test drivers based on the template that is located at **\\\\***&lt;hckcontrollername&gt;***\\Tests\\***&lt;architecture&gt;***\\UART\\Sample-UART.asl**.

3.  Install the UARTTest test peripheral driver from **\\\\***&lt;hckcontrollername&gt;***\\Tests\\***&lt;architecture&gt;***\\UART\\UARTTest.inf**.

4.  Edit the UART capabilities XML file to match the UART controller capabilities. The XML file is located at **\\\\***&lt;hckcontrollername&gt;***\\Tests\\***&lt;architecture&gt;***\\UART\\UartCapabilities.xml**.

    The fields in the **UartCapabilities.xml** file are defined as follows:

    <table>
    <colgroup>
    <col width="33%" />
    <col width="33%" />
    <col width="33%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Parameter</th>
    <th>Description</th>
    <th>Default value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>SettableStopBitsMask</p></td>
    <td><p>DWORD value that maps to the supported stop bits settings from the SettableStopParity bitmask of the [SERIAL_COMMPROP structure](http://go.microsoft.com/fwlink/p/?linkid=290875).</p></td>
    <td><p>7</p></td>
    </tr>
    <tr class="even">
    <td><p>SettableParityMask</p></td>
    <td><p>DWORD value mapping to the supported parity settings from the SettableStopParity bitmask of the SERIAL_COMMPROP structure.</p></td>
    <td><p>7936</p></td>
    </tr>
    <tr class="odd">
    <td><p>SettableWordLengthMask</p></td>
    <td><p>DWORD value mapping to the supported word length settings from the SettableData bitmask of the SERIAL_COMMPROP structure.</p></td>
    <td><p>15</p></td>
    </tr>
    <tr class="even">
    <td><p>SettableBaudRates</p></td>
    <td><p>Supported baud rate values.</p></td>
    <td><p>1152003000000</p></td>
    </tr>
    <tr class="odd">
    <td><p>DmaMtu</p></td>
    <td><p>DMA MTU</p></td>
    <td><p>4</p></td>
    </tr>
    <tr class="even">
    <td><p>DmaMaxTransferSize</p></td>
    <td><p>DMA maximum transfer size. Note that multiple transfers can be performed in a single request.</p></td>
    <td><p>4096</p></td>
    </tr>
    <tr class="odd">
    <td><p>FifoHighWatermark</p></td>
    <td><p>Hardware FIFO size.</p></td>
    <td><p>16</p></td>
    </tr>
    <tr class="even">
    <td><p>IdleTimeout</p></td>
    <td><p>Activity timeout before UART DUT goes from <strong>D0</strong> to <strong>Dx</strong>.</p></td>
    <td><p>200</p></td>
    </tr>
    </tbody>
    </table>

     

## Running the test


This automated test runs one time as it is detected and scheduled by Windows Hardware Certification Kit (Windows HCK) Studio. In Windows HCK Studio, on the **Device selection** page, select **Microsoft UART Test Peripheral device** to select UART-specific Windows HCK tests.

Alternately, you can run the test from the command line. To run the test from the command line, you must copy the following files from the Windows HCK controller to the DUT:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Files</th>
<th>Source location on a Windows HCK</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>TAEF binaries</p></td>
<td><p><strong>\TaefBinaries\*</strong></p></td>
</tr>
<tr class="even">
<td><p>Test binaries</p></td>
<td><p><strong>\Tests\</strong><em>&lt;architecture&gt;</em><strong>\UART\*</strong></p></td>
</tr>
</tbody>
</table>

 

Where *&lt;architecture&gt;* is the platform of the DUT; these are ARM, AMD64, or x86.

To run the test from the command line, type the following command from a command prompt that has administrative privileges:

``` syntax
te.exe SerCxTestHarness.dll /p:InternalLoopback=[EnableLoopback] /p:Capabilities=Table:[CapabilitiesFileName]#[ CapabilitiesTableId] /p:Category=Reliability /p:UartDriver=[UartDriver] /p:Timeout=[StressTimeout] /p:FlowControl=[StressEnableFlowControl] /p:ThreadCount=[StressThreadCount] /p:InstanceID=[UartDeviceInstanceID]
```

Where the command line parameter definitions are as follows:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter</th>
<th>Definition</th>
<th>Default value in Windows HCK</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>EnableLoopback</p></td>
<td><p>0 for hardware loopback</p>
<p>1 for internal loopback</p></td>
<td><p>0</p></td>
</tr>
<tr class="even">
<td><p>CapabilitiesFileName</p></td>
<td><p>XML file that contains the UART device capabilities description.</p></td>
<td><p>UartCapabilities.xml</p></td>
</tr>
<tr class="odd">
<td><p>CapabilitiesTableId</p></td>
<td><p>UartCapabilities.XML table name attribute value.</p></td>
<td><p>Default</p></td>
</tr>
<tr class="even">
<td><p>Category</p></td>
<td><p>Windows HCK Test category.</p></td>
<td><p>Reliability</p></td>
</tr>
<tr class="odd">
<td><p>StressTimeout</p></td>
<td><p>Stress test time, in minutes.</p></td>
<td><p>60</p></td>
</tr>
<tr class="even">
<td><p>StressEnableFlowControl</p></td>
<td><p>Turn on or off automatic hardware flow control.</p>
<p>0 for no flow control</p>
<p>1 for hardware flow control</p></td>
<td><p>1</p></td>
</tr>
<tr class="odd">
<td><p>StressThreadCount</p></td>
<td><p>Number of test threads in the stress test.</p></td>
<td><p>21</p></td>
</tr>
<tr class="even">
<td><p>UartDeviceInstanceID</p></td>
<td><p>Device Instance Path of UART DUT.</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

For more information how to run test commands by using the [Test Authoring and Execution Framework (TAEF)](http://go.microsoft.com/fwlink/p/?linkid=290763) service, see [TAEF: Executing Tests](http://go.microsoft.com/fwlink/p/?linkid=290766) and [Te.exe Command Options](http://go.microsoft.com/fwlink/p/?linkid=290765).

### Test parameter descriptions

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Parameter name</th>
<th>Description</th>
<th>Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>CapabilitiesTableId</p></td>
<td><p>UartCapabilities.XML table name attribute value.</p></td>
<td><p>Default</p></td>
</tr>
<tr class="even">
<td><p>UartDeviceInstanceID</p></td>
<td><p>Device Instance Path of the UART DUT.</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

## Troubleshooting


For troubleshooting information, see [Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md).

## Related topics


[UART Controller Test(Basic tests)](uart-controller-test-basic-tests--90d359da-254c-4009-a886-0b8d00e07e3e.md)

[UART Controller Test(Functional tests)](uart-controller-test-functional-tests--da17984a-5bfc-4408-9a6c-176717fae12c.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20UART%20Controller%20Test%28Stress%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





