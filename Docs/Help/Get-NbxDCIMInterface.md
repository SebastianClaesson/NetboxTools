---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxDCIMInterface
---

# Get-NbxDCIMInterface

## SYNOPSIS

Retrieves DCIM interface objects (device interfaces) from NetBox.

## SYNTAX

### __AllParameterSets

```
Get-NbxDCIMInterface [<CommonParameters>]
```

## DESCRIPTION

Gets one or more DCIM interface records. Use `-Id` to specify particular interfaces; omit to list interfaces across devices.

### Example 1

PS C:\> Get-NbxDCIMInterface -Id 101

Returns the DCIM interface with NetBox ID 101.

## PARAMETERS

### -Query

Hashtable containing parameters.

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Query
  Position: Named
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

### System.UInt64

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.Management.Automation.PSObject

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## NOTES

## RELATED LINKS

