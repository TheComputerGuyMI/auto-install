Set-ExecutionPolicy Unrestricted -Scope Process
#[System.Threading.Thread]::CurrentThread.GetApartmentState() #debug line

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName Microsoft.VisualBasic
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

$DevModeButton                     = New-Object system.Windows.Forms.Button
$DevModeButton.text                = "Dev Mode"
$DevModeButton.width               = 40
$DevModeButton.height              = 40
$DevModeButton.location            = New-Object System.Drawing.Point(245,450)
$DevModeButton.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',8)

$CommandList                       = New-Object system.Windows.Forms.ComboBox
$CommandList.text                  = "Select a Command"
$CommandList.width                 = 130
$CommandList.height                = 20
$CommandList.location              = New-Object System.Drawing.Point(290,450)
$CommandList.BackColor             = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$CommandList.DropDownStyle         = 'DropDownList'
$CommandList.Items.AddRange(       @('Add Program','Remove Program','Show List','PS Command'))
$CommandList.SelectedIndex         = 0
$CommandList.visible               = $false

$SendCommandButton                 = New-Object system.Windows.Forms.Button
$SendCommandButton.text            = "Send"
$SendCommandButton.width           = 50
$SendCommandButton.height          = 20
$SendCommandButton.location        = New-Object System.Drawing.Point(420,450)
$SendCommandButton.Font            = New-Object System.Drawing.Font('Microsoft Sans Serif',8)
$SendCommandButton.visible         = $false

$DevBox                            = New-Object System.Windows.Forms.TextBox
$DevBox.height                     = 40
$DevBox.width                      = 180
$DevBox.location                   = New-Object System.Drawing.Point(290,470)
$DevBox.BackColor                  = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$DevBox.visible                    = $false

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

$Logo                              = New-Object system.Windows.Forms.PictureBox
$Logo.width                        = 400
$Logo.height                       = 135
$Logo.location                     = New-Object System.Drawing.Point(125,10)
$Logo.imageLocation                = "TCGLogoSmall.png"

$UpdateArea                        = New-Object System.Windows.Forms.TextBox
$UpdateArea.height                 = 80
$UpdateArea.width                  = 680
$UpdateArea.Multiline              = $True;
$UpdateArea.text                   = "Welcome to the TCG Auto-Installer!`r`n"
$UpdateArea.location               = New-Object System.Drawing.Point(5,360)
$UpdateArea.Scrollbars             = "Vertical" 
$UpdateArea.BackColor              = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$UpdateArea.ReadOnly               = $true

$Form.controls.AddRange(@($AudacityBox,$CCleanerBox,$ChromeBox,$FirefoxBox,$FoxitBox,$GreenshotBox,$MalwarebytesBox,$NotepadPlusPlusBox,$ReaderBox,$VLCBox,$ZoomBox,$EnterButton,$DefaultsButton,$NoneButton,$DeleteSetupButton,$StopStartupButton,$AllButton,$SelectProgramsLabel, $WarningLabel, $Logo, $UpdateArea, $DevModeButton, $CommandList, $SendCommandButton, $DevBox))

$ProgramArray = New-Object System.Collections.ArrayList
$BoxArray = New-Object System.Collections.ArrayList
$DefaultsArray = New-Object System.Collections.ArrayList 
$DefaultsArray = @('CCleaner','chrome','malwarebytes','reader')

$BoxArray.AddRange(@($AudacityBox,$CCleanerBox,$ChromeBox,$FirefoxBox,$FoxitBox,$GreenshotBox,$MalwarebytesBox,$NotepadPlusPlusBox,$ReaderBox,$VLCBox,$ZoomBox))
#URL List
$URL = "https://ninite.com/"
$CCleanerURL = "https://download.ccleaner.com/ccsetup569.exe"
$ReaderURL = "ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/1500720033/AcroRdrDC1500720033_en_US.msi"
$ReaderPatchURL ="ftp://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920074/AcroRdrDCUpd2000920074.msp"
$global:DevModeEnabled = $false
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
[System.Windows.MessageBox]::Show('CCleaner autostartup has been disabled')
  }
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

function downloadSelected{
  
  If ($ProgramArray -contains "reader") {
  $UpdateArea.AppendText("Downloading ReaderInstaller.msi`r`n")
  $ProgressPreference = 'SilentlyContinue'
  Invoke-WebRequest $ReaderURL -OutFile "ReaderInstaller.msi" -ErrorAction Stop
  $UpdateArea.AppendText("Downloading ReaderPatch.msp`r`n")
  Invoke-WebRequest $ReaderPatchURL -OutFile "ReaderPatch.msp" -ErrorAction Stop
  $ProgressPreference = 'Continue'
  $UpdateArea.AppendText("Running ReaderInstaller.exe`r`n")
  msiexec /I ReaderInstaller.msi /qb
  $UpdateArea.AppendText("Completed initial install`r`n")
  msiexec /p ReaderPatch.msp /qb
  $UpdateArea.AppendText("Completed patch install`r`n")
  $ProgramArray.Remove("reader")
  }
  If ($ProgramArray -contains "CCleaner") {
  $UpdateArea.AppendText("Downloading ccsetup569.exe`r`n")
  Invoke-WebRequest $CCleanerURL -OutFile $tempFolder\ccsetup569.exe -ErrorAction Stop
  $UpdateArea.AppendText("Running ccsetup569.exe`r`n")
  Start-Process -FilePath $tempFolder\ccsetup569.exe /S -ErrorAction Stop
  $UpdateArea.AppendText("Completed`r`n")
  $ProgramArray.Remove("CCleaner")
  }
  If($ProgramArray.Count -gt 0){
  $ProgramArray.Sort()
  foreach ($element in $ProgramArray) {
  $URL += $element + "-"
  }
  $URL = $URL.Substring(0,$URL.Length-1)  
  $URL = "https://ninite.com/" + $URL + "/ninite.exe"
  $UpdateArea.AppendText("Downloading Ninite.exe `r`n")
  Invoke-WebRequest $URL -OutFile Ninite.exe -ErrorAction Stop
  $UpdateArea.AppendText("Running Ninite.exe `r`n")
  Start-Process -FilePath Ninite.exe -ErrorAction Stop
  $UpdateArea.AppendText("Completed`r`n")
  } 
  ElseIf ($ProgramArray.Count -eq 0){
  #Does nothing instead of throwing an error
  } 
}

