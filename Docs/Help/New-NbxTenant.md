---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxTenant
---

# New-NbxTenant

## SYNOPSIS

Create a new tenant in Netbox

## SYNTAX

### __AllParameterSets

```
New-NbxTenant [-Name] <string> [-Slug] <string> [[-OptionalAttribute] <hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION

Creates a new tenant object in Netbox

## EXAMPLES

### EXAMPLE 1

New-NbxTenant -Name 'Contoso Inc' -Slug 'contoso-inc'

## PARAMETERS

### -Name

The tenant name, e.g "Contoso Inc"

```yaml
Type: System.String
DefaultValue: ''
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

Optional Attributes as a hashtable

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Slug

The unique URL for the tenant.
Can only contain hypens, A-Z, a-z, 0-9, and underscores
The unique URL for the tenant.
Can only contain hypens, A-Z, a-z, 0-9, and underscores

```yaml
Type: System.String
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### System.String

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## OUTPUTS

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS
