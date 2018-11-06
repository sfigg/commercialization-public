---
title: Merging packages before imaging
description: Merging packages before imaging
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: f11e92e3-5a91-4461-b43f-ec97371eaef7
---

# Merging packages before imaging


Before you create an image, we recommend that you first merge your
packages by using the FeatureMerger.exe tool. This tool takes a feature
manifest file as an input and merges your referenced packages into a
small, well-defined set of packages that adhere to a predictable and
consistent naming system.

This topic provides general guidance about the package merging process.

**Important**  

For retail images, you must generate merged packages that conform to the
*Windows Standard Package Configuration* (WSPC). WSPC is a set of rules
that define the package naming requirements for retail devices. For more
info, see [Windows Standard Packaging Configuration (WSPC) requirements
for retail images](packaging-requirements-for-retail-images.md).



## <span id="Understanding_the_package_merging_process"></span><span id="understanding_the_package_merging_process"></span><span id="UNDERSTANDING_THE_PACKAGE_MERGING_PROCESS"></span>Understanding the package merging process


To create merged packages, create a feature manifest file that lists the
packages you want to merge and pass this feature manifest file to the
FeatureMerger.exe tool. FeatureMerger.exe merges your packages based on
the package groups under which the packages are listed in the feature
manifest file and additional package metadata. Based on this
information, one or more packages that represent the minimal set of
packages based on the metadata are generated. The new merged packages
are placed in the output directory specified when the tool was invoked.
For instructions about using FeatureMerger.exe, see [Merging packages
using FeatureMerger](merging-packages-using-featuremerger.md).

The following table summarizes how packages are merged based on the
feature manifest package group they are listed under.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Package group element in the feature manifest</th>
<th>Merging behavior</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>BasePackages</strong></p></td>
<td><p>All packages listed under the <strong>BasePackages</strong> element with the same partition, language, and resolution will be merged together into a package with the following naming convention:</p>
<p><em>&lt;Owner&gt;</em>.<strong>Base</strong>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="even">
<td><p><strong>SOCPackages</strong></p></td>
<td><p>All packages listed under the <strong>SOCPackages</strong> element with the same <strong>SOC</strong> attribute value, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>SOC_</strong><em>&lt;SOC name&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="odd">
<td><p><strong>OEMDevicePlatformPackages</strong></p>
<p><strong>DeviceSpecificPackages</strong></p></td>
<td><p>All packages listed under the <strong>OEMDevicePlatformPackages</strong> and <strong>DeviceSpecificPackages</strong> elements with the same <strong>Device</strong> attribute value, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>DEVICE_</strong><em>&lt;device name&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="even">
<td><p><strong>Features</strong></p></td>
<td><p>All packages listed under the <strong>Features</strong> element with the same <strong>FeatureID</strong>, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>OEM_</strong><em>&lt;feature ID&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="odd">
<td><p><strong>ReleasePackages</strong></p></td>
<td><p>All packages listed under the <strong>ReleasePackages</strong> element with the same <strong>ReleaseType</strong> attribute value, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>RELEASE_</strong><em>&lt;TEST | PRODUCTION&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="even">
<td><p><strong>SVPackages</strong></p></td>
<td><p>All packages listed under the <strong>SVPackages</strong> element with the same <strong>SV</strong> attribute value, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>SV_</strong><em>&lt;SV name&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
<tr class="odd">
<td><p><strong>PrereleasePackages</strong></p></td>
<td><p>All packages listed under the <strong>PrereleasePackages</strong> element with the same <strong>Type</strong> attribute value, partition, language, and resolution will be merged together into a package with the following naming convention.</p>
<p><em>&lt;Owner&gt;</em>.<strong>PRERELEASE_</strong><em>&lt;REPLACEMENT | PROTECTED&gt;</em>.<em>&lt;FeatureManifestID&gt;</em>.<em>&lt;Partition&gt;</em>.spkg</p></td>
</tr>
</tbody>
</table>



In the preceding table, the partition, language, and resolution metadata
used for package merging are derived from the following attributes in
the package project XML file used to generate each package:

-   **Partition** attribute of the **Package** element.

-   **Language** attribute of the **Files** element.

-   **Resolution** attribute of the **Files** element.

**Note**  

Language and resolution-specific merged packages (packages with the
language or resolution suffix in the package file name) do not comply
with WSPC. For retail images, these packages should be merged into a
WSPC-compliant base package by referencing the packages under the
**BasePackages** element in the feature manifest.



For more info about these attributes, see [Primary elements and
attributes of a package project
file](primary-elements-and-attributes-of-a-package-project-file.md) and
[Specifying files and registry entries in a package project
file](specifying-components-in-a-package-project-file.md).

