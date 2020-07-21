$ProgramArray = New-Object System.Collections.ArrayList
$URL = "https://ninite.com/"

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
  $ProgramArray.Add('Malwarebytes') > $null
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

  } ElseIf ($NextProgram -eq "reset") {
  
  'Your selections will be reset'
  $ProgramArray = @()
  &$GetInfo

  } ElseIf ($NextProgram -eq "list") {
  
  $ProgramArray
  &$GetInfo

  } ElseIf ($NextProgram -eq "all") {
  
  'You will download all listed programs'
  Invoke-WebRequest https://ninite.com/audacity-chrome-firefox-foxit-greenshot-malwarebytes-notepadplusplus-vlc-zoom/ -OutFile Ninite.exe
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  Invoke-WebRequest https://download.ccleaner.com/ccsetup568.exe -OutFile ccsetup568.exe
  Start-Process -FilePath Ninite.exe
  Start-Process -FilePath ccsetup568.exe /S
  Start-Process -FilePath ReaderInstaller.exe /sAll

  &$GetInfo

  } ElseIf ($NextProgram -eq "done") {
  
  'Please wait while we install your selections'
  
  If ($ProgramArray -contains "reader") {
  Invoke-WebRequest http://ftp.adobe.com/pub/adobe/reader/win/AcrobatDC/2000920063/AcroRdrDC2000920063_en_US.exe -OutFile ReaderInstaller.exe
  Start-Process -FilePath ReaderInstaller.exe /sAll
  Remove-Item ReaderInstaller.exe
  $ProgramArray.Remove("reader")
  }
  If ($ProgramArray -contains "CCleaner") {
  Invoke-WebRequest https://download.ccleaner.com/ccsetup568.exe -OutFile ccsetup568.exe
  Start-Process -FilePath ccsetup568.exe /S
  Remove-Item ccsetup568.exe

  $ProgramArray.Remove("CCleaner")
  }
  If($ProgramArray.Count > 0){
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
  Remove-Item Ninite.exe

  } 
  ElseIf ($ProgramArray.Count = 0){
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
&$GetInfo
