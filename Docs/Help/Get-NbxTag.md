---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxTag
---

# Get-NbxTag

## SYNOPSIS

Retrieves tag records used for categorizing NetBox objects.

## SYNTAX

### __AllParameterSets

```
Get-NbxTag [[-Id] <ulong>] [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  This cmdlet has no aliases.

## DESCRIPTION

Gets tag objects from NetBox. Use `-Id` to select specific tags or omit to list all tags.

## EXAMPLES

### Example 1

PS C:\> Get-NbxTag -Id 7

Returns the tag with ID 7.

## PARAMETERS

### -Id

Specifies the Id parameter.

```yaml
Type: System.UInt64
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
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

A detailed description of the cmdlet's behavior. Update with implementation-specific details.

## OUTPUTS

System.Management.Automation.PSObject

Objects representing tag records (`id`, `name`, `slug`).

## NOTES




## RELATED LINKS

 


