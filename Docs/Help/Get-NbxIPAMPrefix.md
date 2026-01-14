---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMPrefix
---

# Get-NbxIPAMPrefix

## SYNOPSIS

Retrieves IPAM prefixes from NetBox (network prefixes such as 192.0.2.0/24).

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMPrefix [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more IPAM prefix objects from NetBox. Use `-Id` to select by database ID, or use other filters when available to locate prefixes.

## EXAMPLES

### EXAMPLE 1

PS C:\> Get-NbxIPAMPrefix -Id 321

Returns the IPAM prefix with ID 321.

## PARAMETERS

### -Id

A description of the Id parameter.

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

None. This cmdlet does not accept pipeline input.

## OUTPUTS

System.Object

Objects representing IPAM prefixes (properties include `id`, `prefix`, `status`, `role`, `site`).

## NOTES

Additional information about the function.
## RELATED LINKS

