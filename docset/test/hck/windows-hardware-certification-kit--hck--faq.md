---
author: joshbax-msft
title: Windows Hardware Certification Kit (HCK) FAQ
description: Windows Hardware Certification Kit (HCK) FAQ
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: e2a532bc-5ffe-4a96-9cac-91c79b123278
---

# Windows Hardware Certification Kit (HCK) FAQ


This article provides answers to frequently asked questions about the Windows Hardware Certification Kit (HCK), including workarounds to common installation and testing questions.

## General Questions


**Q: Do you plan to release the Windows Hardware Certification Kit (Windows HCK) with HCK Studio & HCK Manager, or put more functionality into the HCK Studio?**

HCK Studio and HCK Manager will be released. There is additional functionality for the HCK Studio, specifically failure issues that do not produce logs (for example, if a copy file fails, there is no log created).  Such data does exist, and can be seen in the HCK Manager. We are planning on bringing it into HCK Studio.

**Q: Can I run WLK 1.6 tests on Windows 8 HCK Client?**

No, you need to run Windows HCK on Windows 8 HCK Clients.

**Q: In Windows HCK, there are two HCK Studios to manage our tests: the new HCK Studio, and the old HCK Manager. Why we need two HCK Studios? Will they be combined into one HCK Studio?**

The Windows HCK includes both the HCK Studio and the HCK Manager. The HCK Studio is focused purely on certification, and only includes functionality specific to creating and completing a certification project. We have also included HCK Manager, as there are still some advanced operations and troubleshooting options that cannot be done in HCK Studio.

Normally, you should only need to work in HCK Studio. But occasionally, you may need to open HCK Manager for troubleshooting or advanced configuration. Also, HCK Manager is the default viewer for .wtl files, so it will pop up when you open a .wtl file in HCK Studio.

**Q: We have limited HCK Servers to perform testing. As a result, multiple testers may perform tests on a single HCK Server. To prevent conflicts and easily manage HCK Server, can we create multiple accounts on the HCK Server?**

Yes, here’s how:

1.  Add each account to the **Administrators** group in **Computer Management**.

2.  Log on with the account that was used to install the HCK Server, and open HCK Manager.

3.  Select **Tools**, select **Management Console**, and expand the **Users** node under **Datastore**.

4.  Right-click **hck\_dsowners**, and select **New user**.

5.  You can add multiple accounts, separated by semi-colons (;) in the format DOMAIN\\account. In a Workgroup deployment, the HCK Server machine name is the domain name.

6.  Each operator adds their account with the same name and password to the **Administrators** group on their test machine, then uses that account to install the HCK Client software.

## Installation


**Q: An error message occurs when installing the Windows HCK Client software on the test computer. We used a hub to connect the test server and HCK Client, and installed the HCK Client from the path: \\\\HCK ServerName\\HCKInstall\\HCK Client\\Setup.exe . The error message shows that the file “WPTx64-x64\_en-us.msi” is not found in the directory “Redistributables”. But the target PC can be installed from another server successfully. How do I resolve this issue?**

This is credentials issue. Use the DNS name instead of the IP address. You need to be able to connect to the HCK Server by name rather than IP address. If you resolve any DNS issues preventing you from connecting by name, and this should resolve your issue.

Other workarounds:

1.  Ensure you are using a consistent deployment model. Both the HCK Server and System under test should be joined to the same domain, or both machines should not be in any domain, but in the same workgroup.

2.  Make sure the account you have logged onto the HCK Client with has administrative access on the HCK Server. We recommend that you do not use a default Administrator account, but instead one of the following:

    1.  For Domains: Use a domain user account that is in the Administrators group on both machines.

    2.  For Workgroups: Add a local machine account to both machines with the same name and password. Make sure this account is in the Administrators group on both machines.

**Q: When a Windows HCK Client system gets a clean OS install and then a fresh Windows HCK Client install, the HCK Client "heartbeat" never advances past the prior OS install and last run. How do I work around this?**

