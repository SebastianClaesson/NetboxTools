---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxVirtualMachineInterface
---

# Get-NbxVirtualMachineInterface

## SYNOPSIS

Gets VM interfaces

## SYNTAX

### __AllParameterSets

```
Get-NbxVirtualMachineInterface [[-Id] <ulong>] [<CommonParameters>]
```

## DESCRIPTION

Obtains the interface objects for one or more VMs

## EXAMPLES

### EXAMPLE 1

Get-NbxVirtualMachineInterface

## PARAMETERS

### -Id

Database ID of the interface

```yaml
Type: System.UInt64
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
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

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## OUTPUTS

## NOTES

Additional information about the function.
## RELATED LINKS

