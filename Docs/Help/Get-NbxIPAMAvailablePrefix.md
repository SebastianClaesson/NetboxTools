---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxIPAMAvailablePrefix
---

# Get-NbxIPAMAvailablePrefix

## SYNOPSIS

A convenience method for returning available range within a prefix

## SYNTAX

### __AllParameterSets

```
Get-NbxIPAMAvailablePrefix
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

By default, the number of IPs returned will be equivalent to PAGINATE_COUNT.
An arbitrary limit
(up to MAX_PAGE_SIZE, if set) may be passed, however results will not be paginated

## EXAMPLES

### EXAMPLE 1

Get-NbxIPAMAvailableIP -Prefix_ID (Get-NbxIPAMPrefix -Prefix 192.0.2.0/24).id

Get (Next) Available IP on the Prefix 192.0.2.0/24

## PARAMETERS

## INPUTS

## OUTPUTS

## NOTES

Additional information about the function.


## RELATED LINKS

{{ Fill in the related links here }}

