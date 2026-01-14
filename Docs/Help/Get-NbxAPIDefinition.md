---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxAPIDefinition
---

# Get-NbxAPIDefinition

## SYNOPSIS

Retrieves the API definition from the NetBox instance (OpenAPI/Swagger format).

## SYNTAX

### __AllParameterSets

```
Get-NbxAPIDefinition [[-Format] <string>] [<CommonParameters>]
```

## ALIASES

This cmdlet has no aliases.

## DESCRIPTION

Gets the NetBox API definition (for example, OpenAPI/Swagger JSON or YAML). Use `-Format` to request a specific format if supported by the API.

## EXAMPLES

### Example 1

PS C:\> Get-NbxAPIDefinition -Format json

Retrieves the NetBox API definition in JSON format.

## PARAMETERS

### -Format

Specifies output format.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.String

The API definition as a string (JSON or YAML) depending on the requested format.

## NOTES




## RELATED LINKS

 

