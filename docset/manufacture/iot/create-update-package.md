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
    newupdate Update2 10.0.0.2
    ```

2.  Update the Hello, World version numbers in Visual Studio.

    When creating your update package, use a new version number.
	
3.  Update the package info:

    For example, open C:\\iot-adk-addonkit\\Source-arm\\Packages\\Appx.HelloWorld\\Appx.HelloWorld.pkg.xml, and update the version numbering.
	
4.  Build the update package

    ``` syntax
    createupdatepkgs Update2
    ```

	The output goes to C:\\iot-adk-addonkit\\Build\\arm\\Update2.
	
5.  Test: Copy the package into the build folder at C:\\iot-adk-addonkit\\Build\\arm\\pkgs.

6.  Keep track of your versions: use UpdateVersion.txt to describe each update to your official set of packages.

