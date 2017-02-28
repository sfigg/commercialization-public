---
title: Personalization CSP
description: Personalization CSP
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Personalization CSP


> [!WARNING]
> Some information relates to prereleased product, which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The Personalization CSP can set the lock screen and desktop background images. Setting these policies also prevents the user from changing the image. This CSP was added in Windows 10, version 1703. You can also use the Personalization settings in a provisioning file using the Windows Configuration Designer.

The following diagram shows the BitLocker configuration service provider in tree format.

![personalization csp](images/provisioning-csp-personalization.png)

<a href="" id="personalization"></a>**./Device/Vendor/MSFT/Personalization**  
<p style="margin-left: 20px">Defines the root node for the Personalization configuration service provider.</p>

<a href="" id="desktopimageurl"></a>**DesktopImageUrl**  
<p style="margin-left: 20px">Http or https Url to an image (jpg, jpeg, or png) to downloaded and used as the desktop image. It can also be a file Url to a local image on the file system that can be used as the desktop image.</p>
<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.</p>

<a href="" id="desktopimagestatus"></a>**DesktopImageStatus**  
<p style="margin-left: 20px">Represents the status of the desktop image. Valid values:</p>
<ul>
<li>1 - Successfully downloaded or copied.</li>
<li>2 - Download or copy in progress.</li>
<li>3 - Download or copy failed.</li>
<li>4 - Unknown file type.</li>
<li>5 - Unsupported Url scheme.</li>
<li>6 - Max retry failed.</li>
</ul>
<p style="margin-left: 20px">Value type is integer. Supporter operation is Get.</p>

<a href="" id="lockscreenimageurl"></a>**LockScreenImageUrl**  
<p style="margin-left: 20px">Http or https Url to an image (jpg, jpeg, or png) to downloaded and used as the lock screen image. It can also be a file Url to a local image on the file system that can be used as the lock screen image.</p>
<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Delete, and Replace.</p>


<a href="" id="lockscreenimagestatus"></a>**LockScreenImageStatus**  
<p style="margin-left: 20px">Represents the status of the lock screen image. Valid values:</p>
<ul>
<li>1 - Successfully downloaded or copied.</li>
<li>2 - Download or copy in progress.</li>
<li>3 - Download or copy failed.</li>
<li>4 - Unknown file type.</li>
<li>5 - Unsupported Url scheme.</li>
<li>6 - Max retry failed.</li>
</ul>
<p style="margin-left: 20px">Value type is integer. Supporter operation is Get.</p>

## Example SyncML

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Replace>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/Personalization/LockScreenImageUrl
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>https://www.contoso.com/desktopimage.jpeg</Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/Personalization/DesktopImageUrl
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>https://www.contoso.com/lockscreenimage.JPG</Data>
      </Item>
    </Replace>
    <Final/> 
  </SyncBody>
</SyncML>
```



