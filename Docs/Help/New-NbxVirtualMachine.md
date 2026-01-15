---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxVirtualMachine
---

# New-NbxVirtualMachine

## SYNOPSIS

Creates a new virtual machine in NetBox.

## SYNTAX

### __AllParameterSets

```
New-NbxVirtualMachine [-Name] <string> [[-OptionalAttribute] <hashtable>] [<CommonParameters>]
```

## DESCRIPTION

Specifies the in the parameter.

## EXAMPLES

### Example 1

PS C:\> New-NbxVirtualMachine -Name 'vm1' -Cluster 2

Creates a VM named 'vm1' on cluster ID 2.

## PARAMETERS

### -Name

Specifies the VM Name.
The virtual machine name

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OptionalAttribute

Hashtable of optional attributes

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

