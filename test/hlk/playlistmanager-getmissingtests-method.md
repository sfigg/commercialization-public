---
title: PlaylistManager.GetMissingTests Method
description: PlaylistManager.GetMissingTests Method
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: F0AB802F-02E9-4E19-8723-401570E44358
---

# PlaylistManager.GetMissingTests Method


**Warning**  This method is being deprecated.

 

Uses the given [Playlist](playlist-class.md) to find tests for each [Target](target-class.md) in the current [PlaylistManager](playlistmanager-class.md)'s Project that should be present but are not.

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public Dictionary<Target, List<PlaylistTest>> GetMissingTests (`

          `Playlist playlist`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*playlist*

 The [Playlist](playlist-class.md) for which missing tests will be found.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


*Dictionary&lt;Target, List&lt;PlaylistTest&gt;&gt;*

A dictionary containing a list of missing tests for each [Target](target-class.md) in the [PlaylistManager](playlistmanager-class.md)'s Project.

## <span id="Remarks"></span><span id="remarks"></span><span id="REMARKS"></span>Remarks


Tests are determined to be missing if they have features that match the features of a Target, but the Test itself does not exist for the Target. This functionality should only be used in conjunction with official Playlist files for the Compat program.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PlaylistManager.GetMissingTests%20Method%20%20RELEASE:%20%287/11/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