When you install HCK Client, security information is saved in the C:\\WLK\\JobsWorkingDir folder. If HCK Client software is installed again, this security information is created again and does not match the record on the HCK Server. That is why it is necessary to delete the HCK Client in HCK Studio to re-initialize the HCK Client record with new security information.

We recommend that you compile your project and save it to a .hckx project package before moving to a new OS version on the same machine.

And alternative, thought unsupported, workaround is to save the complete C:\\WLK\\JobsWorkingDir from the HCK Client machine. Then, after re-imaging the system and before installing the HCK Client, restore this folder. HCK Client install will find the folder and not create new security information.

**Q: We would like to use SQL 2008 R2 x64. Can this be installed on the HCK Server?**

SQL 2008 R2 x64 is not supported, only x86. In a future build, installations will be blocked if SQL x64 is installed.

**Q: What is the command line for the silent install of HCK Client?**

For Windows RT (ARM-based): **\\\\&lt;hck server name&gt;\\HCKInstall\\ArmClient\\setup.exe /qb ICFAGREE=Yes**

For AMD64/x86: **\\\\&lt;hck server name&gt;\\HCKInstall\\Client\\setup.exe /qb ICFAGREE=Yes**

**Q: I got an installation error when I installed HCK Client on a Secure Boot enabled system. What’s the workaround?**

For non-Windows RT devices, disable Secure Boot while installing HCK Client. Secure Boot should be disabled for most HCK testing, and only enabled to run the Secure Boot tests. For Windows RT devices, a debug policy should be used.

## Running the tests


**Q:  How can I see the test times for each test item?**

The estimated test run time is available on the **Test** tab in the HCK Studio.  If you click the + sign in front of the test name on the **Results** page, you can see the individual test run time and the actual time that each test took to run. The test time estimate is only an estimate on how long it takes to run the tests. The actual test time may be different from the estimated time.

**Q:  In previous version of WLK tests, the tester had to choose the test category, such as OS version, test items, and additional items. In Window HCK, we can choose only choose from Systems, devices and printers, device manager, and software device. Will the server auto-detect the test HCK Client type?**

Earlier versions of the WLK used a wizard in the device console to map jobs to specified certification categories.  In the Windows HCK for Windows 8, users select the device that they want to certify, and the Windows HCK uses a process of feature query and requirement mapping to apply all jobs that match the device. This process works by mapping device data to features, features to requirements, and requirements to tests. When you select a device, the Windows HCK can query the device data and map the feature set, requirement, and tests without user intervention.

**Q: After setting up a Windows 8 certification test, creating a new project to run the USB test device for storage results in a lot of tests that seem to be duplicated. Is this behavior expected?**

Yes, this is by design. If you selected multiple devices that you want to be certified, the Windows HCK uses a process of feature query and requirement mapping to apply all jobs that match each device.

**Q: From within a project, I scheduled a test to execute.  When I tried to reschedule the same test again (against the same HCK Client from within the same project) prior to completing the originally scheduled test, it failed. Is this expected?**

Yes, this behavior is by design. The UI is intended for moderate or light users of the kit who don't need complex testing. You’ll need to use the object model to schedule multiple test runs of the same test/target.

**Q: Can we add test items? For example, it my test unit contains a touch screen, do we need to add touch for testing manually?**

You can't add test items manually according to the new job mapping methodology. All test jobs will show up automatically. If you find missing tests, or test items don’t fit the test system configuration, please submit feedback in the Hardware Dashboard in the Windows Dev Center, and attach the HCK – Hardware Certification Kit Event log to the bug. We will investigate the issue further.

**Q: When I select my device the product types summary in the right pane does not display the product type I want to certify. What should I do?**

In some cases, features that are required for a product type are not being automatically detected on your device.  In this situation, you must manually select the missing feature(s) that correspond to your product type. To manually configure your product type:

