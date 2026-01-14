---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxTenant
---

# Get-NbxTenant

## SYNOPSIS

Retrieves tenant records from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxTenant [[-Id] <ulong[]>] [<CommonParameters>]
```

## DESCRIPTION

Gets one or more tenant objects from NetBox. Use `-Id` to select specific tenants by ID; omit `-Id` to list all tenants.

## EXAMPLES

### EXAMPLE 1

PS C:\> Get-NbxTenant -Id 8

Returns the tenant with ID 8.

## PARAMETERS

### -Id

The database ID of the tenant

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

Objects representing tenant records (properties include `id`, `name`, `slug`, `description`).

## NOTES

Additional information about the function.
## RELATED LINKS

