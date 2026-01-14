---
document type: cmdlet
external help file: NetboxTools-Help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Disconnect-NbxAPI
---

# Disconnect-NbxAPI

## SYNOPSIS

Disconnects from the Netbox API and clears the stored connection configuration

## SYNTAX

### __AllParameterSets

```
Disconnect-NbxAPI
```

## ALIASES

This cmdlet has the following aliases,
  {{Insert list of aliases}}

## DESCRIPTION

Disconnects from the currently configured Netbox API by clearing the module-level connection configuration (`$script:NbxConfig`).
After running this cmdlet the module will no longer have an active connection until `Connect-NbxAPI` is invoked again.

## EXAMPLES

### EXAMPLE 1

Disconnect-NbxAPI

This example clears the active Netbox API connection and removes any stored token and configuration.

## PARAMETERS

## INPUTS

## OUTPUTS

## NOTES

Running this cmdlet does not communicate with the Netbox API; it only clears the locally stored configuration and authentication token.


## RELATED LINKS

{{ Fill in the related links here }}

