---
title: Windows Hello face authentication
description: Windows Hello face authentication
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: A14A4CA7-B911-49B6-90FA-7BE293E19662
---

# Windows Hello face authentication


Microsoft face authentication in Windows 10 is an enterprise-grade identity verification mechanism that's integrated into the Windows Biometric Framework (WBF) as a core Microsoft Windows component called Windows Hello. Windows Hello face authentication utilizes a camera specially configured for near infrared (IR) imaging to authenticate and unlock Windows devices as well as unlock your Microsoft Passport.

### Key benefits and capabilities of Windows Hello face authentication

These are the key benefits to using the Windows Hello face authentication:

-   Facial recognition across all Windows 10-based devices and platforms with compatible hardware (near IR sensor).
-   A user-friendly interface that provides single sign form of verification to unlock your Microsoft Passport.
-   Enterprise-grade authentication and access to Microsoft Passport Pro supported content, including network resources, websites, and payment instruments.
-   The ability to provide a consistent image (using IR) in diverse lighting conditions that also allows for subtle changes in appearance including facial hair, cosmetic makeup, and so on.

### Scenarios

The two primary scenarios for Windows Hello face authentication in Windows 10 are authentication to log on or unlock, and re-authentication to prove you are still there.

**Authentication**

|                       |                                                                                     |
|-----------------------|-------------------------------------------------------------------------------------|
| average duration      | &gt; 2 seconds                                                                      |
| expected frequency    | High                                                                                |
| frequency description | Occurs every time a user wants to unlock their device or moves past the lock screen |

 

**Re-authentication**

|                       |                                                                                                          |
|-----------------------|----------------------------------------------------------------------------------------------------------|
| average duration      | &gt; 2 seconds                                                                                           |
| expected frequency    | Low                                                                                                      |
| frequency description | Occurs when an application or web site would like to re-verify that the user is in front of their device |

 

### How it works

The Windows Hello face recognition engine consists of four distinct steps that allowWindows to understand who is in front of the sensor:

1.  **Find the face and discover landmarks**

    In this first step, the algorithm detects the user’s face in the camera stream and then locates facial landmark points (also known as alignment points, represented by green dots below), which correspond to eyes, nose, mouth, and so on.

2.  **Head orientation**

    To ensure the algorithm has enough of your face in view to make an authentication decision, it ensures the user is facing towards the device +/- 15 degrees.

3.  **Representation vector**

    Using the landmark locations as anchor points, the algorithm takes thousands of samples from different areas of the face to build a representation. The representation at its most basic form is a histogram representing the light and dark differences around specifics points. No image of the face is ever stored – it is only the representation.

4.  **Decision engine**

    Once there is a representation of the user in front of the sensor, it is compared to the enrolled users on the physical device. The representation must cross a machine-learned threshold before the algorithm will accept it as a correct match. If there are multiple users enrolled on the system, this threshold will increase accordingly to help ensure that security is not compromised. The result of this increase is a lower True Positive rate across all accounts, each time a new account on the device is enrolled in Windows Hello face authentication.

### Enrollment

Enrollment is the step of generating a representation or set of representations of yourself (for example if you have glasses you may need to enroll with them and without them) and storing them in the system for future comparison. This collection of representations is called your enrollment profile. Microsoft never stores an actual image and your enrollment data is never sent to websites or applications for authentication.

From a security and data integrity perspective, Microsoft believes enrollment needs to be its own distinct step to ensure it is only ever you in front of the sensor. Windows will never automatically update your enrollment information – you are always in control. This helps ensure that your profile is not polluted by people nearby or by any other mechanism that might compromise robustness and security. Your profile can be manually updated, reset, or removed any time you choose.

Most users will likely need to enroll once per device. Additional enrollments are needed for users that:

-   Occasionally wear certain types of glasses
-   Have had major changes to facial shape or texture
-   Move to environments with high ambient near IR light (for example, if you take your device outside in the sunshine)

### Benefits of near infrared

After the release of face recognition with the first Kinect on Xbox 360, Microsoft learned that relying on ambient light to provide a consistent image provided a poor user experience. People live and work in a variety of environments, with an assortment of lighting conditions. Traditional color recognition systems rely on turning up the brightness, exposure, or other settings to create a useable image – all of which expose artifacts that impact the robustness of the system.

|                                                                             |                                    |                                          |
|-----------------------------------------------------------------------------|------------------------------------|------------------------------------------|
| scenario                                                                    | Color Image from integrated Camera | IR Image from Microsoft Reference Sensor |
| Low light representative of watching TV or giving a PowerPoint presentation | ![](images/hello1.png)             | ![](images/hello2.png)                   |
| Side lighting when sitting near a window or desk lamp                       | ![](images/hello3.png)             | ![](images/hello4.png)                   |

 

