---
title: EnterpriseDataProtection DDF file
description: The following topic shows the OMA DM device description framework (DDF) for the EnterpriseDataProtection configuration service provider.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: C6427C52-76F9-4EE0-98F9-DE278529D459
---

# EnterpriseDataProtection DDF file


The following topic shows the OMA DM device description framework (DDF) for the EnterpriseDataProtection configuration service provider.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN"
  "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd"
  [<?oma-dm-ddf-ver supported-versions="1.2"?>]>
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">
  <VerDTD>1.2</VerDTD>
      <Node>
        <NodeName>EnterpriseDataProtection</NodeName>
        <Path>./Device/Vendor/MSFT</Path>
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
            <MIME>com.microsoft/1.0/MDM/EnterpriseDataProtection</MIME>
          </DFType>
        </DFProperties>
        <Node>
          <NodeName>Settings</NodeName>
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
            <NodeName>EDPEnforcementLevel</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <Description>Maps to MDM "EDPEnforcementLevel" policy.</Description>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EnterpriseProtectedDomainNames</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <Description>Maps to EnterpriseProtectedDomainNames MDM policy.</Description>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllowUserDecryption</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RequireProtectionUnderLockConfig</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>DataRecoveryCertificate</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <b64 />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <DDFName></DDFName>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RevokeOnUnenroll</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>RMSTemplateIDForEDP</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <chr />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>AllowAzureRMSForEDP</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
          <Node>
            <NodeName>EDPShowIcons</NodeName>
            <DFProperties>
              <AccessType>
                <Get />
                <Add />
                <Delete />
                <Replace />
              </AccessType>
              <DFFormat>
                <int />
              </DFFormat>
              <Occurrence>
                <One />
              </Occurrence>
              <Scope>
                <Dynamic />
              </Scope>
              <DFType>
                <MIME>text/plain</MIME>
              </DFType>
            </DFProperties>
          </Node>
        </Node>
        <Node>
          <NodeName>Status</NodeName>
          <DFProperties>
            <AccessType>
              <Get />
            </AccessType>
            <DFFormat>
              <int />
            </DFFormat>
            <Occurrence>
              <One />
            </Occurrence>
            <Scope>
              <Permanent />
            </Scope>
            <DFTitle>Current state of Enterprise Data Protection configuration on the device.</DFTitle>
            <DFType>
              <MIME>text/plain</MIME>
            </DFType>
          </DFProperties>
        </Node>
      </Node>
</MgmtTree>
```

 

 

10/10/2016




