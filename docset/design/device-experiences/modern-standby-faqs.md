---
title: Modern Standby FAQs
description: Typical questions related to Modern Standby are answered here.
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 08E6F079-A7F9-4DD9-95C2-A9A6B3350594
---

# Modern Standby FAQs


Typical questions related to Modern Standby are answered here.

-   **Q:** Which versions of Windows support Modern Standby?

    **A:** Modern Standby is supported on Windows 10 for desktop editions (Home, Pro, Enterprise, and Education) and Windows 10 Mobile.

-   **Q:** What if I have a platform that needs to support both Windows 10 and older versions of Windows?

    **A:** The following table describes what happens with platforms in each of a number of configurations. Investigations are still ongoing to determine the behavior of a system configured for Modern Standby that is installed with Windows 8 or Windows 8.1.

    **Note**  The S3 object is not required for Connected Standby or Modern Standby support. However, if it is not available, S3 support won’t be available.

     

    <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th>Flags</th>
    <th>Windows 7</th>
    <th>Windows 8.1</th>
    <th>Windows 10</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td><p>ACPI_S0_LOW_POWER_IDLE FADT flag</p>
    <p>All built-in networking devices support WoL patterns, protocol offloads, and D0 packet coalescing</p>
    <p>Primary storage is SSD or hybrid drive (seek latency)</p>
    <p>ACPI firmware provides an S3 object</p></td>
    <td><p>S3</p></td>
    <td><p>CS</p></td>
    <td><p>Connected Modern Standby</p></td>
    </tr>
    <tr class="even">
    <td><p>ACPI_S0_LOW_POWER_IDLE FADT flag</p>
    <p>ACPI firmware provides an S3 object</p></td>
    <td><p>S3</p></td>
    <td><p>S3</p></td>
    <td><p>Disconnected Modern Standby</p></td>
    </tr>
    <tr class="odd">
    <td><p>ACPI firmware provides an S3 object</p></td>
    <td><p>S3</p></td>
    <td><p>S3</p></td>
    <td><p>S3</p></td>
    </tr>
    </tbody>
    </table>

     

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_WEG_Hardware\p_weg_hardware%5D:%20Modern%20Standby%20FAQs%20%20RELEASE:%20%285/9/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")




