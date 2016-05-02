---
author: joshbax-msft
title: GDL Correctness Test
description: GDL Correctness Test
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: cc175606-1436-4f8f-bb91-dbab72c820de
---

# GDL Correctness Test


This automated test is run by the GDLCheck tool. The tool performs a generic description language (GDL) syntax check that parses and loads GDL files, specifies configurations, obtains XML snapshots, and looks for syntax errors.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.GDLFile</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
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


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


This test sends all parsing errors and debug output to Gdlcheck.xml. The test processes command-line arguments from left to right. Each argument is separated from the next with a space character. You must specify all options before you specify the GDL root file name.

You can run this test tool from the Microsoft® Windows® Driver Kit (WDK) or by itself from the command prompt. This tool logs results to a Windows Test Technologies (WTT) log file. You can configure the tool to log information at different verbosity levels. The tool requires the root generic printer description (GPD) or GDL file that you want to validate and any other GPD or GDL files that the root file references.

GDLCheck writes all debug output to the GDLCheck.xml file.

The syntax for this tool is as follows:

``` syntax
GDLCheck.exe [-Verbosity=n], where n is a number from 0 to 4 specifying the verbosity level of parser messages. Verbosity 4 is the most verbose and Verbosity 0 is the least verbose. [-Personality[=persona]] Generate Personality Aware snapshot. (To enable all personalities, use -Personality alone.) [-DisplaySynthesizedFeatures] [-GenerateSchema] (GDLschema.xsd) for XML snapshot. [-DoNotGenerateXMLSnapshot] [-DisplayOnlyStickyFeatures] [-DisplayValidatedConfiguration] [-ParserContext=n] where n is a number from 0 to 9. Initial context is 0. [-PrefaceFile=<full path to file that holds Preface>] [-DeviceConfiguration[=Feature1.Option1[:Feature2.Option2[:Feature3.Option3...]]] [-DocumentConfiguration[=Feature1.Option1[:Feature2.Option2[:Feature3.Option3...]]] (Always generates XML Snapshot.) <-PrinterName=<name of an installed printer> | GDL root file path1 [GDL root file path2...]> [-?] Display this message.
```

The following list describes some example GDLCheck commands:

-   **GDLCheck.exe -DisplayValidatedConfiguration -DeviceConfiguration -DocumentConfiguration basic.gdl**

    This command produces an XML snapshot in the GDLsnapshot.xml file by using the default device and document configurations. The basic.gdl file implements the basic features that you need to satisfy the root construct productions that the stdschem.gdl file defines. The following debug output shows an example of what occurs if you specify the **-DisplayValidatedConfiguration** option.

    ``` syntax
    ==== Validated Configuration ====PaperSize:LETTERResolution:Option1RESDLL:UniresDLLInputBin:UPPERIf you execute the same command with hplj5si.gdl (instead of basic.gdl), you will see the following debug output.==== Validated Configuration ====Memory:4096KBPrinterHardDisk:FALSEDuplexUnit:InstalledPageProtect:OFF==== Validated Configuration ====Memory:4096KBPrinterHardDisk:FALSEDuplexUnit:InstalledPageProtect:OFFPaperSize:LETTEROrientation:PORTRAITDuplex:NONEResolution:Option1Halftone:HT_PATSIZE_AUTORESDLL:UniresDLLOutputBin:Option1Collate:OFFStapling:Option1InputBin:Option1
    ```

-   **GDLCheck.exe -GenerateSchema -DoNotGenerateXmlSnapshot basic.gdl**

    This command produces the schema for the XML snapshot but not the snapshot itself. You can find the schema in the GDLschema.xsd file. This command shows the **-GenerateSchema** option and the **-DoNotGenerateXmlSnapshot** option. This option turns off snapshot creation. By default, Gdlcheck produces the XML snapshot unless you specify the **-DoNotGenerateXmlSnapshot** option.

