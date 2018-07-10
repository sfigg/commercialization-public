---
title: Retail demo experience (RDX)
description: Design your retail demo experience
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
author: kpacquer
ms.author: kenpacquer
ms.date: 7/25/2018
ms.topic: article
ms.prod: windows-hardware
ms.technology: windows-oem
---
# Customize the Retail Demo Experience (RDX)

Showcase your new devices on the retail sales floor with a rich, engaging experience with the Windows Retail Demo Experience (RDX). 

* **Attract shoppers with demo videos**. We’ve included videos that show off the latest Windows 10 features. Add your own videos to show off your own unique hardware, apps, and services.
* **Let shoppers try it out**. Shoppers can experience the device first-hand, working with sample data in contacts, photos, email and messaging apps.

Retail mode works best when demo devices have high-speed Internet access.

There are 4 customizable components of RDX:

* **Attract loop app**: a perpetually looping video or images intended to attract customers to the device. The content is intended to draw the customer in to interact with the device.
* **Retail Demo app**: an app that launches automatically when a customer ends the attract loop by tapping a keyboard key, clicking the mouse, or touching the screen (if touchscreen) while the Attract loop app plays. The Retail Demo app educates the customer about the device, Windows, and associated services available with the purchase of the device. After a period of inactivity, the attract loop begins playing again.
* **Digital Fact Tag app**: an app that launches automatically at the same time as the Retail Demo app.  This app sits on the right side of the screen and displays key information in a perpetual way for the shopper.  The app cannot be closed by the shopper, nor do apps display above or behind the app.
* **Demo mode content**: content the customer can interact with during the demo. This includes pre-loaded (image) or downloaded app content, documents, music, photos, videos, and Store apps.
* **Setup and operation of retail demo mode**: determine RDX enablement on the device, automatic device clean-up between customers, and automated removal of RDX content after purchase.  

<!-- [!NOTE]  This document is designed for an audience of OEM marketing and engineering teams. -->

## Including demo content in device image

You can use the standard Microsoft demo content included in the Retail Feature on Demand package. Additionally, you can add demo content that also becomes available on the device during demo mode. If the device gets connected to the internet, this content can be updated throughout the day via the Retail Demo online services. 

The content you store on the image should not be time-sensitive, seasonal, or require an internet connection to update, as there is no guarantee an internet connection will be available to devices in demo mode. 

## Attract loop content

The retail demo experience begins with a video, which plays repeatedly while the device is idle. When the video attract loop plays, the Start screen is restored back to a pre-set state. Photos and videos taken by previous customers are deleted and the demo photos are also restocked. 

> [!Important]
> The device must be plugged into AC power for the video attract loop to start. 

Create your own custom attraction video that highlights key features of your device using the guidance below.

### Design recommendations

Use full-screen imagery to focus on key selling points (KSPs) of the device. Our research shows that shoppers are attracted to loops that show off hardware features with fast moving graphics and colorful imagery, but loops that function as advertisements don't resonate with shoppers. 

Limit the video message to 1 or 2 KSPs. The loop is designed to get shoppers to interact with device. If the attract loop looks like an advertisement, shoppers are less likely to pay attention and interact with the system.

Avoid text in your video. Videos without text are easier to scale across multiple markets and locales since there are no localization costs. In addition, shoppers typically view only part of the video, so your text might not be viewed in its entirety.

We strongly recommend that you use the attract loop to show how your brand, apps, services, and the devices themselves are differentiated from your competitors. 

### Requirements

The following are the specifications for the attract loop video.

* Videos must be less than 60 seconds
* Must not include an audio track
* Acceptable compression format: H.264/MPEG4
* Videos must be designed so they don’t cause screen burn even when played for hours at a time for the entire shelf life of the device
* The source video should be appropriate quality to ensure the best possible playback on the device based on its graphics rendering capabilities (resolution, color capabilities, and graphics processing power).
* We recommend matching the video resolution to the optimal resolution on each device when possible. Otherwise, resolution should be 1920 x 1080.  

### Upload the video to the Microsoft Retail Demo Ingestion Portal (RDIP)

