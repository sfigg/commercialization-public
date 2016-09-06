---
author: kpacquer
Description: 'Update the time server on IoT Core devices'
MSHAttr: 'PreferredLib:/library'
title: 'Update the time server'
---

# Update the time server

Synchronize the system time between IoT Core devices and a time server. IoT Core supports using multiple time servers.

To add a time server, create a registry key that lists the time server or servers.  

To add the time server from a command line (for example, using a tool like PuTTY):
1.	 Add the reg key
reg add HKLM\SYSTEM\CurrentControlSet\Services\w32time\Parameters /v NtpServer /t REG_SZ /d "time.windows.com,0x9 tick.usno.navy.mil,0x9 europe.pool.ntp.org,0x9 asia.pool.ntp.org,0x9" /f >nul 2>&1

2.	Stop and restart the network services
    
	``` syntax
    net stop
    net start
	```

To add the time server for IoT Core images:

1.	Create a package definition file, and add it to the image. To learn more, see  Lab 1c: Add a file and a registry setting to an image. Sample script: 

	``` syntax
    <OSComponent> 
      <RegKeys> 
         <RegKey KeyName="$(hklm.software)\CurrentControlSet\Services\w32time\Parameters">
            <RegValue Name="NtpServer" Value="time.windows.com,0x9 tick.usno.navy.mil,0x9 europe.pool.ntp.org,0x9 asia.pool.ntp.org,0x9" Type="REG_SZ"/>
        </RegKey>
      </RegKeys>
    </OSComponent>
```

