# NetboxTools
PowerShell module, forked from https://github.com/benclaussen/NetboxPS due to stale project.

We will consider any issues/bugs reports as well as pull requests.

## Ambition
This project will conform to community standards of PowerShell module development.
This includes (but not limited to);
- ~Each function is broken into a PowerShell script file (Either private or public)~
- ~Each function has a corresponding pester test file~
- ~Each function has a corresponding markdown help file~
- ~New authentication method that includes Anonymous authentication.~
- ~Improved performance and reduce logic/unnesscary connections~
- Removing certain parameters and using where-object for filtering instead of server-side (up for discussion)
  - Implemented "OptionalAttribute" as a input, to dynamically allow input when creating the body used for post.
- Utilizing the correct endpoints (Some functions have not been updated for over 3 years)
- Support Entra id authentication

## Notes
We have no limit for max page size returned by the api (as it is set to 0)
If you are experiencing performance issues when querying, please set the max page size to your desired value.

```pwsh
$NbxConfig.MaxPageSize = 100
```

## Query parameter in action for Get- cmdlets 

We've restructed the Get- cmdlets to include a hashtable when building a query.
When we in this case, want to query for a object with a description, spefici assigned_object_id and created greater date.
`nFor example:

```pwsh
$Query = @{
    assigned_object_id = 373
    description = 'demo'
    created__gt = (Get-date '2022-01-23')
}

Get-NbxIPAMAddress -Query $Query


id                   : 232
url                  : https://netbox.demo/api/ipam/ip-addresses/232/
display_url          : https://netbox.demo/ipam/ip-addresses/232/
display              : 192.168.0.4/32
family               : @{value=4; label=IPv4}
address              : 192.168.0.4/32
vrf                  : 
tenant               : 
status               : @{value=active; label=Active}
role                 : 
assigned_object_type : virtualization.vminterface
assigned_object_id   : 373
assigned_object      : @{id=373; url=https://netbox.demo/api/virtualization/interfaces/373/; display=demo_ipconfig; virtual_machine=; name=demo_ipconfig; description=}
nat_inside           : 
nat_outside          : {}
dns_name             : 
description          : demo
comments             : 
tags                 : {}
custom_fields        : @{}
created              : 2024-01-29 19:38:44
last_updated         : 2024-01-29 19:38:44
```