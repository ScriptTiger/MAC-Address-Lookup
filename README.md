# MAC-Address-Lookup
Lookup tables and tools for vendor OUI information.

Just right-click any of the below links to download them to your computer. If you follow the link, it will just take you to a text file to view it in your browser.

Original source files provided by IEEE:

https://standards.ieee.org/develop/regauth/oui36/oui36.csv

https://standards.ieee.org/develop/regauth/oui28/mam.csv

https://standards.ieee.org/develop/regauth/oui/oui.csv

Regularly synced to IEEE's daily updates.

Master.txt:

https://raw.githubusercontent.com/ScriptTiger/MAC-Address-Lookup/master/master.txt

Complete record of all IEEE-registered OUI blocks reformatted for easier script use.

Simplified.txt:

https://raw.githubusercontent.com/ScriptTiger/MAC-Address-Lookup/master/simplified.txt

Same as master.txt, but block type and vendor address columns removed.

OUI_Search.cmd:

https://raw.githubusercontent.com/ScriptTiger/MAC-Address-Lookup/master/OUI_Search.cmd

Can be used interactively or simply by using the commmand "oui_search XX-XX-XX-XX-XX-XX" for quicker scripted searches. Accepts all standard mac address formats: XX-XX-XX-XX-XX-XX, XXXX-XXXX-XXXX, XX:XX:XX:XX:XX:XX, XXXX:XXXX:XXXX, XXXXXXXXXXXX, etc. This script requires either the Master or Simplified lookup tables above, based on the level of detail you require. If you just need to resolve MACs to vendor names, just use the Simplified. If you need to resolve MACs to the individual addresses of manufacture, use the Master.
