---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAddressRange
---

# Get-NbxIPAMAddressRange

## SYNOPSIS

Retrieves IPAM address range objects from NetBox (contiguous address ranges within prefixes).

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAddressRange [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more IPAM address range records from NetBox. Use `-Id` to return specific ranges by NetBox database ID; omit `-Id` to list all ranges.

## EXAMPLES

### Example 1

PS C:\> Get-NbxIPAMAddressRange -Id 123

Returns the address range with ID 123.

## PARAMETERS

### -Id

Specifies the Id parameter.

```yaml
Type: System.UInt64[]
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

### -Query

Hashtable containing parameters.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Query
  Position: Named
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

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Object

Objects representing address range records (properties include `id`, `start_address`, `end_address`, `prefix`).

## NOTES

## RELATED LINKS

