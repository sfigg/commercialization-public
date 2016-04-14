---
Description: 'As new Windows updates become available, add them to your image.'
MS-HAID: 'p\_sxs\_dmfg.servicing\_the\_image\_with\_windows\_updates'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Lab 2c: Servicing the image with Windows Updates'
---

# Lab 2c: Servicing the image with Windows Updates


As new Windows updates become available, add them to your image.

By default, updates installed after a target rollup update are not restored. To ensure that updates preinstalled during manufacturing are not discarded after recovery, they should be marked as permanent by using the /Cleanup-Image command in DISM with the /StartComponentCleanup and /ResetBase options. Updates marked as permanent are always restored during recovery.

**Step 1: Mount the Windows image file**

-   Run the following commands:

    ``` syntax
    md c:\mount\windows
    Dism /Mount-Image /ImageFile:"C:\Images\WindowsWithOffice.wim" /Index:1 /MountDir:"C:\mount\windows" /Optimize
    ```

    Where /Index:1 refers to the image you want to mount. Note, rem use /Index:2 to mount the Windows 10 Home edition from the default Windows 10 Home/Pro edition.

**Step 2: Add the Windows update package**

1.  From Microsoft Connect, download the Windows update. Save this in the folder: C:\\WindowsUpdates.
2.  Add the updates to the image. For packages with dependencies, make sure you install the packages in order. If you’re not sure of the dependencies, it’s OK to put them all in the same folder, and then add them all using the same DISM /Add-Package command.

    ``` syntax
    Dism /Add-Package /Image:"C:\mount\windows" /PackagePath="C:\WindowsUpdates\kb1010101.cab" /PackagePath="C:\WindowsUpdates\kb1020202.cab" /PackagePath="C:\WindowsUpdates\kb1030303.cab" /LogPath=C:\mount\dism.log
    ```

    where C is the drive letter of the drive and `kb1010101.cab`, `kb1020202.cab`, and `kb3030303.cab` are update packages that you’re adding to the image.

3.  Lock in the updates, so that they are restored during a recovery.

    ``` syntax
    DISM /Cleanup-Image /Image=C:\ /StartComponentCleanup /ResetBase /ScratchDir:C:\Temp
    ```

**Step 3: Unmount the images**

1.  Close all applications that might access files from the image.
2.  Commit the changes and unmount the Windows image:

    ``` syntax
    Dism /Unmount-Image /MountDir:"C:\mount\windows" /Commit
    ```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_sxs_dmfg\p_sxs_dmfg%5D:%20Lab%202c:%20Servicing%20the%20image%20with%20Windows%20Updates%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")



