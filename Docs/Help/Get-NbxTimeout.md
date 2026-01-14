---
document type: cmdlet
external help file: netboxTools-help.xml
HelpUri: ''
Locale: sv-SE
Module Name: NetboxTools
ms.date: 01-14-2026
PlatyPS schema version: 2024-05-01
title: Get-NbxTimeout
---

# Get-NbxTimeout

## SYNOPSIS

Retrieves configured timeout values used by the module or API client.

## SYNTAX

### __AllParameterSets

```
Get-NbxTimeout [<CommonParameters>]
```

## ALIASES

This cmdlet has the following aliases,
  This cmdlet has no aliases.

## DESCRIPTION

Returns current timeout settings or default timeout values used by the module for API requests. Use this to inspect or document timeouts.

## EXAMPLES

### Example 1

PS C:\> Get-NbxTimeout

Returns configured timeout values (in seconds).

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

None. This cmdlet does not accept pipeline input.

## OUTPUTS

### System.UInt16

Timeout value(s) in seconds (may return a single value or a set of named timeout options).

## NOTES




## RELATED LINKS

 


