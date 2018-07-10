#!/usr/bin/env bash
cp squates /usr/bin/squates
chmod a+x /usr/bin/squates
cp allsquates /usr/bin/allsquates
chmod a+x /usr/bin/allsquates
[ -x /usr/bin/squates ] && echo "yes it works" ||  echo "No it is not works"
[ -x /usr/bin/allsquates ] && echo "yes it works" ||  echo "No it is not works"