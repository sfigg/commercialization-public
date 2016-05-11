<span id="_Toc351729008" class="anchor"><span id="_Toc399248872" class="anchor"><span id="_Toc444291050" class="anchor"></span></span></span>Filter Requirements
================================================================================================================================================================

<span id="_Toc399248893" class="anchor"><span id="_Toc444291073" class="anchor"></span></span>Filter.Driver.Network.LWF
-----------------------------------------------------------------------------------------------------------------------

*LAN requirements *

### <span id="_Toc399248894" class="anchor"><span id="_Toc444291074" class="anchor"></span></span>Filter.Driver.Network.LWF.Base

*All light weight filters must be NDIS 6.30 or greater.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

All light weight filters must be NDIS 6.30 or greater and be compliant to the NDIS specification on MSDN.

### <span id="_Toc399248895" class="anchor"><span id="_Toc444291075" class="anchor"></span></span>Filter.Driver.Network.LWF.MTUSize

*All light weight filters must be able to accept arbitrary packet sizes which might be greater than the miniport's MTU.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

All light weight filters must be NDIS 6.30 or greater. All light weight filters must be able to accept arbitrary packet sizes which might be greater than the miniport's MTU.
