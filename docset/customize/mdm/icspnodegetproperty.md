---
title: ICSPNode GetProperty
description: ICSPNode GetProperty
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: a2bdc158-72e0-4cdb-97ce-f5cf1a44b7db
---

# ICSPNode::GetProperty


This method returns a property value from a configuration service provider node.

## Syntax


``` syntax
HRESULT GetProperty([in] REFGUID guidProperty, 
                    [in,out] VARIANT* pvarValue);
```

## Parameters


<a href="" id="guidproperty"></a>*guidProperty*  
GUID that specifies the property to return.

<a href="" id="pvarvalue"></a>*pvarValue*  
Value to return.

## Return Value


A value of S\_OK indicates that the value was successfully returned. CFGMGR\_E\_COMMANDNOTSUPPORTED indicates that the node does not implement the property itself, but delegates the management of the property to ConfigManager2.

## Remarks


Every node must handle the CFGMGR\_PROPERTY\_DATATYPE property.

For externally–transactioned nodes, no additional methods are required for successful rollback.

## Requirements


**Header:** None

## Related topics


[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 

 

10/10/2016




