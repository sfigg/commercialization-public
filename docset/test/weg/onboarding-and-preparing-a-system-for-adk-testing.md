
# Onboarding and preparing a system for ADK testing

**To set up the device**

1.	Plug the Device Under Test (DUT) in to an AC power source and turn it on.

2.	Enter the firmware settings page (e.g., press F2 while booting).

3.	On the firmware settings page, set the following:

	-   Restore all default settings.

	-   Ensure that the DUT is configured to boot using UEFI without CSM.

4.	Install the OEM image to the DUT. If the OEM image is already
    installed, skip this step.

	Running Sysprep specializes on the factory floor and other processes
	should be part of the OEM deployment process.

5.	Complete the First Boot Experience.

	Use &lt;*system model*&gt;-&lt;*hardware stage* (EV, DV, or PV)
	&gt;-&lt;*revision number*&gt; as the Computer Name (for example,
	Frabrikam-ModelXYZ-PV-REV1). Always use the same computer name when
	testing any given model.

6.	You can use a local admin account instead of a Microsoft account for testing.

## Policies for setting up the device

-   Wired or OEM-provided network adaptors should be used over
    USB adapters.

	-   If you use local testing with WAC or prepackaged jobs, wired LAN
		doesn't apply.

	-   If you use WAS, we recommended that you deploy assessments through
		wired LAN. If you can’t, we recommend that you use wireless.

	-   Don’t enable sharing when connecting to a network.

-   UEFI should be enabled on all DUTs.

-   All DUTs should have all signed/certified Windows 8 drivers before
    you run the assessments.

-   No external devices should be plugged in unless they are provided
    with the system.

	
## Testing the device

**To test the device**

<ol>
<li>
<p>Activate the system using the appropriate product key.</p>
</li>
<li>
<p>Some operating system components change their behaviors based on some WinSAT metrics. Make sure that the WinSAT datastore has been populated in the following path: <strong>%WINDIR%\performance\winsat\datastore\</strong></p>
<p>You can run <strong>Winsat prepop</strong> on an elevated command line or follow the <a href="http://technet.microsoft.com/en-us/library/jj573887.aspx">deployment guidance</a> (https://technet.microsoft.com/en-us/library/jj573887.aspx).</p>
</li>
<li>
<p>Run Windows Update and install all driver and Windows updates (even optional ones).</p>
</li>
<li>
<p>Disable Automatic Updates by selecting <strong>Never check updates</strong> in the Windows Update settings. You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg <strong>add</strong> &quot;HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update&quot; /v AUOptions /t REG_DWORD /d 1 /f</strong></p>
</li>
<li>
<p>Use Device Manager to verify that the DUT has no problems with drivers or devices.</p>
<img src="images/weg-device-manager-dysfunctional-device.png" width="311" height="74" alt="A dysfunctional device is identified in Device Manager."/>
<p>Investigate and fix all devices marked with a &quot;!&quot;.</p>
</li>
<li>
<p>Download the latest virus definition files and perform a scan using the default antimalware app.</p>
</li>
<li>
<p>Force execution of IdleTasks once a day (when system is under test) to ensure that no maintenance tasks interfere with ADK assessment execution. Run the following command from an elevated command prompt:</p>
<p><strong>rundll32.exe advapi32.dll,ProcessIdleTasks</strong></p>
</li>
<li>
<p>Disable Windows Store updates, after applying all available updates.</p>
<ol type="a">
<li><p>Open the Store settings, go to <strong>App updates</strong>.</p></li>
<li><p>Set <strong>Automatically download updates for my apps</strong> to <strong>No</strong>.</p></li>
<li><p>You can automate this step by running the following command from an elevated command prompt:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows\CurrentVersion\WindowsStore\WindowsUpdate&quot; /v AutoDownload /t REG_DWORD /d 2 /f</strong></p>
</li>
</ol>
</li>
<li>
<p>Enable autologon.</p>
<ul>
<li>
<p>Certain assessments reboot the PC and require the user to log on before continuing the assessment run. Since the assessments are often measuring the boot time, delays caused by the user logging on to the PC can cause unpredictable variance in the metrics.</p>
</li>
<li>
<p>A best practice is to enable automatic logon for the user account running the assessments. You can configure automatic logon in the registry, under the following key: <strong>HKLM\Software\Microsoft\Windows NT\CurrentVersion\WinLogon</strong></p>
<p>The following five values should be configured.</p>
<table>
<thead>
<tr class="header">
<th>Value name</th>
<th>Value type</th>
<th>Data</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>DefaultUserName</td>
<td>REG_SZ</td>
<td>&lt;<em>TestUserName</em>&gt;</td>
</tr>
<tr class="even">
<td>DefaultPassword</td>
<td>REG_SZ</td>
<td>&lt;<em>LOCALPASSWORD</em>&gt;</td>
</tr>
<tr class="odd">
<td>AutoAdminLogon</td>
<td>REG_SZ</td>
<td>1</td>
</tr>
</tbody>
</table>
</li>
</ul>
</li>
<li>
<p>If the system has access to a timer server, make sure the clock has been synchronized with the server time. If the clock time changes during assessment execution, it might cause failures.</p>
</li>
<li>
<p>Disable Windows system restore, to present System Restore point creation during the test which would skew test result:</p>
<p><strong>reg add &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SystemRestore&quot; /v RPSessionInterval /t REG_DWORD /d 0 /f</strong></p>
<p><strong>reg DELETE &quot;HKLM\Software\Microsoft\Windows NT\CurrentVersion\SPP\Clients&quot; /f</strong></p>
</li>
<li>
<p>Disable scheduled hard drive defragmentation:</p>
<p><strong>schtasks /change /tn &quot;Microsoft\Windows\Defrag\ScheduledDefrag&quot; /disable</strong></p>
</li>
<li>
<p>Make sure that all .NET compilation targets are up to date:</p>
<p><strong>C:\Windows\Microsoft.NET\Framework\v4.0.30319\ngen.exe executequeueditems</strong></p>
<p><strong>C:\Windows\Microsoft.NET\Framework64\v4.0.30319\ngen.exe executequeueditems</strong></p>
</li>
<li>
<p>Restart the DUT.</p>
</li>
</ol>


