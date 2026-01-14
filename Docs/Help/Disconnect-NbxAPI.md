---
document type: cmdlet
external help file: netboxTools-help.xml
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
Disconnect-NbxAPI [<CommonParameters>]
```

## ALIASES

This cmdlet has no aliases.

## DESCRIPTION

Disconnects from the currently configured Netbox API by clearing the module-level connection configuration (`$script:NbxConfig`).
After running this cmdlet the module will no longer have an active connection until `Connect-NbxAPI` is invoked again.

## EXAMPLES

### EXAMPLE 1

Disconnect-NbxAPI

This example clears the active Netbox API connection and removes any stored token and configuration.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

Running this cmdlet does not communicate with the Netbox API; it only clears the locally stored configuration and authentication token.


## RELATED LINKS

 

