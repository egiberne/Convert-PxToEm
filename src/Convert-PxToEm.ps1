# Script with oneliner commands

$FontSize = Read-Host "Default font-size of a element" 
$PixelValue = Read-Host "Pixel value to convert"
Write-Host $PixelValue "px is : " $($FontSize/$PixelValue) " em"
