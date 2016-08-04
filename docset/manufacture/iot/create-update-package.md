---
author: kpacquer
Description: 'Create an update package'
title: 'Lab 3: Create an update package'
---

# Lab 3: Create an update package

## <span id="Prerequisites"></span><span id="prerequisites"></span><span id="PREREQUISITES"></span>Prerequisites

We'll create an update to the Hello, World app we created from [Lab 1b: Add an app to your image](deploy-your-app-with-a-standard-board.md).

## <span id="Create_an_update_package"></span>Create an update package

1.  Create a working folder for your update package. 

    Use a new version number. This version number will apply to all of the packages in your projects.

    ``` syntax
    newupdate Update1 10.0.0.1
    ```

2.  Update the Hello, World with changes.

3.  Build the Hello, World project, using a new version number. 
	
4.  Update the package info:

    Create a copy of the existing Appx.HelloWorld package under Update1\ folder and then update that with the version number.
	
	Copy the new appx files to that directory.
	
	Open C:\\iot-adk-addonkit\\Source-arm\\Packages\\Appx.HelloWorld\\Appx.HelloWorld.pkg.xml, and update the version numbering.
		
5.  Build the update package

    ``` syntax
    createupdatepkgs Update1
    ```

	The output goes to C:\\iot-adk-addonkit\\Build\\arm\\Update1.

## <span id="Test_an_update_package"></span>Test an update package
	
1. Test the new package directly on the device by copying the package into the device. Run `applyupdate -stage` and `applyupdate commit`. This verifies the package is ok. Note that TestA is essentially a Over the Cable test (OTC) to verify the update. 
	
2.  Copy this package into the build folder and create a FFU. This verifies that the FFU with new package is ok. This package will be delivered to the devices on the field over the air (OTA) and installed on the devices. Read more about OEM servicing < link to page detailing OEM servicing>

To keep track of your versions, open UpdateVersion.txt to see descriptions of your official set of packages. The tool automatically updates this file when creating a new update. This is required to keep track of completed updates.


