---
Description: 'Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)'
MS-HAID: 'p\_adk\_online.windows\_setup\_edition\_configuration\_and\_product\_id\_files\_\_eicfg\_and\_pidtxt'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)'
---

# Windows Setup Edition Configuration and Product ID Files (EI.cfg and PID.txt)


The edition configuration (EI.cfg) file and the product ID (PID.txt) file are optional configuration files that you can use to specify the Windows® product key and the Windows edition during Windows installation. You can use these files to automate the product-key entry page in Windows Setup instead of using an answer file. If you use an EI.cfg file to differentiate volume license media, but you do not include a PID.txt file, the user receives a prompt for a product key to continue Windows Setup.

You can reuse the product key in the product ID file for multiple installations. The product key in the product ID file is only used to install Windows. This key is not used to activate Windows. For more information, see [Work with Product Keys and Activation](work-with-product-keys-and-activation-auth-phases.md).

## <span id="Using_EI.cfg_and_PID.txt"></span><span id="using_ei.cfg_and_pid.txt"></span><span id="USING_EI.CFG_AND_PID.TXT"></span>Using EI.cfg and PID.txt


1.  Create these configuration files in a text editor such as Notepad.

2.  Save the files into the `\Sources` folder on the installation media. Windows Setup will use these files automatically during installation.

3.  Run Windows Setup. Setup uses these files during the Windows PE configuration pass as soon as it is launched.

**Note**  
An answer file takes precedence over these files. If you use an answer file during installation, Windows Setup ignores the EI.cfg and PID.txt files.

 

## <span id="ei.cfg_format"></span><span id="EI.CFG_FORMAT"></span>EI.cfg Format


The EI.cfg file specifies the values for the edition ID, the channel, and the volume license.

The EI.cfg file has the following format:

``` syntax
[EditionID]
{Edition ID}
[Channel]
{Channel Type}
[VL]
{Volume License}
```

*{Edition ID}* must be a valid Windows edition ID, for example, "Enterprise". To obtain the current EditionID, use the **Dism /Get-ImageInfo** command or the **Dism /Get-CurrentEdition** command. For more information, see [Take Inventory of an Image or Component Using DISM](p_adk_online.take_inventory_of_an_image_or_component_using_dism_win8) and [DISM Windows Edition-Servicing Command-Line Options](dism-windows-edition-servicing-command-line-options.md).

*{Channel Type}* must be either "OEM" or "Retail"

*{Volume License}* must be either 1, if this is a volume license, or 0, if this is not a volume license. For example:

``` syntax
[EditionID]
Enterprise
[Channel]
OEM
[VL]
0
```

## <span id="pid.txt_format"></span><span id="PID.TXT_FORMAT"></span>PID.txt Format


The PID.txt file contains the product key for the edition of Windows that you are installing.

The PID.txt file has the following format:

``` syntax
[PID]
Value=XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

where *XXXXX-XXXXX-XXXXX-XXXXX-XXXXX* is the product key.

## <span id="Troubleshooting"></span><span id="troubleshooting"></span><span id="TROUBLESHOOTING"></span>Troubleshooting


**"The product key entered does not match any of the Windows images available for installation. Enter a different product key."**: You may need to download a separate version of Windows. OEM versions are only available to OEMs, and volume licenses are only available to MSDN subscribers.

## <span id="related_topics"></span>Related topics


[Work with Product Keys and Activation](work-with-product-keys-and-activation-auth-phases.md)

[Windows Setup Command-Line Options](p_adk_online.windows_setup_command_line_options_win8)

[Windows Setup States](windows-setup-states.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Windows%20Setup%20Edition%20Configuration%20and%20Product%20ID%20Files%20%28EI.cfg%20and%20PID.txt%29%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




