#!/bin/bash

#Adding signature of mine to the all scripts

#first start with basic only 1st CLA

add="
\n#************************************************#
\n#\t\t\t                xyz.sh\t\t\t                #
\n#\t\t           written by Bozo Bozeman\t      #
\n# \t\t\t               July 05, 2001\t\t           #
\n# \t\t                              \t\t\t\t             #
\n# \t\t          Clean up project files.\t      #
\n#************************************************#
"

sed -i "1/i \${add}" $1

#sed -i "/$variable/c \\${variable}1" file.txt
