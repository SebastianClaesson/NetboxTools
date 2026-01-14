---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAggregate
---

# Get-NbxIPAMAggregate

## SYNOPSIS

Retrieves aggregate prefixes (supernets) from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAggregate [[-Id] <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
This cmdlet has no aliases.

## DESCRIPTION

Gets aggregate (supernet) entries from IPAM in NetBox. Use `-Id` to select specific aggregates or omit to list all.

## EXAMPLES

### Example 1

PS C:\> Get-NbxIPAMAggregate -Id 5

Returns the aggregate prefix with ID 5.

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Object

Objects representing aggregate prefix records (properties include `id`, `prefix`, `rir_name`, `date_added`).

## NOTES




## RELATED LINKS

 

