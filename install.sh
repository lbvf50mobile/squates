#!/usr/bin/env bash
cp squates /usr/bin/squates
chmod a+x /usr/bin/squates
[ -x /usr/bin/squates ] && echo "yes it works" ||  echo "No it is not works"