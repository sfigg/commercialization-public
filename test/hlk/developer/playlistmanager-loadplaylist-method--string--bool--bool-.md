---
title: PlaylistManager.LoadPlaylist Method (string, bool, bool)
description: PlaylistManager.LoadPlaylist Method (string, bool, bool)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 7A7844B0-93CE-4B6B-BC47-D921DB7321E9
---

# PlaylistManager.LoadPlaylist Method (string, bool, bool)


**Warning**  This overload is being deprecated. The additional parameter options are no longer supported. Please use [LoadPlaylist(string playlistPath)](playlistmanager-loadplaylist-method--string-.md).

 

Loads the tests from a Playlist into this [PlaylistManager](playlistmanager-class.md)'s [Project](project-class.md).

**Namespace:** Microsoft.Windows.Kits.Hardware.ObjectModel

**Assembly:** Microsoft.Windows.Kits.Hardware.ObjectModel (in Microsoft.Windows.Kits.Hardware.ObjectModel)

## <span id="Syntax"></span><span id="syntax"></span><span id="SYNTAX"></span>Syntax


**C#**

`public List<Guid> LoadPlaylist (`

          `string playlistPath`

          `bool removeExistingTestsNotInPlaylist`

          `bool disableFeatureDetection`

`)`

## <span id="Parameters"></span><span id="parameters"></span><span id="PARAMETERS"></span>Parameters


*playlistPath*

Full path to Playlist file. The path does not have to be cleaned/validated before passing to this method.

*removeExistingTestsNotInPlaylist*

Specifies whether tests not in the Playlist but in the [PlaylistManager](playlistmanager-class.md)'s [Project](project-class.md) should be removed before loading the Playlist. If false, the tests from the Playlist will be added to the PlaylistManager's Project existing test list. If true, all tests in the PlaylistManager's Project that are not in the Playlist will be removed. All tests that are in both the Project and the Playlist will be left as-is, meaning previous results will persist. All tests that are only in the Playlist will be added as new tests to the Project.

*disableFeatureDetection*

Specifies whether feature detection should occur when adding the [PlaylistTest](playlisttest-class.md)s. If true, every test in the [Playlist](playlist-class.md) will be added regardless of whether feature detection finds any relevant targets.

## <span id="Return_Value"></span><span id="return_value"></span><span id="RETURN_VALUE"></span>Return Value


*List&lt;Guid&gt;*

Guids for tests that could not be added because they could not be found.

## <span id="Thread_Safety"></span><span id="thread_safety"></span><span id="THREAD_SAFETY"></span>Thread Safety


Any public static members of this type are thread safe. Any instance members are not guaranteed to be thread safe.

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20PlaylistManager.LoadPlaylist%20Method%20%28string,%20bool,%20bool%29%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




