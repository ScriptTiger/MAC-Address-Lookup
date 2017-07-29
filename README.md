# MAC-Address-Lookup
Lookup tables and tools for vendor OUI information.

Original source files provided by IEEE:

https://standards.ieee.org/develop/regauth/oui36/oui36.csv

https://standards.ieee.org/develop/regauth/oui28/mam.csv

https://standards.ieee.org/develop/regauth/oui/oui.csv

Regularly synced to IEEE's daily updates.

Master.txt: Complete record of all IEEE-registered OUI blocks reformatted for easier script use.

Simplified.txt: Same as master.txt, but block type and vendor address columns removed.

OUI_Search.cmd can be used interactively or simply by using the commmand "oui_search XX-XX-XX-XX-XX-XX" for quicker scripted searches. Accepts all standard mac address formats: XX-XX-XX-XX-XX-XX, XXXX-XXXX-XXXX, XX:XX:XX:XX:XX:XX, XXXX:XXXX:XXXX, XXXXXXXXXXXX, etc.
