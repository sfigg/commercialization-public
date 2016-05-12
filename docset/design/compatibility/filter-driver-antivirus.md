Filter.Driver.AntiVirus 
=======================

*Antivirus requirements for filter drivers.*

### Filter.Driver.AntiVirus.Functionality

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
 

-   Local File Systems

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

### Filter.Driver.AntiVirus.IcarDetection

*Anti-virus filter drivers must be architected to exercise basic anti-virus functionality, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
            
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Anti-virus filter drivers must be architected to exercise basic anti-virus functionality, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are:    

-   File systems

-   Anti-virus functionality

### Filter.Driver.AntiVirus.MiniFilter

*A file system filter driver must be a minifilter driver that uses the file systems filter manager.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

This requirement will be tested implicitly. The driver detection mechanism of the Windows Hardware Lab Kit will be written such that legacy file system filter drivers are not enumerated. Only minifilter drivers will be enumerated and surfaced in the kit. As such, a user will be unable to select a legacy filter driver for logo testing via the kit.

Information about filter manger and minifilter drivers available here:
<http://msdn.microsoft.com/en-us/library/ff540402(v=VS.85).aspx>
<http://msdn.microsoft.com/en-us/windows/hardware/gg462968.aspx>

### Filter.Driver.AntiVirus.NamedPipeAndMailSlots

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of Named Pipe and Mail Slots, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel mode filter drivers must be architected to maximize the reliability and functionality of Named Pipe and Mail Slots, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are: 

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

    -   Scalability of increasing number of clients to time it takes for a connection to a named pipe instance

-   Mail Slot file system

-   Functionality and stress for common APIs

Information about Named Pipe and Mail Slots can be found at:
<http://msdn.microsoft.com/en-us/library/aa365574(v=VS.85).aspx>

### Filter.Driver.AntiVirus.RegistryAndProcess

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of the Windows registry and processes, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel mode filter drivers must be architected to maximize the reliability and functionality of the Windows registry and processes, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are:      

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

### Filter.Driver.AntiVirus.Winsock

*Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows Sockets, as well as interact accurately with the core components of the operating system.*

<table><tr><th>Applies to</th><td><p>Windows v10.0 Client x64</p>
                                          
<p>Windows v10.0 Client x86</p>
                                          
<p>Windows v10.0 Mobile ARM</p>
                                          
<p>Windows v10.0 Mobile ARM64</p>
                                          
<p>Windows v10.0 Mobile x86</p>
                                          
<p>Windows v10.0 Server x64</p>
</td></tr></table>

**Description**

Kernel mode filter drivers must be architected to maximize the reliability and functionality of Windows Sockets, as well as interact accurately with the core components of the operating system.  Some areas of particular interest are:   

-   Winsock

-   Winsock API functionality

Information about Winsock APIs can be found at:
<http://msdn.microsoft.com/en-us/library/ms740673(VS.85).aspx>
