---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxVirtualMachine
---

# Get-NbxVirtualMachine

## SYNOPSIS

Obtains virtual machines from Netbox.

## SYNTAX

### __AllParameterSets

```
Get-NbxVirtualMachine [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Obtains one or more virtual machines based on provided filters.

## EXAMPLES

### EXAMPLE 1

Get-NbxVirtualMachine

## PARAMETERS

### -Id

Database ID of the VM

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

## OUTPUTS

## NOTES

Additional information about the function.
## RELATED LINKS

