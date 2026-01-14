---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAddress
---

# Get-NbxIPAMAddress

## SYNOPSIS

Retrieves IPAM address records from NetBox (individual IP addresses).

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAddress [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets IP address objects from the IPAM area of NetBox. Use `-Id` or appropriate filters to narrow results.

## EXAMPLES

### Example 1

PS C:\> Get-NbxIPAMAddress -Id 400

Returns the IPAM address record with ID 400.

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

## OUTPUTS

### System.Object

Detailed description of the cmdlet's behavior. Update this with function-specific details.

## NOTES

## RELATED LINKS
