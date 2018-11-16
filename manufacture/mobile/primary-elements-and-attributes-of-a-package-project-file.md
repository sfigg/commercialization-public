---
title: Primary elements and attributes of a package project file
description: Primary elements and attributes of a package project file
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 8f8a5f60-88c4-4e2d-b77d-c300f2b97d32
ms.author: themar
ms.date: 05/02/2017
ms.topic: article
---

# Primary elements and attributes of a package project file


The root XML element in the **package** project XML file is the Package
element. This element is the base container element for all other
package-related elements in a package project XML file. It must occur
only once, and it contains all the package information in the project
file as attributes and child elements. The information in the
**Package** element can be divided into four key areas: attributes,
macros, security capabilities, and components.

The following XML example shows the schema definition of the **Package**
element.

``` syntax
  <xs:element name="Package">
    <xs:complexType>
      <xs:sequence minOccurs="1" maxOccurs="1">
        <xs:element minOccurs="0" maxOccurs="1" ref="CustomMetadata" />
        <xs:element minOccurs="0" maxOccurs="1" ref="Macros" />
        <xs:element minOccurs="0" maxOccurs="1" ref="Capabilities" />
        <xs:element minOccurs="0" maxOccurs="1" ref="Components" />
        <xs:element minOccurs="0" maxOccurs="1" ref="Authorization" />
      </xs:sequence>
      <xs:attribute name="Owner" type="xs:string" use="required" />
      <xs:attribute name="Component" type="xs:string" use="required" />
      <xs:attribute name="SubComponent" type="xs:string" use="optional" />
      <xs:attribute name="BinaryPartition" type="xs:boolean" use="optional" />
      <xs:attribute name="OwnerType" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="Microsoft" />
            <xs:enumeration value="OEM" />
            <xs:enumeration value="SiliconVendor" />
            <xs:enumeration value="MobileOperator" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="ReleaseType" use="required">
        <xs:simpleType>
          <xs:restriction base="xs:string">
            <xs:enumeration value="Production" />
            <xs:enumeration value="Test" />
          </xs:restriction>
        </xs:simpleType>
      </xs:attribute>
      <xs:attribute name="Partition" type="xs:string" use="optional" />
      <xs:attribute name="Platform" type="xs:string" use="optional" />
      <xs:attribute name="GroupingKey" type="xs:string" use="optional" />
      <xs:attribute name="Description" type="xs:string" use="optional" />
    </xs:complexType>
  </xs:element>
```

## <span id="package_attributes"></span><span id="PACKAGE_ATTRIBUTES"></span>Package attributes


Attributes of the target package(s) are described by using the XML
attributes of the **Package** element. This element currently supports
the following attributes.

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Owner</strong></p></td>
<td><p>Required. String that specifies the owner of the package. For example, Contoso.</p></td>
</tr>
<tr class="even">
<td><p><strong>Component</strong></p></td>
<td><p>Required. String that specifies the component represented by the package. This value is used as a portion of the package ID.</p></td>
</tr>
<tr class="odd">
<td><p><strong>SubComponent</strong></p></td>
<td><p>Optional. String that specifies the subcomponent represented by the package.</p></td>
</tr>
<tr class="even">
<td><p><strong>ReleaseType</strong></p></td>
<td><p>Required. String that specifies the type of release for which the package should be included. Valid values are the following:</p>
<ul>
<li><p>Production</p></li>
<li><p>Test</p></li>
</ul>
<div class="alert">
<strong>Important</strong>  
<p>If a package is intended to be included in a retail image, it must be marked as <strong>Production</strong>. Packages marked as <strong>Test</strong> will fail retail signing and are not allowed in retail images.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p><strong>OwnerType</strong></p></td>
<td><p>Required. String that specifies the category of owner for the package. Valid values are the following:</p>
<ul>
<li><p>Microsoft</p></li>
<li><p>OEM</p></li>
<li><p>SiliconVendor</p></li>
<li><p>MobileOperator</p></li>
</ul></td>
</tr>
<tr class="even">
<td><p><strong>Partition</strong></p></td>
<td><p>Optional. String identifier for the target partition for the package. By default, packages are installed to the MainOS partition unless another is explicitly specified.</p>
<div class="alert">
<strong>Warning</strong>  
<ul>
<li><p>Packages that are intended to be updated must not target the data partition. The reason for this restriction is that the data partition is formatted when the device reset feature is used.</p></li>
<li><p>Packages must only target a single partition.</p></li>
</ul>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td><p><strong>Platform</strong></p></td>
<td><p>Required. String, such as “QC8960”, that specifies the target platform for the package if the package is targeting a specific platform. By default, this value is NULL.</p>
<div class="alert">
<strong>Note</strong>  
<p>Although this attribute is specified as optional in the schema, it is required for all packages where the <strong>OwnerType</strong> attribute is not set to Microsoft.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p><strong>GroupingKey</strong></p></td>
<td><p>Optional. OEM-defined string that specifies an identifier for grouping packages together. By default, this value is NULL.</p></td>
</tr>
<tr class="odd">
<td><p><strong>BinaryPartition</strong></p></td>
<td><p>Optional. Boolean value that indicates whether the package contains a binary partition object. By default, this value is set to False.</p></td>
</tr>
<tr class="even">
<td><p><strong>Description</strong></p></td>
<td><p>Optional. String that can be used to provide additional details about the package. This field can contain any string and is not read by any Microsoft components once contained in the manifest.</p></td>
</tr>
</tbody>
</table>

 

