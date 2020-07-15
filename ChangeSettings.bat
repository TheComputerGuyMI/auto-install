powershell -Command "(Get-Content C:\ProgramData\Malwarebytes\MBAMService\config\PoliciesConfig.json).replace('UpdatesAvailable\" : true', 'UpdatesAvailable\" : false') | Set-Content C:\ProgramData\Malwarebytes\MBAMService\config\PoliciesConfig.json"

powershell -Command "(Get-Content C:\ProgramData\Malwarebytes\MBAMService\config\PoliciesConfig.json).replace('TrayNotification\" : true', 'TrayNotification\" : false') | Set-Content C:\ProgramData\Malwarebytes\MBAMService\config\PoliciesConfig.json"

powershell -Command "(Get-Content C:\ProgramData\Malwarebytes\MBAMService\config\LicenseConfig.json).replace('licenseState\" : \"trial', 'licenseState\" : \"free') | Set-Content C:\ProgramData\Malwarebytes\MBAMService\config\LicenseConfig.json"

powershell -Command "(Get-Content C:\ProgramData\Malwarebytes\MBAMService\config\LicenseConfig.json).replace('Cancelled\" : false', 'Cancelled\" : true') | Set-Content C:\ProgramData\Malwarebytes\MBAMService\config\LicenseConfig.json"
