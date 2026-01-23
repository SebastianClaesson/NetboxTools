---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxCircuitTermination
---

# Get-NbxCircuitTermination

## SYNOPSIS

Retrieves circuit termination objects from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxCircuitTermination [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more circuit termination records (attachment points for circuits). Use `-Id` to limit results to specific terminations by NetBox ID.

## EXAMPLES

### Example 1

PS C:\> Get-NbxCircuitTermination -Id 99

Returns the circuit termination with NetBox ID 99.

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

### System.UInt64

None. This cmdlet does not accept pipeline input.
## OUTPUTS

### System.Object

Objects returned by the cmdlet (typically API response objects).
## NOTES

## RELATED LINKS
