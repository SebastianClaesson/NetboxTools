---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxIPAMAddressRange
---

# New-NbxIPAMAddressRange

## SYNOPSIS

Create a new IP address range to Netbox

## SYNTAX

### __AllParameterSets

```
New-NbxIPAMAddressRange [-Start_Address] <string> [-End_Address] <string>
 [[-OptionalAttribute] <hashtable>] [<CommonParameters>]
```


## DESCRIPTION

Create a new IP address range to Netbox with a status of Active by default.
The maximum supported
size of an IP range is 2^32 - 1.

## EXAMPLES

### EXAMPLE 1

New-NbxIPAMAddressRange -Start_Address 192.0.2.20/24 -End_Address 192.0.2.20/24

Add new IP Address range from 192.0.2.20/24 to 192.0.2.20/24 with status active

## PARAMETERS

### -End_Address

Ending IPv4 or IPv6 address (with mask).
The maximum supported size of an IP range is 2^32 - 1.
Ending IPv4 or IPv6 address (with mask).
The maximum supported size of an IP range is 2^32 - 1.

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

### -Start_Address

Starting IPv4 or IPv6 address (with mask).
The maximum supported size of an IP range is 2^32 - 1.
Starting IPv4 or IPv6 address (with mask).
The maximum supported size of an IP range is 2^32 - 1.

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

https://Nbx.neonet.org/static/docs/models/ipam/iprange/

## RELATED LINKS

{{ Fill in the related links here }}

