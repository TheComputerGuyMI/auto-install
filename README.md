# auto-install

This is a project attempting to automate the setup of new computers for clients. 

Currently, AllowScripts.exe must be run first to allow the PowerShell scripts to run successfully.

InstallWithPrompts.ps1 provides the user with a set of prompts. That will combine and sort all of their selections and download the appropriate Ninite file.

CCleaner and Adobe Reader are installed with their own installers.

Current options are:
- Audacity
- Chrome
- CCleaner
- Firefox
- Foxit
- Greenshot
- Malwarebytes
- Notepad++
- Reader (Adobe)
- VLC
- Zoom

Alternative command options are:
- reset : this will remove all currently selected options
- all : this will add all possible options
- done : this will finalize everything and download/install the selected options
