---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxContactAssignment
---

# Get-NbxContactAssignment

## SYNOPSIS

Get a contact Assignment from Netbox

## SYNTAX

### __AllParameterSets

```
Get-NbxContactAssignment [[-Id] <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has no aliases.

## DESCRIPTION

Retrieves one or more contact assignment objects from NetBox. Use -Id to specify database IDs to return specific assignments.

## EXAMPLES

### EXAMPLE 1

Get-NbxContactAssignment

A short example description.

## PARAMETERS

### -Id

The database ID of the contact Assignment

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

Objects representing contact assignment records returned by the cmdlet.

## NOTES

Additional information about the function.


## RELATED LINKS

 

