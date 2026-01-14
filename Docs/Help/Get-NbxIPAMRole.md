---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMRole
---

# Get-NbxIPAMRole

## SYNOPSIS

Get IPAM Prefix/VLAN roles

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMRole [[-Id] <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

A role indicates the function of a prefix or VLAN.
For example, you might define Data, Voice, and Security roles.
Generally, a prefix will be assigned the same functional role as the VLAN to which it is assigned (if any).

## EXAMPLES

### EXAMPLE 1

Get-NbxIPAMRole

## PARAMETERS

### -Id

Unique ID

```yaml
Type: System.UInt64[]
DefaultValue: ''
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

## OUTPUTS

## NOTES

Additional information about the function.


## RELATED LINKS

 

