---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxDCIMDeviceType
---

# Get-NbxDCIMDeviceType

## SYNOPSIS

Retrieves device type definitions from NetBox (e.g., server models, chassis types).

## SYNTAX

### __AllParameterSets

```
Get-NbxDCIMDeviceType [<CommonParameters>]
```

## DESCRIPTION

Gets one or more device type objects from NetBox. Use `-Id` to request specific device types by database ID; omit `-Id` to list all device types.

## EXAMPLES

### Example 1

PS C:\> Get-NbxDCIMDeviceType -Id 7

Returns the device type entry with ID 7.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Object

Objects representing device type records (properties may include `id`, `model`, `manufacturer`, `slug`, `u_height`).

## NOTES

## RELATED LINKS

