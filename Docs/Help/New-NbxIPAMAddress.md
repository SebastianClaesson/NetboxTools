---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxIPAMAddress
---

# New-NbxIPAMAddress

## SYNOPSIS

Create a new IP address to Netbox

## SYNTAX

### __AllParameterSets

```
New-NbxIPAMAddress [-Address] <string> [[-OptionalAttribute] <hashtable>] [<CommonParameters>]
```


## DESCRIPTION

Create a new IP address to Netbox with a status of Active by default.

## EXAMPLES

### EXAMPLE 1

New-NbxIPAMAddress -Address 192.0.2.1/32

Add new IP Address 192.0.2.1/32 with status active

## PARAMETERS

### -Address

IP address in CIDR notation: 192.168.1.1/24

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

### System.String

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## OUTPUTS

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

