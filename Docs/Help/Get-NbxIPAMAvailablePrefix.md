---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAvailablePrefix
---

# Get-NbxIPAMAvailablePrefix

## SYNOPSIS

A convenience method for returning available range within a prefix

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAvailablePrefix [-Prefix_ID] <ulong> [<CommonParameters>]
```

## DESCRIPTION

By default, the number of IPs returned will be equivalent to PAGINATE_COUNT.
An arbitrary limit
(up to MAX_PAGE_SIZE, if set) may be passed, however results will not be paginated

## EXAMPLES

### EXAMPLE 1

PS C:\> Get-NbxIPAMAvailablePrefix -Prefix_ID (Get-NbxIPAMPrefix -Prefix 192.0.2.0/24).id

Returns available prefix ranges or candidate sub-prefixes for the specified prefix.

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

System.Object

A collection of candidate available prefix objects or ranges within the specified prefix.

## NOTES

Additional information about the function.
## RELATED LINKS

