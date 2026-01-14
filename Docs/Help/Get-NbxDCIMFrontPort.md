---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxDCIMFrontPort
---

# Get-NbxDCIMFrontPort

## SYNOPSIS

Retrieves front port objects from NetBox (ports exposed on device front panels).

## SYNTAX

### __AllParameterSets

```
Get-NbxDCIMFrontPort [<CommonParameters>]
```

## DESCRIPTION

Gets front port records for DCIM devices in NetBox. Use `-Id` to retrieve specific front ports or omit to list all.

## EXAMPLES

### Example 1

PS C:\> Get-NbxDCIMFrontPort -Device 1

Returns front ports for device ID 1.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.UInt64

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

