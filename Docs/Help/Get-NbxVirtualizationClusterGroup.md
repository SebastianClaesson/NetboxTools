---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxVirtualizationClusterGroup
---

# Get-NbxVirtualizationClusterGroup

## SYNOPSIS

Retrieves virtualization cluster group records from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxVirtualizationClusterGroup [[-Id] <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  This cmdlet has no aliases.

## DESCRIPTION

Specifies the in the parameter.

## EXAMPLES

### Example 1

PS C:\> Get-NbxVirtualizationClusterGroup -Name 'Group1'

Returns cluster group(s) matching 'Group1'.

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

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES




## RELATED LINKS

 


