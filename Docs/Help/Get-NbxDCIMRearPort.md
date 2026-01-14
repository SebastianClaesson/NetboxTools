---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxDCIMRearPort
---

# Get-NbxDCIMRearPort

## SYNOPSIS

Retrieves rear port records for DCIM devices from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxDCIMRearPort [<CommonParameters>]
```

## DESCRIPTION

Gets one or more rear port objects. Use `-Id` to select specific rear ports or omit to list all rear ports for devices.

## EXAMPLES

### Example 1

PS C:\> Get-NbxDCIMRearPort -Id 22

Returns the rear port with ID 22.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.UInt64

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## OUTPUTS

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