1.  Find your product type in the [Windows HCK Product Type Test Matrix](http://download.microsoft.com/download/2/3/6/23662F33-71E8-43C1-8547-5DE49B0374AB/windows-hck-product-type-matrix.zip).

2.  Determine the list of features that are required for your product type.

3.  In the **Selection** tab in HCK Studio, right-click on your selection.  You will see a list of features. The features that have been automatically detected will have a check-box.

4.  Select all missing features that correspond to your product type.

After you have selected all the features, the product type will appear. When you add features to your selection, the tests that are required for those features are automatically added to your list of tests.

**Q: As an OEM, we typically have a large number of systems running on a single Windows HCK Server and even within a single machine pool.  Having the ability to sort the list of tests by more than one factor allows us to first sort by a single test and then by machine to see how many times a single test was run on a single system in contrast to other systems that have run the same test. Is this possible?**

Yes, you can sort by multiple columns. To do so, sort by the first column and then shift-click the second column.For large testing scenarios, it may be more effective to use the object model to schedule tests and analyze results rather than the simple HCK Studio UI. For more info, see the [HCK API Reference](http://go.microsoft.com/fwlink/p/?linkid=252800).

**Q: My test system hangs easily; can the Windows HCK server detect test system hangs and force it to restart to complete the test tasks?**

No, the HCK Server cannot communicate with a system that is hung. Internally we do this by attaching our systems to a power supply that can be cycled remotely when the system is not responsive.

**Q: To use Update Filter, we executed updatefilters.exe, but received the error message "Invalid column name.”Can WLK filters work on the Windows HCK test results?**

WLK 1.6 filters will not work on Windows HCK test results. Download the latest [Windows HCK Filters](http://msdn.microsoft.com/windows/hardware/hh852367).

**Q: After the project starts and all tests are scheduled, the HCK Studio does not allow for the addition of more machine (targeted devices). Adding machines doubles or triples the amount of tests needed to complete the project, and does not distribute the already scheduled tests to them.**

One solution to this distributed testing, which can be done using the object model. See the [HCK API Reference](http://go.microsoft.com/fwlink/p/?linkid=252800).

**Q: Can we test HCK tests with a command line like the WLK? It’s convenient to do this when we encounter a test failure.**

Our object model is the way to automate the HCK. You can use the object model in PowerShell to get an interactive session with your HCK objects. We don't have direct command-line support.

**Q: Multiple users attempting to access HCK Studio or HCK Manager on the same HCK Server receive the error "Failed to connect to database. Failed to connect to OM".**

See the topic “Install a remote HCK Studio” in the [HCK help documentation.](http://go.microsoft.com/fwlink/p/?linkid=252774)

**Q: How do we run the same test item 3 or 4 times ? We could continue to select the same test item in WLK 1.6. How do we do this in HCK Studio?**

This issue is by design in our UI. To rerun a test, the test needs to complete first. If you'd like to queue multiple runs of the test, please use the object model to schedule the test.

**Q: I don’t see my device under Selection &gt; devices and printers in HCK Studio for Windows Vista, but I see my device for Windows 7 and Windows 8.**

The Devices and Printers capability was first introduced in the Windows 7 platform. Previous operating systems, including Windows Vista, Windows Server 2008, and Windows XP do not have the concept or APIs for “Devices and Printers,” and therefore we aren’t able to group devices into these categories. Please select the target from the **Device Manager** view.

**Q: Can we test Windows HCK by wireless if the HCK Client doesn't support RJ-45?**

Yes.

**Q: Can we test by USB LAN dongle if the HCK Client doesn't support RJ-45?**

Yes, we recommend a Windows-certified USB LAN dongle.

**Q: Can we use the Job Explorer to schedule  a job?**

The tests can be manually scheduled using the HCK Studio Selection page. Running from the Job Monitor isn't supported.

**Q: What does LLU\_NAO mean?**

HCK tests run under the account specified in the job configuration, which is usually LLU\_NAO.

## System Fundamental Tests


**Q: How do I execute the “xHCI Debug Capability Compliance(Logo)” test?**

When you select the **xHCI Debug Capability** test under **Tests** and click **Run Selected**, a **Parameters** dialog appears. This test requires two machines in the machine pool that are set up for debugging (one host and the system under test). This test also requires a special USB debugging cable. Please make sure that you have provided the necessary configuration for this test.

**Q: "xHCI Debug Capability Compliance" and "Debug Capability Test(Logo)" can't run successfully. What do I do?**

The host machine must be running Win8. There are no specific hardware requirements for this machine. If the host machine doesn't have USB3.0, the test running on the host machine will pass. Also, the host machine must be added to the machine pool.

**Q: While executing Windows HCK System test "Verifies PS2 Devices have a unique Plug and Play ID" item on W8-B8161 64-bit OS, I get the following error:**

**“Found device ACPI\\PNP0303\\4&343AF303&0**

**Error ACPI\\PNP0303\\4&343AF303&0 is not a unique ID because it contains ACPI\\PNP”**

This test is failing correctly due to a new Windows 8 requirement. The PS/2 device does not have a unique ID because it contains ACPI\\PNP,For more info, see <http://msdn.microsoft.com/library/windows/hardware/gg487441.aspx>.

**Q: How do I run the “Secure Boot Logo Test”?**

Secure Boot is a required feature for Windows 8.  To run this test, you must first enable Secure Boot in its default (shipping) configuration in the BIOS.  Next, run the test. When the **Prepare for Secure Boot Out-of-Box Tests** dialog appears on the target system, select **Yes** to indicate that you have properly configured your BIOS.  The test will not pass if you click **No** on this popup or fail to click it before a timeout expires.

## Device Tests


**Q: The “USB Topology Compatibility Test” runs and hangs on the HCK Client PC. The USB viewer is open on the HCK Client PC along with a command window that is blank. If you manually exit the USB viewer, the test continues and results in a failing log.**

On the test machine, you should see a dialog called **Test Instructions** in addition to the empty command window. You may need to press ALT-TAB or minimize the command window.

The test instructions outline 6 different topologies to test.  The tester should manually move the device to all of the topologies shown in that list in any order; once all topologies are complete, the test will automatically complete.

**Q: How do I perform the keyboard logo test in the HCK? There aren't any keyboards in the device list.**

You may need to select the **Inbox** or **Hidden** checkboxes to find the keyboard.

The **Inbox** checkbox should not be confused with a similar checkbox in the WLK New Submission Wizard. It does not necessarily mean you are making an Inbox submission, it is only a way of reducing the number of devices displayed by default on the **Selection** page.

**Q: The “USB xHCI Transfer Speed Test” fails with the following error:**

**MUTT performance tools not found: C:\\usbtest\\fx3perf.bat, GetLastError(): 0x3**

The transfer speed test requires you to attach a SuperMUTT to the system under test when executing the test. The SuperMUTT is delivered to you by the OEM engagement team. You can also acquire additional SuperMUTTs from the following vendor: <http://www.jjgtechnologies.com/mutt.htm>. 

Once you obtain a SuperMUTT, you will need to install the MUTT software package v1.5 from Connect. It will be available on Connect will saturate the bus so that the test can measure the performance.

**Q: No tests are seen for filter drivers on platforms Windows 7 x86 and x64.**

It is by design that the Filter.Driver.Fundamentals feature only applies to Windows 8 filter drivers. You can select the filter driver on a Windows 7 machine and the target will be added to the project, but this particular feature will not apply. Other filter driver features may or may not apply as well, depending on the specifics of the filter target itself. In the case where there are no tests for the filter driver on a downlevel OS, the target information is, however, still included in the project.

**Q: The INF test fails for this INF saying “The service for the function driver must have the SPSVCINST\_ASSOCSERVICE flag.” **

A device driver INF must specify a function driver.  In this case, one is not specified and that is considered a failure.  This driver will not properly install through standard PnP mechanisms, meaning it cannot be deployed through Windows Update or offline.  The driver will also not survive an OS upgrade, or uninstall/rescan operations.  The only way this driver can be deployed is through a custom setup application.  To pass the test and ensure the package can be properly deployed, use Includes/Needs to install the appropriate function driver on the device as well as the filters.  See the [keyboard filter sample in the WDK](http://msdn.microsoft.com/library/windows/hardware/ff539838.aspx) for an example of how to do this properly. 

**Q: When running some cases, I keep getting a pop-up that says “Set to TRUE if device is embedded in the system”. How do I control this input?**

The IsEmbeddedUSBDevice parameter should only be used for USB devices that are physically embedded into a system.  The Windows HCK will automatically detect embedded devices if the system ACPI data is set up properly to reflect the actual USB hierarchy in the system.  If the system is set up properly, embedded devices will have their container ID set to that of the system container, and the Windows HCK will use the container ID to detect embedded devices.  The IsEmbeddedUSBDevice parameter is available for an override for devices that aren't correctly mapped as embedded in system firmware.  The parameter will enable embedded device level testing (slightly different than for external devices), but will still cause the test to fail with an error stating that the container ID did not match the system.  In Windows 8 , you need to be mapped properly in system firmware, so the test will not pass cleanly until the system firmware is implemented properly.

**Q: The “Static Tools Logo test” failed to create the C:\\DVL folder, thus failing the DevFundTests.DvlTest.DvlCheck test. How do I run this test?**

DVL test fails because C:\\dvl folder does not exist and/or a \*.dvl.xml file has not been created.

After the code analysis log and sdv logs are created, you can then generate a dvl.xml file either from the UI or a command prompt.

To generate a dvl.xml file from a command prompt, follow these steps:

1.  In Microsoft Visual Studio, select the driver project file and then right-click to open the project properties. Select **Windows 8 Release** as the **Configuration** and **x64** as the **Platform**.

2.  Open your driver project (.VcxProj) file in Visual Studio. From the **Driver** menu, click **Create Driver Verification Log**.

3.  Verify that both the **Code Analysis Log** and the **Static Driver Verifier Log** files are detected. Click **Create**.

4.  The DVL file for the driver project can be found in the driver project folder, for example, \\myDriverProject\\myDriverName.DVL.XML.

5.  Copy the DVL file(s) to the HCK Client computer’s “%SystemDrive%\\dvl” folder before running the static tools logo test.

**Q: For the “Static Tools Logo test,” If I create the DVL file same source code on the driver, do I have to create another new DVL file if there is a new driver release?**

No, you do not need to re-run Static Tools Logo Test for certification purposes, even if you have made updates to your source code.

However, we recommend that you do so to ensure your driver is of high quality and performs well in the field. Running Static Driver Verifier and Code Analysis, where are both required for DVL, will help surface defects and warnings in your driver and can help improve the quality of your driver in the long run.

**Q: What is the  USB Exposed Port System Test  requirement?**

The exposed port test requires an external USB3.0 hub to be attached to the USB3 system ports.

A USB 3.0 Hub must be attached to each exposed xHCI connector on the system.

A USB 3.0 Hub must be attached to each exposed connector of the xHCI HCK Server.In addition to the USB 3.0 Hub, a low speed and full speed device must be attached to each exposed connector of the xHCI HCK Server. For HCK Server, the USB 3.0 hub provides coverage for SuperSpeed as well as high speed device enumeration.

A USB 3.0 Hub must be attached to each downstream SuperSpeed capable connector. Note that there are no USB-IF certified USB 3.0 hubs currently available on the market since USB-IF has not started USB3.0 Hub compliance program yet. In the meantime, we validated that the following hub works well for Windows HCK purposes: <http://go.microsoft.com/fwlink/?LinkId=253820>.

**Q: USB test cases fail with the error message: "No USB devices found downstream of Xhci". How do I run USB tests in Windows HCK?**

USB devices must be connected to a USB 3.0 HCK Server to run these tests. This is true for all of the tests where you get this error.

The test is failing correctly, as devices need to be tested behind a USB 3.0 HCK Server on Windows 8.All USB devices (1.1, 2.0, 3.0) must be tested behind xHCI HCK Server connected to USB 3 ports with a Windows 8 stack.

For the topology test, will need EHCI and xHCI, SuperSpeed hub, High speed hub, and full speed hub.For xHCI, we recommend Renesas 200, 200A, 201/202 or Fresco Logic 1009, 1100. For USB 3 hub, there are none certified on the market since USB-IF has not started the certification program yet, but you can use the following hub: http://go.microsoft.com/fwlink/?LinkId=253820&clcid=0x409

For full speed hub, try looking at compound devices like keyboards or docking stations with hubs in them. A lot of those devices still have old hubs in them. We are also working on making a programmable device that can act as a full speed hub for Windows HCK test purposes.

You then need to connect 6 topologies using recommended hardware for this test to get validated:Attach the Device-Under-Test (DUT) to the host system in the following six topologies:

-   EHCI -&gt; DUT

-   EHCI -&gt; High Speed Hub -&gt; DUT

-   EHCI -&gt; High Speed Hub -&gt; Full Speed Hub -&gt; DUT

-   xHCI -&gt; DUT

-   xHCI -&gt; USB 3.0 Hub -&gt; DUT

-   xHCI -&gt; High Speed Hub -&gt; DUT

**Q: After selecting a Web Service wireless network connected MFP, the test list does not include the Pnpx logo and vertical pairing logo tests for Windows 7 or Windows 8. Is this by design?**

Yes, these tests must be added manually.

**Q: “xHCI Debug Capability Compliance test” fails with the following error message: “with AreNotEqual(0, 0) -- XHCI controller provides debug capability.”**

This failure indicates the xHCI controller that you specified for certification does not have debug capability. All systems that contain one or more xHCI controllers that provide user-accessible ports are expected to provide debug capability.

## Test failures


**Q: Why are Passed tests marked as Failed in HCK Studio?**

If the overall job is marked as a pass, you can safely ignore the failures in the Failure column. The specific task “Copy Test Results \*.txt” is configured as “IgnoreFailureAndContinue,” which means it is expected to fail in some cases.

**Q: Some test jobs failed, but the log file is not saved. How do I troubleshoot this?**

When a test fails without logs, look at the Parent and Child Job Result Reports in the HCK Manager.

## Test logs


**Q: How do I get the HCK StudioInstall.log and Windows HCK event log**

To find the HCK StudioInstall.log:

1.  Log onto the HCK Studio computer, and open a command prompt.

2.  Type **CD %TEMP%.** This will take you to the folder with the logs in it. Attach HCK\*.log from this folder.

To find the Windows HCK Event log:

1.  Right-click **My Computer**, select **Manage**, and open **Computer Management**.

2.  Expand **Event Viewer**, and then expand **Applications and Services Logs**.

3.  Right-click **HCK – Hardware Certification Kit**, and then select **Save all events as** to save the event log to an .evtx file.

**Q: Is there a log viewer tool for checking logs? I know we have to install HCK Studio to check logs, but in the previous WLK, we could check the logs with the log viewer tool.**

Windows HCK Setup supports the installation of a standalone HCK Studio.  Run HCKSetup and select the Install option.  On the next page, you can choose to install **HCK Studio Only** or **HCK Server** + **HCK Studio**.  On machines that are not running Windows Server 2008 R2 x64, the **HCK Server + HCK Studio** option is grayed out and only the **HCK Studio Only** option is selectable.

**Q: When opening the log for a test failure, there is no explanation of the failure. It just says "Fail" after pages of log text. Is this an issue?**

This is most likely a problem in the driver under test, holding an IRP. When you see these messages getting printed to the console on the test machine, follow these steps:

1.  Break into the kernel debugger (make sure to enable KD on test machine first).

2.  Examine threads running under the test process (Te.exe - !process 0 0 Te.exe).

3.  See if any IRPs are stuck in your driver.

## Object model


**Q:  What is the object model?**

The object model can be accessed programmatically to automate custom test scenarios. The release notes have a section on “Using the Automation Interfaces” that explains how to use the OM and includes samples.

**Q: Windows HCK object model function - CreateTarget from HW ID is not working properly. Is this by design?**

OMUtil is deprecated. Use your OM code to accomplish your goal.

**Q: If a machine is in a debug state at the time a project is created, Windows HCK will allocate a test to it, but actually scheduling that test to the machine will fail with an exception. The object model should not allocate tests to machines in a debug state.  Also, if a machine goes into a debug state during execution of the project, the object model should allow for re-queuing the tests allocated to the machine in the debug state so that they can be picked up by other machines.**

This is the correct behavior.

When a test is scheduled, all the targets’ machines for that test are checked.

Any machines that are not in a running state (manual, debug, etc.) are excluded from the list of machines that can run this test.

Filter out any machine that has been moved out of the Product instances machine pool.

If there are no machines available, an error is produced.

When specifying a list of machines to run a test, follow these steps:

1.  Get a list of all of the machines that have targets for that test.

2.  Filter based on running state.

3.  Filter out any machine that has been moved out of the Product instances machine pool.

4.  Filter out based on the list that was passed in.

If there are no machines left to run the test, then an error is thrown.

**Q: Where can I get more info about the Windows HCK object model?**

The Windows HCK object model is a fully capable API interface that allows a customer to create tools and additional scripts to automate common tasks.

We do have a sample code that will enumerate through all tests in a project and rerun all of the tests that are not currently passing.

The script is a PowerShell script. To run this, please see the information in the Windows HCK help documentation.

## Submission packages


**Q: There are three options to select when creating an .hckx submission package for certification. Because we don't have a store certificate or certificate file, we just selected “Do not sign” to create a package. Can we provide the unsigned log file to our customer and have them sign it before submitting for a system certification?**

Yes, you can complete system testing by selecting system testing and pointing to the system you want to test in your machine pool.  After you complete testing, you create the .hckx file and send it to the OEM to submit for their certification.  They sign the file with their VeriSign signature so we know the submission is from them.  It doesn’t matter to us if you or the OEM does the testing, as long as we know that the system they want to certify passed testing.

**Q: The submission process has new buttons "Add driver Folders" and "Merge Package.” What do these do? Does this means submission packages must now contain all loaded drivers by default?**

The **Add Driver Folders** capability is specific to device testing. Device driver vendors can include their drivers directly in the package for uploading to the dashboard. **Merge Package** is used to include multiple projects in the same package for uploading to the dashboard.

**Q: After I complete testing want to create the test package, there are three signing options to choose from. Which one should I choose?**

Select one of the following options to submit your package as either signed or unsigned.  Note:  All official submissions to Microsoft must be signed.

-   To submit your package as unsigned, for example to send to support for debugging purposes, select **Do not sign**.

-   To submit your package to the dashboard for submission and to store certificates in a repository (most common scenario), select **Use the certificate store**.

-   To submit your package to the dashboard for submission and to store certificates as individual files, select **Use a certificate file**.

Signing of the package is used to validate that the test results came from the person or company that has logged into the dashboard. This is equivalent to the signing that happens within WST today. We're simply moving that into the HCK.

**Q: After viewing the .hckx file in HCK Studio, it can’t be read by other projects.**

**Q: If I view the file in HCK Studio, HCK Studio looks like a simple viewer. To read other projects, do I have to quit or restart HCK Studio?**

To view your other projects after you are done reviewing a .hckx package, click the Connect link, select HCK Server and then click OK. You can now view the current data for all of your projects.

**Q: With WLK 1.6, the Submission Status Report is displayed when we open a CPK file, and we can confirm the application and expiration dates of errata. Is this available with the Windows HCK**?

In HCK Studio, the status report is a combination of the **Results** page (where applied filters appear), and the right-side summary, which shows products detected and numbers of tests passed, failed, or not-run.

**Q: I can’t upload my .hckx package to the dashboard. My file size is greater than 200 MB, and I’m using the 32-bit version of Internet Explorer. Is there a workaround for this?**

Yes, please use the 64-bit version of Internet Explorer to submit the file.

## Hyper-V


**Does HCK include separate tests for Hyper-V certification?**

HCK does not include separate certification tests for Hyper-V. Any device, driver, connected device, or system that is certified for Windows Server will work for Hyper-V.

All Windows Server systems are tested for Hyper-V support as part of core certification testing.

## Support


**Q: How can I open a support case?**

You can open a premier support case with your TAM. Or, you can go to <https://support.microsoft.com/oas/default.aspx?&prid=11880> and sign in with your Microsoft account.For the Windows HCK support options, go to <https://support.microsoft.com/oas/default.aspx?&prid=14634>

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Windows%20Hardware%20Certification%20Kit%20%28HCK%29%20FAQ%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




