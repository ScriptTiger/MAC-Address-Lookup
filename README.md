# MAC-Address-Lookup
Tired of paying a subscription service to access an API to resolve MAC address data? Just resolving locally and maintaining your own database with this project is faster, cheaper (FREE!), and more secure.

The below master.txt, simplified.txt, and OUI_Complete.zip are regularly synced to IEEE's daily updates. Just right-click any of the below links to download them to your computer.

**This repo requires either the master.txt or simplified.txt present in the same directory to function.  
NOTE: If you decide to use the simplified.txt, set the SIMPLE variable at the top of the script to 1.  
To edit the script, simply right-click the OUI_Search.cmd and select "Edit."**

Master.txt:  
https://scripttiger.github.io/macs/data/master.txt  
Complete record of all IEEE-registered OUI blocks reformatted for easier script use.

Simplified.txt:  
https://scripttiger.github.io/macs/data/simplified.txt  
Same as master.txt, but block type and vendor address columns removed.

Original source files provided by IEEE:  
https://standards.ieee.org/develop/regauth/oui36/oui36.csv  
https://standards.ieee.org/develop/regauth/oui28/mam.csv  
https://standards.ieee.org/develop/regauth/oui/oui.csv

You can download all of the above files packaged together from the following URL:  
https://scripttiger.github.io/macs/data/OUI_Complete.zip  
The above ZIP file is also great if you just need a quick and reliable mirror for the IEEE files, as the IEEE site gets considerable traffic constantly due to the volume and frequency of updates, as well as the whole planet only having one source to get them from. So downloading the files from the original source documents may be difficult at certain times of the day.

To get started, download the below ZIP file and extract the contents to the same directory as either the master.txt or simplified.txt:  
https://github.com/ScriptTiger/MAC-Address-Lookup/archive/master.zip

Can be used interactively or simply by using the commmand "oui_search XX-XX-XX-XX-XX-XX" for quicker scripted searches. Accepts all standard mac address formats: XX-XX-XX-XX-XX-XX, XXXX-XXXX-XXXX, XX:XX:XX:XX:XX:XX, XXXX:XXXX:XXXX, XXXXXXXXXXXX, etc. This script requires either the Master or Simplified lookup tables above, based on the level of detail you require. If you just need to resolve MACs to vendor names, just use the Simplified. If you need to resolve MACs to the individual addresses of manufacture, use the Master.

If you would like to show your support for ScriptTiger, check out the Patreon page to find out how:  
https://www.patreon.com/ScriptTiger
