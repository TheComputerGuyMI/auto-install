powershell -Command "Invoke-WebRequest https://download.ccleaner.com/ccsetup568.exe -OutFile ccsetup568.exe"

powershell -Command "Invoke-WebRequest https://ninite.com/foxit-malwarebytes/ninite.exe -OutFile Ninite.exe"

powershell -Command "Start-Process -FilePath ccsetup568.exe /S"

powershell -Command "Start-Process -FilePath Ninite.exe"
