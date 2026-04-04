# Convert-PxToEm

Convert-PxToEm is a PowerShell script that helps to adjust a **pixel** value into equivalent **em** value, based on the default font size of an element.
 
## Roadmap

1. Script with one-liner commands
2. Script with variables and parameters
3. Script with simple function features
    - Implement Comment-base help 
    - Implement default value with help for the font-size
4. Script with advanced function features
    - Return data to variable
    - Assign data via pipeline
    - Return object to variable
5. Script module 
    1. Implement a revert function to convert em to pixel
    1. Implement a main function with `switch` type

> [!IMPORTANT]
> Must set the PowerShell Execution Policy at least to **Unrestricted** to run the script.

## Requirement

Enable the execution of the PowerShell scripts :
```PowerShell

Set-ExecutionPolicy -ExecutionPolicy Unrestricted 

```

Dot-source the function to load it in memory :
```Powershell

. .\Convert-PxToEm.ps1 

Get-ChildItem -Path Function:\Convert*

```

Here is the expected Output:
```Output
CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Convert-PxToEm
```


## Example

Type  the following command:
```PowerShell

Convert-PxToEm -FontSize 16 -PixelValue 32

```

Here is the Output :
```Output

32 px is equivalent to 0.5 em.

```

[![Common Changelog](https://common-changelog.org/badge.svg)](https://common-changelog.org)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)
[![IDE VSCode](https://img.shields.io/badge/Visual_Studio_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)](https://code.visualstudio.com/)