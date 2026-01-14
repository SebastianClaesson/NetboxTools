---
external help file: NetboxTools-help.xml
Module Name: NetboxTools
online version:
schema: 2.0.0
---

# Remove-NbxIPAMPrefix

## SYNOPSIS
Remove an IPAM prefixes from Netbox

## SYNTAX

```
Remove-NbxIPAMPrefix [-Id] <UInt64[]> [-ProgressAction <ActionPreference>] [<CommonParameters>]
```

## DESCRIPTION
Removes/deletes an IPAM prefix from Netbox by ID

## EXAMPLES

### EXAMPLE 1
```
Remove-NbxIPAMPrefix -Id $value1
```

## PARAMETERS

### -Id
Database ID of the IPAM prefix object.

```yaml
Type: UInt64[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Additional information about the function.

## RELATED LINKS
