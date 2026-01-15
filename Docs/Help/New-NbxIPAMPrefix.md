---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxIPAMPrefix
---

# New-NbxIPAMPrefix

## SYNOPSIS

Creates a new IPAM prefix in NetBox.

## SYNTAX

### __AllParameterSets

```
New-NbxIPAMPrefix [-Prefix] <string> [[-Status] <string>] [[-IsPool] <bool>]
 [[-Description] <string>] [[-OptionalAttribute] <hashtable>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```


## DESCRIPTION

Adds a prefix record (e.g., 192.0.2.0/24) to NetBox with optional role, and tenant parameters.

## EXAMPLES

### Example 1

PS C:\> New-NbxIPAMPrefix -Prefix '192.0.2.0/24'

Creates the prefix 192.0.2.0/24

## PARAMETERS

### -Description

Specifies the Description parameter.
Description of the prefix

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IsPool

Specifies the IsPool parameter.
Whether the prefix is a pool

```yaml
Type: System.Boolean
DefaultValue: None
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

### -OptionalAttribute

Hashtable of optional attributes

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Prefix

Specifies the Prefix parameter.
The IP prefix, e.g.
"192.168.1.0/24"

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

### -Status

Specifies the Status parameter.
The status of the prefix

```yaml
Type: System.String
DefaultValue: None
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

### System.Object

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

