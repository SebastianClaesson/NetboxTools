---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxCircuitProvider
---

# Get-NbxCircuitProvider

## SYNOPSIS

Retrieves circuit provider records from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxCircuitProvider [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more circuit provider objects from NetBox. Use `-Id` to request specific providers by NetBox database ID; omit `-Id` to return all providers.

## EXAMPLES

### Example 1

PS C:\> Get-NbxCircuitProvider -Id 10

Returns the circuit provider with database ID 10.

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

Objects representing circuit provider records (properties include `id`, `name`, `slug`, `asn`, etc.).

## NOTES

## RELATED LINKS
