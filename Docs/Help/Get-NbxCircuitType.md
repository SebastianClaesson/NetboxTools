---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxCircuitType
---

# Get-NbxCircuitType

## SYNOPSIS

Retrieves circuit type resources from NetBox (for example, types of circuits such as 'Metro' or 'Long-haul').

## SYNTAX

### __AllParameterSets

```
Get-NbxCircuitType [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more circuit type objects from a NetBox instance. Use `-Id` to return specific types by NetBox database ID; if `-Id` is omitted the cmdlet returns all circuit types. Update this description with any additional filtering or endpoint details as needed.

## EXAMPLES

### Example 1

PS C:\> Get-NbxCircuitType -Id 42

Returns the circuit type object whose NetBox database ID is 42.

## PARAMETERS

### -Id

Specifies one or more NetBox database IDs of the circuit types to retrieve. When omitted, the cmdlet returns all circuit types.

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

Objects representing NetBox circuit type records. Typical properties include `id` (System.UInt64), `name` (string), `slug` (string), and `description` (string).

## NOTES

## RELATED LINKS

