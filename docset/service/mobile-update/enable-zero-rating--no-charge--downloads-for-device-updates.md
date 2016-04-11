---
Description: 'Enable zero-rating (no-charge) downloads for device updates'
MS-HAID: 'p\_phUpdate.enable\_zero\_rating\_\_no\_charge\_\_downloads\_for\_device\_updates'
MSHAttr: 'PreferredLib:/library/windows/hardware'
title: 'Enable zero-rating (no-charge) downloads for device updates'
---

# Enable zero-rating (no-charge) downloads for device updates


Mobile Operators (MOs) can enable devices to receive updates without being charged for data usage by adding the Windows Update servers to their list of zero-rated sites.

This method only allows updates from the Windows Update servers to be zero-rated. Other network traffic, such as store updates or updates for devices using Internet Connection Sharing (ICS) are not zero-rated.

## <span id="Enabling_zero-rating"></span><span id="enabling_zero-rating"></span><span id="ENABLING_ZERO-RATING"></span>Enabling zero-rating


Add the following two URLs to your network as zero-rated sites:

-   http://wp.download.windowsupdate.com

-   http://wp.ds.download.windowsupdate.com

Once those URLs are zero-rated, there are no more actions to take to get zero rating in place. It will be effective for alldevices (both operator variant and open market devices).

## <span id="Testing_zero-rating"></span><span id="testing_zero-rating"></span><span id="TESTING_ZERO-RATING"></span>Testing zero-rating


To test zero rating, you'll need to trigger an update over cellular which is small enough to stay under the limit defined by your MO. For example, an MO may limit zero-rating downloads to 100MB or less.

1.  Start with a retail device that's ready for an update.

2.  Remove the SIM card (if it has one). Check how much data usage it has associated with it for the current period. Consult with the MO for specific instructions.

3.  Disable all Wi-Fi options:

    1.  In Settings: **Wi-Fi**:

        Change **Wi-Fi networking** to **Off**.

        Change **Turn Wi-Fi back on** to **Manually**.

        Tap Wi-Fi sense, and change **Connect to Wi-Fi hotspots** to **Off**.

    2.  In **Settings** &gt; **Update & recovery** &gt; **Phone update**, clear the **Automatically download updates if my data settings allow it** checkbox.

4.  Force the update through the cellular connection:

    1.  Allow the device to boot up.

    2.  Turn off the device, and then insert a SIM card associated with a data plan.

    3.  Connect the device to power again, boot it up and sign in with your account.

    4.  Search for the update: **Settings** &gt; **Update & recovery** &gt; **Phone update**. You should be able to force the update through the cellular connection.

        Note, you may see a warning saying that you may be charged for the download:

        ![screenshot: ready to download using mobile data](images/oem-update-.png)

    5.  After the download completes, check the data plan usage to see if the device was charged for the update.

## <span id="related_topics"></span>Related topics


[Update](update.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_phUpdate\p_phUpdate%5D:%20Enable%20zero-rating%20%28no-charge%29%20downloads%20for%20device%20updates%20%20RELEASE:%20%284/11/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




