$ProgramArray = New-Object System.Collections.ArrayList
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

$GetInfo = {
$NextProgram = Read-Host -Prompt 'Input a program name that you want to install'

If ($NextProgram -eq "Audacity") {

  'Audacity will be added'
  $ProgramArray.Add('audacity') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Chrome") {

  'Chrome will be added'
  $ProgramArray.Add('chrome') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "CCleaner") {
  
  'CCleaner will be added'
  $ProgramArray.Add('CCleaner') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Firefox") {
  
  'Firefox will be added'
  $ProgramArray.Add('firefox') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Foxit") {
  
  'Foxit will be added'
  $ProgramArray.Add('foxit') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Greenshot") {
  
  'Greenshot will be added'
  $ProgramArray.Add('greenshot') > $null
  &$GetInfo
  } ElseIf ($NextProgram -eq "Malwarebytes") {
  
  'Malwarebytes will be added'
  $ProgramArray.Add('malwarebytes') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Notepad++") {
  
  'Notepad++ will be added'
  $ProgramArray.Add('notepadplusplus') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Reader") {
  
  'Adobe Reader will be added'
  $ProgramArray.Add('reader') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "VLC") {
  
  'VLC will be added'
  $ProgramArray.Add('vlc') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Zoom") {
  
  'Zoom will be added'
  $ProgramArray.Add('zoom') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "default") {
  
  'CCleaner, Chrome, Malwarebytes, and Reader will be added'
  $ProgramArray.Add('CCleaner') > $null
  $ProgramArray.Add('chrome') > $null
  $ProgramArray.Add('malwarebytes') > $null
  $ProgramArray.Add('reader') > $null
  &$GetInfo

  }ElseIf ($NextProgram -eq "reset") {
  
  'Your selections will be reset'
  $ProgramArray = @()
  &$GetInfo

  } ElseIf ($NextProgram -eq "list") {
  
  $ProgramArray
  &$GetInfo

  } ElseIf ($NextProgram -eq "add") {
  $filename = manualAdd($filename)
  $ProgramArray.Add($filename) > $null
  &$GetInfo

  }ElseIf ($NextProgram -eq "delete") {
  
  CheckAndDelete("Ninite.exe")
  CheckAndDelete("ccsetup569.exe")
  CheckAndDelete("ReaderInstaller.exe")
  Write-Host 'Files deleted'
  &$GetInfo

  } ElseIf ($NextProgram -eq "more") {
  
  Write-Host '"list" lists everything in the ArrayList. "add" allows for manual addition of other Ninite-provided programs. "startup" disables autobooting of programs.'-ForegroundColor green -BackgroundColor black
  &$GetInfo

  } ElseIf ($NextProgram -eq "startup") {
  
  stopStartup("CCleaner")
  'CCleaner now will not start automatically'
  &$GetInfo

  } ElseIf ($NextProgram -eq "all") {
  
  'You will download all listed programs'
  Invoke-WebRequest https://ninite.com/audacity-chrome-firefox-foxit-greenshot-malwarebytes-notepadplusplus-vlc-zoom/ -OutFile Ninite.exe
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  Invoke-WebRequest https://download.ccleaner.com/ccsetup569.exe -OutFile ccsetup569.exe
  Start-Process -FilePath Ninite.exe
  Start-Process -FilePath ccsetup569.exe /S
  cmd ReaderInstaller.exe /sAll

  &$GetInfo

  } ElseIf ($NextProgram -eq "done") {
  
  'Please wait while we install your selections'
  
  If ($ProgramArray -contains "reader") {
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  cmd ReaderInstaller.exe /sAll
  $ProgramArray.Remove("reader")
  }
  If ($ProgramArray -contains "CCleaner") {
  Invoke-WebRequest https://download.ccleaner.com/ccsetup569.exe -OutFile ccsetup569.exe
  Start-Process -FilePath ccsetup569.exe /S
  $ProgramArray.Remove("CCleaner")
  }
  If($ProgramArray.Count -gt 0){
  $ProgramArray.Sort()
  foreach ($element in $ProgramArray) {
  $URL += $element + "-"
  #Write-Host $URL
  }
  $URL = $URL.Substring(0,$URL.Length-1)  
  #Write-Host $URL
  $URL = "https://ninite.com/" + $URL + "/ninite.exe"
  #Write-Host $URL
  Invoke-WebRequest $URL -OutFile Ninite.exe
  Start-Process -FilePath Ninite.exe

  } 
  ElseIf ($ProgramArray.Count -eq 0){
  Write-Host "Please enter at least one program"
  &$GetInfo
  } Else {

  'Please use a valid response'
  &$GetInfo

}
}
}
Write-Host 'Your options are: Audacity, CCleaner, Chrome, Firefox, Foxit, Greenshot, Malwarebytes, Notepad++, Reader, VLC, Zoom' -ForegroundColor green -BackgroundColor black
Write-Host 'You can use "all" to select all listed options, "reset" to reset your selections, and "done" to finalize everything'-ForegroundColor green -BackgroundColor black
Write-Host '"delete" will remove all setup files. Use "more" for additional commands'-ForegroundColor green -BackgroundColor black
&$GetInfo

