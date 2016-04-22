---
author: kpacquer
Description: 'These tools are part of the Windows 10 IoT Core (IoT Core) ADK Add-Ons, in the \\Tools folder. To learn more about these tools, see What''s in the Windows ADK IoT Core Add-ons.'
ms.assetid: ae043bb0-656e-4439-bdbe-a8d370629ab7
MSHAttr: 'PreferredLib:/library'
title: 'IoT Core Add-ons command-line options'
---

# <span id="p_iot_core.command-line_options_to_manufacture_iot_core_images"></span>IoT Core Add-ons command-line options


These tools are part of the [Windows 10 IoT Core (IoT Core) ADK Add-Ons](http://go.microsoft.com/fwlink/?LinkId=735028), in the \\Tools folder. To learn more about these tools, see [What's in the Windows ADK IoT Core Add-ons](iot-core-adk-addons.md).

## <span id="iotcoreshell.lnk"></span><span id="IOTCORESHELL.LNK"></span>IoTCoreShell.lnk


Opens the IoT Core Shell. You should run this program as an administrator.

If you have installed the IoTCore ADK Addons in a different path, modify the shortcut to the installed path:

``` syntax
C:\Windows\System32\cmd.exe /k "C:\IoT-ADK-AddonKit\Tools\LaunchTool.cmd"
```

 **To set this command to always run as an administrator:**

1.  In Windows Explorer, right-click the shortcut, and select **Properties**.
2.  In the Shortcut tab, click **Advanced**, and check **Run as administrator** &gt; **OK** &gt; **Apply**.

After you open IoTCoreShell, you'll be prompted to choose a default architecture (ARM or x86) for the devices you'll be building. This sets your default starting set of system variables.  


## <span id="SETENV.CMD"></span>setenv.cmd
Usage: `setenv <arch>`

Parameters:

-   `<arch>`: Architecture to be set. (`arm` or `x86`).

Description: This command resets your environment variables. 

Common variables used include **IOTADK\_ROOT**, **COMMON\_DIR**, **SRC\_DIR**, **BLD\_DIR**, **PKGBLD\_DIR**, **TOOLS\_DIR**, and more. 

Open setenv.cmd in a text editor to see the full list of variables set.

Example:

``` syntax
setenv.cmd arm
```

## <span id="SETVERSION.CMD"></span>setversion.cmd


Usage: `setversion x.y.z.a`

Parameters:

-   `x.y.z.a`: Four-part version number to be used for packages

Description: This command sets the version numbers used when creating a package with **createpkg.cmd** or a provisioning package with **createprovpkg.cmd**.

(Why a four-part version number? Learn about versioning schemes in [Update requirements](../../service/mobile/update-requirements.md).)

This version information is stored in **%PRJ\_DIR%\\versioninfo.txt** and loaded back when the IoT Core Shell is launched again. Note that whenever the package contents are changed, the version has to be updated and all packages need to be recreated.

Example:

``` syntax
setversion 10.0.0.1
```

## <span id="CREATEPKG.CMD"></span>createpkg.cmd


Usage: `createpkg <packagefile.pkg.xml> [version]`

Description: Creates a packaging definition file (.pkg.xml) using the pkggen tool and parameters set in the environment defined by **IoTCoreShell.lnk** and **setversion.cmd**. The output files are available in the folder defined by **%PKG\_OUTPUT%**.

You can optionally add a version number. If you don't specify one, the default is to use the version defined in the variable %BSP\_VERSION%. The output files are available in the folder defined by %PKG\_OUTPUT%

Examples:

``` syntax
createpkg %SRC_DIR%\Packages\Appx.Main\Appx.Main.pkg.xml
createpkg %SRC_DIR%\Packages\Appx.Main\Appx.Main.pkg.xml 10.0.1.0 
```

## <span id="CREATEPROVPKG.CMD"></span>createprovpkg.cmd


Usage: `createprovpkg <customizations.xml> <outputfilename>`

Parameters:

-   `<customizations.xml>`: Input file with Windows Customizations contents
-   `<outputfilename>`: Output filename (.ppkg) with full path

Description: Creates a provisioning package using the icd.exe tool and parameters set in the environment defined by **IoTCoreShell.lnk** and **setversion.cmd**. The output file (.ppkg) is created at the specified output location.

Example:

``` syntax
createprovpkg %PRJ_DIR%\Products\SampleA\Prov\customizations.xml %PRJ_DIR%\Products\SampleA\Prov\SampleAProv.ppkg
```

## <span id="____CREATEUPDATEPKGS.CMD"></span> createupdatepkgs.cmd


Usage: `createupdatepkgs <updatename>`

Parameters:

-   `<updatename>`: Name of the update.

Description: Creates an update package using the packaging definition files (.pkg.xml) in the update folder. It uses the pkggen tool and parameters set in the environment defined by **IoTCoreShell.lnk** and **setversion.cmd**.

The output files are stored in the Build directory (%BLD\_DIR%), in the &lt;updatename&gt; folder.

Example:

``` syntax
createupdatepkgs Update1
```

In this example, the output is stored at %BLD\_DIR%\\Update1\\.

## <span id="CREATEIMAGE.CMD"></span>createimage.cmd


Usage: `createimage <productname> <buildtype>`

Parameters:

-   `<productname>`: Name of the product to be built.
-   `<buildtype>`: **Retail** or **Test**

Description: Creates the image file (FFU), using the product-specific packages. It uses the createpkg.cmd with the imggen tool and the parameters set in the command environment. The output files are available in the Build (%BLD\_DIR%) folder.

Example:

``` syntax
createimage.cmd ProductA Retail
```

Output is available at %BLD\_DIR%\\ProductA\\Retail

<!--- ## <span id="_UPDATEIMAGE.CMD"></span> updateimage.cmd


Usage: `updateimage <productname> <buildtype> <updatename>`

Parameters:

-   `<productname>`: Name of the product to be updated.
-   `<buildtype>`: **Retail** or **Test**
-   `<updatename>`: Name of the update to be applied

Description: This tool copies the specified product build and updates with the contents specified by &lt;updatename&gt; using ImageApp tool with the correct parameters set in the environment. The output files are available in the Build (%BLD\_DIR%) folder.

Example:

``` syntax
updateimage ProductA Retail Update1
```

Output is available at %BLD\_DIR%\\ProductA\\Update1\\Retail

--->


## <span id="_NEWPKG.CMD"></span> newpkg.cmd


Usage: `newpkg <package type> <component name> <sub-component name>`

Parameters:

-   `<package type>`:       The type of package created. Must be: **pkgAppx**, **pkgDrv**, or **pkgFile**. 
-   `<component name>`:     Component name for the package. Examples include "App", "Driver", "File", "Registry", though you can use any naming scheme you like.
-   `<sub-component name>`: Sub-component name for the package. Examples include "Blinky"


Description: Creates a new working package directory under Packages, and creates a package definition file using a template file. Some of these package definition files include sample entries to help you add more items. For example, the pkgFile type includes a sample entry for a Registry Key.

Example:

``` syntax
newpkg pkgAppx Appx HelloWorld
newpkg pkgDrv Driver Blinky
newpkg pkgFile File MyFile
newpkg pkgFile Registry MyRegKey
```


## <span id="_NEWPRODUCT.CMD"></span> newproduct.cmd


Usage: `newproduct <productname>`

Parameters:

-   `<productname>`: Name of the product to be created

Description: Creates a new working product directory under Products and copies the contents from the template file.

Example:

``` syntax
newproduct ProductA
```

## <span id="NEWUPDATE.CMD"></span>newupdate.cmd


Usage: `newupdate <UpdateName>  <Version>`

Parameters:

-   `<UpdateName>`: Name of the update to be created
-   `<Version>`: Version number (x.y.z.a)

Description: Creates a new working directory under Updates and copies the contents from the template file.

Example:

``` syntax
newupdate Update2 10.0.2.0
```

## <span id="related_topics"></span>Related topics


[What's in the Windows ADK IoT Core Add-ons](iot-core-adk-addons.md)

[IoT Core manufacturing guides](iot-core-manufacturing-guide.md)

 

 



