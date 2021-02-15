#!/bin/bash


ILOSC_WSZYSTKICH=`ls -AlR /bin | egrep  '^d|^-' | wc -l`
ILOSC_PLIKOW=`ls -AlR /bin  | egrep  '^-' | wc -l`
ls -alR /bin | egrep '^d'


