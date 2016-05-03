---
title: Exercise 1 - Assess the Device's Audio Latency Performance for Communications Scenarios
description: In this exercise, we’ll run the following matrix of audio latency tests that generate latency stats for various latency modes supported in Windows.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 2264F1B3-27BC-4140-9A90-0532604298BC
---

# Exercise 1 - Assess the Device's Audio Latency Performance for Communications Scenarios


In this exercise, we’ll run the following matrix of audio latency tests that generate latency stats for various latency modes supported in Windows. The modes that the test can be run in include:

-   Default mode – Generates default out-of-box audio latency.

-   Raw mode – Removes Audio Processing Objects (APOs).

-   Low Period – New low latency mode for near real-time scenarios such as Skype.

The test renders test sounds that are captured by the microphone.

**Note**  This step-by-step guide is also available to view as a lab video on Channel 9, which features videos for developers from the people building Microsoft Products and Services: <https://channel9.msdn.com/Events/WinHEC/2015/OWDHOL301>

 

## Step 1: Prepare the system to run the tests


1.  Install the Hardware Lab Kit (HLK) controller.

2.  Right-click on the **Start** menu and click on **Command Prompt (Admin)**.

3.  Navigate to the **\\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\TE** folder.

4.  Copy the following tests and tools from the Hardware Lab Kit (HLK) controller to your test machine in: C:\\Performance\\Media
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\nttest\\multimediatest\\wmmftest\\glitchfreetaeftests.dll
    -   \\\\&lt;controller-name&gt;\\TaefBinaries\\&lt;processor architecture&gt;\\\*
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\Performance\\WindowsXRay\\tools\\EtwPattern.dll
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\test\\MediaEngineTest.exe
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\audio-test\\bin\\audiospew.exe
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\audio-test\\bin\\audiostreaming.dll
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\nttest\\multimediatest\\wmmftest\\rws.exe
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\nttest\\multimediatest\\wmmftest\\audio-fidelity-stress.xml
    -   \\\\&lt;controller-name&gt;\\Tests\\&lt;processor architecture&gt;\\audio-test\\bin\\LatencyTest.dll

5.  Set the volume level on the speakers to 100%.

## Step 2: Run the test in default mode


1.  Run the following command:

    ``` syntax
    te.exe latencytest.dll /name:LatencyTest::Vanilla
    ```

2.  View the **Average**, **Max**, and **Min** delay values that are sent to the command prompt window.

## Step 3: Run the test in raw mode


1.  Run the following command:

    ``` syntax
    te.exe latencytest.dll /name:LatencyTest::Raw
    ```

2.  View the **Average**, **Max**, and **Min** delay values that are sent to the command prompt window.

## Step 4: Run the test in low latency mode


1.  Run the following command:

    ``` syntax
    te.exe latencytest.dll /name:LatencyTest::LowPeriod
    ```

2.  View the **Average**, **Max**, and **Min** delay values that are sent to the command prompt window.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wpt\p_wpt%5D:%20Exercise%201%20-%20Assess%20the%20Device's%20Audio%20Latency%20Performance%20for%20Communications%20Scenarios%20%20RELEASE:%20%285/3/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