$AllClick = {
    foreach ($Checkbox in $BoxArray){
        $Checkbox.Checked = $true
    }
    $UpdateArea.AppendText("All options selected`r`n")
}
$NoneClick = {
    foreach ($Checkbox in $BoxArray){
        $Checkbox.Checked = $false
    }
        $UpdateArea.AppendText("All options unselected`r`n")
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
        $UpdateArea.AppendText("Default options selected`r`n")   
}
$EnterClick = {
    collectPrograms('selected')
    downloadSelected
}
$StopStartupClick = {
stopStartup("CCleaner")
}
$DevModeClick = {

    if($global:DevModeEnabled -eq $false){

    $UpdateArea.AppendText("Dev Mode Enabled`r`n")
    $DevBox.visible = $true
    $SendCommandButton.visible = $true
    $CommandList.visible = $true
    $global:DevModeEnabled = $true

    }

    else{

    $UpdateArea.AppendText("Dev Mode Disabled`r`n")
    $DevBox.visible = $false
    $SendCommandButton.visible = $false
    $CommandList.visible = $false
    $global:DevModeEnabled = $false

    }

}
$SendCommandClick = {

switch ($CommandList.Text) {

    'Add Program' {
    
        if($DevBox.Text.Length -gt 2){
            $ProgramArray.Add($DevBox.Text.Trim(" "))
            $UpdateArea.AppendText($DevBox.Text + " added`r`n")
        }
        else{
        
            $UpdateArea.AppendText("Please enter a valid program`r`n")
        
        }
    }

    'Remove Program' {
    
        if($DevBox.Text.Length -gt 2){
            $ProgramArray.Remove($DevBox.Text)
            $UpdateArea.AppendText($DevBox.Text + " removed`r`n")
        }
        else{

            $UpdateArea.AppendText("Please enter a valid program`r`n")
        
        }
    }

    'Show List' {
    
    $ProgramArray.Sort()
    foreach($Program in $ProgramArray){
        $Program.ToLower()
    }
    $UpdateArea.AppendText($ProgramArray + "`r`n")
    }
    
    'PS Command' {
    
    Invoke-Expression $DevBox.Text
    
    }  
}
}
$DeleteSetupClick = {
  CheckAndDelete("Ninite.exe")
  CheckAndDelete("ccsetup569.exe")
  CheckAndDelete("ReaderInstaller.msi")
  CheckAndDelete("ReaderPatch.msp")
[System.Windows.MessageBox]::Show('Files Deleted')

}
$AudacityClick = {
    if($AudacityBox.Checked){
        $UpdateArea.AppendText("Audacity selected`r`n")
    } 
    else{
        $UpdateArea.AppendText("Audacity unselected`r`n")
    }
}
$CCleanerClick = {
    if($AudacityBox.Checked){
        $UpdateArea.AppendText("CCleaner selected`r`n")
    }
    else{
        $UpdateArea.AppendText("CCleaner unselected`r`n")
    }
}
$ChromeClick = {
    if($ChromeBox.Checked){
        $UpdateArea.AppendText("Chrome selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Chrome unselected`r`n")
    }
}
$FirefoxClick = {
    if($FirefoxBox.Checked){
        $UpdateArea.AppendText("Firefox selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Firefox unselected`r`n")
    }
}
$FoxitClick = {
    if($FoxitBox.Checked){
        $UpdateArea.AppendText("Foxit selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Foxit unselected`r`n")
    }
}
$GreenshotClick = {
    if($GreenshotBox.Checked){
    $UpdateArea.AppendText("Greenshot selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Greenshot unselected`r`n")
    }
}
$MalwarebytesClick = {
    if($MalwarebytesBox.Checked){
        $UpdateArea.AppendText("Malwarebytes selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Malwarebytes unselected`r`n")
    }
}
$NotepadPlusPlusClick = {
    if($NotepadPlusPlusBox.Checked){
        $UpdateArea.AppendText("Notepad++ selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Notepad++ unselected`r`n")
    }
}
$ReaderClick = {
    if($ReaderBox.Checked){
        $UpdateArea.AppendText("Reader selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Reader unselected`r`n")
    }
}
$VLCClick = {
    if($VLCBox.Checked){
        $UpdateArea.AppendText("VLC selected`r`n")
    }
    else{
        $UpdateArea.AppendText("VLC unselected`r`n")
    }
}
$ZoomClick = {
    if($ZoomBox.Checked){
        $UpdateArea.AppendText("Zoom selected`r`n")
    }
    else{
        $UpdateArea.AppendText("Zoom unselected`r`n")
    }
}
#Buttons
$AllButton.Add_Click($AllClick)
$NoneButton.Add_Click($NoneClick)
$DefaultsButton.Add_Click($DefaultsClick)
$DeleteSetupButton.Add_Click($DeleteSetupClick)
$StopStartupButton.Add_Click($StopStartupClick)
$EnterButton.Add_Click($EnterClick)
$SendCommandButton.Add_Click($SendCommandClick)
$DevModeButton.Add_Click($DevModeClick)
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
