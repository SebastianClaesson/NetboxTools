---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxDCIMDeviceRole
---

# Get-NbxDCIMDeviceRole

## SYNOPSIS

Retrieves device roles from NetBox (e.g., 'server', 'switch').

## SYNTAX

### ById

```
Get-NbxDCIMDeviceRole [-Id <ulong[]>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
This cmdlet has no aliases.

## DESCRIPTION

Gets device role objects from NetBox. Use `-Id` to select specific roles by database ID.

## EXAMPLES

### Example 1

PS C:\> Get-NbxDCIMDeviceRole -Id 5

Returns the device role with ID 5.

## PARAMETERS

### -Id

Specifies the Id parameter.

```yaml
Type: System.UInt64[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ById
  Position: Named
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

Objects representing device role records (properties include `id`, `name`, `slug`, and `description`).

## NOTES




## RELATED LINKS

 


