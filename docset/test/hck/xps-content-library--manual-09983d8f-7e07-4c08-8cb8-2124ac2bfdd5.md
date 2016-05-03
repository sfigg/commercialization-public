---
author: joshbax-msft
title: XPS Content Library (Manual)
description: XPS Content Library (Manual)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 6753ac9d-1ea4-4653-bce9-54111af58ad8
---

# XPS Content Library (Manual)


This manual test uses the XPS Content Library tool to print a set of XPS file content that is a representative subset of the XPS specification. The test uses a static set of XPS files.

**Note**  
This test cannot run on Windows Server 2008 unless you first install Microsoft .NET Framework version 3.0.

 

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.XPS.XPS</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Manual</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

## More information


An XPS print filter or device must consume all the valid XPS test files successfully and fail gracefully (that is, no crashes, "hangs," or resource leaks may occur) on the invalid XPS files.

This test includes the following test cases:

-   Test case 1 - Valid Content Test

-   Test case 2 - Invalid Content Test

### Test case 1 - valid content test

This test first prints a set of valid XPS documents. The XPS print filter or device must consume these valid XPS files successfully.

**Titles of the required valid quality logic documents**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>mb01.xps</p></td>
<td><p>XPS Paths and Geometries Test</p></td>
</tr>
<tr class="even">
<td><p>mb02.xps</p></td>
<td><p>XPS Brushes Test</p></td>
</tr>
<tr class="odd">
<td><p>mb03.xps</p></td>
<td><p>XPS Glyphs Test</p></td>
</tr>
<tr class="even">
<td><p>mb04.xps</p></td>
<td><p>XPS Transforms and Clipping Test</p></td>
</tr>
<tr class="odd">
<td><p>mb05.xps</p></td>
<td><p>XPS Resources, Color, Opacity Test</p></td>
</tr>
<tr class="even">
<td><p>mb06.xps</p></td>
<td><p>XPS Document Structure, HyperLinks, Signature, PrintTicket Test</p></td>
</tr>
<tr class="odd">
<td><p>mb07.xps</p></td>
<td><p>Saved as XPS from Microsoft Office 2007 Word</p></td>
</tr>
<tr class="even">
<td><p>mb08.xps</p></td>
<td><p>Breakfast Menu</p></td>
</tr>
<tr class="odd">
<td><p>mb09.xps</p></td>
<td><p>The Suzuki Guitar (printed to XPS from Microsoft Office 2007 PowerPoint)</p></td>
</tr>
</tbody>
</table>

 

**Expected result**

For these files, compare the output of the printed material with the images below. The printed material must match these images:

The following image represents mb01.xps

![images of various geometric shapes and colors](images/hck-win8-xps-content-library1.png)

The following image represents is an illustration of mb02.xps

![images of rectangles and ovals of various colors](images/hck-win8-xps-content-library2.png)

The following image represents is an illustration of mb03.xps

![images of a variety of fonts](images/hck-win8-xps-content-library3.png)

The following image represents is an illustration of mb04.xps

![images of geometric figures](images/hck-win8-xps-content-library4.png)

The following image represents is an illustration of mb05.xps

![images of shapes of various colors and opacities](images/hck-win8-xps-content-library5.png)

The following image represents is an illustration of mb06.xps

![image of explanatory text (page one)](images/hck-win8-xps-content-library6.png)

The following image represents is an illustration of mb07.xps

![image of explanatory text (page two)](images/hck-win8-xps-content-library7.png)

The following image represents is an illustration of mb08.xps

![image of explanatory text (page three)](images/hck-win8-xps-content-library8.png)

The following image represents is an illustration of mb09.xps

![image of text with illustrations of color space](images/hck-win8-xps-content-library9.png)

### Test case 2 - invalid content test

This test case attempts to print a set of XPS documents whose contents violate certain rules in the XPS and OPC specifications and rules of markup compatibility. The description of each file and the corresponding rule that it violates is below. The XPS print filter must fail gracefully (that is, no crashes, "hangs," or resource leaks may occur) for each of these invalid XPS files. The XPS print filter must not produce output. It is acceptable for a printer to partially print the document, as long as the printer never prints the picture of the gumballs.