Once you’ve created your video attract loop, include it in a package using the [RDX Submission Tool](https://www.windowsretaildemo.com). The RDIP tool enables content to be targeted by language, region, and model. For more details on using the portal, please see the RDX_Submission_Tool_Onboarding_V2 document.

### Add the video to the image

To include the attract loop video on the image, it must be named: **attract.wmv**

Create the default set of content first. This content should be appropriate for all regions and languages the device will ship to. This content is stored in the \Neutral file path:

* `%programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM\Content\Neutral\AttractContent\attract.wmv`

**For devices sold in multiple regions or with multiple languages:**
You can add region and/or language-specific versions for attract loops. When there is no region-specific or language-specific content, the default (\Neutral) content is displayed.
For a complete list of supported languages and locales, see Locale Identifier Constants and Strings.

* `%programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM\Content\`[_locale_]`\AttractContent\attract.wmv`
* `%programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM\`[_region_]`\Content\Neutral\AttractContent\attract.wmv`
* `%programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM\`[_region_]`\Content\`[_locale_]`\AttractContent\attract.wmv`

Example: Canada-specific content in French:

* `%programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM\CA\Content\fr-ca\AttractContent\attract.wmv`

## Retail Demo app

The Microsoft Retail Demo app is a Windows-provided in-box app. Depending on the structure of the data content, the app displays either navigation tabs at the top or a home screen with tiles. As a shopper selects each navigation tab or tile, the app displays appropriate content pages. 

![Example of Navigation Tabs experience](images/rdx-retaildemoapp.png)
Example of Navigation Tabs experience

![Example of Home page tiles experience](images/rdx-homepagetiles.png)
Example of Home page tiles experience

Each content page contains one or more sections that are comprised of media (images and video), text copy, and Call-to-Action (CTA) buttons or links to encourage the shopper to explore the featured content. If a content page contains multiple sections, a feature bar displays at the bottom. The customer can move between content sections of the page by selecting features in the bar or by scrolling up and down the page.

The default content for the Retail Demo app includes navigation tabs (or Tiles) for Windows and Office which highlight key features as determined by the Microsoft marketing team. 

> [!NOTE]
> You must pre-install Office 365 to the device to ensure all pen and inking functionality featured in the ‘Office’ tab is available during RDX.

In addition, OEMs and Retailers can add and customize their own content for the Retail Demo app. 

If a customer closes the Retail Demo app, they see the desktop of the device with the Digital Fact Tag to the right (unless the language reads right-to-left, in which case then the Digital Fact Tag is in the upper left corner)

### Build your Retail Demo app content

Customize the Retail Demo app to show off your device using the Microsoft Retail Demo Ingestion Portal (RDIP) at [http://www.windowsretaildemo.com](http://www.windowsretaildemo.com), which offers a friendly user interface. More detailed instructions on using the tool to customize RDX are available in the RDX_Submission_Tool_Onboarding_V2 document. If you don’t currently have an account for RDIP, or access to the onboarding document, please reach out to your Account Manager with the Microsoft Account (MSA) you wish to associate with access.
The RDIP tool offers a visual walk through of content build as well as the ability to download the final media and JSON packages to place in your device image. Doing so makes this content available to the shopper even if the retailer never connects the demo device to the internet.
OEMs can specify a theme color, navigation selected-button color, and logos for the Retail Demo app, in addition to adding unique page content. Colors and logos are specified at the app level, and content is specified at the page level. OEMs can also choose between one of three templates: Hero, Immersive Hero, and Mosaic (described below).
Important: Content included in the device image must not include any time sensitive material (for example, seasonal pricing or offers).

### Template options, examples, and requirements

There are four templates available for the Retail Demo app content sections: Hero, Feature, Immersive Hero, and Mosaic. 

#### Hero template

Use the Hero template to showcase key content. A full-bleed image must be used – this can be combined with a title, copy, and/or call-to-action link. This template can also support full-bleed videos. All text in a video must be embedded into the media.
Below are the media and copy requirements for the Hero template:

Element	Requirements

Image or video	Images must be PNG, have a transparent background and no padding; videos must be .mp4 files. Resolution recommendations are provided by the RDIP tool when you build your content and vary by template.
Logo	946 x 220 pixels; images must be PNG, have a transparent background and no padding
Header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Sub header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Paragraph	140 characters, not counting spaces in between characters. 

Call-to-action button text	We recommend an 11 character limit, not counting spaces in between characters. 
There are 4 actions that can be set for a Call-to-action button:
1.	Jump to another page within group
2.	Launch an app
3.	Launch the default browser and go to a URL
4.	Open Media (image, video, or document)
> [!NOTE]
> Keep in mind that if you are building content for offline devices, CTA buttons should not open URLs as this will create a poor user experience.
Legal text	150 characters, not counting spaces in between characters. 

Here is an example of a Hero template using a full-bleed video:
  
#### Immersive Hero template

Use the Immersive Hero template when there is a specific part of the device, or a specific feature, you want to call out. You can switch the position of the copy and the image for an alternative placement. A combination of title, copy, and/or a call-to-action link can be used here. 
Below are the media and copy requirements for the Immersive Hero template:
Element	Requirements
Image or video	Images must be PNG, have a transparent background and no padding; videos must be .mp4 files. Resolution recommendations are provided by the RDIP tool when you build your content and vary by template.
Logo	946 x 220 pixels; images must be PNG, have a transparent background and no padding.
Header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Sub header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Paragraph	140 characters, not counting spaces in between characters. 
Call-to-action button text	We recommend an 11-character limit, not counting spaces in between characters. 
There are 4 actions that can be set for a Call-to-action button:
1.	Jump to another page within group
2.	Launch an app
3.	Launch the default browser and go to a URL
4.	Open Media (image, video, or document)
> [!NOTE]
>  Keep in mind that if you are building content for offline devices, CTA buttons should not open URLs as this will create a poor user experience.
Legal text	150 characters, not counting spaces in between characters. 
Below are a couple of examples of the Immersive Hero template – one with video and one with an image.
 

### Mosaic template

Use this template to show components as a graphic montage. This template is very versatile because you can use it with or without a text file. It always extends the full content area. Use the mosaic to support a theme, communicate an idea, or present top picks around particular topics. Add call-to-action links if you need to direct users to another page. CTAs are typically centrally aligned and appear at the bottom of the tile.
The mosaic layout follows several predefined patterns, depending on the number of tiles you wish to include. The layout will appear as follows: 
 
Below are the media and copy requirements for the Mosaic template:
Element	Requirements
Mosaic layout	Mosaic template allows for 2 – 4 tiles.  The layout of the tiles is auto-generated based on number of tiles input into the RDIP tool. The layout is not adjustable, so you will need to place tiles in the correct order for the layout. 
Tile background image 	Resolution varies based on number of tiles used, but generally images should be square or 2:1 resolution appropriate to the screen; images must be PNG, have a transparent background and no padding
Tile paragraph image	Recommend 220 x 220 pixels; images must be PNG, have a transparent background and no padding
Logo	946 x 220 pixels; images must be PNG, have a transparent background and no padding.
Header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Sub header	We recommend a 55-character limit, not counting spaces in between characters. This allows room for localization.
Paragraph	140 characters, not counting spaces in between characters. 
Call-to-action button text	We recommend an 11-character limit, not counting spaces in between characters. 
There are 4 actions that can be set for a Call-to-action button:
5.	Jump to another page within group
6.	Launch an app
7.	Launch the default browser and go to a URL
8.	Open Media (image, video, or document) 
> [!NOTE] 
>  Keep in mind that if you are building content for offline devices, CTA buttons should not open URLs as this will create a poor user experience.
Legal Text	Mosaic does not support legal text on tiles due to tile size. 
Here is an example of a 3-tile Mosaic layout:

 
### Add Retail Demo app content packages to OEM image

You will need to go through the process outlined below for each language you intend to provide Retail Demo app content for. The process will take you through building content for specific regions or locales, and storing it in the appropriate file path. 
Create the default set of content first. This content should be appropriate for all regions and languages the device will ship to. This content is stored in the \Neutral file path:
For devices sold in multiple regions:
You can add region and/or language-specific versions for attract loops. When there is no region-specific or language-specific content, the default (\Neutral) content is displayed.
For a complete list of supported languages and locales, see Locale Identifier Constants and Strings.

>[!NOTE]
> To support languages, your images will need Retail Demo Mode language packs.

Add the content to the image:
1.	After building your content on the Retail Demo Ingestion Portal (www.windowsretaildemo.com), download and save locally. 
2.	Save the file as oem.json.
3. 	On the computer on which you’re building your device images, copy the default (“neutral”) oem.json file to 
    - %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\Content\Neutral\HubContent\oem.json.

In addition, create a set for US-English. You must include files for both the default and US-English, regardless of which other languages you support:
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\US\Content\en-us\HubContent\oem.json

File paths for localized content (optional):
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\Content\[locale]\HubContent\oem.json 
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\[region]\Content\Neutral\HubContent\oem.json
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\[region]\Content\[locale]\HubContent\oem.json

Example: Canada-specific content in French:
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\CA\Content\fr-ca\HubContent\oem.json

4.	Create a folder of all assets (images and video) and name the folder oem_assets. Create a zipped version of the oem_assets folder and name it oem.zip.
5.	Copy the oem.zip folder of assets for the Retail Demo app to the default and US-English folders:
  -   %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\Content\Neutral\HubContent\oem.zip
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\US\Content\en-us\HubContent\oem.zip

File paths for localized content (optional):
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\Content\[locale]\HubContent\oem.zip
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\[region]\Content\Neutral\HubContent\oem.zip
  -  %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\OEM
\[region]\Content\[locale]\HubContent\oem.zip
6.	Build the image. 

## Other types of retail demo mode content

In addition to the Retail Demo app and the Attract Loop app, there are other types of content the shopper can see or experience in Retail Demo mode. 

### Library content
Many shoppers use the library content (photos, videos, documents) to fully explore the experience within the many apps available on the device or from the Microsoft Store. It is highly recommended to include this content in your image.

### Apps

We strongly recommend you ensure that the apps included on the device take advantage of the retail demo mode. Not only will your app look amazing for a retail customer, you may even get increased app awareness due to the discovery of your app that leads to post-purchase install.  We recommend the following guidelines when developing a retail demo mode for your app:
* Leverage the RetailInfo API: When a device is in retail demo mode, the apps installed on the device can be aware of the device’s retail mode state so the app experience can also be in a retail mode state. This is done using the IsDemoModeEnabled method of the RetailInfo API. It is up to the app developer to take advantage of the opportunity to create and show off a retail mode state for the app. 
To allow the app to build an experience that is more catered to the device, the app can also query for a collection of retail device properties. Both the IsDemoModeEnabled and KnownRetailInfo properties are described below. 
For more information about the RetailInfo API, see the Windows.System.Profile namespace.
* Show off, but be focused: Use the retail mode version of your app as an opportunity to showcase why it rocks and is a reason to buy a Windows device. Put your best foot forward. Keep the story simple – elevator pitch to land your app’s value prop.  
* Cleanup: Make sure your app cleans up between uses.  
* Minimize error and pop-up dialogs: Error pop-ups invoke a negative experience with the app, Windows and the shopping experience. Minimize pop-ups as much as possible.
For detailed guidance and requirements, see Create an RDX app on docs.microsoft.com. 
RetailInfo API
IsDemoModeEnabled property
IsDemoModeEnabled indicates whether retail mode is active on the device where the app is running. If IsDemoModeEnabled is true, launch the retail mode version of the app, and optionally query for the device’s KnownRetailInfo properties. 
C#
using Windows.Storage;

StorageFolder folder = ApplicationData.Current.LocalFolder;

if (Windows.System.Profile.RetailInfo.IsDemoModeEnabled) 
{
    // Use the demo specific directory
    folder = await folder.GetFolderAsync(“demo”);
}

StorageFile file = await folder.GetFileAsync(“hello.txt”);
// Now read from file
C++
using namespace Windows::Storage;

StorageFolder^ localFolder = ApplicationData::Current->LocalFolder;

if (Windows::System::Profile::RetailInfo::IsDemoModeEnabled) 
{
    // Use the demo specific directory
    create_task(localFolder->GetFolderAsync(“demo”).then([this](StorageFolder^ demoFolder)
    {
        return demoFolder->GetFileAsync(“hello.txt”);
    }).then([this](task<StorageFile^> fileTask)
    {
        StorageFile^ file = fileTask.get();
    });
    // Do something with file
}
else
{
    create_task(localFolder->GetFileAsync(“hello.txt”).then([this](StorageFile^ file)
    {
        // Do something with file
    });
}
JavaScript
if (Windows.System.Profile.retailInfo.isDemoModeEnabled) {
    console.log(“Retail mode is enabled.”);
} else {
    Console.log(“Retail mode is not enabled.”);
}
Application behavior is dependent on the device being in retail demo mode.
KnownRetailInfo property
Query the device for its retail mode properties.
C#
using Windows.UI.Xaml.Controls;
using Windows.System.Profile

TextBlock priceText = new TextBlock();
priceText.Text = RetailInfo.Properties[KnownRetailInfo.Price];
// Assume infoPanel is a StackPanel declared in XAML
this.infoPanel.Children.Add(priceText);
C++
using namespace Windows::UI::Xaml::Controls;
using namespace Windows::System::Profile;

TextBlock ^manufacturerText = ref new TextBlock();
manufacturerText.set_Text(RetailInfo::Properties[KnownRetailInfoProperties::Price]);
// Assume infoPanel is a StackPanel declared in XAML
this->infoPanel->Children->Add(manufacturerText);

JavaScript
var pro = Windows.System.Profile;
console.log(pro.retailInfo.properties[pro.KnownRetailInfoProperties.price);
Retail Demo Mode IDL
//  Copyright (c) Microsoft Corporation. All rights reserved.
//
//  WindowsRuntimeAPISet

import "oaidl.idl";
import "inspectable.idl";
import "Windows.Foundation.idl";
#include <sdkddkver.h>

namespace Windows.System.Profile
{
    runtimeclass RetailInfo;
    runtimeclass KnownRetailInfoProperties;

    [version(NTDDI_WINTHRESHOLD), uuid(0712C6B8-8B92-4F2A-8499-031F1798D6EF), exclusiveto(RetailInfo)]
    [version(NTDDI_WINTHRESHOLD, Platform.WindowsPhone)]
    interface IRetailInfoStatics : IInspectable
    {
        [propget] HRESULT IsDemoModeEnabled([out, retval] boolean *value);
        [propget] HRESULT Properties([out, retval, hasvariant] Windows.Foundation.Collections.IMapView<HSTRING, IInspectable *> **value);
    }

    [version(NTDDI_WINTHRESHOLD), uuid(50BA207B-33C4-4A5C-AD8A-CD39F0A9C2E9), exclusiveto(KnownRetailInfoProperties)]
    [version(NTDDI_WINTHRESHOLD, Platform.WindowsPhone)]
    interface IKnownRetailInfoPropertiesStatics : IInspectable
    {
        [propget] HRESULT RetailAccessCode([out, retval] HSTRING *value);
        [propget] HRESULT ManufacturerName([out, retval] HSTRING *value);
        [propget] HRESULT ModelName([out, retval] HSTRING *value);
        [propget] HRESULT DisplayModelName([out, retval] HSTRING *value);
        [propget] HRESULT Price([out, retval] HSTRING *value);
        [propget] HRESULT IsFeatured([out, retval] HSTRING *value);
        [propget] HRESULT FormFactor([out, retval] HSTRING *value);
        [propget] HRESULT ScreenSize([out, retval] HSTRING *value);
        [propget] HRESULT Weight([out, retval] HSTRING *value);
        [propget] HRESULT DisplayDescription([out, retval] HSTRING *value);
        [propget] HRESULT BatteryLifeDescription([out, retval] HSTRING *value);
        [propget] HRESULT ProcessorDescription([out, retval] HSTRING *value);
        [propget] HRESULT Memory([out, retval] HSTRING *value);
        [propget] HRESULT StorageDescription([out, retval] HSTRING *value);
        [propget] HRESULT GraphicsDescription([out, retval] HSTRING *value);
        [propget] HRESULT FrontCameraDescription([out, retval] HSTRING *value);
        [propget] HRESULT RearCameraDescription([out, retval] HSTRING *value);
        [propget] HRESULT HasNfc([out, retval] HSTRING *value);
        [propget] HRESULT HasSdSlot([out, retval] HSTRING *value);
        [propget] HRESULT HasOpticalDrive([out, retval] HSTRING *value);
        [propget] HRESULT IsOfficeInstalled([out, retval] HSTRING *value);
        [propget] HRESULT WindowsVersion([out, retval] HSTRING *value);
    }

    [version(NTDDI_WINTHRESHOLD), static(IRetailInfoStatics, NTDDI_WINTHRESHOLD)]
    [version(NTDDI_WINTHRESHOLD, Platform.WindowsPhone), static(IRetailInfoStatics, NTDDI_WINTHRESHOLD, Platform.WindowsPhone)]
    [threading(both)]
    [marshaling_behavior(agile)]
    runtimeclass RetailInfo
    {
    }

    [version(NTDDI_WINTHRESHOLD), static(IKnownRetailInfoPropertiesStatics, NTDDI_WINTHRESHOLD)]
    [version(NTDDI_WINTHRESHOLD, Platform.WindowsPhone), static(IKnownRetailInfoPropertiesStatics, NTDDI_WINTHRESHOLD, Platform.WindowsPhone)]
    [threading(both)]
    [marshaling_behavior(agile)]
    runtimeclass KnownRetailInfoProperties
    {
    }
}

### Multilanguage retail demonstrations

If your Windows devices include multiple languages, add the RetailDemo language packs to localize your retail demo content. 
Important: You’ll need to add the Features On Demand (FOD) Retail Demo experience language packs during the imaging process, for example, Microsoft-Windows-RetailDemo-OfflineContent-Content-fr-fr-Package.cab. You are also required to provide the US-English (en-US) and Neutral language FODs. To learn more, see Add Language Packs to Windows.  

Available RetailDemo language packs:
* Arabic [ar-SA]
* Bulgarian [bg-BG]
* Chinese
  - Hong Kong SAR (Traditional) [zh-HK]
  - Taiwan (Traditional) [zh-TW]
  - China (Simplified) [zh-CN]
* Croatian [hr-HR]
* Czech [cs-CZ]
* Danish [da-DK]
* Dutch [nl-NL]
* English
  - USA [en-US]
  - UK [en-GB]
* Estonian [et-EE]
* Finnish [fi-FI]
* French 
  - Canada [fr-CA]
  - France [fr-FR]
* German [de-DE]
* Greek [el-GR]
* Hebrew [he-IL]
* Hungarian [hu-HU]
* Indonesian [id-ID]
* Italian [it-IT]
* Japanese [ja-JP]
* Korean [ko-KR]
* Latvian [lv-LV]
* Lithuanian [lt-LT]
* Norwegian [nb-NO]
* Polish [pl-PL]
* Portuguese
  - Portugal [pt-PT]
  - Brazil [pt-BR]
* Romanian [ro-RO]
* Russian [ru-RU]
* Serbian (Latin) [sr-Latn-CS]
* Slovak [sk-SK]
* Slovenian [sl-SI]
* Spanish
  - Spain [es-ES]
  - Mexico [es-MX]
* Swedish [sv-SE]
* Turkish [tr-TR]
* Thai [th-TH]
* Ukrainian [uk-UA]
* Vietnamese [vi-VN]

## Setup and operate retail demo mode

### Resetting the system
In a short time after a shopper stops interacting with the device, the retail demo plays, and Windows begins resetting any sample data in the contacts, photos, and other apps. Depending on the device, this could take between 1-5 minutes to fully reset everything back to normal.

### Retail demo mode capabilities
In Retail Demo mode, shoppers are prevented from modifying key system areas. For example, they won’t be able to:
* Add or change the user password
* Change a Microsoft account name
* Access the command line, Registry Editor, or PowerShell utilities
* Anything that requires administrative permissions to the system

### Activate retail mode 
This process can be used to verify that the device is properly configured to launch any custom demo applications. It can also be used to start retail demo mode on a demonstration device.
Use the following process to activate retail demo mode on any retail device.
1.	Remove the device from the box and press the power button to power up the device. On any of the OOBE setup pages (Language, Region, Keyboard, Connect to Network, or EULA), tap or click the page title (for example, Let’s start with region on the Region selection page) 5 times slowly (1 tap or click per second).
2.	On the confirmation dialog, confirm that you want to turn on the retail demo experience. 
3.	The dialog confirms that you've turned on the retail demo experience. Click Continue.
4.	Proceed with OOBE setup, including acceptance of the legal terms, until you get to RDX setup.
5.	In the Get the latest demo content and apps page, enter your Retail Access Code (RAC). The available SKUs and items for the RAC are downloaded. Select the Retailer SKU or Item#, Retailer store ID, and then click Next. If the device is offline, go to the next step.
    > [!NOTE]
    >  “SKU” is optional and is only required if the retailer associated with the Retail Access Code (RAC) explicitly designed an experience under a specific SKU. The RAC (Retail Access Code), SKU, and Retailer store ID only apply and are only used by Retailers. If this applies to you, the codes should be requested through your Microsoft Account Manager. 
    > A list of SKU’s will only be available if the retailer associated with the Retail Access Code (RAC) has previously provided it to Microsoft with this intent. If a SKU is not entered, the device will get content specific to the retailer and specific to the model of the hardware. 
6.	If you would like to specify start up and shut down times, tap or click Advanced configuration.
7.	In the Automatic shutdown page, configure and click Next.
8.	In the RDX admin settings page, you can choose up to 21 days to keep admin account active, or you can choose to keep it active perpetually. A password is required to make an admin account perpetually active.
9.	If the device is online, click Finish on the next page.
10.	Retail demo setup will reboot the device soon after the desktop appears, and then retail demo configuration will continue in the background until the device begins showing the video attract loop. 

### Highlight your device
Retail Demo mode can showcase additional Windows features and apps based on the type of device’s form factor. 
To access this content, make sure that the DeviceForm Unattend setting is set .
For example, when DeviceForm identifies the device as a Convertible laptop, Retail Demo mode includes content to show off Convertible features in Windows. 
Additional recommendations:
If you are setting up your demo on a tablet device, configure your devices to boot to tablet mode and turn hardware-based prompting off:
* Make sure that ConvertibleSlateMode is always accurate for your devices. 
* To support booting to tablet mode, configure the SignInMode setting. 
* To remove prompts triggered by changes to ConvertibleSlateMode, configure ConvertibleSlateModePromptPreference setting.

### Schedule automatic shutdown
Windows provides a way to set times for the devices to turn on and start retail demo mode automatically. Likewise, you can schedule when the devices shut down. These features allow you to save energy costs, to schedule updates, and to restore the retail demo experience automatically. You can configure shutdown times on the client during the out-of-box experience (OOBE), or post-OOBE during the retail demo mode setup. Additionally, you can configure automatic shutdown times using Retail Demo Asset Management (RDAM) after retail demo mode has been set up.
To schedule shutdowns on a local device
1.	Open retail demo mode by typing Activation into the Search box and hitting enter.
2.	Directly below the Activation heading, there is a Windows heading. Tap or click the word Windows 5 times.  
3.	The retail demo mode configuration UI is displayed. Tap or click on the Advanced configuration button.
 
4.	In the Advanced RDX settings page, tap or click Edit settings. This allows you to configure the automatic shutdown of the device.  

### Remove retail demo components
After a customer completes the out-of-box experience (OOBE), Windows schedules the removal of all RDX components, including any customizations you’ve added in the %programdata%\Microsoft\Windows\RetailDemo\OfflineContent\ folder.

For devices with more than 32GB of storage, the components are automatically removed 7 days after the customer completes OOBE.

For devices with 32GB of storage or less, you can schedule the automated removal to happen any time between 30 minutes to 7 days after the customer completes OOBE. The default is 30 minutes. To update this schedule, use the registry key: HKLM\Software\Microsoft\Windows\CurrentVersion\Setup\OOBE  , and registry value (# of minutes):  DeleteDemoContentDelay = 30

