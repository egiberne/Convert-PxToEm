# Convert-PxToEm

Convert-PxtoEm is a PowerShell script that helps to adjust a **pixel** value into equivalent **em** value, based on the default font size of a element.
 
## Roadmap

1. Script with oneliner commands
2. Script with variables and paramaters
3. Script with simple functions
4. Script with advanced functions
5. Script module

## Requirement

Enable the excecution of the PowerShell scripts :

```PowerShell

Set-ExecutionPolicy -ExecutionPolicy Unrestricted 

```

Dot-source the function to load it in memory :

```Powershell

. .\Convert-PxToEm.ps1 

Get-ChildItem -Path Function:\Convert*

```

## Example

```PowerShell

PS C:\temp\> Convert-PxToEm -FontSize 16 -PixelValue 32

32 px is equivalent to 0.5 em.
0.5
```

[![Common Changelog](https://common-changelog.org/badge.svg)](https://common-changelog.org)
[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)