**Note**  
A driver or device that consumes XPS in stream format cannot detect the failure in the M3.14a.xps file until after the device has received the entire document. As a result, the device may complete printing the picture of the gumballs, but the device must detect the error and notify the user as soon as the error occurs.

 

**Documents that violate rules in the OPC specification**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>M1.1a.xps</p></td>
<td><p>The 1.fpage part is missing a part name.</p></td>
</tr>
<tr class="even">
<td><p>M1.2a.xps</p></td>
<td><p>The <strong>Default</strong> element in [Content_Types].xml is missing for the jpg type.</p></td>
</tr>
<tr class="odd">
<td><p>M1.2b.xps</p></td>
<td><p>The <strong>ContentType</strong> attribute in [Content_Types].xml is missing for the jpg type.</p></td>
</tr>
<tr class="even">
<td><p>M1.2c.xps</p></td>
<td><p>The <strong>ContentType</strong> attribute in [Content_Types].xml is empty for the jpg type.</p></td>
</tr>
<tr class="odd">
<td><p>M1.3a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents//Pages/1.fpage.</p></td>
</tr>
<tr class="even">
<td><p>M1.5a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages/1.fpage/.</p></td>
</tr>
<tr class="odd">
<td><p>M1.6a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages#/1.fpage/. ('#' is a gen-deliminator character by RFC 3986)</p></td>
</tr>
<tr class="even">
<td><p>M1.6b.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages?/1.fpage/. ('?' is a gen- deliminator character by RFC 3986)</p></td>
</tr>
<tr class="odd">
<td><p>M1.6c.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages[/1.fpage/. ('[' is a gen- deliminator character by RFC 3986)</p></td>
</tr>
<tr class="even">
<td><p>M1.6d.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages]/1.fpage/. (']' is a gen- deliminator character by RFC 3986)</p></td>
</tr>
<tr class="odd">
<td><p>M1.7a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages%2F/1.fpage/. (%2F is the percent-encoding for a forward slash.)</p></td>
</tr>
<tr class="even">
<td><p>M1.7b.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages%5C/1.fpage/. (%5C is the percent-encoding for a backward slash.)</p></td>
</tr>
<tr class="odd">
<td><p>M1.8a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages%48/1.fpage/. (%48 is the percent-encoding for a zero (0).)</p></td>
</tr>
<tr class="even">
<td><p>M1.8b.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages%51/1.fpage/. (%51 is the percent-encoding for a 'q'.)</p></td>
</tr>
<tr class="odd">
<td><p>M1.8c.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages%7E/1.fpage/. (%7E is the percent-encoding for a tilde (~).)</p></td>
</tr>
<tr class="even">
<td><p>M1.10a.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages/./1.fpage/.</p></td>
</tr>
<tr class="odd">
<td><p>M1.10b.xps</p></td>
<td><p>The /Documents/1/Pages/1.fpage part has the name /Documents/1/Pages/../1.fpage/.</p></td>
</tr>
<tr class="even">
<td><p>M1.11a.xps</p></td>
<td><p>The /Resources/Images/image_0.jpg/image_1.jpg part has a name derived from adding a segment to the part name of the /Resources/Images/image_0.jpg part.</p></td>
</tr>
<tr class="odd">
<td><p>M1.12a.xps</p></td>
<td><p>/Resources/Images/image_0.jpg and /Resources/Images/IMAGE_0.JPG exist in the package.</p></td>
</tr>
<tr class="even">
<td><p>M1.13a.xps</p></td>
<td><p>The <strong>ContentType</strong> attribute in [Content_Types].xml for the jpg type is &quot;image&quot;. This breaks the RFC 2616 rule because it has a type but no subtype.</p></td>
</tr>
<tr class="odd">
<td><p>M1.13b.xps</p></td>
<td><p>The <strong>ContentType</strong> attribute in [Content_Types].xml for the jpg type is &quot;image/jpeg?&quot;. This breaks the RFC 2616 rule because it has a separator.</p></td>
</tr>
<tr class="even">
<td><p>M1.14a.xps</p></td>
<td><p>The <strong>ContentType</strong> attribute in [Content_Types].xml for the jpg type is &quot;image / jpeg&quot;, which contains linear white space (LWS) between the type and subtype.</p></td>
</tr>
<tr class="odd">
<td><p>M1.14b.xps</p></td>
<td><p>The ContentType attribute in [Content_Types].xml for the jpg type is &quot; image/jpeg&quot;, which contains a leading LWS.</p></td>
</tr>
<tr class="even">
<td><p>M1.14c.xps</p></td>
<td><p>The ContentType attribute in [Content_Types].xml for the jpg type is &quot;image/jpeg &quot;, which contains a trailing LWS.</p></td>
</tr>
<tr class="odd">
<td><p>M1.15a.xps</p></td>
<td><p>The <strong>Default</strong> element in [Content_Types].xml for the jpg type is &quot;image/jpeg &lt;!-- comment --&gt;&quot;, which contains an XML comment.</p></td>
</tr>
<tr class="even">
<td><p>M1.17a.xps</p></td>
<td><p>[Content_Types].xml is encoded in ISO-8859-1.</p></td>
</tr>
<tr class="odd">
<td><p>M1.17b.xps</p></td>
<td><p>_rels\.rels is encoded in ISO-8859-1.</p></td>
</tr>
<tr class="even">
<td><p>M1.18a.xps</p></td>
<td><p>[Content_Types].xml contains a DTD declaration at the top of the XML markup.</p></td>
</tr>
<tr class="odd">
<td><p>M1.18b.xps</p></td>
<td><p>_rels/.rels contains a DTD declaration at the top of the XML markup.</p></td>
</tr>
<tr class="even">
<td><p>M1.20a.xps</p></td>
<td><p>[Content_Types].xml contains an illegal namespace at the top of the XML markup, and an attribute drawn from that namespace in the <strong>Default</strong> element for the jpg type.</p></td>
</tr>
<tr class="odd">
<td><p>M1.21a.xps</p></td>
<td><p>[Content_Types].xml contains an attribute drawn from the &quot;xml&quot; namespace in the <strong>Default</strong> element for the jpg type.</p></td>
</tr>
<tr class="even">
<td><p>M1.21b.xps</p></td>
<td><p>_rels/.rels contains an attribute drawn from the &quot;xsi&quot; namespace in the <strong>Relationship</strong> element for the fixed document sequence.</p></td>
</tr>
<tr class="odd">
<td><p>M1.22a.xps</p></td>
<td><p>The content type for the Relationships part has a parameter / value pair.</p></td>
</tr>
<tr class="even">
<td><p>M1.26a.xps</p></td>
<td><p>The _rels/.rels part contains two relationships with identical <strong>Id</strong> attribute values.</p></td>
</tr>
<tr class="odd">
<td><p>M1.26b.xps</p></td>
<td><p>The _rels/.rels part contains a relationship that has an illegal Id value according to the W3C Recommendation. The Id value includes an exclamation point.</p></td>
</tr>
<tr class="even">
<td><p>M1.27a.xps</p></td>
<td><p>The <strong>Type</strong> attribute of the fixed document sequence relationship is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M1.27b.xps</p></td>
<td><p>The <strong>Type</strong> attribute of the fixed document sequence relationship is incorrect. It is set to the core properties type.</p></td>
</tr>
<tr class="even">
<td><p>M1.28a.xps</p></td>
<td><p>The <strong>Target</strong> attribute of the fixed document sequence relationship is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M1.28b.xps</p></td>
<td><p>The <strong>Target</strong> attribute of the fixed document sequence relationship is not a URI.</p></td>
</tr>
<tr class="even">
<td><p>M1.30a.xps</p></td>
<td><p>The fixed page relationship part is named incorrectly for a relationship part.</p></td>
</tr>
<tr class="odd">
<td><p>M1.30b.xps</p></td>
<td><p>The fixed page relationship part is has an invalid content type in [Content_Types].xml.</p></td>
</tr>
<tr class="even">
<td><p>M2.4a.xps</p></td>
<td><p>The fixed document sequence type has no matching <strong>Default</strong> or <strong>Override</strong> elements.</p></td>
</tr>
<tr class="odd">
<td><p>M2.5a.xps</p></td>
<td><p>The fixed document sequence type has two matching <strong>Default</strong> elements.</p></td>
</tr>
<tr class="even">
<td><p>M2.5b.xps</p></td>
<td><p>The fixed document sequence type has two matching <strong>Override</strong> elements.</p></td>
</tr>
<tr class="odd">
<td><p>M2.6a.xps</p></td>
<td><p>The <strong>Extension</strong> attribute is missing for the fixed document sequence type.</p></td>
</tr>
<tr class="even">
<td><p>M2.6b.xps</p></td>
<td><p>The <strong>Extension</strong> attribute is missing a value for the fixed document sequence type.</p></td>
</tr>
<tr class="odd">
<td><p>M2.7a.xps</p></td>
<td><p>The <strong>PartName</strong> attribute is missing for the fixed document sequence type.</p></td>
</tr>
<tr class="even">
<td><p>M2.7b.xps</p></td>
<td><p>The <strong>PartName</strong> attribute has an empty value for the fixed document sequence type.</p></td>
</tr>
<tr class="odd">
<td><p>M2.10a.xps</p></td>
<td><p>The rels type has Markup Compatibility markup.</p></td>
</tr>
<tr class="even">
<td><p>M2.11a.xps</p></td>
<td><p>The fixed document sequence has both a non-interleaved part and an interleaved part.</p></td>
</tr>
<tr class="odd">
<td><p>M2.18a.xps</p></td>
<td><p>The _rels/.rels part is missing one piece.</p></td>
</tr>
<tr class="even">
<td><p>M3.9a.xps</p></td>
<td><p>The entire ZIP archive is encrypted. The password is “password”.</p></td>
</tr>
<tr class="odd">
<td><p>M3.10a.xps</p></td>
<td><p>The file item &quot;/[Content_Types].xml&quot; has been renamed to &quot;/Content_Types.xml&quot;.</p></td>
</tr>
<tr class="even">
<td><p>M3.14a.xps</p></td>
<td><p>The local file header does not match the file header in the Central Directory for the _rels/.rels part.</p></td>
</tr>
</tbody>
</table>

 

