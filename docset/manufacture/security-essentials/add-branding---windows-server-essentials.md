---
Description: 'Add Branding - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.add\_branding\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Add Branding - Windows Server Essentials'
---

# Add Branding - Windows Server Essentials


To make branding additions in Windows Server Essentials, add entries in the registry. All branding entries in the registry for the operating system are located under HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\OEM.

**Important**  
For all co-branding, the Windows Server Essentials logo must have a minimum width of **170 pixels**, keeping the correct aspect ratio.

 

## <span id="BKMK_Branding"></span><span id="bkmk_branding"></span><span id="BKMK_BRANDING"></span>


**To add branding by changing the registry**

1.  On the server, move your mouse to the upper right corner of the screen, and click **Search**.

2.  In the Search box, type **regedit**, and then click the **Regedit** application.

3.  In the navigation pane, expand **HKEY\_LOCAL\_MACHINE**, expand **SOFTWARE**, expand **Microsoft**, expand **Windows Server**. If the **OEM** key does not exist, complete the following steps to create it:

    1.  Right-click **Windows Server**, click **New**, and then click **Key**.

    2.  Type **OEM** for the name of the key.

4.  (Optional) If you create an entry for a logo, you can create different keys to differentiate the language versions of the logo. For example, if you have both English and German versions of a logo, you can create an en-us key and a de-de key. Because all of the logo files are stored in the same folder, you must provide instances of the logo image file with a unique name for each language. For example, you would create a file called DashboardLogo\_en.png and DashboardLogo\_de.png.

5.  Either right-click **OEM** or right-click the appropriate language key, click to **New**, and then click **String Value**.