The following XML example demonstrates how to specify the package
attributes.

``` syntax
<Package xmlns="urn:Microsoft.WindowsPhone/PackageSchema.v8.00"
   Owner="OEMName"
   OwnerType="OEM"     
   ReleaseType="Test"
   Platform="PlatformName"     
   Component="ComponentName"
   SubComponent="SubName">
</Package>
```

**Note**  

The package attributes shown in this example support the use of macros.

 

## <span id="local_project_macros"></span><span id="LOCAL_PROJECT_MACROS"></span>The Macros element and local project macros


To simplify the creation of the package project XML, macros can be used
in the project file. A macro is essentially a unique identifier in the
project file that is later replaced by a defined value. Each macro
definition is represented by a **Macro** element within the parent
**Macros** element. Each macro is defined by the attributes **Id** and
**Value**. The following XML example shows the use of the **Macros**
element to define a macro.

``` syntax
<Macros>
   <Macro Id="TypeLibId" Value="{F5078F18-C551-11D3-89B9-0000F81FE221}"/>
   <Macro Id="ProxyStubClsId" 
      Value="{00020424-0000-0000-C000-000000000046}"/>
</Macros>
```

The following XML example shows the schema definition of the **Macros**
element.

``` syntax
<xs:element name="Macros">
   <xs:complexType>
      <xs:sequence>
         <xs:element name="Macro" minOccurs="1" maxOccurs="unbounded">
            <xs:annotation>
               <xs:documentation>
                  A Macro element defines a text substitution macro that can be used 
                  in other elements. Macros are referenced using NMAKE syntax, i.e. 
                  $(runtime.windows).
               </xs:documentation>
            </xs:annotation>
            <xs:complexType>
               <xs:attribute name="Id" type="MacroIdType" use="required">
                  <xs:annotation>
                     <xs:documentation>
                        Required. The Id for this macro, used in macro references. 
                        For example, if the Id for this macro is "runtime.windows",
                        the macro would be referenced as $(runtime.windows).
                     </xs:documentation>
                  </xs:annotation>
               </xs:attribute>
               <xs:attribute name="Value" type="MacroValueStringType" use="required">
                  <xs:annotation>
                     <xs:documentation>
                        Required. The value that will be substituted for macro 
                        references in macro- enabled XML attributes.
                     </xs:documentation>
                  </xs:annotation>
               </xs:attribute>
            </xs:complexType>
         </xs:element>
      </xs:sequence>
   </xs:complexType>
</xs:element>
```

<table>
<colgroup>
<col style="width: 50%" />
<col style="width: 50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Definition</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p><strong>Id</strong></p></td>
<td><p>Required. String that specifies the name of the macro. This identifier should always start with either letters or a “_” character and then be followed by letters, digits, the “_” character, or the “.” character. No other characters are allowed in the <strong>Id</strong> attribute.</p>
<div class="alert">
<strong>Note</strong>  
<p>The <strong>Id</strong> for a macro is case sensitive and must be unique for each defined Macro element in the package project XML file.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td><p><strong>Value</strong></p></td>
<td><p>Required. String that specifies the expansion of the macro identifier. This value can include most ANSI characters and must match the following regular expression pattern: [a-zA-Z0-9\-_!@#%\^\.,;:=\+~`'\{\}()\[\]\$ \\]*&quot;.</p></td>
</tr>
</tbody>
</table>

 

Macros can be used throughout the project file by using the syntax
$(MacroName). Although macros are valid in most elements of the project
file, they are not supported in all. Macros cannot be referenced in a
nested fashion—for example $(Macro1\_$(Macro2)—and they cannot be used
in the definition of package attributes. Some other items of note about
macros are:

-   A macro definition can include the use of a macro. For example, the
    following is valid.

    ``` syntax
    <Macros>
       <Macro Id="Windows" Value="\windows"/>
       <Macro Id="System32" Value="$(Windows)\System32"/>
    </Macros>
    ```

-   The order macros are defined does not matter as long as the
    definitions are not recursive.

There are additionally global macros that can be used in a package
project XML file, but they cannot be redefined within the package.
Redefining a global macro causes a failure when the package generator
tries to build the package.

## <span id="components_element"></span><span id="COMPONENTS_ELEMENT"></span>The Components element


The **Components** element is the most important part of a package. It
defines for the package generator what files and settings are included
in the target package(s). Files, registry settings, and other
information are grouped into different kinds of objects for packaging.
You can include multiple objects into the target package(s) by listing
them in this XML section. Currently the following objects are defined:

-   OSComponent

-   AppResource

-   Application

-   BCDStore

-   BinaryPartition

-   ComServer

-   Driver

-   Service

-   SvcHostGroup

-   WinRTHost

-   FullTrust

-   InboxApp

-   SettingsGroup

For additional details about these components, refer to [Specifying
components in a package project
file](specifying-components-in-a-package-project-file.md). You can have
any number of these types of objects in your package project (with the
exception of some restrictions for the **BinaryPartition** object).

 

 

[Send comments about this topic to
Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phPackaging\p_phPackaging%5D:%20Primary%20elements%20and%20attributes%20of%20a%20package%20project%20file%20%20RELEASE:%20(11/14/2017)&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