## <span id="Naming_convention_for_merged_packages"></span><span id="naming_convention_for_merged_packages"></span><span id="NAMING_CONVENTION_FOR_MERGED_PACKAGES"></span>Naming convention for merged packages


The merged packages generated by FeatureMerger.exe have the following
basic naming convention:

*&lt;Owner&gt;*.*&lt;MergedPackageType&gt;*.*&lt;FeatureManifestID&gt;*.*&lt;Partition&gt;*.spkg

The *&lt;MergedPackageType&gt;* substring is derived from the grouping
element in the feature manifest, as described in the previous section.
The following table describes where the other substrings are derived
from.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Substring</th>
<th>Origin of the substring</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><em>Owner</em></p></td>
<td><p>The <em>Owner</em> substring is derived from one of the following locations:</p>
<ul>
<li><p>If you pass a single feature manifest XML file to FeatureMerger.exe, this is derived from the <strong>/OwnerName</strong> command line parameter.</p></li>
<li><p>If you pass an FMFileList XML file to FeatureMerger.exe, this is derived from the <strong>OwnerName</strong> attribute of the <strong>FM</strong> element in the FMFileList XML file.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><em>FeatureManifestID</em></p></td>
<td><p>The <em>FeatureManifestID</em> substring is derived from one of the following locations:</p>
<ul>
<li><p>If you pass a single feature manifest XML file to FeatureMerger.exe, this is derived from the <strong>/FMID</strong> command line parameter.</p></li>
<li><p>If you pass an FMFileList XML file to FeatureMerger.exe, this is derived from the <strong>ID</strong> attribute of the <strong>FM</strong> element in the FMFileList XML file.</p></li>
</ul>
<div class="alert">
<strong>Important</strong><br/><p>When building merged packages for retail images, OEMs must specify either <strong>Phone</strong> or <strong>Variant</strong> for the <em>FeatureManifestID</em> substring. For more info, see <a href="packaging-requirements-for-retail-images.md" data-raw-source="[Windows Standard Packaging Configuration (WSPC) requirements for retail images](packaging-requirements-for-retail-images.md)">Windows Standard Packaging Configuration (WSPC) requirements for retail images</a>.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td><p><em>Partition</em></p></td>
<td><p>The <em>Partition</em> substring is derived from the <strong>Partition</strong> attribute of the <strong>Package</strong> element in the package project XML files that were used to build the packages that are being merged. For more information, see <a href="primary-elements-and-attributes-of-a-package-project-file.md" data-raw-source="[Primary elements and attributes of a package project file](primary-elements-and-attributes-of-a-package-project-file.md)">Primary elements and attributes of a package project file</a>.</p></td>
</tr>
</tbody>
</table>



## <span id="General_guidelines_for_package_merging"></span><span id="general_guidelines_for_package_merging"></span><span id="GENERAL_GUIDELINES_FOR_PACKAGE_MERGING"></span>General guidelines for package merging


You should structure your feature manifest files to control how groups
of packages are merged. The following list is a set of general
guidelines for package merging:

-   Plan for how you want your packages to be merged. For example, you
    may only want certain sets of packages to be available on phones
    that are targeted for specific mobile operators or markets.

-   Either create new feature manifest files, or leverage existing
    feature manifest files, to control how packages are merged.

-   Use the **SOCPackages**, **OEMDevicePlatformPackages** and
    **DeviceSpecificPackages** elements to manage hardware-specific
    packages. For example, all packages associated with a specific SoC
    element in a feature manifest should have the same **SOC**
    attribute. FeatureMerger.exe uses each of these categories as a
    criteria for merging packages. The packages will be merged with the
    other packages when any combination of the elements matches. If some
    packages match on some of the attributes and not others, then only
    the packages that match on all elements will be contained in a
    merged package.

-   When generating merged packages for retail images, make sure you
    generate packages that conform to the WSPC. For more info, see
    [Windows Standard Packaging Configuration (WSPC) requirements for
    retail images](packaging-requirements-for-retail-images.md).

-   Use merged packages for all image generation by using the feature
    manifests that are generated by FeatureMerger.exe. For more info,
    see [Merging packages using
    FeatureMerger](merging-packages-using-featuremerger.md).

-   Verify that all packages have the proper metadata to ensure that
    merging is performed as expected.

For more info about feature manifests, see [Feature manifest file
contents](feature-manifest-file-contents.md). For more info
about the OEMInput file elements, see [OEMInput file
contents](oeminput-file-contents.md).

## <span id="related_topics"></span>Related topics


[Merging packages using
FeatureMerger](merging-packages-using-featuremerger.md)

[Windows Standard Packaging Configuration (WSPC) requirements for retail
images](packaging-requirements-for-retail-images.md)





[Send comments about this topic to
Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phPackaging/p_phPackaging%5D:%20Merging%20packages%20before%20imaging%20%20RELEASE:%20(11/14/2017)&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




