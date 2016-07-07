---
author: joshbax-msft
title: Test.DeleteTestResult Method
description: Test.DeleteTestResult Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: eb298b9d-6403-46cd-90dc-6fe975a4fd40
---

# Test.DeleteTestResult Method


This method deletes a specific result.

## Syntax


**Visual Basic**`Public Overridable Sub DeleteTestResult(ByVal resultToRemove As TestResult)`

**C#**`public virtual void DeleteTestResult(TestResult resultToRemove)`

## Parameters


*resultToRemove*      Result to be removed

## Remarks


Exception thrown if:

-   Result is null.

-   Result is invalid or the wrong type.

-   Result is not a result from this test.

-   Result could not be deleted from the database.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






