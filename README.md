# NetboxTools
PowerShell module, forked from https://github.com/benclaussen/NetboxPS due to stale project.
We will consider any issues/bugs reports as well as pull requests.

## Ambition
This project will conform to community standards of PowerShell module development.
This includes (but not limited to);
- Each function is broken into a PowerShell script file (Either private or public)
- Each function has a corresponding pester test file
- Each function has a corresponding markdown help file
- New authentication method that includes Anonymous authentication.
- Improved performance and reduce logic/unnesscary connections
- Removing certain parameters and using where-object for filtering instead of server-side (up for discussion)
- Utilizing the correct endpoints (Some functions have not been updated for over 3 years)
- Support Entra id authentication