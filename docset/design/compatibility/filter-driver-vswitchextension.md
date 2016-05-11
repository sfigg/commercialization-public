<span id="_Toc351729008" class="anchor"><span id="_Toc399248872" class="anchor"><span id="_Toc444291050" class="anchor"></span></span></span>Filter Requirements
================================================================================================================================================================

<span id="_Toc399248898" class="anchor"><span id="_Toc444291078" class="anchor"></span></span>Filter.Driver.vSwitchExtension
----------------------------------------------------------------------------------------------------------------------------

### <span id="_Toc399248899" class="anchor"><span id="_Toc444291079" class="anchor"></span></span>Filter.Driver.vSwitchExtension.ExtensionRequirements

*Filter drivers that implement VM Switch Extensibility must support required functionalities, modes, and protocols.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Filter drivers that implement VM Switch Extensibility must support required functionalities, modes, and protocols.

Requirements

-   An extension must pass NDIS Filter logo requirements.

    -   An extension must have a valid INF.

    -   An extension must make only NDIS, WDF, or WDM calls; any calls to other kernel mode components are not allowed.

-   An extension must support Hyper-V Live Migration.

    -   Don't break LM, Save/Restore, Export/Import

    -   Don't block saved data from another extension

    -   Don't block other extension interactions

-   All traffic passing through a virtual switch coming from a VM, a host VNIC, external NIC, or extension must not have headers modified by extensions.   Exceptions from this requirement include:

    -   Redirecting traffic to a network appliance

    -   Mutable IP header fields (as specified in RFC 4302 section 3.3.3.1.1.1 for IPv4 and section 3.3.3.1.2.1 for IPv6)

-   An unconfigured extension must not "break" connectivity between the host and external network.

-   A capture extension must not "break" connectivity between vSwitch ports.

-   An extension must pass the following switch/port/NIC configuration OIDs down the stack of an extension:

    -   OID\_SWITCH\_PARAMETERS

    -   OID\_SWITCH\_PORT\_ARRAY

    -   OID\_SWITCH\_PORT\_TEARDOWN

    -   OID\_SWITCH\_PORT\_DELETE

    -   OID\_SWITCH\_NIC\_ARRAY

    -   OID\_SWITCH\_NIC\_CONNECT

    -   OID\_SWITCH\_NIC\_DISCONNECT

    -   OID\_SWITCH\_NIC\_DELETE

    -   OID\_SWITCH\_NIC\_REQUEST

-   An extension must pass the following policy/status OIDs that it does not consume down the stack:

    -   OID\_SWITCH\_PORT\_PROPERTY\_ADD

    -   OID\_SWITCH\_PORT\_PROPERTY\_UPDATE

    -   OID\_SWITCH\_PORT\_PROPERTY\_DELETE

    -   OID\_SWITCH\_PROPERTY\_ADD

    -   OID\_SWITCH\_PROPERTY\_UPDATE

    -   OID\_SWITCH\_PROPERTY\_DELETE

    -   OID\_SWITCH\_PORT\_FEATURE\_STATUS\_QUERY

    -   OID\_SWITCH\_FEATURE\_STATUS\_QUERY

-   An extension must pass the following policy OIDs down the stack:

    -   OID\_SWITCH\_PORT\_PROPERTY\_ENUM

    -   OID\_SWITCH\_PROPERTY\_ENUM

-   An extension must pass the following up the stack:

    -   NDIS\_SWITCH\_NIC\_STATUS\_INDICATION

-   A "capture" extension must not call any of the following functions:

*Design Notes:*
See the VM Switch Extensibility Specification.
