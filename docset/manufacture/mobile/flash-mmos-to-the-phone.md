---
Description: Flash MMOS to the device
MS-HAID: 'p\_phManuRetail.flash\_mmos\_to\_the\_phone'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Flash MMOS to the device
---

# Flash MMOS to the device


After the MMOS image definition is complete, the image can be flashed to the device

1.  Flashing on the host side is accomplished through a connection established with WinUSB, the Microsoft generic USB device driver. The necessary drivers are included by default in Windows 8 and Windows 10. In Windows 7, the necessary drivers can be installed from Windows Update. To configure a Windows 7 computer to install the necessary drivers, click **Start**, type “Device Installation Settings”, select **Yes, do this automatically (recommended)**, and then click **Save Changes**.

2.  Put the device in flashing mode by holding the volume up button while powering up the device. After the device is in flashing mode, connect the USB cable to your computer.

3.  Verify that the device is detected in Device Manager as *WinUsb Device*.

4.  To be able to use the ffutool, sign, and ImageSigner tools, add %WPDKCONTENTROOT%\\Tools\\bin\\i386 to your environment **Path** variable.

5.  Prior to flashing the FFU file to the device, you must sign the FFU file using the following syntax in the command prompt. The cat file is generated with the FFU, when using the ImgGen tool.

    ``` syntax
    c:\>sign <path to cat file>
    c:\>ImageSigner SIGN <path to ffu> <path to cat file>
    ```

    For example:

    ``` syntax
    c:\>sign MMOS.cat
    c:\>ImageSigner SIGN MMOS.ffu MMOS.cat
    ```

6.  At a command prompt, run the ffutool command, which uses the following syntax:

    ``` syntax
    c:\>ffutool -flash <path to ffu image file>
    ```

    For example:

    ``` syntax
    c:\>ffutool -flash C:\MMOS\MMOS.ffu
    ```

7.  You should see output similar to the following.

    ``` syntax
    Logging to ETL file: C:\Users\Nancy\AppData\Local\Temp\ffutool8276.etl 
    Found device: 
    Name: Contoso.DCD6000 Phone.DCD6000 
    ID: 00000045-14ca-3016-8fbe-120000000000 
    Flashing: MMOS.ffu 
    [==================================================] 100.00% 
    Transferred 157.88 MB in 50.56 seconds, overall rate 3.12 MB/s.
    ```

8.  The device will reboot into MMOS. The display on the device will show a small rotating graphic.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phManuRetail\p_phManuRetail%5D:%20Flash%20MMOS%20to%20the%20device%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



