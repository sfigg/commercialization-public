---
title: Hardware Lab Kit (HLK) for Near Field Communication (NFC)
Description: Hardware Lab Kit (HLK) for Near Field Communication (NFC)
ms.assetid: 1F579C0D-DDB1-43CE-A1BF-7EDA65BB592C
author: sapaetsc-msft
ms.author: sapaetsc
ms.date: 08/28/17
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---

# Hardware Lab Kit (HLK) for Near Field Communication (NFC)

The HLK for NFC validates that the NFC driver implementation meets <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn905575(v=vs.85).aspx">Microsoft specifications</b>. Although the tests are able to be run manually, for automated, faster and more reliable testing for the HLK NFC test suite, we recommend that partners acquire the NFC Interoperability Test Tool (NITT).

The NITT simulates Type 1, 2, 3, and 4 NFC forum tags. The NITT has a robot arm that moves an RF shield, simulating tapping/un-tapping operations for Peer-to-Peer and Card Emulation scenarios. The following image illustrates the NITT setup.

![](../images/nitt_setup.jpg)

The NITT is powered with an external power supply of 7.5v and is connected to the client PC.

To acquire the NITT, use the following contact information:

`JJG Technologies LLC 1034 231st Pl NE Sammamish, WA 98074  Phone: (206) 304-1921 Fax: (208) 298-0623 inquiry@jjgtechnologies.com`

After setting up the <xref hlink="https://msdn.microsoft.com/en-us/library/windows/hardware/dn939963(v=vs.85).aspx">HLK test framework</b>:

## Hardware requirements

-   Device with NFC chip that implements the NFC driver DDIs and is subject to compliance tests (referred to as Device Under Test (DUT))
-   Desktop PC with USB port (PC client)
-   NITT board (if available) connected to the PC client
-   Device with NFC chip that implements the Near Field Proximity DDIs (NFC client)
-   Smart card reader connected to the PC client (either by USB or embedded in the PC client)

>[!NOTE]
The PC client requires the installation of the Universal C Runtime. This package is available directly from the <xref hlink="https://www.microsoft.com/en-us/download/details.aspx?id=48234">Microsoft Download Center</b>.


## Test execution

## Before you run the test

-   Make sure HLK client is deployed to DUT.
-   Place the DUT on top of the NITT board NFC antenna.
-   Place NFC client or smart card reader, depending on the test being run, below the NFC antenna and the RF shield of the NITT.
-   Make sure the PC client has the Universal C Runtime installed.
-   Make sure DUT, NFC client and PC client have network connections. If the DUT or the NFC client is a phone, you will need the Virtual Ethernet tool to be able to connect to the phone.

The HLK studio/controller deploys and runs test cases on the DUT but some intervention on the tester’s part is required. For test cases where manual intervention is required, the helper binaries need to be launched manually. In order to do so, the NFC and PC clients need to have the following setup:

## NFC client

-   Create a working folder, and copy TAEF binaries corresponding to the client architecture from the HLK controller to the working directory. For a typical HLK studio setup, the TAEF binaries will be located in the following directory: `C:\Program Files (x86)\Windows Kits\10\Testing\Runtimes\TAEF\<arch>\*\MinTE\*`

    Where &lt;arch&gt; is either x86, x64, arm, arm64.

-   Copy NfcRemotePeerService.dll from the following HLK Studio location to the working directory created above: `C:\Program Files (x86)\Windows Kits\10\Hardware Lab Kit\Tests\<arch>\NFC\NfcRemotePeerService.dll`

    Where &lt;arch&gt; is either x86, amd64, arm, arm64.

## PC client (\*setup if using NITT)

-   Create a working folder, and copy TAEF binaries corresponding to the client architecture from the HLK controller to the working directory. For a typical HLK studio setup, the TAEF binaries will be located in the following directory: `C:\Program Files (x86)\Windows Kits\10\Testing\Runtimes\TAEF\<arch>\*\MinTE\*`

    Where &lt;arch&gt; is either x86, x64, arm, arm64.

