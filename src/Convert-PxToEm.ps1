# 4. Script with advanced functions

<#
.SYNOPSIS 
Script with advanced function features to convert pixel to em.
#>

function Convert-PxToEm{
    <#
    .SYNOPSIS 
    Convert pixel to em.
    .DESCRIPTION 
    The Convert-PxToEm function helps to adjust a **pixel** value into equivalent **em** value, based on the default font size of an element.
    .PARAMETER FontSize
    Default font-size of the element.
    .PARAMETER PixelValue
    Pixel Value to convert.
    .INPUTS
    None. You can't pipe objects to Convert-PxToEm.
    .OUTPUTS
    None. You can't return objects for Convert-PxToEm.
    .EXAMPLE
    PS> Convert-PxToEm -FontSize 16 -PixelValue 32
    32 px is equivalent to 0.5 em.
    .LINK
    Online version: https://github.com/egiberne/Convert-PxToEm
    #>

    param(
        [int] $FontSize,
        [int] $PixelValue
    )

    $ratio = $FontSize/$PixelValue

    $output = "$PixelValue px is equivalent to $ratio em."

    Write-Host  $Output
}

# Convert-PxToEm -FontSize 16 -PixelValue 32

# # 3. Script with simple function


# function Convert-PxToEm {

#     param(
#         [int] $FontSize,
#         [int] $PixelValue
#     )

#     $ratio = $FontSize/$PixelValue

#     Write-Host "$PixelValue px is equivalent to $ratio em."
# }


 
# Convert-PxToEm -FontSize 16 -PixelValue 32

# # 2. Script with variable and parameters

# param(
#     # parameters
#     [Int16] $FontSize,
#     [Int16] $PixelValue
# )

# # variable 
# $ratio = $FontSize/$PixelValue

# Write-Host $PixelValue"px is similar to : " $ratio"em."  



# # 1. Script with one-liner commands

# $FontSize = Read-Host "Default font-size of a element" 
# $PixelValue = Read-Host "Pixel value to convert"
# Write-Host $PixelValue"px is : " $($FontSize/$PixelValue) "em."
