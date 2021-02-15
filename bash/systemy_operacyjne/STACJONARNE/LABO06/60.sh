#!/bin/bash
if [ -w $0 ]
then
echo "odbieram uprawnienia $0"
chmod u-w $0
else
echo "nadaje uprawnienia $0"
chmod u+w $0
fi
ls -l $0