-   **GDLCheck.exe -PrefaceFile=preface.gdl -DisplayValidatedConfiguration -DeviceConfiguration -DocumentConfiguration basic.gdl**

    This command shows how to use the **-PrefaceFile** option in Gdlcheck to specify a preface file. To perform this test, comment out or remove the "\*Include: "stdschmx.gdl" line from the basic.gdl file because the preface.gdl file already includes this line. The result of running this command is the same as the result for the first example command.

-   **GDLCheck.exe -DisplaySynthesizedFeatures -DoNotGenerateXmlSnapshot synfea.gdl**

    This command shows how to use the **-DisplaySynthesizedFeatures** option to verify the creation of synthesized features. The following debug output shows an example of what occurs if you run this command. Note that because this command does not use the **-DoNotGenerateXmlSnapshot** option, the test does not create the XML snapshot.

    ``` syntax
    === Begin Contents of Synthesized Features Buffer ===*Feature: SynFea_InputBinENVFEED{*FeatureType: SYNTHESIZED_PROPERTY*Name: "Optional Envelope Feeder"*Option: NotInstalled{*Name: "Not installed"*Constraints: InputBin.ENVFEED}*Option: Installed{*Name: "Installed"}}=== End Contents of Synthesized Features Buffer ===
    ```

    Note that you do not have to use the **-DoNotGenerateXmlSnapshot** option if you want to use the **-DisplaySynthesizedFeatures** option. You can also use the following command:

    **GDLCheck.exe -DisplaySynthesizedFeatures -DisplayValidatedConfiguration -DeviceConfiguration -DocumentConfiguration synfea.gdl**

    This command produces the following debug output:

    ``` syntax
    === Begin Contents of Synthesized Features Buffer ===*Feature: SynFea_InputBinENVFEED{*FeatureType: SYNTHESIZED_PROPERTY*Name: "Optional Envelope Feeder"*Option: NotInstalled{*Name: "Not installed"*Constraints: InputBin.ENVFEED}*Option: Installed{*Name: "Installed"}}=== End Contents of Synthesized Features Buffer ======= Validated Configuration ====SynFea_InputBinENVFEED:NotInstalled==== Validated Configuration ====SynFea_InputBinENVFEED:NotInstalledPaperSize:LETTERResolution:Option1RESDLL:UniresDLLInputBin:UPPER
    ```

-   **GDLCheck.exe -DisplayValidatedConfiguration -DeviceConfigurationMemory.8192KB:PrinterHardDisk.TRUE -cOrientation.LANDSCAPE\_CC90:Resolution.Option2:PaperSize.LEGAL hplj5si.gdl**

    This command shows how to use the **-DeviceConfiguration** and **-DocumentConfiguration** options to define your own device and document configurations. The following debug output shows an example of what you might see when you run this command.

    ``` syntax
    ==== Validated Configuration ====Memory:8192KBPrinterHardDisk:TRUEDuplexUnit:InstalledPageProtect:OFF==== Validated Configuration ====Memory:8192KBPrinterHardDisk:TRUEDuplexUnit:InstalledPageProtect:OFFPaperSize:LEGALOrientation:LANDSCAPE_CC90Duplex:NONEResolution:Option2Halftone:HT_PATSIZE_AUTORESDLL:UniresDLLOutputBin:Option1Collate:OFFStapling:Option1InputBin:Option1 
    ```

-   You can use the **-ParserContext** argument in GDLCheck to validate more than one root GDL file within a single execution of GDLCheck. The following is the syntax for this command:

    **GDLCheck.exe -Preface=c:\\test\\preface.gdl -DisplayValidatedConfiguration -DeviceConfiguration -DocumentConfiguration c:\\test\\basic.gdl -ParserContext=1 -Preface=c:\\test\\preface.gdl -DisplayValidatedConfiguration -Verbosity=1 -Personality=Persona1 -GenerateSchema -DeviceConfiguration -DocumentConfiguration c:\\test\\personatest.gdl**

    This example also shows how to use the **-Personality** option to specify a personality for the generation of the personality-aware XML snapshot.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20GDL%20Correctness%20Test%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




