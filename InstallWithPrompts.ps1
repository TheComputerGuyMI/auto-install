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

switch ($NextProgram) {

 'Audacity' {

  'Audacity will be added'
  $ProgramArray.Add('audacity') > $null
  &$GetInfo

  } 

  'Chrome' {

  'Chrome will be added'
  $ProgramArray.Add('chrome') > $null
  &$GetInfo

  }

  'CCleaner' {
  
  'CCleaner will be added'
  $ProgramArray.Add('CCleaner') > $null
  &$GetInfo

  }

  'Firefox' {
  
  'Firefox will be added'
  $ProgramArray.Add('firefox') > $null
  &$GetInfo

  } 

  'Foxit' {
  
  'Foxit will be added'
  $ProgramArray.Add('foxit') > $null
  &$GetInfo

  }

  'Greenshot' {
  
  'Greenshot will be added'
  $ProgramArray.Add('greenshot') > $null
  &$GetInfo

  } 

  'Malwarebytes' {

  'Malwarebytes will be added'
  $ProgramArray.Add('malwarebytes') > $null
  &$GetInfo

  } 

  'Notepad++' {
  
  'Notepad++ will be added'
  $ProgramArray.Add('notepadplusplus') > $null
  &$GetInfo

  }

  'Reader' {
  
  'Adobe Reader will be added'
  $ProgramArray.Add('reader') > $null
  &$GetInfo

  }

  'VLC' {
  
  'VLC will be added'
  $ProgramArray.Add('vlc') > $null
  &$GetInfo

  }

  'Zoom' {
  
  'Zoom will be added'
  $ProgramArray.Add('zoom') > $null
  &$GetInfo

  } 

  'default' {
  
  'CCleaner, Chrome, Malwarebytes, and Reader will be added'
  $ProgramArray.Add('CCleaner') > $null
  $ProgramArray.Add('chrome') > $null
  $ProgramArray.Add('malwarebytes') > $null
  $ProgramArray.Add('reader') > $null
  &$GetInfo

  }

  'reset' {
  
  'Your selections will be reset'
  $ProgramArray = @()
  &$GetInfo

  }

  'list' {
  
  $ProgramArray
  &$GetInfo

  } 

  'add' {
  $filename = manualAdd($filename)
  $ProgramArray.Add($filename) > $null
  &$GetInfo

  } 

  'delete' {
  
  CheckAndDelete("Ninite.exe")
  CheckAndDelete("ccsetup569.exe")
  CheckAndDelete("ReaderInstaller.exe")
  Write-Host 'Files deleted'
  &$GetInfo

  } 

  'more' {
  
  Write-Host '"list" lists everything in the ArrayList. "add" allows for manual addition of other Ninite-provided programs. "startup" disables autobooting of programs.'-ForegroundColor green -BackgroundColor black
  Write-Host '"default" will install CCleaner, Chrome, Malwarebytes, and Reader'-ForegroundColor green -BackgroundColor black
  &$GetInfo

  } 

  'startup' {
  
  stopStartup("CCleaner")
  'CCleaner now will not start automatically'
  &$GetInfo

  }

  'all' {
  
  'You will download all listed programs'
  Invoke-WebRequest https://ninite.com/audacity-chrome-firefox-foxit-greenshot-malwarebytes-notepadplusplus-vlc-zoom/ -OutFile Ninite.exe
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  Invoke-WebRequest https://download.ccleaner.com/ccsetup569.exe -OutFile ccsetup569.exe
  Start-Process -FilePath Ninite.exe
  Start-Process -FilePath ccsetup569.exe /S
  cmd ReaderInstaller.exe /sAll

  &$GetInfo

  } 

  'done' {
  
  'Please wait while we install your selections'
  
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
  Write-Host 'Be sure to use "delete" to remove your setup files!' 
  } 
  ElseIf ($ProgramArray.Count -eq 0){
  Write-Host "Please enter at least one program"
  &$GetInfo
  } 
 
} 

Else {

  'Please use a valid response'
  &$GetInfo

}
}
}
Write-Host 'Your options are: Audacity, CCleaner, Chrome, Firefox, Foxit, Greenshot, Malwarebytes, Notepad++, Reader, VLC, Zoom' -ForegroundColor green -BackgroundColor black
Write-Host 'You can use "all" to select all listed options, "reset" to reset your selections, and "done" to finalize everything'-ForegroundColor green -BackgroundColor black
Write-Host '"delete" will remove all setup files. Use "more" for additional commands'-ForegroundColor green -BackgroundColor black
&$GetInfo

