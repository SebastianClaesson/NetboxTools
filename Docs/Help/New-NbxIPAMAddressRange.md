---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: New-NbxIPAMAddressRange
---

# New-NbxIPAMAddressRange

## SYNOPSIS

Create a new IP address range to Netbox

## SYNTAX

### __AllParameterSets

```
New-NbxIPAMAddressRange
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Create a new IP address range to Netbox with a status of Active by default.
The maximum supported
size of an IP range is 2^32 - 1.

## EXAMPLES

### EXAMPLE 1

New-NbxIPAMAddressRange -Start_Address 192.0.2.20/24 -End_Address 192.0.2.20/24

Add new IP Address range from 192.0.2.20/24 to 192.0.2.20/24 with status active

## PARAMETERS

## INPUTS

## OUTPUTS

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## NOTES

https://Nbx.neonet.org/static/docs/models/ipam/iprange/


## RELATED LINKS

{{ Fill in the related links here }}

