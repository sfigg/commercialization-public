---
Description: 'Change Media Streaming Settings - Windows Server Essentials'
MS-HAID: 'p\_wse\_adk.change\_media\_streaming\_settings\_\_\_windows\_server\_essentials'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Change Media Streaming Settings - Windows Server Essentials'
---

# Change Media Streaming Settings - Windows Server Essentials


The following options are available for you to change media streaming settings:

-   [Hide remote media streaming add-in](#bkmk-disableremote)

-   [Set the media library name](#bkmk-libraryname)

-   [Programmatically enable or disable media streaming](#bkmk-program)

## <span id="BKMK_DisableRemote"></span><span id="bkmk_disableremote"></span><span id="BKMK_DISABLEREMOTE"></span>


**Hide remote media streaming add-in**

1.  On the server, move your mouse to the upper right corner of the screen, and click **Search**.

2.  In the **Search** box, type **regedit**, and then click the **Regedit** application.

3.  In the left pane, expand down to the following registry entry:

    **HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Windows Server\\RemoteAccess\\DisabledAddIns**

4.  Right-click **DisabledAddIns**, point to **New**, and then click **DWORD Value**.

5.  For the new value, type **497796c6-9cc7-43be-aa26-4e6b5695370d**, which is the identifier for the remote media streaming add-in, and then press **Enter**.

6.  Right click the value, and then click **Modify**.

7.  Type **1** for the value data, and then click **OK**.

8.  Repeat step 4-7, create three more **DWORD Value: c818cb56-1bd7-41ef-aeb2-6472f76eca41, 72225521-428d-4b35-b975-2879b7147486, 53d9b5d7-357d-479c-bfd9-96c8b2af3b2c**, which separately identifies Video, Photo, Music add-ins, and modify their values to be **1**.

## <span id="BKMK_LibraryName"></span><span id="bkmk_libraryname"></span><span id="BKMK_LIBRARYNAME"></span>Set the media library name


To use a class in the Windows Server Solutions SDK to set the name of the media library, set the name of the media library, by using the **SetMediaLibraryName** method of the **MediaStreamingManager** class in the **Microsoft.WindowsServerSolutions.MediaStreaming** namespace. The following example shows how to set the name of the media library:

``` syntax
MediaStreamingManager mediaStreamingManager = new MediaStreamingManager();
string mediaLibraryName = Guid.NewGuid().ToString("B"); 
mediaStreamingManager.SetMediaLibraryName(mediaLibraryName);
```

For more information, see [Windows Server Solutions SDK](http://go.microsoft.com/fwlink/p/?linkid=248648).

## <span id="BKMK_Program"></span><span id="bkmk_program"></span><span id="BKMK_PROGRAM"></span>Programmatically enable or disable media streaming


To use a class in the Windows Server Solutions SDK to programmatically enable or disable media streaming, use the **SetMediaStreamingEnabled** method of the **MediaStreamingManager** class in the **Microsoft.WindowsServerSolutions.MediaStreaming** namespace. The following code example shows how to enable media streaming:

``` syntax
MediaStreamingManager mediaStreamingManager = new MediaStreamingManager();
mediaStreamingManager.SetMediaStreamingEnabled(true);
```

The following code example shows how to disable media streaming:

``` syntax
MediaStreamingManager mediaStreamingManager = new MediaStreamingManager();
mediaStreamingManager.SetMediaStreamingEnabled(false);
```

## <span id="related_topics"></span>Related topics


[Preparing the Image for Deployment - Windows Server Essentials](preparing-the-image-for-deployment---windows-server-essentials.md)

[Testing the Customer Experience - Windows Server Essentials](testing-the-customer-experience---windows-server-essentials.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_wse_adk\p_wse_adk%5D:%20Change%20Media%20Streaming%20Settings%20-%20Windows%20Server%20Essentials%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




