---
Description: 'These tools are part of the Windows 10 IoT Core (IoT Core) ADK Add-Ons, in the \\Tools folder. To learn more about these tools, see What''s in the Windows ADK IoT Core Add-ons.'
MS-HAID: 'p\_iot\_core.command-line\_options\_to\_manufacture\_iot\_core\_images'
MSHAttr: 'PreferredLib:/library'
title: 'Command-line options to manufacture IoT Core images'
---

# <span id="p_iot_core.command-line_options_to_manufacture_iot_core_images"></span>Command-line options to manufacture IoT Core images


\[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here. An app that calls an API introduced in Windows 10 Anniversary SDK Preview Build 14295 cannot be ingested into the Windows Store during the Preview period.\]

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



Usage: `setenv <arch>`

Parameters:

-   `<arch>`: Architecture to be set. (`arm` or `x86`).

Description: This command resets the following environment variables. Common variables used:

-   **IOTADK\_ROOT**= The path where Windows IoT Core Addons are installed, for example, C:\\IoT-ADK-AddonKit
-   **COMMON\_DIR**=%ADKADDONS\_ROOT%\\Common
-   **SRC\_DIR**=%ADKADDONS\_ROOT%\\Source-%1
-   **PKGUPD**=%SRC\_DIR%\\Updates
-   **PKGSRC\_DIR**=%SRC\_DIR%\\Packages
-   **BLD\_DIR**=%ADKADDONS\_ROOT%\\Build\\%BSP\_ARCH%
-   **PKGBLD\_DIR**=%BLD\_DIR%\\pkgs
-   **TOOLS\_DIR**=%ADDADONS\_ROOT%\\Tools

You can open setenv.cmd in a text editor to see the full list of variables set.

Example:

``` syntax
setenv.cmd arm
```

## <span id="SETVERSION.CMD"></span>setversion.cmd


Usage: `setversion x.y.z.a`

Parameters:

-   `x.y.z.a`: Four-part version number to be used for packages

Description: This command sets the version numbers used when creating a package with **createpkg.cmd** or a provisioning package with **createprovpkg.cmd**.

(Why a four-part version number? Learn about versioning schemes in [Update requirements](../../service/mobile-update/update-requirements.md).)

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

## <span id="_UPDATEIMAGE.CMD"></span> updateimage.cmd


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

 

 