**Documents that violate rules in the XPS specification**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>M1.2a</p></td>
<td><p>The package is plain text instead of a zip archive.</p></td>
</tr>
<tr class="even">
<td><p>M2.2a</p></td>
<td><p>The ContentType attribute is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M2.3a</p></td>
<td><p>The fixedrepresentation relationship is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.3b</p></td>
<td><p>There are two fixedrepresentation relationships.</p></td>
</tr>
<tr class="odd">
<td><p>M2.3c</p></td>
<td><p>The FixedDocumentSequence part is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.4a</p></td>
<td><p>The FixedDocument part is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M2.5a</p></td>
<td><p>The FixedPage part is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.6a</p></td>
<td><p>The Font Part is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M2.6b</p></td>
<td><p>The FontURI attribute is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.7c</p></td>
<td><p>The FontURI attribute is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>M2.7a</p></td>
<td><p>The Image Part is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.7b</p></td>
<td><p>The ImageSource attribute is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M2.7c</p></td>
<td><p>The ImageSource attribute is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M2.8a</p></td>
<td><p>The Remote Resource Dictionary Part is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M2.8b</p></td>
<td><p>The FixedPage Resource attribute for Remote Resource Dictionary Part is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.8c</p></td>
<td><p>The FixedPage Resource attribute is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>M2.10a</p></td>
<td><p>The Required Resource relationships are missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.10b</p></td>
<td><p>The Required Resource relationships are invalid.</p></td>
</tr>
<tr class="odd">
<td><p>M2.13a</p></td>
<td><p>The fixedrepresentation relationships are missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.13b</p></td>
<td><p>There are two fixedrepresentation relationships.</p></td>
</tr>
<tr class="odd">
<td><p>M2.14b</p></td>
<td><p>The fixedrepresentation relationship points to the Nonexistence part.</p></td>
</tr>
<tr class="even">
<td><p>M2.17a</p></td>
<td><p>The JPG image is corrupt.</p></td>
</tr>
<tr class="odd">
<td><p>M2.18a</p></td>
<td><p>The PNG image is corrupt.</p></td>
</tr>
<tr class="even">
<td><p>M2.25a</p></td>
<td><p>The TIF image is corrupt.</p></td>
</tr>
<tr class="odd">
<td><p>M2.35a</p></td>
<td><p>The WDP image is corrupt.</p></td>
</tr>
<tr class="even">
<td><p>M2.39a</p></td>
<td><p>The ODTTF font is corrupt.</p></td>
</tr>
<tr class="odd">
<td><p>M2.39b</p></td>
<td><p>The TTF font is corrupt.</p></td>
</tr>
<tr class="even">
<td><p>M2.39c</p></td>
<td><p>The TTF font is treated as an obfuscated font.</p></td>
</tr>
<tr class="odd">
<td><p>M2.54a</p></td>
<td><p>The Obfuscated font file name is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M2.59a</p></td>
<td><p>Two PrintTickets are related to FixedDocumentSequence.</p></td>
</tr>
<tr class="odd">
<td><p>M2.59b</p></td>
<td><p>Two PrintTickets are related to FixedDocument.</p></td>
</tr>
<tr class="even">
<td><p>M2.59c</p></td>
<td><p>Two PrintTickets are related to FixedPage.</p></td>
</tr>
<tr class="odd">
<td><p>M2.70a</p></td>
<td><p>XML is encoded using big5 type.</p></td>
</tr>
<tr class="even">
<td><p>M2.71a</p></td>
<td><p>There is a DTD in Relationship markup.</p></td>
</tr>
<tr class="odd">
<td><p>M2.71b</p></td>
<td><p>There is a DTD in Content_Types markup.</p></td>
</tr>
<tr class="even">
<td><p>M2.71c</p></td>
<td><p>There is a DTD in FixedPage markup.</p></td>
</tr>
<tr class="odd">
<td><p>M2.72a</p></td>
<td><p>The XML file is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M2.72b</p></td>
<td><p>There are elements that do not conform with XPS XSD schema.</p></td>
</tr>
<tr class="odd">
<td><p>M2.72c</p></td>
<td><p>There are attributes that do not conform with XPS XSD schema.</p></td>
</tr>
<tr class="even">
<td><p>M2.73a</p></td>
<td><p>There is an Xml:id attribute in FixedPage markup.</p></td>
</tr>
<tr class="odd">
<td><p>M2.73b</p></td>
<td><p>There is an Xsi:SchemaLocation attribute on the &lt;FixedPage&gt; element.</p></td>
</tr>
<tr class="even">
<td><p>M2.74a</p></td>
<td><p>Duplicate attribute (FixedPage::Width)</p></td>
</tr>
<tr class="odd">
<td><p>M2.74b</p></td>
<td><p>Duplicate element (Path::Fill)</p></td>
</tr>
<tr class="even">
<td><p>M2.74c</p></td>
<td><p>Duplicate attribute/element (&lt;Path&gt; has Fill attrib and &lt;Path.Fill&gt; child element)</p></td>
</tr>
<tr class="odd">
<td><p>M2.75a</p></td>
<td><p>Xml:space attribute on &lt;FixedDocument&gt; element</p></td>
</tr>
<tr class="even">
<td><p>M2.75b</p></td>
<td><p>Xml:space attribute on &lt;PageContent&gt; element</p></td>
</tr>
<tr class="odd">
<td><p>M2.75c</p></td>
<td><p>Xml:space attribute on &lt;FixedPage&gt; element</p></td>
</tr>
<tr class="even">
<td><p>M2.75d</p></td>
<td><p>Xml:space attribute on &lt;Path&gt; element</p></td>
</tr>
<tr class="odd">
<td><p>M2.77a</p></td>
<td><p>The Source attribute is missing.</p></td>
</tr>
<tr class="even">
<td><p>M2.77b</p></td>
<td><p>The Source attribute is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>M3.2a</p></td>
<td><p>The DocumentReference::Source attribute is missing.</p></td>
</tr>
<tr class="even">
<td><p>M3.2b</p></td>
<td><p>The DocumentReference::Source attribute is invalid.</p></td>
</tr>
<tr class="odd">
<td><p>M3.3a</p></td>
<td><p>Multiple &lt;DocumentReference&gt; elements point to the same FixedDocument.</p></td>
</tr>
<tr class="even">
<td><p>M3.5a</p></td>
<td><p>The PageContent::Source attribute is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M3.5b</p></td>
<td><p>The PageContent::Source attribute is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M3.6a</p></td>
<td><p>Multiple &lt;PageContent&gt; elements point to the same FixedPage.</p></td>
</tr>
<tr class="odd">
<td><p>M3.6b</p></td>
<td><p>Multiple &lt;PageContent&gt; elements point to the same FixedPage from different FixedDocuments.</p></td>
</tr>
<tr class="even">
<td><p>M3.20a</p></td>
<td><p>The x:Key attribute for Canvas is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M3.20b</p></td>
<td><p>The x:Key attribute for Canvas is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M4.1a</p></td>
<td><p>The x:Key attribute for Path is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M4.1b</p></td>
<td><p>The x:Key attribute for Path is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M4.2a</p></td>
<td><p>The x:Key attribute for PathGeometry is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M4.2b</p></td>
<td><p>The x:Key attribute for PathGeometry is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M4.3a</p></td>
<td><p>There is a duplicate PathFigure.</p></td>
</tr>
<tr class="odd">
<td><p>M5.2a</p></td>
<td><p>The UnicodeString / Indices are missing.</p></td>
</tr>
<tr class="even">
<td><p>M5.2b</p></td>
<td><p>The Indices and Invalid UnicodeString (&quot;&quot;) are missing.</p></td>
</tr>
<tr class="odd">
<td><p>M5.2c</p></td>
<td><p>The Indices and Invalid UnicodeString (&quot;{}&quot;) are missing.</p></td>
</tr>
<tr class="even">
<td><p>M5.3a</p></td>
<td><p>The x:Key attribute for Glyphs is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M5.3b</p></td>
<td><p>The x:Key attribute for Glyphs is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M5.4a</p></td>
<td><p>A &lt;Glyphs&gt; element has an Indices attribute that contains an invalid Glyph Index for the specified font.</p></td>
</tr>
<tr class="odd">
<td><p>M5.4b</p></td>
<td><p>A &lt;Glyphs&gt; element has more entries in the indices attribute than the UnicodeString attribute.</p></td>
</tr>
<tr class="even">
<td><p>M5.7a</p></td>
<td><p>A &lt;Glyphs&gt; element has a UnicodeString attribute that starts with {.</p></td>
</tr>
<tr class="odd">
<td><p>M5.15a</p></td>
<td><p>A &lt;Glyphs&gt; element has both BidiLevel and isSideways attributes.</p></td>
</tr>
<tr class="even">
<td><p>M6.1a</p></td>
<td><p>The x:Key attribute for SolidColorBrush is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.1b</p></td>
<td><p>The x:Key attribute for SolidColorBrush is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M6.2a</p></td>
<td><p>The x:Key attribute for ImageBrush is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.2b</p></td>
<td><p>The x:Key attribute for ImageBrush is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M6.3a</p></td>
<td><p>The ImageSource attribute is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.3b</p></td>
<td><p>The ImageSource attribute (&lt;ImageBrush&gt; element that references a font part) is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M6.4a</p></td>
<td><p>The x:Key attribute for VisualBrush is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.4b</p></td>
<td><p>The x:Key attribute for VisualBrush is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M6.5a</p></td>
<td><p>The x:Key attribute for LinearGradientBrush is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.5b</p></td>
<td><p>The x:Key attribute for LinearGradientBrush is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M6.6a</p></td>
<td><p>The x:Key attribute for RadialGradientBrush is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M6.6b</p></td>
<td><p>The x:Key attribute for RadialGradientBrush is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M7.2a</p></td>
<td><p>The namespace declaration in ResourceDictionary is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M7.2b</p></td>
<td><p>The namespace declaration in ResourceDictionary is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M7.5a</p></td>
<td><p>A remote resource dictionary references another remote resource dictionary.</p></td>
</tr>
<tr class="odd">
<td><p>M7.6a</p></td>
<td><p>A ResourceDictionary has both Source and ResourceDefinitions set.</p></td>
</tr>
<tr class="even">
<td><p>M7.11a</p></td>
<td><p>The x:Key attribute for MatrixTransform is missing.</p></td>
</tr>
<tr class="odd">
<td><p>M7.11b</p></td>
<td><p>The x:Key attribute for MatrixTransform is invalid.</p></td>
</tr>
<tr class="even">
<td><p>M8.14a</p></td>
<td><p>The ContextColor value contains exponent form numbers.</p></td>
</tr>
<tr class="odd">
<td><p>M9.10a</p></td>
<td><p>There is a Name attribute in RemoteResourceDictionary.</p></td>
</tr>
<tr class="even">
<td><p>M9.10b</p></td>
<td><p>There is a Name attribute in ResourceDictionary.</p></td>
</tr>
<tr class="odd">
<td><p>M12.2a</p></td>
<td><p>A FixedDocument is referenced twice in DocumentSequence.</p></td>
</tr>
<tr class="even">
<td><p>M12.3a</p></td>
<td><p>A FixedPage is referenced twice in a single FixedDocument.</p></td>
</tr>
<tr class="odd">
<td><p>M12.3b</p></td>
<td><p>A FixedPage is referenced twice in different FixedDocuments.</p></td>
</tr>
<tr class="even">
<td><p>M12.5a</p></td>
<td><p>A FixedDocumentSequence has two PrintTickets.</p></td>
</tr>
<tr class="odd">
<td><p>M12.5b</p></td>
<td><p>A FixedDocument with two PrintTickets.</p></td>
</tr>
<tr class="even">
<td><p>M12.5c</p></td>
<td><p>A FixedPage has two PrintTickets.</p></td>
</tr>
<tr class="odd">
<td><p>M12.7a</p></td>
<td><p>A ContentType attribute contains a Parameter (ContentType=&quot;image/jpeg;q=0&quot;).</p></td>
</tr>
</tbody>
</table>

 

**Documents that violate markup compatibility rules**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>M1.1a</p></td>
<td><p>The Canvas element in the FixedPage markup contains a BadMustUnderstand attribute in the Markup Compatibility namespace.</p></td>
</tr>
<tr class="even">
<td><p></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:BadMustUnderstand=&quot;v1&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M1.2a</em></p></td>
<td><p>The Canvas element in the FixedPage markup contains a BadMustUnderstand attribute in the Markup Compatibility namespace.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:BadMustUnderstand=&quot;v1&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.14a</em></p></td>
<td><p>The Canvas element in the FixedPage markup contains a ProcessContent attribute that doesn't belong to a namespace that is identified by the Ignoreable attribute on the Canvas element.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:Ignorable=&quot;v3&quot; mc:ProcessContent=&quot;v2:Blink&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.17a</em></p></td>
<td><p>The Canvas element in the FixedPage markup contains a ProcessContent attribute that doesn't belong to a namespace that is identified by the Ignoreable attribute on the Canvas element.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:Ignorable=&quot;v2&quot; mc:ProcessContent=&quot;v2:Blink&quot;&gt; &lt;v2:Blink xml:lang=&quot;en-US&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.27a</em></p></td>
<td><p>The Canvas element in the FixedPage markup contains a MustUnderstand attribute that isn't understood.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:MustUnderstand=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.27b</em></p></td>
<td><p>The Canvas element in the FixedPage markup contains a MustUnderstand attribute that isn't understood. This problem occurs even though the attribute is specified as Ignorable.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;Canvas mc:Ignorable=&quot;v2&quot;&gt; &lt;Canvas mc:MustUnderstand=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.30a</em></p></td>
<td><p>The AlternateContent element in the FixedPage markup does not contain a Choice child element.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the\Documents\1\Pages\1.fpage part is invalid: &lt;mc:AlternateContent&gt; &lt;mc:Fallback&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.31a</em></p></td>
<td><p>The AlternateContent element in the FixedPage markup contains two Fallback child elements.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid:</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.32a</em></p></td>
<td><p>The AlternateContent element in the FixedPage markup contains a Fallback child element that precedes a Choice element.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid:</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.33a</em></p></td>
<td><p>The AlternateContent element in the FixedPage markup is a child of another AlternateContent element.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid:</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.35a</em></p></td>
<td><p>The AlternateContent element has an attribute that is unprefixed.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:AlternateContent Ignorable=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.36a</em></p></td>
<td><p>The AlternateContent element has a child that is neither understood nor ignorable.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid (as a child of AlternateContent): &lt;v2:Circle Center=&quot;13,20&quot; Radius=&quot;20&quot; Color=&quot;Yellow&quot; Opacity=&quot;0.5&quot; Luminance=&quot;13&quot; /&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.36b</em></p></td>
<td><p>AlternateContent has an attribute that belongs to a namespace that is neither understood nor ignorable.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:AlternateContent v2:Blink=&quot;Blink&quot; /&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.41a</em></p></td>
<td><p>The Choice element contains an attribute from a namespace that is neither understood nor ignorable.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice Requires=&quot;v2&quot; v2:bad=&quot;bad&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.41b</em></p></td>
<td><p>The Fallback element contains an attribute from a namespace that is neither understood nor ignorable.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Fallback v2:bad=&quot;bad&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.42a</em></p></td>
<td><p>The Choice element has a MustUnderstand attribute that identifies a namespace that the test does not understand, which is v2.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice Requires=&quot;v2&quot; mc:MustUnderstand=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.42b</em></p></td>
<td><p>The Fallback element has a MustUnderstand attribute that identifies a namespace that the test does not understand, which is v2</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Fallback mc:MustUnderstand=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.43a</em></p></td>
<td><p>The AlternateContent element has the xml:lang attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:AlternateContent xml:lang=&quot;en-US&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.43b</em></p></td>
<td><p>The AlternateContent element has the xml:space attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:AlternateContent xml:space=&quot;default&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.48a</em></p></td>
<td><p>The Choice element has an unprefixed attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice Ignorable=&quot;v3&quot; Requires=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.49a</em></p></td>
<td><p>The Choice element has the xml:lang attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice xml:lang=&quot;en-US&quot; Requires=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.49b</em></p></td>
<td><p>The Choice element has the xml:space attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice xml:space=&quot;default&quot; Requires=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.50a</em></p></td>
<td><p>The Choice element has a Requires attribute that specifies a non-visible namespace.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice Requires=&quot;v5&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.52a</em></p></td>
<td><p>The Choice element has a Requires attribute that has the Markup Compatibility prefix.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Choice mc:Requires=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.55a</em></p></td>
<td><p>The Fallback element has an attribute that has no prefix.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Fallback Ignorable=&quot;v2&quot;&gt;</p></td>
</tr>
<tr class="odd">
<td><p><em>M2.56a</em></p></td>
<td><p>The Fallback element has an xml:lang attribute.</p></td>
</tr>
<tr class="even">
<td><p><em></em></p></td>
<td><p>The XML in the \Documents\1\Pages\1.fpage part is invalid: &lt;mc:Fallback xml:lang=&quot;en&quot;&gt;</p></td>
</tr>
</tbody>
</table>

 

**Documents that deal with thumbnails -- Optional:**

**Note**  
This print job prints one page that is titled "Valid Thumbnail" and contains a red square box.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>M2.36a</p></td>
<td><p>FixedPage with 2 thumbnails</p></td>
</tr>
<tr class="even">
<td><p>M2.37a</p></td>
<td><p>FixedPage with TIF thumbnail</p></td>
</tr>
<tr class="odd">
<td><p>Thumbnail.xps</p></td>
<td><p>Valid XPS file containing a thumbnail</p></td>
</tr>
</tbody>
</table>

 

**Documents that deal with discard control -- Optional:**

**Note**  
This print job prints one page that is titled "Valid Discard Control" and contains a multi-color circle inside a black square box.

 

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Document title</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>M10.6a</p></td>
<td><p>DiscardControl references itself (TargetUri)</p></td>
</tr>
<tr class="even">
<td><p>M10.6b</p></td>
<td><p>DiscardControl references itself (SentinelUri)</p></td>
</tr>
<tr class="odd">
<td><p>M10.23a</p></td>
<td><p>Multiple DiscardControl package relationships</p></td>
</tr>
<tr class="even">
<td><p>DiscardControl.xps</p></td>
<td><p>Valid XPS file containing a discard control</p></td>
</tr>
</tbody>
</table>

 

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20XPS%20Content%20Library%20%28Manual%29%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