6.  Enter the name of the string, and then press ENTER. Refer to the [Registry strings and values](#bkmk-regstrings) table for the string names and data values.

7.  Right-click the new string, and then click **Modify**.

8.  Enter the value from the table that is associated with the string name, and then click **OK**.

9.  If you are creating an entry for a logo image or appended links, copy the file to %programFiles%\\Windows Server\\Bin\\OEM. If the OEM directory does not exist, create it.

10. If changes are made that affect Remote Web Access, after the customer takes possession of the server, they must turn on Remote Web Access. Advise the customer to do the following:

    1.  On the Dashboard, click **Settings**, and then click the **Anywhere Access** tab.

    2.  If Anywhere Access is turned on, click **Configure**, and then clear Remote Web Access checkbox on the **Choose Anywhere Access features to enable** page of the Set up Anywhere Access wizard.

    3.  Click **Configure**.

### <span id="BKMK_RegStrings"></span><span id="bkmk_regstrings"></span><span id="BKMK_REGSTRINGS"></span>Registry strings and values

The following table describes the location where registry changes affect branding.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Location of branding</th>
<th align="left">Description</th>
<th align="left">String name</th>
<th align="left">Data value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Dashboard logo</p></td>
<td align="left"><p>Adds the logo image to the Dashboard. The Dashboard logo must be in .png format and must not be larger than 350 pixels wide by 38 pixels high.</p>
<div class="alert">
<strong>Important</strong>  
<p>To co-brand the Dashboard with your logo, you must edit the artwork tile, and append your company logo to the image while following the appropriate white space requirements.</p>
</div>
<div>
 
</div></td>
<td align="left"><p>DashboardLogo</p></td>
<td align="left"><p>Name of the logo image file</p></td>
</tr>
<tr class="even">
<td align="left"><p>Website background picture</p></td>
<td align="left"><p>Changes the background image that is displayed on the Remote Web Access logon page. Typical resolutions will appear as follows:</p>
<ul>
<li><p>1024x768 pixel resolution will precisely fill the logon page</p></li>
<li><p>800x600 pixel resolution will be centered on the page and appear with a black border</p></li>
<li><p>1280x720 pixel resolution will be centered and the pixels that exceed 1024x768 will not appear</p></li>
</ul></td>
<td align="left"><p>LogonBackground</p></td>
<td align="left"><p>Name of background image file</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Website title</p></td>
<td align="left"><p>Replaces the title of the Remote Web Access site from Windows Server Essentials to a title that you choose.</p></td>
<td align="left"><p>WebsiteName</p></td>
<td align="left"><p>New Remote Web Access site title</p></td>
</tr>
<tr class="even">
<td align="left"><p>Website logo</p></td>
<td align="left"><p>Changes the default logo on the Remote Web Access site. The expected size of the logo is 32 pixels by 32 pixels. If your logo is smaller or larger than this, it will be stretched or made reduced to match these dimensions</p></td>
<td align="left"><p>WebsiteLogo</p></td>
<td align="left"><p>Name of the logo image file</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Appended Website logo</p></td>
<td align="left"><p>Your partner logo will display just below the Microsoft logo that is displayed on the Remote Web Access site. The expected size of the logo is 50 pixels high by 200 pixels wide. If your logo is larger than this, it will be made smaller to fit while maintaining the original aspect ratio. If your logo is smaller than this, it will be centered within the 200 by 50 pixel space and neither the size nor aspect ratio will be changed.</p></td>
<td align="left"><p>OEMLogo</p></td>
<td align="left"><p>Name of the logo image file</p></td>
</tr>
<tr class="even">
<td align="left"><p>Links on the Website home page and logon page</p></td>
<td align="left"><p>Append links to the logon page and home page of the Remote Web Access site. The .xml that contains the link information must be located in %programFiles%\Windows Server\Bin\OEM. The following example shows the format of the .xml file:</p>
<pre class="syntax" space="preserve"><code>&lt;OemLinks&gt;
   &lt;LogonLinks&gt;
     &lt;Link Name=”LogonLinkName”&gt;
       &lt;Text&gt;LogonLinkDescription&lt;/Text&gt;
       &lt;Url&gt;LogonLinkURL&lt;/Url&gt;
       &lt;Icon&gt;LinkIcon&lt;/Icon&gt;
     &lt;/Link&gt;
   &lt;/LogonLinks&gt;
   &lt;HomepageLinks&gt;
     &lt;Link Name=”HomepageLinkName”&gt;
       &lt;Text&gt;HomepageLinkDescription&lt;/Text&gt;
       &lt;Url&gt;HomepageLinkURL&lt;/Url&gt;
     &lt;/Link&gt;
   &lt;/HomepageLinks&gt;
&lt;/OemLinks&gt;</code></pre>
<p>Refer to the [LinksXML elements](#bkmk-links) table for a list of the elements and descriptions.</p></td>
<td align="left"><p>LinksXML</p></td>
<td align="left"><p>Refer to the [LinksXML elements](#bkmk-links) table for a list of the elements and descriptions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Launchpad logo</p></td>
<td align="left"><p>Adds the logo image to the Launchpad. The Launchpad logo must be in .png format and must not taller than 64 pixels.</p></td>
<td align="left"><p>LaunchpadLogo</p></td>
<td align="left"><p>Name of the logo image file</p></td>
</tr>
</tbody>
</table>

 

### <span id="BKMK_Links"></span><span id="bkmk_links"></span><span id="BKMK_LINKS"></span>LinksXML elements

The following table describes the LinksXML elements.

LinksXML element
Description
LogonLinks

LogonLinkName

The logon link name.

LogonLinkDescription

The text that is displayed as the logon page link.

LogonLinkURL

The URL that resolves to the logon page link.

LinkIcon

The name of the icon file for the logon link. This file should be in the same folder location as the .xml file. Link icon images should be 16x16 pixels and should be .png format. If you do not provide a LinkIcon, the default link icon image is used.

HomepageLinks

HomepageLinkName

The homepage link name.

HomepageLinkDescription

The text that appears as the homepage link.

HomepageLinkURL

The URL that resolves to the homepage link.

HomepageLinkIcon

The name of the icon file for the homepage link. This file should be in the same folder location as the .xml file. HomepageLinkIcon images should be 16x16 pixels and should be .png format. If you do not provide a HomepageLinkIcon, the default home page link icon image is used.

 

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Add%20Branding%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




