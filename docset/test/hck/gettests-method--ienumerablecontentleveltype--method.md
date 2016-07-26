---
author: joshbax-msft
title: GetTests Method (IEnumerable ContentLevelType ) Method
description: GetTests Method (IEnumerable ContentLevelType ) Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 060be08f-1323-4e72-8b77-b0f1d3734380
---

# GetTests Method (IEnumerable&lt;ContentLevelType&gt;) Method


This method retrieves all tests specified by *ContentLevelType*.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel **Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## Usage


**Visual Basic**`Dim instance As ProductInstance``Dim returnValue As IList(Of Test)``returnValue = instance.GetTests`

## Syntax


**Visual Basic**

``` syntax
Public Function GetTests(ByVal contentLevels As IEnumerable(Of ContentLevelType)) As IList(Of Test) 
    If (contentLevels <> Nothing) Then
        Dim tests As List(Of Test) = New List(Of Test)()
        If (contentLevels.Any(Of ContentLevelType)()) Then
            For Each targetFamily As TargetFamily In Me.GetTargetFamilies()
                tests.AddRange(targetFamily.GetTests(contentLevels))
            NextEnd If
        Return tests
    Else
        Throw New ArgumentNullException("contentLevels", "contentLevels cannot be null")
    End If
End Function
```

**C#**

``` syntax
public IList<Test> GetTests(IEnumerable<ContentLevelType> contentLevels)
{
    if (contentLevels != null)
    {
        List<Test> tests = new List<Test>();
        if (contentLevels.Any<ContentLevelType>())
        {
            foreach (TargetFamily targetFamily in this.GetTargetFamilies())
            {
                tests.AddRange(targetFamily.GetTests(contentLevels));
            }
        }
        return tests;
    }
    else
    {
        throw new ArgumentNullException("contentLevels", "contentLevels cannot be null");
    }
}
```

## Parameters


*contentLevels*      List of content levels that the test should be mapped to.

## Return Value


A list of tests. If *contentLevels* is empty, then returns an empty collection. Otherwise, returns all tests that are mapped to at least one content level in *contentLevels*.

## Remarks


An exception is thrown when *contentLevels* is null.

## Thread Safety


Any public static (**Shared** in Visual Basic) members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 






