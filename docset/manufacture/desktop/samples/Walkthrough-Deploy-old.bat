@cls
@echo Walkthrough-Deploy.bat
@rem  Note: Run from the reference device in the WinPE environment
@echo.
@echo.
@if %1x==x echo Re-run this program with a path to a WIM file, example:
@if %1x==x echo Walkthrough-Deploy.bat D:\WindowsWithFrenchPlusApps.wim
@if %1x==x goto END
@echo.
@rem Use this menu to choose standard or Compact OS deployment
SET /P M=Deploy as Compact OS? (Y or N):
@if %M%.==Y. set COMPACTOS=True
@if %M%.==y. set COMPACTOS=True
@if %COMPACTOS%==True echo Deploying as Compact OS.
@echo.
@echo     Checking to see if the PC is booted in BIOS or UEFI mode.
wpeutil UpdateBootInfo
for /f "tokens=2* delims=	 " %%A in ('reg query HKLM\System\CurrentControlSet\Control /v PEFirmwareType') DO SET Firmware=%%B
@echo            Note: delims is a TAB followed by a space.
@echo.
@if %Firmware%==0x1 echo The PC is booted in BIOS mode. 
@if %Firmware%==0x2 echo The PC is booted in UEFI mode. 
@pause
@echo.
@echo     Partitioning and formatting the disk.
@echo     CAUTION: All the data on the primary disk will be DELETED.
@echo.
if %Firmware%==0x1 diskpart /s %~dp0CreatePartitions-BIOS.txt
if %Firmware%==0x2 diskpart /s %~dp0CreatePartitions-UEFI.txt
pause
@rem *********************************************************************
@echo.
@echo.
@echo      Applying image. 
@echo.
rem == These commands deploy a specified Windows
rem    image file to the Windows partition, and configure
rem    the system partition.
rem == Set high-performance power scheme to speed deployment ==
call powercfg /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
@echo.
rem == Apply the image to the Windows partition ==
if not %COMPACTOS%.==True. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\
if %COMPACTOS%.==True. dism /Apply-Image /ImageFile:%1 /Index:1 /ApplyDir:W:\ /Compact
@echo.
rem == Single-instance the recovery provisioning package ==
if %COMPACTOS%.==True. dism /Apply-CustomDataImage /CustomDataImage:W:\Recovery\Customizations\USMT.ppkg /ImagePath:C:\ /SingleInstance
@echo.
rem == Copy boot files to the System partition ==
W:\Windows\System32\bcdboot W:\Windows /s S:
@echo.
:rem == Copy the Windows RE image to the
:rem    Windows RE Tools partition ==
md R:\Recovery\WindowsRE
xcopy /h W:\Windows\System32\Recovery\Winre.wim R:\Recovery\WindowsRE\
@echo.
:rem == Register the location of the recovery tools ==
W:\Windows\System32\Reagentc /Setreimage /Path R:\Recovery\WindowsRE /Target W:\Windows
@echo.
:rem == Verify the configuration status of the images. ==
W:\Windows\System32\Reagentc /Info /Target W:\Windows
pause
@rem *********************************************************************
@echo.
@echo      Hiding the recovery tools partition
@echo.
@echo.
if %Firmware%==0x1 diskpart /s %~dp0HideRecoveryPartitions-BIOS.txt
if %Firmware%==0x2 diskpart /s %~dp0HideRecoveryPartitions-UEFI.txt
@echo.
@echo.
@rem *********************************************************************
@echo      All done!
@echo      Disconnect the USB drive from the reference device.
@echo      type exit to reboot.
@echo.
@pause
:END
