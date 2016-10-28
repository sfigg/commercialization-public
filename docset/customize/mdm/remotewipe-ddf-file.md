---
title: RemoteWipe DDF file
description: RemoteWipe DDF file
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10ec4fb7-f911-4d0c-9a8f-e96bf5faea0c
---

# RemoteWipe DDF file


This topic shows the OMA DM device description framework (DDF) for the **RemoteWipe** configuration service provider. DDF files are used only with OMA DM provisioning XML.

``` syntax
<?xml version="1.0" encoding="UTF-8"?>  
<!--  
Copyright (c) Microsoft Corporation.  All rights reserved.  
-->  
<!--  
Use of this source code is subject to the terms of the Microsoft  
premium shared source license agreement under which you licensed  
this source code. If you did not accept the terms of the license  
agreement, you are not authorized to use this source code.  
For the terms of the license, please see the license agreement  
signed by you and Microsoft.  
THE SOURCE CODE IS PROVIDED "AS IS", WITH NO WARRANTIES OR INDEMNITIES.  
-->  
<!DOCTYPE MgmtTree PUBLIC " -//OMA//DTD-DM-DDF 1.2//EN" "http://www.openmobilealliance.org/tech/DTD/DM_DDF-V1_2.dtd" [<?oma-dm-ddf-ver supported-versions="1.2"?>]>  
<MgmtTree xmlns:MSFT="http://schemas.microsoft.com/MobileDevice/DM">  
    <VerDTD>1.2</VerDTD>  
    <Node>  
        <NodeName>RemoteWipe</NodeName>  
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
                <MIME>com.microsoft/1.0/MDM/RemoteWipe</MIME>  
            </DFType>  
        </DFProperties>  
        <Node>  
            <NodeName>doWipe</NodeName>  
            <DFProperties>  
                <AccessType>  
                    <Exec />  
                </AccessType>  
                <Description>Exec on this node will perform a remote wipe on the device. The return status code shows whether the device accepted the Exec command.</Description>  
                <DFFormat>  
                    <chr />  
                </DFFormat>  
                <Occurrence>  
                    <One />  
                </Occurrence>  
                <Scope>  
                    <Permanent />  
                </Scope>  
                <DFType>  
                    <MIME>text/plain</MIME>  
                </DFType>  
            </DFProperties>  
        </Node>  
        <Node>  
            <NodeName>doWipePersistProvisionedData</NodeName>  
            <DFProperties>  
                <AccessType>  
                    <Exec />  
                </AccessType>  
                <Description>Exec on this node will back up provisioning data to a persistent location and perform a remote wipe on the device. The information that was backed up will be restored and applied to the device when it resumes. The return status code shows whether the device accepted the Exec command.</Description>  
                <DFFormat>  
                    <chr />  
                </DFFormat>  
                <Occurrence>  
                    <One />  
                </Occurrence>  
                <Scope>  
                    <Permanent />  
                </Scope>  
                <DFType>  
                    <MIME>text/plain</MIME>  
                </DFType>  
            </DFProperties>  
        </Node>  
    </Node>  
</MgmtTree>
```

## Related topics


[RemoteWipe configuration service provider](remotewipe-csp.md)

 

 






