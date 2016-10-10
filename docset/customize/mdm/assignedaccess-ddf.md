---
title: AssignedAccess DDF
description: AssignedAccess DDF
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 224FADDB-0EFD-4E5A-AE20-1BD4ABE24306
---

# AssignedAccess DDF


This topic shows the OMA DM device description framework (DDF) for the **AssignedAccess** configuration service provider. DDF files are used only with OMA DM provisioning XML.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
    "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
    [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
    <VerDTD>1.2</VerDTD>
    <Node>
        <NodeName>AssignedAccess</NodeName>
        <Path>./Vendor/MSFT</Path>
        <DFProperties>
            <AccessType>
                <Get />
            </AccessType>
            <DFFormat>
                <node />
            </DFFormat>
            <Occurrence>
                <One />
            </Occurrence>
            <Scope>
                <Permanent />
            </Scope>
            <DFType>
                <DDFName></DDFName>
            </DFType>
        </DFProperties>
        <Node>
            <NodeName>KioskModeApp</NodeName>
            <DFProperties>
                <AccessType>
                    <Add />
                    <Delete />
                    <Get />
                    <Replace />
                </AccessType>
                <Description>This node can accept and return json string which comprises of account name and AUMID for Kiosk mode app. 

Example: {"User":"domain\\user", "AUMID":"Microsoft.WindowsCalculator_8wekyb3d8bbwe!App"}. 

When configuring kiosk mode app, account name will be used to find the target user. Account name includes domain name and user name. Domain name can be optional if user name is unique across the system. For a local account, domain name should be machine name. When "Get" is executed on this node, domain name is always returned in the output.

This node supports Add, Delete, Replace and Get methods. When there's no configuration, "Get" and "Delete" methods fail. When there's already a configuration for kiosk mode app, "Add" method fails. The data pattern for "Add" and "Replace" is the same. </Description>
                <DFFormat>
                    <chr />
                </DFFormat>
                <Occurrence>
                    <One />
                </Occurrence>
                <Scope>
                    <Dynamic />
                </Scope>
                <CaseSense>
                    <CIS />
                </CaseSense>
                <DFType>
                    <MIME>text/plain</MIME>
                </DFType>
            </DFProperties>
        </Node>
    </Node>
</MgmtTree>
```

## Related topics


[AssignedAccess configuration service provider](assignedaccess-csp.md)

 

 

10/10/2016




