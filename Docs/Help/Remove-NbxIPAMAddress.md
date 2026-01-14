---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Remove-NbxIPAMAddress
---

# Remove-NbxIPAMAddress

## SYNOPSIS

Remove an IP address from Netbox

## SYNTAX

### __AllParameterSets

```
Remove-NbxIPAMAddress [-Id] <ulong[]> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Removes/deletes an IP address from Netbox by ID and optional other filters

## EXAMPLES

### EXAMPLE 1

Remove-NbxIPAMAddress -Id $value1

## PARAMETERS

### -Id

Database ID of the IP address object.

```yaml
Type: System.UInt64[]
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

## OUTPUTS

## NOTES

Additional information about the function.


## RELATED LINKS

{{ Fill in the related links here }}

