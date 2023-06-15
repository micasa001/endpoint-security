# endpoint-security
Endpoint enrollment security

This script will be pushed as an Intune PowerShell script and will:

Remove AppX Packages (listed)
Remove associated reg keys
Disable Windows Feedback
Removes Cortana from Search
Removes Web Results from search
Disables Wi-Fi Sense
Disables Live Tiles
Removes unwanted scheduled tasks (Xbox Live etc.)
Removes Windows 11 specific apps (Teams Chat for example)
Clears start menu
Disables the hidden surfing game in Edge
Removes Dell, HP and Lenovo specific bloat (by detecting manufacturer and deploying appropriately)
Removes McAfee (if detected)
Removes any Win32 apps which aren’t Intune, Windows Update or MS Edge
Removes Chrome

The full script will report back to a log file here:

C:\ProgramData\Debloat\Debloat.log

Intune Script Deployment
My suggestion is to deploy as a device script in Intune, that way it will run prior to any apps installing and you will have the full experience. This is where the secondary script comes in. This will grab the latest copy of the de-bloat script, copy it to the machine and run locally. It’s quicker and means you can always be sure devices are running the latest version without constantly replacing scripts:

**NOTE: Run in the 64-bit context**
- Script debloat-intune-script.ps1

**Alternative: Intune Application Deployment
**
If you would prefer to deploy as an application, you can either grab the Intunewin file and use the following commands:

**Install:**

powershell -executionpolicy bypass -file debloat-intune-script.ps1
Uninstall (obviously not an option, so a dead command)

cmd.exe /c

**Detection:
**
C:\ProgramData\Debloat\Debloat.log

**OR**

If you want to be extra lazy, run this script:

Deploy-DeBloat-Application.ps1
Which will download the file and setup the application for you