-   Copy NfcNittController.exe from the following HLK studio location to the working directory created above: `C:\Program Files (x86)\Windows Kits\10\Hardware Lab Kit\Tests\<arch>\NFC\NfcNittController.exe`

    Where &lt;arch&gt; is either x86, amd64, arm, arm64.

-   Copy MuttUtil.dll from the following HLK studio location to the working directory created above: `C:\Program Files (x86)\Windows Kits\10\Hardware Lab Kit\Tests\<arch>\usb\MuttTools\MuttUtil.dll`

    Where &lt;arch&gt; is either x86, amd64, arm, arm64.

## PC client (\*setup if not using NITT)

-   Create a working folder, and copy NfcManualHelper.exe corresponding to the client architecture from the HLK controller to the working directory. For a typical HLK studio setup, NfcManualHelper.exe will be located in the following directory:

    `C:\Program Files (x86)\Windows Kits\10\Hardware Lab Kit\Tests\<arch>\NFC\NfcManualHelper.exe`

    Where &lt;arch&gt; is either x86, x64, arm, arm64.

## Running the test using HLK

## HLK Studio

-   In HLK studio, select the test from the “Tests” tab as per following image:

    ![](../images/nfc_tests_tab.png)

-   Click **Run Selected**
-   If you are running the tests manually (without the NITT) then change the Parameters value from **nitt** to **manual**, as shown in the following image:

    ![](../images/nfc_change_parameters_value.png)

## NFC client

-   Open the command prompt, and go to the working folder created above
-   Run the following command: `TE.exe NfcRemotePeerService.dll /p:server=<ip_of_dut>`

    Where &lt;ip\_of\_dut&gt; is the IP address of the DUT

-   NfcRemotePeerService.dll will connect to the test running on the DUT and will receive commands from the test. These commands will instruct NfcRemotePeerService.dll on when to create Near Field Proximity publications and subscriptions on the NFC client. When the DUT and the NFC client are tapped together, the publications and subscriptions will fire, exercising NFC’s Peer-to-Peer scenarios.

## PC client (\*setup if using NITT)

-   Open the command prompt, and go to the working folder created above
-   Run the following command: `nfcnittcontroller.exe -server <ip_of_dut> -tagIndex <tag_index> -reader <reader_name>`

    Where &lt;ip\_of\_dut&gt; is the IP address of the DUT, &lt;tag\_index&gt; is the NITT board tag index, and &lt;reader\_name&gt; is the name of the smart card reader connected to the PC client. Possible values of &lt;tag\_index&gt; are 1, 2, 3, and 4 corresponding to NFC Forum compliant T1T, T2T, T3T, and T4T, respectively. To find the name of the smart card reader connected to the PC client, you can use the <placeholder>-listReaders</placeholder> option of NfcManualHelper.exe (see below).

-   NfcNittController.exe will connect to the test running on the DUT and will receive commands from the test. These commands will instruct NfcNittController.exe on when to perform actions with the NITT. These actions are performed automatically and don’t need any manual interaction. Example actions: Opening and closing the RF shield, turning on and off a tag on the NITT.

## PC client (\*setup if not using NITT)

-   Open the command prompt, and go to the working folder created above
-   Run the following command:

    `nfcmanualhelper.exe -server <ip_of_dut> -reader <reader_name>`

    Where &lt;ip\_of\_dut&gt; is the IP address of the DUT and &lt;reader\_name&gt; is the name of the smart card reader connected to the PC client. To find the name of the smart card reader connected to the PC client, you can run the following command:

    `nfcmanualhelper.exe -listReaders`

-   NfcManualHelper.exe will connect to the test running on the DUT and will print instructions on what to do while the test is executing. Example instructions: Tap DUT onto NFC client, tap DUT onto smart card reader, tap DUT onto Near Field Proximity tag.

<info></info>



