---
author: Justinha
Description: Service a Windows Image Using DISM
ms.assetid: 7578765f-15ca-4cdd-9327-cfe42a36add2
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: Service a Windows Image Using DISM
---

# Service a Windows Image Using DISM


The Deployment Image Servicing and Management (DISM) tool lets users enumerate drivers and packages, modify configuration settings, add and remove drivers without using an unattended answer file, and more. You can use DISM offline on a WIM or VHD file, or online on a running operating system.

Offline servicing allows you to modify or service a Windows® image entirely offline, without booting it first. This can reduce deployment costs because you can customize images to a degree before the operating system is deployed to the computer. In addition, if you have a stored master image that you want to make sure is always up to date, you can maintain it without booting the image.

You can also use DISM to service an image online. If you have to boot the operating system to install an application or test and validate the installation, you can boot to audit mode and add drivers and packages, or enable features and international settings.

## <span id="In_This_Section"></span><span id="in_this_section"></span><span id="IN_THIS_SECTION"></span>In This Section


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p>[Add and Remove Drivers to an Offline Windows Image](add-and-remove-drivers-to-an-offline-windows-image.md)</p></td>
<td align="left"><p>Add or remove drivers from an offline image using either DISM or an unattended answer file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Enable or Disable Windows Features Using DISM](enable-or-disable-windows-features-using-dism.md)</p></td>
<td align="left"><p>Enable or disable features in a Windows image using DISM. You can also remove a feature to install on-demand, and restore a previously removed feature.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Add or Remove Packages Offline Using DISM](add-or-remove-packages-offline-using-dism.md)</p></td>
<td align="left"><p>Add or remove packages from an offline image using either DISM or an unattended answer file.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Add and Remove Language Packs Offline Using DISM](add-and-remove-language-packs-offline-using-dism.md)</p></td>
<td align="left"><p>Add or remove language packs and configure international settings in an offline image using DISM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Sideload Apps with DISM](sideload-apps-with-dism-s14.md)</p></td>
<td align="left"><p>Install line-of-business (LOB) Windows Store apps to a Windows image by using Windows PowerShell® or the Deployment Image Servicing and Management (DISM) platform.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Preinstall Apps Using DISM](preinstall-apps-using-dism.md)</p></td>
<td align="left"><p>Preinstall apps in a Windows image.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Customize the Start Screen](customize-the-start-screen.md)</p></td>
<td align="left"><p>Customize the Start screen to include Windows Store apps and desktop apps that you use in your business.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Change the Windows Image to a Higher Edition Using DISM](change-the-windows-image-to-a-higher-edition-using-dism.md)</p></td>
<td align="left"><p>Query an image to determine which edition of Windows the image is, and how to change the image to a higher edition of Windows.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Export or Import Default Application Associations](export-or-import-default-application-associations.md)</p></td>
<td align="left"><p>Change the default programs associated with a file name extension or protocol in a Windows image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Service a Mounted Windows Image](service-a-mounted-windows-image.md)</p></td>
<td align="left"><p>Use DISM to mount an image and modify it.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Service an Applied Windows Image](service-an-applied-windows-image.md)</p></td>
<td align="left"><p>Use DISM to apply an image and then modify it.</p></td>
</tr>
</tbody>
</table>

 

## <span id="related_topics"></span>Related topics


[Understanding Servicing Strategies](understanding-servicing-strategies.md)

[Take Inventory of an Image or Component Using DISM](take-inventory-of-an-image-or-component-using-dism.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_adk_online\p_adk_online%5D:%20Service%20a%20Windows%20Image%20Using%20DISM%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




