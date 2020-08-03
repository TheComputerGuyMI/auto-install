#Set-ExecutionPolicy Unrestricted -Scope Process
[System.Threading.Thread]::CurrentThread.GetApartmentState()
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationFramework
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                              = New-Object system.Windows.Forms.Form
$Form.ClientSize                   = New-Object System.Drawing.Point(700,500)
$Form.text                         = "TCG Auto-Installer"
$Form.TopMost                      = $false
$Form.StartPosition                ='CenterScreen'

$AudacityBox                       = New-Object system.Windows.Forms.CheckBox
$AudacityBox.text                  = "Audacity"
$AudacityBox.AccessibleName        = "audacity"
$AudacityBox.AutoSize              = $true
$AudacityBox.width                 = 110
$AudacityBox.height                = 20
$AudacityBox.location              = New-Object System.Drawing.Point(5,10)
$AudacityBox.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$CCleanerBox                       = New-Object system.Windows.Forms.CheckBox
$CCleanerBox.text                  = "CCleaner"
$CCleanerBox.AccessibleName        = "CCleaner"
$CCleanerBox.AutoSize              = $true
$CCleanerBox.width                 = 110
$CCleanerBox.height                = 20
$CCleanerBox.location              = New-Object System.Drawing.Point(5,40)
$CCleanerBox.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ChromeBox                         = New-Object system.Windows.Forms.CheckBox
$ChromeBox.text                    = "Chrome"
$ChromeBox.AccessibleName          = "chrome"
$ChromeBox.AutoSize                = $true
$ChromeBox.width                   = 110
$ChromeBox.height                  = 20
$ChromeBox.location                = New-Object System.Drawing.Point(5,70)
$ChromeBox.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$FirefoxBox                        = New-Object system.Windows.Forms.CheckBox
$FirefoxBox.text                   = "Firefox"
$FirefoxBox.AccessibleName         = "firefox"
$FirefoxBox.AutoSize               = $true
$FirefoxBox.width                  = 110
$FirefoxBox.height                 = 20
$FirefoxBox.location               = New-Object System.Drawing.Point(5,100)
$FirefoxBox.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$FoxitBox                          = New-Object system.Windows.Forms.CheckBox
$FoxitBox.text                     = "Foxit"
$FoxitBox.AccessibleName           = "foxit"
$FoxitBox.AutoSize                 = $true
$FoxitBox.width                    = 110
$FoxitBox.height                   = 20
$FoxitBox.location                 = New-Object System.Drawing.Point(5,130)
$FoxitBox.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$GreenshotBox                      = New-Object system.Windows.Forms.CheckBox
$GreenshotBox.text                 = "Greenshot"
$GreenshotBox.AccessibleName       = "greenshot"
$GreenshotBox.AutoSize             = $true
$GreenshotBox.width                = 110
$GreenshotBox.height               = 20
$GreenshotBox.location             = New-Object System.Drawing.Point(5,160)
$GreenshotBox.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$MalwarebytesBox                   = New-Object system.Windows.Forms.CheckBox
$MalwarebytesBox.text              = "Malwarebytes"
$MalwarebytesBox.AccessibleName    = "malwarebytes"
$MalwarebytesBox.AutoSize          = $true
$MalwarebytesBox.width             = 110
$MalwarebytesBox.height            = 20
$MalwarebytesBox.location          = New-Object System.Drawing.Point(5,190)
$MalwarebytesBox.Font              = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$NotepadPlusPlusBox                = New-Object system.Windows.Forms.CheckBox
$NotepadPlusPlusBox.text           = "Notepad++"
$NotepadPlusPlusBox.AccessibleName = "notepadplusplus"
$NotepadPlusPlusBox.AutoSize       = $true
$NotepadPlusPlusBox.width          = 110
$NotepadPlusPlusBox.height         = 20
$NotepadPlusPlusBox.location       = New-Object System.Drawing.Point(5,220)
$NotepadPlusPlusBox.Font           = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ReaderBox                         = New-Object system.Windows.Forms.CheckBox
$ReaderBox.text                    = "Reader (large download; may cause delays!)"
$ReaderBox.AccessibleName          = "reader"
$ReaderBox.AutoSize                = $true
$ReaderBox.width                   = 110
$ReaderBox.height                  = 20
$ReaderBox.location                = New-Object System.Drawing.Point(5,250)
$ReaderBox.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$VLCBox                            = New-Object system.Windows.Forms.CheckBox
$VLCBox.text                       = "VLC"
$VLCBox.AccessibleName             = "vlc"
$VLCBox.AutoSize                   = $true
$VLCBox.width                      = 110
$VLCBox.height                     = 20
$VLCBox.location                   = New-Object System.Drawing.Point(5,280)
$VLCBox.Font                       = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$ZoomBox                           = New-Object system.Windows.Forms.CheckBox
$ZoomBox.text                      = "Zoom"
$ZoomBox.AccessibleName            = "zoom"
$ZoomBox.AutoSize                  = $true
$ZoomBox.width                     = 95
$ZoomBox.height                    = 20
$ZoomBox.location                  = New-Object System.Drawing.Point(5,310)
$ZoomBox.Font                      = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

