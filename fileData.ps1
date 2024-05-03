
#display exif
Write-Host "Exif Data"
#Choose filepath 
$filePath = "C:\Users\wills\Pictures\image.png"

#command
Get-ItemProperty $filePath | Format-List *

#retrieve first 60 bytes of hex data
Write-Host "hex Header:"
Get-Content -Encoding Byte -TotalCount 60 $filePath | Format-Hex
Write-Host "-----------------------------------------------------------------------------"
Write-Host "hex footer:"
#last 60 bytes
Get-Content -Encoding Byte -Tail 60 $filePath | Format-Hex
