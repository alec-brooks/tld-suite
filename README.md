#TLD Command Line Suite
A suite of tools to inquire about Top Level Domains.

##Included Tools
###tlds
Returns an up to date list of valid Top Level Domains 
```bash
$ tlds.sh | head -n 3
AAA
AARP
ABARTH
```
###tldify
Given a project name, this tool provides a list of domain names that could incorporate the Top Level Domain as a part of the project name.
```bash
$ tldify.sh toobarmy
toob.army
toobar.my
```
