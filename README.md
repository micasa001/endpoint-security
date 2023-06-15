# endpoint-security
Endpoint enrollment security

This script will be pushed as an Intune PowerShell script and will:

Remove AppX Packages (listed)<br>
Remove associated reg keys<br>
Disable Windows Feedback<br>
Removes Cortana from Search<br>
Removes Web Results from search<br>
Disables Wi-Fi Sense<br>
Disables Live Tiles<br>
Removes unwanted scheduled tasks (Xbox Live etc.)<br>
Removes Windows 11 specific apps (Teams Chat for example)<br>
Clears start menu<br>
Disables the hidden surfing game in Edge<br>
Removes Dell, HP and Lenovo specific bloat (by detecting manufacturer and deploying appropriately)<br>
Removes McAfee (if detected)<br>
Removes any Win32 apps which aren’t Intune, Windows Update or MS Edge<br>
Removes Chrome<br>

The full script will report back to a log file here:

C:\ProgramData\Debloat\Debloat.log

Intune Script Deployment
My suggestion is to deploy as a device script in Intune, that way it will run prior to any apps installing and you will have the full experience. This is where the secondary script comes in. This will grab the latest copy of the de-bloat script, copy it to the machine and run locally. It’s quicker and means you can always be sure devices are running the latest version without constantly replacing scripts:

**NOTE: Run in the 64-bit context** <br>
- Script debloat-intune-script.ps1

**Alternative: Intune Application Deployment** <br>
If you would prefer to deploy as an application, you can either grab the Intunewin file and use the following commands:

**Install:** <br>
powershell -executionpolicy bypass -file debloat-intune-script.ps1
Uninstall (obviously not an option, so a dead command)

cmd.exe /c

**Detection:** <br>
C:\ProgramData\Debloat\Debloat.log

**OR** <br>
If you want to be extra lazy, run this script:

Deploy-DeBloat-Application.ps1
Which will download the file and setup the application for you
