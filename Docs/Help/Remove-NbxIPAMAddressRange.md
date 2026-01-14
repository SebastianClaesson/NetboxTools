---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Remove-NbxIPAMAddressRange
---

# Remove-NbxIPAMAddressRange

## SYNOPSIS

Remove an IP address range from Netbox

## SYNTAX

### __AllParameterSets

```
Remove-NbxIPAMAddressRange [-Id] <ulong[]> [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Removes/deletes an IP address range from Netbox by ID

## EXAMPLES

### EXAMPLE 1

Remove-NbxIPAMAddressRange -Id 1234

## PARAMETERS

### -Id

Database ID of the IP address range object.

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

