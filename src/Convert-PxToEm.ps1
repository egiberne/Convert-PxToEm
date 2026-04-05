# 4. Script with advanced functions

function Convert-PxToEm{
    <#
    .SYNOPSIS 
    Convert pixel to em.
    .DESCRIPTION 
    The Convert-PxToEm function helps to adjust a pixel value into equivalent em value, based on the default font size of an element.
    .PARAMETER FontSize
    Default font-size of the element.
    .PARAMETER PixelValue
    Pixel Value to convert.
    .INPUTS
    System.Int32. You can pipe integer to Convert-PxToEm, to set the pixel value.
    .OUTPUTS
    System.Management.Automation.PSCustomObject. Convert-PxToEm returns a PSCustomObject that provide result of the conversion.
    .EXAMPLE
    PS> Convert-pxToEm 18 36
    DefaultSize Pixel Ratio Result
    ----------- ----- ----- ------
         18    36  0.50 36px:0.5em
    .EXAMPLE 
    PS>$P2E = Convert-PxToEm 16 32 
    PS> $P2E | Format-List
    DefaultSize : 16
    Pixel       : 32
    Ratio       : 0.5
    Result      : 32px:0.5em
    .EXAMPLE
    PS>16, 32 | Convert-PxToEm -FontSize 16
    DefaultSize Pixel Ratio Result
    ----------- ----- ----- ------
            16    16     1 16px:1em
            16    32  0.50 32px:0.5em
    .LINK
    Online version: https://github.com/egiberne/Convert-PxToEm
    #>

    [CmdletBinding()]
    param(
        [Parameter(Position = 0)]
        #[ValidateNotNullOrEmpty]
        [ValidateRange(1, [int]::MaxValue)]
        [PSDefaultValue(Help= 'Defaults to 16px. Standard browser font size.')]    
        [int]$FontSize = 16,

        [Parameter(
            ValueFromPipeline, 
            ValueFromPipelineByPropertyName, 
            Mandatory)]
        [ValidateRange(1, [int]::MaxValue)]
        [int]$PixelValue
    )
    begin{

    }

    process{

        $PxToEm = [PSCustomObject]@{
            "DefaultPixel"=''
            "TargetedPixel"=''
            "Ratio"=''
        }


        if ($PSItem){ write-host "using pipeline"
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel = $_
            $PxToEm.Ratio = $FontSize/ $_
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Compute" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel) = $($this.Ratio) em"} -Force
            return  $PxToEm
        } else {write-host "not using pipeline"
            $PxToEm.DefaultPixel = $FontSize
            $PxToEm.TargetedPixel=$PixelValue
            $PxToEm.Ratio =  $FontSize/ $PixelValue
            $PxToEm | Add-Member -MemberType ScriptProperty -Name "Compute" -Value {"$($this.DefaultPixel)px/$($this.TargetedPixel) = $($this.Ratio) em"} -Force            
            return  $PxToEm
        }

    }

    end{

    }
    
 
}

# Convert-PxToEm -FontSize 1 -PixelValue 32

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
