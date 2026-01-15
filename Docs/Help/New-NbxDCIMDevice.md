---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-15-2026
PlatyPS schema version: 2024-05-01
title: New-NbxDCIMDevice
---

# New-NbxDCIMDevice

## SYNOPSIS

Creates a new DCIM device record in NetBox.

## SYNTAX

### __AllParameterSets

```
New-NbxDCIMDevice [-Role] <int> [-DeviceType] <int> [-Site] <int> [[-OptionalAttribute] <hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION

Specifies the in the parameter.

## EXAMPLES

### Example 1

PS C:\> New-NbxDCIMDevice -Name 'sw01' -Device_Type 3 -Device_Role 2 -Site 1

Creates device 'sw01' with the specified type and role on site 1.

## PARAMETERS


### -DeviceType

The device type ID

```yaml
Type: System.Int32
DefaultValue: 0
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

Hashtable of optional attributes

```yaml
Type: System.Collections.Hashtable
DefaultValue: ''
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```


### -Role

The device role ID

```yaml
Type: System.Int32
DefaultValue: 0
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

### -Site

Specifies the Site to place the device.
The site ID

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
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

## RELATED LINKS

