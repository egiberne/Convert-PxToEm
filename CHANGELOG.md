# Changelog

## 0.10.0 - 2026-04-04
### Add
- Support parameters validation with the statement `ValidateRange`

## 0.9.0 - 2026-04-04
### Changed
- Implement `CmdletBinding` with the keyword `ValueFromPipeline` for $PixelValue assign through the pipeline
- Implement `CmdletBinding` with the keyword `Mandatory` for $PixelValue as it is required
- Replace the ordered list in the roadmap section Script module with unordered list
- Refactor the move to `PSCustomObject` to the section `process`

## 0.8.0 - 2026-04-04
### Added
Implement Cmdlet with using the keyword CmdletBinding
### Changed
- Remove the type of the parameter `-FontSize` and `-PixelValue` to implement splatting afterwards
- Rephrase the content of the roadmap to be more specific

## 0.7.0 - 2026-04-04
### Added
Implement the PSObject to return the default pixel size, the targeted pixel size, the conversion in em and a text result
### Changed
Replaced the examples with new output because of the PSObject returned

## 0.6.0 - 2026-04-04
### Added
Implement the pipeline to assign one or multiple pixel values one to the function by pipping

### Changed
Update the roadmap in the README to detailed the features implemented

## 0.5.0 - 2026-04-04
### Change
Replace the `Write-Host` in the `return` keyword to assign a `String` value to a variable or to pipe to other commands

## 0.4.1 - 2026-04-03
### Fixed
- Correct the script with appropriate comment as know as Comment-Base Help
- Correct the misspelled words in the README

## 0.4.0 - 2026-04-03
### Changed
- Update the README with the new badge for Visual Studio Code
- Use a variable to provide the output of the function with Write-Host
- Update the README with Output sections
### Fixed
Correct the misspelled words in the README

## 0.3.0 - 2026-04-03
### Changed
- Update the README with the section, Requirement to be allow to run the script
- Update the README with the section, Example to explain how to use the script 
- Implement the function `Convert-PxToEm`

## 0.2.1 - 2026-04-03
### Fixed
Correct the Roadmap in the README.md to a ordered list

### Changed
Update the README.md with the badge related to the MIT License

## 0.2.0 - 2026-04-03
### Changed
- Implement the script with variables and parameters
- Update the Roadmap section in the the README with a step, Script with functions

## 0.1.0 - 2026-04-03

### Added
- Implement the script with one-liner commands
- Update the README.md with a badge

## 0.0.0 - 2026-04-03
Initial release