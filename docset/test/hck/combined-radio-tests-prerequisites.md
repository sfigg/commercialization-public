---
author: joshbax-msft
title: Combined Radio Tests Prerequisites
description: Combined Radio Tests Prerequisites
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: c9bc3bb3-5390-4629-a28b-6bd3ea34e3b7
---

# Combined Radio Tests Prerequisites


For all combined radio tests, you must first complete the test setup as described in the test requirements: [System Client Testing Prerequisites](system-client-testing-prerequisites.md).

**In this topic:**

-   [Set up Combined Radio Test Tool for GPS and Bluetooth](#crgpsblue)

-   [Set up Combined Radio Test Tool for GPS and Wireless LAN](#crgpswlan)

-   [Set up Combined Radio Test Tool for Wireless LAN and Bluetooth](#crwlanblue)

-   [Set up Combined Radio Test Tool for Wireless LAN, Mobile Broadband and Bluetooth](#crall)

## <a href="" id="crgpsblue"></a>Set up Combined Radio Test Tool for GPS and Bluetooth


The GPS and Bluetooth combined radio tests are triggered by the presence of a GPS radio on the system that is being tested. If the system does not have a Bluetooth radio, it automatically passes this test. The instructions here are used for systems with both GPS and Bluetooth radios.

To complete this test, you must configure two computers. The computer that you are trying to certify is referred to as the Device under Test (DUT). The second computer is referred to as the Support Device under Test (SUT), and it requires a Bluetooth radio. The computers must be less than ten meters from each other, and are preferably separated by five meters or less.

The DUT and SUT computers must be connected to each other and to the Windows HCK Controller by using an Ethernet HUB that has DHCP support. The computers can use a built-in Ethernet port or a USB dongle for the connection. *Figure 1 GPS Bluetooth Configuration* shows this setup:

![combined radio configuration](images/hck-winb-fig1-combinedradioconfig-gps-bluetooth.jpg)

Figure 1 GPS Bluetooth Configuration

In Windows HCK Studio, from the **Machine Set, Role** drop-down list, select **SUT**. Select the checkbox next to the designated SUT computer from the displayed list of computers, and click **OK**.

## <a href="" id="crgpswlan"></a>Set up Combined Radio Test Tool for GPS and Wireless LAN


The GPS and Wireless LAN combined radio tests are initiated by the presence of a GPS radio on the system that is being tested. If the system does not have a Wireless LAN radio, it automatically passes this test. These instructions are used for systems that have both GPS and Wireless LAN radios.

Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

To complete this test, you must configure two computers: a 2.4 GHz Wireless LAN Access Point or 5 GHz Access Point (depending on the test), or one dual band Access Point. The computer that you are trying to certify is referred to as the Device under Test (DUT). The second computer is referred to as the Support Device under Test (SUT). The computers must be less than ten meters from each other, and are preferably separated by five meters or less.

The DUT and SUT computers must be connected to each other and to the Windows HCK Controller by using an Ethernet HUB that has DHCP support. The computers can use a built-in Ethernet port or a USB dongle for the connection. The SUT computer must be connected to the access point by an Ethernet connection.

The Wireless LAN Access Point must be configured by using the following settings:

1.  Configure Physical AP to a non-social channel.

2.  If the physical AP supports both 2.4GHz and 5GHz, disable the radio that is not being used for the test.

3.  Set DTIM (Delivery Traffic Indication Message) on the AP to 1. For most routers, this setting is located on the **Advance Properties** tab.

4.  Set the 802.11 Authentication and Encryption settings to WPA2-PSK and AES.

*Figure 2 GPS WLAN Configuration* shows this setup:

![combined radio gps wlan configuration](images/hck-winb-fig2-combinedradioconfig-gps-wlan.jpg)

Figure 2 GPS WLAN Configuration

In Windows HCK Studio, from the **Machine Set, Role** drop-down list, select **SUT**. Select the checkbox next to the designated SUT computer from the displayed list of computers, and click **OK**.

## <a href="" id="crwlanblue"></a>Set up Combined Radio Test Tool for Wireless LAN and Bluetooth


The Wireless LAN and Bluetooth combined radio tests are initiated by the presence of a Bluetooth radio on the system that is being tested. If the system does not have a Wireless LAN radio, it automatically passes this test. These instructions are for systems that have both Bluetooth and Wireless LAN radios.

Before you run the test, complete the test setup as described in the test requirements: [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

To complete this test, you must configure two computers: a 2.4 GHz Wireless LAN Access Point or 5 GHz Access Point (depending on the test), or one dual band Access Point. The computer that you are trying to certify is referred to as the Device under Test (DUT). The second computer is referred to as the Support Device under Test (SUT). The computers must be less than ten meters from each other, and are preferably separated by five meters or less.

The DUT and SUT computers must be connected to each other and to the Windows HCK Controller by using an Ethernet HUB that has DHCP support. The computers can use a built-in Ethernet port or a USB dongle for the connection. The SUT computer must be connected to the access point by using an Ethernet connection.

The Wireless LAN Access Point must be configured by using the following settings:

1.  Configure the physical AP to a non-social channel.

2.  If the physical AP supports both 2.4GHz and 5GHz, disable the radio that is not being used for the test.

3.  Set DTIM (Delivery Traffic Indication Message) on the AP to 1. For most routers, this setting is located on the **Advance Properties** tab.

4.  Set the 802.11 Authentication and Encryption settings to WPA2-PSK and AES.

See *Figure 2 GPS WLAN Configuration* for an example of this setup.

In Windows HCK Studio, from the **Machine Set, Role** drop-down list, select **SUT**. Select the checkbox next to the designated SUT computer from the displayed list of computers, and click **OK**.

## <a href="" id="crall"></a>Set up Combined Radio Test Tool for Wireless LAN, Mobile Broadband and Bluetooth


The Wireless LAN, Mobile Broadband and Bluetooth combined radio tests are initiated by the presence of a Mobile Broadband radio on the system that is being tested. If the system does not have a Wireless LAN or Bluetooth radio, it automatically passes this test. These instructions are for systems that have Bluetooth, Mobile Broadband, and Wireless LAN radios.

Before you run the test, complete the test setup as described in the test requirements: [Mobile Broadband Testing Prerequisites](mobile-broadband-testing-prerequisites.md) and [Wireless LAN (802.11) Testing Prerequisites](wireless-lan--80211--testing-prerequisites.md).

To complete this test, you must configure two computers: a 2.4 GHz Wireless LAN Access Point or 5 GHz Access Point (depending on the test), or one dual band Access Point. The computer that you are trying to certify is referred to as the Device under Test (DUT). The second computer is referred to as the Support Device under Test (SUT), and it requires a Bluetooth radio. The computers must be less than ten meters from each other, and are preferably separated by five meters or less.

The DUT and SUT computers must be connected to each other and to the Windows HCK Controller by an Ethernet HUB that has DHCP support. The computers can use a built-in Ethernet port or a USB dongle for the connection. The SUT computer must be connected to the access point by using an Ethernet connection.

The Wireless LAN Access Point must be configured by using the following settings:

1.  Configure the physical AP to a non-social channel.

2.  If the physical AP supports both 2.4GHz and 5GHz, disable radio that is not being used for the test.

3.  Set DTIM (Delivery Traffic Indication Message) on the AP to 1. For most routers, this setting is located on the **Advance Properties** tab.

4.  Set the 802.11 Authentication and Encryption settings to WPA2-PSK and AES.

See *Figure 2 GPS WLAN Configuration* for an example of this setup.

In Windows HCK Studio, from the **Machine Set, Role** drop-down list, select **SUT**. Select the checkbox next to the designated SUT computer from the displayed list of computers, and click **OK**.

## Related topics


[Combined Radio Tests](combined-radio-tests.md)

[System.Client Testing](systemclient-testing.md)

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hck\p_hck%5D:%20Combined%20Radio%20Tests%20Prerequisites%20%20RELEASE:%20%284/27/2016%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/default.aspx. "Send comments about this topic to Microsoft")





