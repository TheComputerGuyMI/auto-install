# auto-install



This is a project attempting to automate the setup of new computers for clients. 

Currently, AllowScripts.exe must be run first to allow the PowerShell scripts to run successfully.

*UPDATE: It's no longer recommended to use InstallWithPrompts.ps1 with the advent of GUI-Installer.ps1*

GUI-Installer will provide the user with some options for what they want to download to the new computer. 

They can select their desired programs, click "Enter", and everything beyond that will be done for them. The "Enter" button will combine and sort all of their selections and download the appropriate Ninite file. CCleaner and Adobe Reader are installed with their own installers.

It comes with the following features:

- It's a GUI instead of a command-line script

- Instead of having to type in each program, you can just check off the ones you want, click "Enter", and the rest is done for you.

- The All/None/Defaults buttons will change the checkbox selections for you. If a client, say, wants the default programs, but with Foxit instead of Reader, you can just click "Defaults", uncheck Reader, and check Foxit. With the command-line interface, you would still need to manually type in each program.

- The "Stop Startup" button is there to stop certain programs from executing on computer startup. CCleaner is the only program right now that needs to be changed from its default, but the framework is there for any other potential programs.

- The "Delete Setup Files" button will delete any remaining setup files after the installation is complete.


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
