---
title: Machines in use
description: Machines in use
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: FAE612C8-0F90-4FFD-9092-9AA3262177DA
---

# Machines in use


This sample shows how to retrieve the names of machines on which tests are currently running.

## <span id="PowerShell"></span><span id="powershell"></span><span id="POWERSHELL"></span>**PowerShell**


``` syntax
. ..\Initialization.ps1

write-Host "Usage: %SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe -file MachinesInUse.ps1 <<ProjectName>>"

$Manager = Initialize


$ProjectName = $Args[0]
Write-Host Getting Project named : $ProjectName
$Project = $Manager.GetProject($ProjectName)

$Project.GetProductInstances() | foreach {    
    $_.GetTargetFamilies() | foreach {
# get all of the running tests
        $_.GetTests() | where {$_.Status -eq [Microsoft.Windows.Kits.Hardware.ObjectModel.TestResultStatus]::InQueue } | foreach {
            
# this is a test
            $Test = $_
            Write-Host Test is running or queued : $_.Name
# it should have children, see where they are running on
            
            $Results = $_.GetTestResults()
            
#Running tests
            $Results | where {$_.Status -eq [Microsoft.Windows.Kits.Hardware.ObjectModel.TestResultStatus]::InQueue} | foreach {
                Write-Host test is waiting
                $Test.GetTestTargets() | foreach { Write-Host `tMachine: $_.Machine.Name $_.Name $_.Machine.Status }
            }
        
            $Results | where {$_.Status -eq [Microsoft.Windows.Kits.Hardware.ObjectModel.TestResultStatus]::Running} | foreach {
                Write-Host test is Running
                $_.Machine.Name
            }
        }       
    }
}
```

 

 

[Send comments about this topic to Microsoft](mailto:wsddocfb@microsoft.com?subject=Documentation%20feedback%20%5Bp_hlk_om\p_hlk_om%5D:%20Machines%20in%20use%20%20RELEASE:%20%288/1/2017%29&body=%0A%0APRIVACY%20STATEMENT%0A%0AWe%20use%20your%20feedback%20to%20improve%20the%20documentation.%20We%20don't%20use%20your%20email%20address%20for%20any%20other%20purpose,%20and%20we'll%20remove%20your%20email%20address%20from%20our%20system%20after%20the%20issue%20that%20you're%20reporting%20is%20fixed.%20While%20we're%20working%20to%20fix%20this%20issue,%20we%20might%20send%20you%20an%20email%20message%20to%20ask%20for%20more%20info.%20Later,%20we%20might%20also%20send%20you%20an%20email%20message%20to%20let%20you%20know%20that%20we've%20addressed%20your%20feedback.%0A%0AFor%20more%20info%20about%20Microsoft's%20privacy%20policy,%20see%20http://privacy.microsoft.com/en-us/default.aspx. "Send comments about this topic to Microsoft")




