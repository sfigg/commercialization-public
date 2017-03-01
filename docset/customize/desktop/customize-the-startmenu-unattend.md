---
title: Customize the Start menu using Unattend
description: Customize the Start menu
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
---

# Customize the Start menu
For the most robust Start customizations, you should use the LayoutModification.xml file instead of Unattend.xml settings. Unattend.xml does not support all tile sizes and types, however its use is supported for layouts that only require the following elements. If you use Unattend.xml, medium square tiles are the only supported tile size. 

Note: If a Windows image includes %SYSTEMDRIVE%\Users\Default\AppData\Local\Microsoft\Windows\Shell\LayoutModification.xml, it will overwrite Unattend.xml StartTile settings. 

<table>
<thead>
<tr class="header">
<th>Element</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>RegionalOverrides</p></td>
<td><p>Specifies sets of apps that appear on the Start screen for different regions. </p></td>
</tr>
<tr class="even">
<td><p>SquareTiles</p></td>
<td><p>Specifies the default Windows Store apps to appear as medium square tiles on the Start screen. </p></td>
</tr><tr class="odd">
<td><p>SquareOrDesktopTile</p></td>
<td><p>Specifies which application appears as a square tile on the Start menu</p></td>
</tr><tr class="even">
<td><p>OEMName</p></td>
<td><p>Specifies the name of the OEM group(s) of tiles</p></td>
</tr>
</tbody>
</table>
<p>OEMs can pin up to twelve square classic Windows apps or Universal Windows apps tiles to Start using the Unattend.xml method.</p>
<p>The first twelve SquareTiles or SquareOrDesktopTile settings specified in the Unattend.xml will be placed within two newly created groups at the end of Start:</p>
<list>
<li>The first six tiles will be placed in the first group.</li>
<li>The second six tiles will be placed in the second group.</li>
</list>
<p>If OEMName is specified, it will be attributed to the OEM groups that are created.</p>

## Example Unattend.xml usage to customize the Start menu layout
<? xml version='1.0' encoding='utf-8'?> 

<unattend xmlns="urn:schemas-microsoft-com:unattend" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State">

  <settings pass="specialize">

    <component processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" versionScope="nonSxS" name="Microsoft-Windows-Shell-Setup" language="neutral">

      <OEMName>Fabrikam</OEMName>

      <StartTiles>

        <SquareTiles>

          <SquareOrDesktopTile5>

            <AppIdOrPath>c:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk</AppIdOrPath>

          </SquareOrDesktopTile5>

          <SquareOrDesktopTile6>

            <AppIdOrPath>{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}\cmd.exe</AppIdOrPath>

          </SquareOrDesktopTile6>

          <SquareOrDesktopTile7>

            <AppIdOrPath>Microsoft.BingFoodAndDrink_8wekyb3d8bbwe!AppexFoodAndDrink</AppIdOrPath>

          </SquareOrDesktopTile7>

        </SquareTiles>

      </StartTiles>

    </component>

  </settings>

</unattend>