Using IR also helps with spoofing because it helps prevent the most accessible attacks.

![](images/hello5.png)

An example of a set of hardware built to achieve this type of image requires, at minimum, a 640x480 monochrome sensor with the following components is needed to meet the specification:

-   **Lens**
    -   F/\#&lt; = 2
    -   EFL &lt;= 1.24
    -   Pixel size= 3um or less
    -   Image circle radius = 1.44mm
    -   Resolution&gt; =640 x 480
    -   IR Wavelength: 860nm +/- 40nm
-   **IR Illumination**
    -   Power&gt; = 1 mW
    -   FOV = 40 degree FWHM
    -   Wavelength: 860nm +/- 40nm
-   **Filter (for unpolarized light)**
    -   Transmit: 99% @ 860nm for 0 to 30 degrees
    -   Reflect/absorb: 99% 300nm-830nm and 890nm-1000nm for 0 to 30 degrees

For complete information on how to build a sensor that meets the requirements of Windows Hello face authentication, please contact your Microsoft representative for the hardware specification or mail askmpcdevices@microsoft.com for more information. Windows Hello face authentication is only supported with IR sensors built to this specification.

### How accuracy is measured

When Microsoft talks about the accuracy of Windows Hello face authentication, there are three primary measures used: False Positives, True Positives, and False Negatives.

|                      |                                                                                                                                                                                                                    |                                                                                                                                                                                              |                                                                                                       |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|
| Term                 | False Positive                                                                                                                                                                                                     | True Positive                                                                                                                                                                                | False Negative                                                                                        |
| Description          | Sometimes also calculated as a False Acceptance Rate, this represents the likelihood a random user who obtains physical access to your device will be recognized as you. This number should be as low as possible. | The True Positive rate represents the likelihood a user will be correctly matched to their enrolled profile each time they are positioned in front of the sensor. This number should be high | Represents the likelihood a user is not matched to their enrolled profile. This number should be low. |
| Windows 10 Algorithm | Less than 0.001% or 1/100,000 FAR                                                                                                                                                                                  | Greater than 95% with a single enrolled user                                                                                                                                                 | Less than 5% with a single enrolled user                                                              |

 

Accounting for errors in measurement is important, so Microsoft categorizes them in two ways: bias errors (systematic errors) and random errors (sampling).

### Bias errors

Bias errors may occur as a result of not using data that is representative of the environments and the conditions in which the algorithm is used. This type of error can result from different environmental conditions (such as lighting, angle to sensor, distance, and so on) as well as hardware that is not representative if shipping devices.

### Random errors

Random errors results from using data that doesn’t match the population diversity that will actually be using the feature. For example, focusing on a small set of faces without glasses, beards, or unique facial features.

### Training and validation

To help minimize the errors described above, Microsoft has invested in a extensive data of world representative user faces.

By Windows 10 general availability, they will have collected over 30,000 unique faces. Once data is collected, it is stored in a secure facility on the Microsoft campus. This data is only used for internal research and development.

The face capture involves six distinct recordings that represent different angles and movements of the subject’s face when using a face authentication capable device. To help ensure a broad range of diverse user representations, the following categories are used:

-   Age
-   Distance from sensor
-   Ethnicity
-   Facial hair
-   Gender
-   Girth
-   Hair type
-   Height
-   Eye wear
-   Location in field of view
-   Piercings
-   Sensor position
-   Sensor type
-   Skin color
-   Lighting
-   Environment
-   Etc.

The resulting data is divided into three groups; one group is used in machine learning of the decision engine threshold. The second group is used for the detection and landmark algorithm, and the third group is used to verify system accuracy. A unique user is never present in more than one group to avoid over fitting our model to a specific type of user or environment.

### Verifying the False Positive rate

To verify the False Positive rate, between 1,200 and 2,000 unique users are used to generate over 4 million test combinations. Of the six distinct recordings from each user, one is randomly chosen to enroll the user and two are randomly chosen to verify their True Positive rate. Recordings from the remaining users are used to verify the False Positive rate. This test is run multiple times using different permutations of data in order to represent various parts of the world. We represent the data as an ROC curve and then evaluate each false positive and false negative to understand how to improve the algorithm.

![](images/hello6.png)

## Related topics


[Manage identity verification using Microsoft Passport](http://go.microsoft.com/fwlink/?LinkId=624460)

[Windows Biometric Framework API]( http://go.microsoft.com/fwlink/?LinkId=624455)

[Windows Hello OEM and IHV app scenarios](p_phpartappdev.windows_hello_oem_and_ihv_app_scenarios)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Windows%20Hello%20face%20authentication%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





