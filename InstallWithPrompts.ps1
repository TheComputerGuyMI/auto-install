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

  } ElseIf ($NextProgram -eq "Malwarebytes") {
  
  'Malwarebytes will be added'
  $ProgramArray.Add('Malwarebytes') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "Notepad++") {
  
  'Notepad++ will be added'
  $ProgramArray.Add('notepadplusplus') > $null
  &$GetInfo

  } ElseIf ($NextProgram -eq "VLC") {
  
  'VLC will be added'
  $ProgramArray.Add('vlc') > $null
  &$GetInfo

  }
 ElseIf ($NextProgram -eq "Zoom") {
  
  'Zoom will be added'
  $ProgramArray.Add('zoom') > $null
  &$GetInfo

  }  ElseIf ($NextProgram -eq "reset") {
  
  'Your selections will be reset'
  $ProgramArray = @()
  &$GetInfo

  } ElseIf ($NextProgram -eq "all") {
  
  'You will download all listed programs'
  Invoke-WebRequest https://ninite.com/audacity-chrome-firefox-foxit-malwarebytes-notepadplusplus-vlc-zoom/
  &$GetInfo

  }  ElseIf ($NextProgram -eq "done") {
  
  'Please wait while we install your selections'
  foreach ($element in $ProgramArray) 
  {
  $URL += $element + "-"
  Write-Host $URL
  }
  $URL = $URL.Substring(0,$URL.Length-1)
  Write-Host $URL
  $URL = "https://ninite.com/" + $URL + "/ninite.exe"
  Write-Host $URL
  Invoke-WebRequest $URL -OutFile Ninite.exe

  } Else {

  'Please use a valid response'
  &$GetInfo

}
}
&$GetInfo