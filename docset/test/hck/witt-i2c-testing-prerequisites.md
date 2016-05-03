---
author: joshbax-msft
title: WITT I2C Testing Prerequisites
description: WITT I2C Testing Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 626a716a-7f99-45dd-8b9b-20b28815a308
---

# WITT I2C Testing Prerequisites


The Windows Inter-Integrated Circuit (I²C) Testing Tool (WITT) controller tests verify Windows Hardware Certification Kit (Windows HCK) Windows® Simple Peripheral Bus (SPB) compliance and the reliability of the I²C controller and its associated driver. WITT I²C controller tests consist of hardware (WITT adaptor) and software (test executable, test driver and utilities). For a list of WITT I²C tests, see [Device.BusController Tests](devicebuscontroller-tests.md).

In this article:

-   [WITT I2C controller test hardware setup](#witti2chard)

-   [WITT I2C controller test software setup](#witti2csoft)

-   [I2C controller verification tests general instructions](#howto)

-   [Test case list](#testcases)

## <a href="" id="witti2chard"></a>WITT I²C controller test hardware setup


*Figure 1. Typical WITT test setup* shows the test, test driver setup, and I²C connections that you must make to run WITT tests.

![witt connections](images/hck-winb-fig1-visio-witt-connections-witti2ctestingprerequisites.jpg)

*Figure 2. WITT Board* with I²C Header shows the LEDs, I²C header, USB connector, test pin, EEPROM jumper, and voltage jumper on a typical WITT board.

![network interface card with i2c header](images/hck-winb-fig2-nic-witti2ctestingprerequisites.png)

You must connect Serial Clock (SCL), Serial Data (SDA), and ground (GND) pins to the host I²C controller. The General Purpose Input/Output (GPIO) connection is not needed for the WITT I²C controller tests. The SCL, SDA, and GND pins are shown in Figure 3. I2C 10-Pin Header:

![i2c header](images/hck-winb-fig3-10pinheader-witti2ctestingprerequisites.png)

**USB**

Connect a USB cable to a USB connector (type B). You can use the USB connection to update WITT firmware (this requires a Microsoft USB Test Tool (MUTT) driver and the **Muttutil.exe** utility, which you can get from the [MUTT Software Package](http://go.microsoft.com/fwlink/p/?linkid=293392). Because WITT already has I²C controller test firmware, the USB connection is used for power supply purposes only. If a firmware upgrade is necessary, use following steps:

1.  Set up the WITT I²C targets as described in [WITT I2C controller test software setup](#witti2csoft).

2.  From a command prompt window that has administrative privileges, run the following command:

    ``` syntax
    WITTUpgrade.exe I2C9665.iic /f
    ```

    Where **I2C9665.iic** is the firmware file and **/f** forces the upgrade to occur. (The firmware .iic file is released in the Windows HCK together with other test binaries.)

**Test pin**

The SCL/SDA/GND connectors on the test pin header can be soldered and used to connect an I²C to the host controller. The voltage of the I2C lines must match those of the host controller; these are typically 1.8v or 3.3v, and can be set by switching the voltage jumper on the WITT board (see *Figure 2. WITT Board*).

**EEPROM jumper**

The EEPROM jumper controls whether to boot from EEPROM. You should set the jumper at the position that is shown in *Figure 2. WITT Board*. (You only need to switch to the other position to recover the WITT firmware through the USB method.)

**LED**

You can interpret the LEDs as follows:

-   RED LED: POWER ON.

-   YELLOW LED: Constantly lit if there is no I²C BUS traffic (SCL and SDA are high).

-   BLUE LED: Flashing when I²C data traffic is ongoing between the host and WITT board.

**I2C voltage jumper**

This jumper can be used for level-shifting an I²C signal to WITT. Set jumper position 1-2 for 3.3v or jumper position 2-3 for 1.8v. Connect the power source to pin2 for additional voltage levels other than 1.8v and 3.3v.

## <a href="" id="witti2csoft"></a>WITT I²C controller test software setup


WITT test binaries are shipped together with the Windows HCK and are located on a Windows HCK controller or server in the **\\\\{$***HCKServer***}\\Tests\\{$***PROCESSOR\_ARCHITECTURE***}\\spb** folder, where *HCKServer* is the name of the Windows HCK server and *$PROCESSOR\_ARCHITECTURE* is the device platform (AMD64, x86, or ARM). The WITT I²C tests require the following binaries:

-   Test peripheral driver: **WITTTest.inf**, **WITTTest.sys**, and **WITTTest.cat**.

-   WITTTest.exe

You must use a kernel debugger during the tests. You can download and install a kernel debugger from [Download and Install Debugging Tools for Windows](http://go.microsoft.com/fwlink/p/?linkid=254846).

### Typical setup step (single controller instance)

To setup a typical test configuration that uses a single controller, perform the following steps.

**To set up a typical test configuration**

1.  Open a command prompt that has administrative privileges.

2.  Run the following command to install the test peripheral driver:

    ``` syntax
    pnputil –a witttest.inf
    ```

    The *–a* flag adds the driver package to the Windows driver store.

3.  Update the Advanced Configuration and Power Interface (ACPI) table to enumerate the test device nodes. These are usually defined in the SSDT (secondary system descriptor table) or the DSDT (differentiated system description table).

    -   In the command prompt window, run the following command to generate the SSDT:

        ``` syntax
        asl.exe /tab:ssdt
        ```

    -   Edit the generated **SSDT.asl** table as follows:

        ``` syntax
        Device(TP1) {
            Name(_ADR,0)
            Name (_HID, "STK0001") 
            Name (_CID, "WITTTest") 
            Method(_CRS, 0x0, NotSerialized)
            {
              Name (RBUF, ResourceTemplate ()
              {
                I2CSerialBus ( 0x7F, ControllerInitiated, 100000,AddressingMode7Bit, "\\_SB_.I2C3",,, , )
              })
              Return(RBUF)
            }
        }
        Device(TP2) {
            Name(_ADR,0)
            Name (_HID, "STK0002") 
            Name (_CID, "WITTTest") 
            Method(_CRS, 0x0, NotSerialized)
            {
              Name (RBUF, ResourceTemplate ()
              {
                I2CSerialBus ( 0x11, ControllerInitiated, 100000,AddressingMode7Bit, "\\_SB_.I2C3",,, , )
              })
              Return(RBUF)
            }
        }
        Device(TP3) {
            Name(_ADR,0)
            Name (_HID, "STK0003") 
            Name (_CID, "WITTTest") 
            Method(_CRS, 0x0, NotSerialized)
            {
              Name (RBUF, ResourceTemplate ()
              {
                I2CSerialBus ( 0x12, ControllerInitiated, 400000,AddressingMode7Bit, "\\_SB_.I2C3",,, , )
              })
              Return(RBUF)
            }
        }
        Device(TP4) {
            Name(_ADR,0)
            Name (_HID, "STK0004") 
            Name (_CID, "WITTTest") 
            Method(_CRS, 0x0, NotSerialized)
            {
              Name (RBUF, ResourceTemplate ()
              {
                I2CSerialBus ( 0x13, ControllerInitiated, 1000000,AddressingMode7Bit, "\\_SB_.I2C3",,, , )
              })
              Return(RBUF)
            }
        }
        ```

        In this test, TP1 is used as test interface (0x7F), TP2 (0x11) is configured as standard I²C target, TP3 (0x12) is configured as fast I²C target and TP4 (0x13) is configured as fast plus I²C target.

        **Note**  
        Change the I²C controller address that is listed in the table to that of the actual I²C controller.

         

4.  In the command prompt window, run the following command to generate an **Ssdt.aml** file from the modified **Ssdt.asl** file:

    ``` syntax
    asl.exe ssdt.asl
    ```

5.  In the command prompt window, run the following command to update the revised ACPI table:

    ``` syntax
    asl.exe /loadtable ssdt.aml
    ```

6.  Enable the driver verifier on the I²C Controller and in **Spbcx.sys** by using the default settings.

7.  Restart the system: four device instances should display under the **WITT Test Class** node in Device Manager in the Windows HCK.

8.  You can verify that the WITT test environment is set up correctly by running **Spbcmd.exe** from the command line. Sample command output of the **Spbcmd** tool follows, where 7F is the signature for the test interface and 01, 02 and 03 are signatures for three testing targets.

    ``` syntax
    > list
    list
    Available connection ID:
    Target:53, Instance:0x0
    Target:54, Instance:0x0
    Target:55, Instance:0x0
    Target:56, Instance:0x0
    > i2c 0x0 0x21    //this step is not necessary if you are not testing multiple instances
    i2c 0x0 0x21
    Instance requested:0x0
    I2C address requested:0x21
    Found WITT test interface at \\.\RESOURCE_HUB\0000000000000035
    WITT Testing I2C address successfully changed to 0x21 for instance 0x0
    > open 53
    open 53
    Address 53 opened
    > read 53 1
    read 53 1
    1 bytes read
      7f
    > open 54
    open 54
    Address 54 opened
    > read 54 1
    read 54 1
    1 bytes read
      01
    > write 54 {01 02 03}
    write 54 {01 02 03}
    3 bytes written
    > writeread 54 {01 02 03} 2
    writeread 54 {01 02 03} 2
    5 bytes transferred
      01 01 52 00 c0
    ```

    Use the **Open** and **Close** commands to open and close targets. **Read**, **Write**, and **WriteRead** are manual I/O commands.

    You can also use the **List** command to list all available I²C testing targets I²C: I²C 0x0 0x21. Switch the WITT testing address to start with 0x21(0x21,0x22,0x23); for example, 0 if you configured non-default I²C address in the ASL.

## <a href="" id="howto"></a> I²C controller verification tests manual instructions


You can run the I2C controller verification test manually in addition to running it in Windows HCK Studio. This section describes how to manually run the WITT I²C controller tests. For specific information about each test, see the individual test topics.

You must run each test from a command prompt window that has administrative privileges.

Copy **wttlog.dll** from **\\\\${***HCKServer***}\\TaefBinaries** to the same directory where **Witttest.exe** resides, where *HCKServer* is the name of the Windows HCK server.

To list all available tests and command line parameters, type **wittest.exe /?** at a command prompt. For example:

``` syntax
Witttest.exe /?
Supported command line arguments are:
/rs:<Seed>
/sm internal use of acpsim load
/fw:firmwareware iic
/i2c:address
/ins:witt instance number
/dip:device instance path
/duration:stress duration in minutes
/test:<test_id>

Example:
WITTTest.exe /test:BasicIORead


Currently the following test id's are supported:
/test:BasicIORead
/test:BasicIOWrite
/test:BasicIOSeq
/test:BasicIOKernel
/test:ClkStretch
/test:DeviceNack
/test:LockUnlock
/test:CancelRead
/test:CancelWrite
/test:CancelSeq
/test:PerfRead
/test:PerfWrite
/test:PerfSeq
/test:MultipleTargets
/test:BusRecovery
/test:Power
/test:Stress
/test:RunAll
```

To run an individual test by using the default values, type **Witttest.exe /test:***&lt;Testname&gt;*, where *&lt;Testname&gt;* is the name of the test; for example, **Witttest.exe /test:BasicIORead**. To run this test with a different instance than the default instance of 0, type **Witttest.exe /test:BasicIORead /ins:0x1**. To run this test with a different testing I²C testing address instead of the default testing I²C address 0x11,0x12,0x13, type **Witttest.exe /test:BasicIORead /i2c:0x21**.

To run all tests, type **Witttest.exe /test:RunAll**. This command cycles through all tests and a test result is printed at the end of the test sequence; for example:

``` syntax
*****Test run results*****

# Test cases passed:

BasicIORead
BasicIOWrite
BasicIOSeq
BasicIOKernel
ClkStretch
LockUnlock
PerfRead
PerfWrite
PerfSeq
MultipleTargets
Stress

# Test Cases passed with warning:

CancelRead
CancelWrite
CancelSeq

# Test Cases Failed:

DeviceNack

# Total:

Pass:11 Fail:1 Warn:3
```

## <a href="" id="testcases"></a>Test case list


The following test cases are performed during WITT I²C testing:

[WITT I2C Controller Test - Basic Tests](witt-i2c-controller-test---basic-tests-8c3408bb-8ff7-4c8a-aaab-b9debbc8d51b.md):

-   [WITT I2C Controller Test - Basic Tests](witt-i2c-controller-test---basic-tests-8c3408bb-8ff7-4c8a-aaab-b9debbc8d51b.md#baswrite)

-   [WITT I2C Controller Test - Basic Tests](witt-i2c-controller-test---basic-tests-8c3408bb-8ff7-4c8a-aaab-b9debbc8d51b.md#basseq)

[WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#clock)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#nack)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#unlock)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#cancelread)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#cancelwrite)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#cancelseq)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#multtargets)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#busrecovery)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#powertrans)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#perfread)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#perfwrite)

-   [WITT I2C Controller Test-Functional Tests](witt-i2c-controller-test-functional-tests-02ec701e-bc6d-4aa4-869f-34c44694e4a5.md#perfseq)

[WITT I2C Controller Test-Stress](witt-i2c-controller-test-stress-0306d2a3-0f05-4a59-b498-c826232b0b21.md)

## Related topics


[WITT (Windows I2C Test Tool)](http://www.jjgtechnologies.com/witt.md)

[Troubleshooting Bus Controller Testing](troubleshooting-bus-controller-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20WITT%20I2C%20Testing%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





