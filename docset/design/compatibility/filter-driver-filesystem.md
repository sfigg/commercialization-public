<span id="_Toc351729008" class="anchor"><span id="_Toc399248872" class="anchor"><span id="_Toc444291050" class="anchor"></span></span></span>Filter Requirements
================================================================================================================================================================

<span id="_Toc399248886" class="anchor"><span id="_Toc444291066" class="anchor"></span></span>Filter.Driver.FileSystem
----------------------------------------------------------------------------------------------------------------------

### <span id="_Toc399248887" class="anchor"><span id="_Toc444291067" class="anchor"></span></span>Filter.Driver.FileSystem.Functionality

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows file systems, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows file systems, as well as interact accurately with the core components of the operating system. Some areas of particular interest are:   

-   Local file systems

    -   NT API, Win32 API and Win32 mapped IO API usage

    -   Object ID functionality

    -   Reparse points

    -   Oplocks

    -   System cache usage

    -   Transactional capability

-   Remote file systems

-   Oplock semantics over SMB

Information about file system behavior: <http://download.microsoft.com/download/4/3/8/43889780-8d45-4b2e-9d3a-c696a890309f/File%20System%20Behavior%20Overview.pdf>

Information about Oplock semantics over SMB, see the \[MS-SMB2\] protocol document at: <http://msdn.microsoft.com/en-us/library/cc246482(PROT.13).aspx>

### <span id="_Toc399248888" class="anchor"><span id="_Toc444291068" class="anchor"></span></span>Filter.Driver.FileSystem.MiniFilter

*A file system filter driver must be a minifilter driver using the file systems Filter Manager.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

This requirement will be tested implicitly. The gatherer will be written such that it enumerates and surfaces only minifilter drivers for the Windows Hardware Certification Kit (WHCK). Hence, a user will be unable to select a legacy filter driver for certification testing.

Information about Filter Manger and minifilter drivers available here:
<http://msdn.microsoft.com/en-us/library/ff540402(v=VS.85).aspx>

### <span id="_Toc399248889" class="anchor"><span id="_Toc444291069" class="anchor"></span></span>Filter.Driver.FileSystem.NamedPipeAndMailSlots

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of Named Pipe and Mail Slots, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel Mode filter drivers must be architected to maximize the reliability and functionality of Named Pipe and Mail Slots, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are:  

-   Named Pipe file system

    -   Functionality and stress for common APIs

    -   Anonymous pipes

    -   Pipe modes

    -   Open modes

    -   Invalid pipe names

    -   Flushing pipe

    -   Max pipe instance

    -   Pipe direction (in/out/duplex)

    -   Input and output buffer sizes

    -   Various call semantics, such as reconnecting a pipe that has been disconnected at the server end.

    -   Behavior validation of all named pipes operations for each distinct state of a pipe instance.

    -   Performance for named pipe creation and connection.

    -   Throughput for different in/out buffer sizes and number of clients. 

    -   Scalability of increasing number of clients to time it takes for connection to a named pipe instance

-   Mail Slot file system

-   Functionality and stress for common APIs

Information about Named Pipe and Mail Slots can be found at:
<http://msdn.microsoft.com/en-us/library/aa365574(v=VS.85).aspx>

### <span id="_Toc399248890" class="anchor"><span id="_Toc444291070" class="anchor"></span></span>Filter.Driver.FileSystem.RegistryAndProcess

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows registry and processes, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows registry and processes, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are:      

-   Registry

    -   NT API and Win32 API usage

    -   Key functions

    -   Transaction registry operations

    -   Symbolic link behavior

-   Process

    -   General module management

    -   Race conditions at thread/process termination

    -   Process management callback functionality

-   Thread and process handle operations

