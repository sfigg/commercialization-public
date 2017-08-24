---
title: Test Collection File schema
description: Test Collection File schema
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 5bccc4a3-08c0-4711-a44b-935c67c12527
---

# Test Collection File schema


The Test Collection File schema is described below.

## <span id="Test_Collection_File_definition"></span><span id="test_collection_file_definition"></span><span id="TEST_COLLECTION_FILE_DEFINITION"></span>Test Collection File definition


``` syntax
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
<xsd:attribute name="Guid" type="xsd:string"/>
<xsd:attribute name="Name" type="xsd:string"/>
<xsd:attribute name="TargetType">
<xsd:simpleType>
<xsd:restriction base="xsd:NMTOKEN">
<xsd:enumeration value="System"/>
<xsd:enumeration value="Device"/>
<xsd:enumeration value="Filter"/>
</xsd:restriction>
</xsd:simpleType>
</xsd:attribute>
<xsd:attribute name="TargetName" type="xsd:string"/>
<xsd:attribute name="TestPassIdentifier" type="xsd:string"/>
<xsd:attribute name="TargetId" type="xsd:string"/>
<xsd:attribute name="HlkBuildVersion" type="xsd:string"/>
<xsd:attribute name="OsPlatform" type="xsd:string"/>
<xsd:attribute name="FeatureDetected" type="xsd:string"/>
<xsd:attribute name="StartTime" type="xsd:dateTime"/>
<xsd:attribute name="SourcePath" type="xsd:string"/>
<xsd:attribute name="Status">
<xsd:simpleType>
<xsd:restriction base="xsd:NMTOKEN">
<xsd:enumeration value="Pass"/>
<xsd:enumeration value="Fail"/>
<xsd:enumeration value="Nodata"/>
</xsd:restriction>
</xsd:simpleType>
</xsd:attribute>
<xsd:attribute name="FiltersAppliedCount" type="xsd:nonNegativeInteger"/>
<xsd:attribute name="InstanceId" type="xsd:string"/>
<xsd:element name="ArrayOfTestCollectionRecord">
<xsd:complexType>
<xsd:sequence>
<xsd:element ref="TestCollectionRecord" minOccurs="0" maxOccurs="unbounded"/>
</xsd:sequence>
</xsd:complexType>
</xsd:element>
<xsd:element name="TestCollectionRecord">
<xsd:complexType>
<xsd:sequence>
<xsd:element ref="ContentLevelSet" minOccurs="0" maxOccurs="unbounded"/>
<xsd:element ref="ScheduleOptionSet" minOccurs="0" maxOccurs="unbounded"/>
<xsd:element ref="FeatureMapped" minOccurs="0"/>
<xsd:element ref="Result" minOccurs="0" maxOccurs="unbounded"/>
</xsd:sequence>
<xsd:attribute ref="Guid"/>
<xsd:attribute ref="Name"/>
<xsd:attribute ref="TargetType"/>
<xsd:attribute ref="TargetName"/>
<xsd:attribute ref="TestPassIdentifier"/>
<xsd:attribute ref="TargetId"/>
<xsd:attribute ref="HlkBuildVersion"/>
<xsd:attribute ref="OsPlatform"/>
</xsd:complexType>
</xsd:element>
<xsd:element name="ContentLevelSet">
<xsd:simpleType>
<xsd:restriction base="xsd:NMTOKEN">
<xsd:enumeration value="Basic"/>
<xsd:enumeration value="Functional"/>
<xsd:enumeration value="Reliability"/>
<xsd:enumeration value="Certification"/>
<xsd:enumeration value="Experiences"/>
<xsd:enumeration value="Optional"/>
</xsd:restriction>
</xsd:simpleType>
</xsd:element>
<xsd:element name="ScheduleOptionSet">
<xsd:simpleType>
<xsd:restriction base="xsd:NMTOKEN">
<xsd:enumeration value="Manual"/>
<xsd:enumeration value="Distributable"/>
<xsd:enumeration value="MultipleDevices"/>
<xsd:enumeration value="MultipleMachines"/>
<xsd:enumeration value="SpecialConfiguration"/>
</xsd:restriction>
</xsd:simpleType>
</xsd:element>
<xsd:element name="FeatureMapped" type="xsd:string"/>
<xsd:element name="Result">
<xsd:complexType>
<xsd:simpleContent>
<xsd:extension base="xsd:string">
<xsd:attribute ref="FeatureDetected"/>
<xsd:attribute ref="StartTime"/>
<xsd:attribute ref="SourcePath"/>
<xsd:attribute ref="Status"/>
<xsd:attribute ref="FiltersAppliedCount"/>
<xsd:attribute ref="InstanceId"/>
</xsd:extension>
</xsd:simpleContent>
</xsd:complexType>
</xsd:element>
</xsd:schema>
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk%5D:%20Test%20Collection%20File%20schema%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