#$CommandLine                       = New-Object system.Windows.Forms.TextBox
#$CommandLine.multiline             = $false
#$CommandLine.width                 = 600
#$CommandLine.height                = 20
#$CommandLine.location              = New-Object System.Drawing.Point(50,550)
#$CommandLine.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

#$ProgressBar1                      = New-Object system.Windows.Forms.ProgressBar
#$ProgressBar1.width                = 750
#$ProgressBar1.height               = 60
#$ProgressBar1.location             = New-Object System.Drawing.Point(14,570)
#$ProgressBar1.BackColor            = [System.Drawing.ColorTranslator]::FromHtml("#4a90e2")

$EnterButton                       = New-Object system.Windows.Forms.Button
$EnterButton.text                  = "Enter"
$EnterButton.width                 = 200
$EnterButton.height                = 40
$EnterButton.location              = New-Object System.Drawing.Point(490,450)
$EnterButton.Font                  = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$DefaultsButton                    = New-Object system.Windows.Forms.Button
$DefaultsButton.text               = "Defaults"
$DefaultsButton.width              = 100
$DefaultsButton.height             = 40
$DefaultsButton.location           = New-Object System.Drawing.Point(590,100)
$DefaultsButton.Font               = New-Object System.Drawing.Font('Microsoft Sans Serif',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$NoneButton                        = New-Object system.Windows.Forms.Button
$NoneButton.text                   = "None"
$NoneButton.width                  = 100
$NoneButton.height                 = 40
$NoneButton.location               = New-Object System.Drawing.Point(590,60)
$NoneButton.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$DeleteSetupButton                 = New-Object system.Windows.Forms.Button
$DeleteSetupButton.text            = "Delete Setup Files"
$DeleteSetupButton.width           = 120
$DeleteSetupButton.height          = 40
$DeleteSetupButton.location        = New-Object System.Drawing.Point(5,450)
$DeleteSetupButton.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$StopStartupButton                 = New-Object system.Windows.Forms.Button
$StopStartupButton.text            = "Stop Startup"
$StopStartupButton.width           = 120
$StopStartupButton.height          = 40
$StopStartupButton.location        = New-Object System.Drawing.Point(125,450)
$StopStartupButton.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$AllButton                         = New-Object system.Windows.Forms.Button
$AllButton.text                    = "All"
$AllButton.width                   = 100
$AllButton.height                  = 40
$AllButton.location                = New-Object System.Drawing.Point(590,20)
$AllButton.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$SelectProgramsLabel               = New-Object system.Windows.Forms.Label
$SelectProgramsLabel.text          = "Select your desired programs"
$SelectProgramsLabel.AutoSize      = $true
$SelectProgramsLabel.width         = 25
$SelectProgramsLabel.height        = 10
$SelectProgramsLabel.location      = New-Object System.Drawing.Point(5,340)
$SelectProgramsLabel.Font          = New-Object System.Drawing.Font('Microsoft Sans Serif',10,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$WarningLabel                      = New-Object system.Windows.Forms.Label
$WarningLabel.text                 = "Please wait after pressing Enter"
$WarningLabel.AutoSize             = $true
$WarningLabel.width                = 200
$WarningLabel.height               = 40
$WarningLabel.location             = New-Object System.Drawing.Point(500,340)
$WarningLabel.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$Form.controls.AddRange(@($AudacityBox,$CCleanerBox,$ChromeBox,$FirefoxBox,$FoxitBox,$GreenshotBox,$MalwarebytesBox,$NotepadPlusPlusBox,$ReaderBox,$VLCBox,$ZoomBox,$EnterButton,$DefaultsButton,$NoneButton,$DeleteSetupButton,$StopStartupButton,$AllButton,$SelectProgramsLabel, $WarningLabel))

$ProgramArray = New-Object System.Collections.ArrayList
$BoxArray = New-Object System.Collections.ArrayList
$DefaultsArray = New-Object System.Collections.ArrayList 
$DefaultsArray = @('CCleaner','chrome','malwarebytes','reader')

$BoxArray.AddRange(@($AudacityBox,$CCleanerBox,$ChromeBox,$FirefoxBox,$FoxitBox,$GreenshotBox,$MalwarebytesBox,$NotepadPlusPlusBox,$ReaderBox,$VLCBox,$ZoomBox))
$URL = "https://ninite.com/"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

function CheckAndDelete($file){
    if (Test-Path $file -PathType leaf) {
    Remove-Item $file
    }
}
function stopStartup($file){
  if($File -eq "CCleaner"){
  Set-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run -Name 'CCleaner Smart Cleaning' -Value ([byte[]](0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00))
  Set-ItemProperty HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\StartupApproved\Run -Name CCleaner -Value ([byte[]](0x03,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00))
  Write-Host "CCleaner autostartup has been disabled"
  }
}

function manualAdd($filename){
$filename = Read-Host -Prompt 'Input your program with URL-friendly, lowercase text'
return $filename
}

function programAdd($program){
$ProgramArray.Add($program) > $null
}

function collectPrograms{

       param([Parameter(Mandatory=$true)][string]$callType)

    if($callType -eq 'selected'){

        foreach ($Checkbox in $BoxArray){

            if($Checkbox.Checked){

                $ProgramArray.Add($Checkbox.AccessibleName)

            }
        }
    }
    ElseIf($callType -eq 'all'){
        foreach ($Checkbox in $BoxArray){
            $ProgramArray.Add($Checkbox.AccessibleName)

        }

    }
}

function downloadAll{
  
  Invoke-WebRequest https://ninite.com/audacity-chrome-firefox-foxit-greenshot-malwarebytes-notepadplusplus-vlc-zoom/ -OutFile Ninite.exe
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  Invoke-WebRequest https://download.ccleaner.com/ccsetup569.exe -OutFile ccsetup569.exe
  Start-Process -FilePath Ninite.exe
  Start-Process -FilePath ccsetup569.exe /S
  cmd ReaderInstaller.exe /sAll

  } 
function downloadSelected{
  
  If ($ProgramArray -contains "reader") {
  Start-BitsTransfer http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe, ReaderInstaller.exe
  cmd ReaderInstaller.exe /sAll
  $ProgramArray.Remove("reader")
  }
  If ($ProgramArray -contains "CCleaner") {
  Start-BitsTransfer https://download.ccleaner.com/ccsetup569.exe, ccsetup569.exe
  Start-Process -FilePath ccsetup569.exe /S
  $ProgramArray.Remove("CCleaner")
  }
  If($ProgramArray.Count -gt 0){
  $ProgramArray.Sort()
  foreach ($element in $ProgramArray) {
  $URL += $element + "-"
  }
  $URL = $URL.Substring(0,$URL.Length-1)  
  $URL = "https://ninite.com/" + $URL + "/ninite.exe"

  Start-BitsTransfer $URL, Ninite.exe
  Start-Process -FilePath Ninite.exe 
  } 
  ElseIf ($ProgramArray.Count -eq 0){
  #Does nothing instead of throwing an error
  } 
}

$AllClick = {
    foreach ($Checkbox in $BoxArray){
        $Checkbox.Checked = $true
    }
}
$NoneClick = {
    foreach ($Checkbox in $BoxArray){
        $Checkbox.Checked = $false
    }
}

$DefaultsClick = {
    foreach ($Checkbox in $BoxArray){
        if($DefaultsArray.Contains($Checkbox.AccessibleName)){
            $Checkbox.Checked = $true
        }
        else{
            $Checkbox.Checked = $false
        }
    }   
}

$EnterClick = {
    collectPrograms('selected')
    downloadSelected
}

$StopStartupClick = {
stopStartup("CCleaner")
}

$DeleteSetupClick = {
#will be updated at a later time
[System.Windows.MessageBox]::Show('Test')

}
#Buttons
$AllButton.Add_Click($AllClick)
$NoneButton.Add_Click($NoneClick)
$DefaultsButton.Add_Click($DefaultsClick)
$DeleteSetupButton.Add_Click($DeleteSetupClick)
$StopStartupButton.Add_Click($StopStartupClick)
$EnterButton.Add_Click($EnterClick)
#Checkboxes
$AudacityBox.Add_Click($AudacityClick)
$CCleanerBox.Add_Click($CCleanerClick)
$ChromeBox.Add_Click($ChromeClick)
$FirefoxBox.Add_Click($FirefoxClick)
$FoxitBox.Add_Click($FoxitClick)
$GreenshotBox.Add_Click($GreenshotClick)
$MalwarebytesBox.Add_Click($MalwarebytesClick)
$NotepadPlusPlusBox.Add_Click($NotepadPlusPlusClick)
$ReaderBox.Add_Click($ReaderClick)
$VLCBox.Add_Click($VLCClick)
$ZoomBox.Add_Click($ZoomClick)

[void]$Form.ShowDialog()