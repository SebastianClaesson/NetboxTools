---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 02-24-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAvailableIP
---

# Get-NbxIPAMAvailableIP

## SYNOPSIS

A convenience method for returning available IP addresses within a prefix

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAvailableIP [-Prefix_ID] <ulong> [<CommonParameters>]
```

## DESCRIPTION

A convenience method for returning available IP addresses within a prefix

## EXAMPLES

### EXAMPLE 1

Get-NbxIPAMAvailableIP -Prefix_ID (Get-NbxIPAMPrefix -Prefix 192.0.2.0/24).id

Get (Next) Available IP on the Prefix 192.0.2.0/24

## PARAMETERS

### -Prefix_ID

A description of the Prefix_ID parameter.

```yaml
Type: System.UInt64
DefaultValue: 0
SupportsWildcards: false
Aliases:
- Id
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

### System.UInt64

Prefix identifier passed to the cmdlet.

## OUTPUTS

## NOTES

Additional information about the function.

## RELATED LINKS