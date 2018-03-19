#!/bin/bash

touch $1
echo "#!/bin/bash" >> $1
chmod a+x $1
nano $1
