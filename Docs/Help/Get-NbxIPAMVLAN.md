---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMVLAN
---

# Get-NbxIPAMVLAN

## SYNOPSIS

Retrieves VLAN records from NetBox's IPAM component.

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMVLAN [[-Id] <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  This cmdlet has no aliases.

## DESCRIPTION

Gets one or more VLAN objects. Use `-Id` to return specific VLANs or omit to list all.

## EXAMPLES

### Example 1

PS C:\> Get-NbxIPAMVLAN -Id 10

Returns the VLAN record with ID 10.

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

System.Object

Objects representing VLAN records (properties include `id`, `vid`, `name`, `status`, `site`).

## NOTES




## RELATED LINKS

 


