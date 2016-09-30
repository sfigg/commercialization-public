---
author: kpacquer
Description: 'These tools are part of the Windows 10 IoT Core (IoT Core) ADK Add-Ons, in the \\Tools folder. To learn more about these tools, see What''s in the Windows ADK IoT Core Add-ons.'
ms.assetid: ae043bb0-656e-4439-bdbe-a8d370629ab7
MSHAttr: 'PreferredLib:/library'
title: 'IoT Core Add-ons command-line options'
---

# <span id="p_iot_core.command-line_options_to_manufacture_iot_core_images"></span>IoT Core Add-ons command-line options

These tools are part of the [Windows 10 IoT Core (IoT Core) ADK Add-Ons](http://go.microsoft.com/fwlink/?LinkId=735028), in the [\\Tools folder](iot-core-command-line-options.md). To learn more about these tools, see [What's in the Windows ADK IoT Core Add-ons](iot-core-adk-addons.md).

## <span id="appx2pkg.cmd"></span>appx2pkg.cmd

Creates the folder structure and copies the template files for a new package.

## <span id="BuildAgent.cmd"></span>BuildAgent.cmd

Builds FFUs for all OEMInputSamples under the Addon Kit directory. Can be used to automate nightly builds.

## <span id="BuildImage.cmd"></span>BuildImage.cmd

[Builds an image file (FFU)](create-a-basic-image.md), using the product-specific packages. Uses CreateImage.cmd, includes additional options.

**Usage**: `buildimage [Product]/[All]/[Clean] [BuildType]`

**Parameters**:
- `ProductName`....... Required, Name of the product to be created.
- `All`............... All Products under \Products directory are built
- `Clean`............. Cleans the output directory.  One of the above should be specified.
- `BuildType`......... Optional, Retail/Test, if not specified both types are built
- `[version]`......... Optional, Package version. If not specified, it uses BSP_VERSION
- `[/?]`.............. Displays this usage string.

**Example**:

``` syntax
buildimage SampleA Test
buildimage SampleA Retail
buildimage SampleA
buildimage All Test
buildimage All
buildimage Clean
```

## <span id="BuildKitAgent.cmd"></span>BuildKitAgent.cmd

Builds FFUs for all OEMInputSamples in Core Kit package. Can be used to automate nightly builds.

## <span id="BuildKitSamples.cmd"></span>BuildKitSamples.cmd

Builds architecture-specific FFUs for OEMInputSamples in Core Kit package.  Can be used to automate nightly builds.

## <span id="buildpkg.cmd"></span>buildpkg.cmd

Builds a package from \Sources-\<arch\>\Packages.

Buildpkg saves the package in the \Build\\<arch\>\pkgs folder as a .cab file (example: Contoso.Provisioning.Auto.cab).

For troubleshooting, Buildpkg saves logs at \Build\\<arch\>\pkgs\logs. 

**Usage**: `buildpkg [CompName.SubCompName]/[packagefile.pkg.xml]/[All]/[Clean] [version]`

**Parameters**:

-   `<CompName.SubCompName>`: Use this to refer to the package by its ComponentName.SubComponent Name.

-   `<packagefile.pkg.xml>`: Use this to refer to the package by its package definition XML file.

-   `<All>`: Use this to build all packages in the \Sources-\<arch\>\Packages folder. This is the same as the buildallpackages command.

-   `<Clean>`: Use this to erase everything in the \Build\\<arch\>\pkgs folder. Recommended before building all packages.

-   `<version>`: Optional, used to specify a version number. If you don't specify one, the default is to use the version defined in the variable %BSP\_VERSION%. 

**Example**:

``` syntax
buildpkg Appx.Main
buildpkg Appx.Main 10.0.1.0
buildpkg sample.pkg.xml
buildpkg sample.pkg.xml 10.0.1.0
buildpkg All
buildpkg All 10.0.2.0
buildpkg Clean
```

## <span id="createimage.cmd"></span>createimage.cmd

Creates the image file (FFU), using the product-specific packages. It uses the createpkg.cmd with the imggen tool and the **Parameters** set in the command environment. The output files are available in the Build (%BLD\_DIR%) folder.

createimage saves the FFU at %BLD\_DIR%\\<productname>\(Test or Retail)\

**Usage**: `createimage <productname> <buildtype>`

**Parameters**:

-   `<productname>`: Name of the product to be built.

-   `<buildtype>`: **Retail** or **Test**

**Example**:

``` syntax
createimage.cmd ProductA Retail
```


## <span id="createpkg.cmd"></span>createpkg.cmd

Creates a packaging definition file (.pkg.xml) using the pkggen tool and **Parameters** set in the environment defined by **IoTCoreShell.cmd** and **setversion.cmd**. 

Createpkg saves the package in the \Build\\<arch\>\pkgs folder as a .cab file (example: Contoso.Provisioning.Auto.cab).

**Usage**: `createpkg <packagefile.pkg.xml>/<CompName.SubCompName> [version]`

**Parameters**:

-   `<packagefile.pkg.xml>`: Use this to identify the package by its package definition XML file.

-   `<CompName.SubCompName>`: Use this to identify the package by its ComponentName.SubComponent Name.   

-   `<version>`: Optional, used to specify a version number. If you don't specify one, the default is to use the version defined in the variable %BSP\_VERSION%. 


**Examples**:

``` syntax
createpkg %SRC_DIR%\Packages\Appx.Main\Appx.Main.pkg.xml
createpkg %SRC_DIR%\Packages\Appx.Main\Appx.Main.pkg.xml 10.0.1.0
createpkg Registry.ConfigSettings 
```

## <span id="createprovpkg.cmd"></span>createprovpkg.cmd

Creates a provisioning package using the icd.exe tool and **Parameters** set in the environment defined by **IoTCoreShell.cmd** and **setversion.cmd**. The output file (.ppkg) is created at the specified output location.

**Usage**: `createprovpkg <customizations.xml> <outputfilename>`

**Parameters**:

-   `<customizations.xml>`: Input file with Windows Customizations contents
-   `<outputfilename>`: Output filename (.ppkg) with full path

**Example**:

``` syntax
createprovpkg %PRJ_DIR%\Products\SampleA\Prov\customizations.xml %PRJ_DIR%\Products\SampleA\Prov\SampleAProv.ppkg
```

## <span id="createupdatepkgs.cmd"></span>createupdatepkgs.cmd

Creates an update package using the packaging definition files (.pkg.xml) in the update folder. It uses the pkggen tool and **Parameters** set in the environment defined by **IoTCoreShell.cmd** and **setversion.cmd**.

The output files are stored in the Build directory (%BLD\_DIR%), in the \<updatename\> folder.

**Usage**: `createupdatepkgs <updatename>`

**Parameters**:

-  `<updatename>`: Name of the update.

**Example**:

``` syntax
createupdatepkgs Update1
```

In this example, the output is stored at %BLD\_DIR%\\Update1\\.

## <span id="inf2cab.cmd"></span>inf2cab.cmd

Converts a .inf driver package to a .cab file.

Inf2cab saves the package in the \Build\\<arch\>\pkgs folder  (example: Drivers.GPIO.cab).

**Usage**: `inf2cab filename.inf [CompName.SubCompName]`

**Parameters**:

- `filename.inf` ........... Required, input file for the driver.

- `<CompName.SubCompName>`.. Optional, refers to the driver package by its ComponentName.SubComponent Name.

**Examples**:

``` syntax
inf2cab C:\test\gpiodriver.inf
inf2cab C:\test\gpiodriver.inf Drivers.GPIO
```

## <span id="inf2pkg.cmd"></span>inf2pkg.cmd

Creates the folder structure and copies the template files for a new package

**Usage**: `inf2pkg input.inf [CompName.SubCompName]`
- `input.inf`............... Required, input .inf file
- `CompName.SubCompName`.... Optional, default is Drivers.input
- `[/?]`.................... Displays this usage string.

**Example**:
``` syntax
inf2pkg C:\test\testdriver.inf
```

## <span id="iotcoreshell.cmd"></span><span id="IOTCORESHELL.CMD"></span>IoTCoreShell.cmd

Opens the IoT Core Shell as an administrator. (This file is in the root folder, and uses LaunchTool.cmd)

After you open IoTCoreShell, you'll be prompted to choose a default architecture (ARM or x86) for the devices you'll be building. This sets your default starting set of system variables.  

## <span id="LaunchTool.cmd"></span>LaunchTool.cmd

Used by LaunchTool.cmd (in the root folder) to open the IoT Core Shell. 

## <span id="newappxpkg.cmd"></span>newappxpkg.cmd

Creates a new working folder to help you convert Appx packages to .cab files. 

Note: This tool expects a subfolder named "dependencies" with any of the .appx dependency packages.

This command creates the working folder in the \Source-\<arch\>\Packages\ folder.

If you run this command without any variables, you'll also see the other working folders in the \Source-\<arch\>\Packages\ folder.

**Usage**: `newappxpkg filename.appx [CompName.SubCompName]`

**Parameters**:

-   `filename.appx`: Required, input file for the Appx package.

-   `<CompName.SubCompName>`: Optional, creates the working folder using the name: ComponentName.SubComponent.

**Example**:

``` syntax
newappxpkg C:\test\MainAppx_1.0.0.0_arm.appx AppX.Main
```

To learn more, see [Lab 1b: Add an app to your image](deploy-your-app-with-a-standard-board).

## <span id="newbsp.cmd"></span>newbsp.cmd
Creates the folder structure and copies the template files for [creating a new board support package (BSP)](create-a-new-bsp.md).

**Usage**: `newbsp BSPName`

**Parameters**:

- `BSPName`........... Required, Name of the BSP to be used

**Example**:
``` syntax
newbsp CustomRPi2
```


## <span id="newcommonpkg.cmd"></span>newcommonpkg.cmd

Creates a new working folder to help you [add files, folders, registry keys, and provisioning packages](add-a-registry-setting-to-an-image.md) as .cab files. After using this command, use the buildpkg command to create your final .cab file.

This command creates the working folder in the \Common\Packages\ folder.

If you run this command without any variables, you'll also see the other working folders in the \Common\Packages\ folder.

**Usage**: `newcommonpkg CompName.SubCompName`

**Parameters**:

-   `<CompName.SubCompName>`: Required, creates the working folder using the name ComponentName.SubComponent.

**Example**:

``` syntax
newcommonpkg Registry.ConfigSettings
```

To learn more, see [Lab 1c: Add a file and a registry setting to an image](add-a-registry-setting-to-an-image.md).



## <span id="newdrvpkg.cmd"></span>newdrvpkg.cmd

Used to [add a driver to an image](add-a-driver-to-an-image.md). Creates a new working folder to help you convert driver packages to .cab files. After using this command, use the buildpkg command to create your final .cab file.

This command creates the working folder in the \Source-\<arch\>\Packages\ folder.

If you run this command without any variables, you'll also see the other working folders in the \Source-\<arch\>\Packages\ folder.

**Usage**: `newdrvpkg filename.inf [CompName.SubCompName]`

**Parameters**:

-   `filename.inf`: Required, input .inf file for the driver package.

-   `<CompName.SubCompName>`: Optional, creates the working folder using the name: ComponentName.SubComponent. The default is Drivers.\<filename\>.

**Example**:

``` syntax
newdrvpkg C:\test\GPIO.inf Drivers.GPIO
```

## <span id="newproduct.cmd"></span> newproduct.cmd

Used to [create new product images](create-a-basic-image.md). Creates a new working product directory under \Products and copies the contents from the template file.

**Usage**: `newproduct <productname>`

**Parameters**:

-   `<productname>`: Name of the product to be created

**Example**:

``` syntax
newproduct ProductA
```

## <span id="NEWUPDATE.CMD"></span>newupdate.cmd

Creates a new working directory under \Updates and copies the contents from the template file.

**Usage**: `newupdate <UpdateName>  <Version>`

**Parameters**:

-   `<UpdateName>`: Name of the update to be created

-   `<Version>`: Version number (x.y.z.a)

**Example**:

``` syntax
newupdate Update2 10.0.2.0
```

## <span id="retailsign.cmd"></span>retailsign.cmd

Toggles between using cross-certifications for signing and enabling OEM test-signing of certificates

**Usage**: `retailsign [On/Off]`

**Parameters**:
- `On` ................... Enables Cross Cert for signing
- `Off`................... Disables Cross Cert for signing and enables OEM Test Signing

**Examples**:

```syntax
retailsign On
retailsign Off
```


## <span id="setenv.cmd"></span>setenv.cmd
Resets your environment variables, including **IOTADK\_ROOT**, **COMMON\_DIR**, **SRC\_DIR**, **BLD\_DIR**, **PKGBLD\_DIR**, **TOOLS\_DIR**, and more. 

Open setenv.cmd in a text editor to see the full list of variables set.

**Usage**: `setenv <arch>`

**Parameters**:

-   `<arch>`: Architecture to be set. (`arm`, `x86`, or `x64`).

**Example**:

``` syntax
setenv.cmd arm
```

## <span id="setOEM.cmd"></span>setOEM.cmd
Sets your OEM company name. Edit this file with a text editor.

``` syntax
set OEM_NAME=Contoso
```


## <span id="setsignature.cmd"></span>setsignature.cmd
Sets the [Cross-Certificates for kernel-mode code signing](https://msdn.microsoft.com/windows/hardware/drivers/install/cross-certificates-for-kernel-mode-code-signing)

## <span id="setversion.cmd"></span>setversion.cmd

Sets the [version numbers](../../service/mobile/update-requirements.md) used when creating a package with **createpkg.cmd** or a provisioning package with **createprovpkg.cmd**.

This version information is stored in **%PRJ\_DIR%\\versioninfo.txt** and loaded back when the IoT Core Shell is launched again. Whenever the package contents are changed, the version has to be updated and all packages need to be recreated.

**Usage**: `setversion x.y.z.a`

**Parameters**:

-   `x.y.z.a`: Four-part version number to be used for packages

**Example**:

``` syntax
setversion 10.0.0.1
```


<!--- ## <span id="UPDATEIMAGE.CMD"></span> updateimage.cmd


**Usage**: `updateimage <productname> <buildtype> <updatename>`

**Parameters**:

-   `<productname>`: Name of the product to be updated.
-   `<buildtype>`: **Retail** or **Test**
-   `<updatename>`: Name of the update to be applied

Description: This tool copies the specified product build and updates with the contents specified by &lt;updatename&gt; using ImageApp tool with the correct parameters set in the environment. The output files are available in the Build (%BLD\_DIR%) folder.

**Example**:

``` syntax
updateimage ProductA Retail Update1
```

Output is available at %BLD\_DIR%\\ProductA\\Update1\\Retail

-->

## <span id="older_tools"></span>Older tools

### <span id="buildallpackages.cmd"></span>buildallpackages.cmd

This tool has been replaced with the tool: buildpkg All.

### <span id="newpkg.cmd"></span> newpkg.cmd

This tool has been replaced with the tools: newappxpkg, newdrvpkg, and newcommonpkg.

## <span id="related_topics"></span>Related topics

[IoT Core Add-ons](iot-core-adk-addons.md)

[IoT Core manufacturing guides](iot-core-manufacturing-guide.md)
