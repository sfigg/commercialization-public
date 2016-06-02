@echo Walkthrough-Deploy.bat
@echo     Run from the reference device in the WinPE environment
@echo     This script erases the primary hard drive and applies a new image
@if not exist X:\Windows\System32 echo ERROR: This script is built to run in Windows PE.
@if not exist X:\Windows\System32 goto END
@if %1.==. echo ERROR: To run this script, add a path to a Windows image file.
@if %1.==. echo Example: Walkthrough-Deploy D:\WindowsWithFrench.wim
@if %1.==. goto END
@echo *********************************************************************
@echo Checking to see if the PC is booted in BIOS or UEFI mode.
wpeutil UpdateBootInfo
for /f "tokens=2* delims=	 " %%A in ('reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType') DO SET Firmware=%%B
@echo            Note: delims is a TAB followed by a space.
@if x%Firmware%==x echo ERROR: Can't figure out which firmware we're on.
@if x%Firmware%==x echo        Common fix: In the command above:
@if x%Firmware%==x echo             for /f "tokens=2* delims=	 "
@if x%Firmware%==x echo        ...replace the spaces with a TAB character followed by a space.
@if x%Firmware%==x goto END
@if %Firmware%==0x1 echo The PC is booted in BIOS mode. 
@if %Firmware%==0x2 echo The PC is booted in UEFI mode. 
@echo *********************************************************************
@echo Formatting the primary disk...
@if %Firmware%==0x1 echo ...using BIOS (MBR) format and partitions.
@if %Firmware%==0x2 echo ...using UEFI (GPT) format and partitions. 
@echo CAUTION: All the data on the disk will be DELETED.
@SET /P M=Erase all data and continue? (Y or N):
@if %M%.==Y. set READYSET=GO
@if %M%.==y. set READYSET=GO
@if not %READYSET%.==GO. goto END
if %Firmware%==0x1 diskpart /s %~dp0CreatePartitions-BIOS.txt
if %Firmware%==0x2 diskpart /s %~dp0CreatePartitions-UEFI.txt
@echo *********************************************************************
@echo  == Set high-performance power scheme to speed deployment ==
call powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
@echo *********************************************************************
@echo  == Apply the image to the Windows partition ==
@SET /P M=Deploy as Compact OS? (Y or N):
@if %M%.==Y. set COMPACTOS=Yes
@if %M%.==y. set COMPACTOS=Yes
@if %COMPACTOS%.==Yes. echo Deploying as Compact OS.
if %COMPACTOS%.==Yes. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\ /Compact
if not %COMPACTOS%.==Yes. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\
@echo *********************************************************************
@echo == Copy boot files to the System partition ==
W:\Windows\System32\bcdboot W:\Windows /s S:
@echo *********************************************************************
@echo    Next steps:
@echo    * Add Windows Classic apps (optional):
@echo        DISM /Apply-SiloedPackage /ImagePath:W:\ 
@echo             /PackagePath:D:\App1.spp /PackagePath:D:\App2.spp  ...
@echo    * Add the recovery image:
@echo        ApplyRecovery.bat
@echo    * Reboot:
@echo        exit
:END
