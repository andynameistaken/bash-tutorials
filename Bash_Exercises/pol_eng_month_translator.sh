#!/bin/bash

declare -A pol_months
pol_months=(['Styczeń']=1 ['Luty']=2 ['Marzec']=3)
eng_month=(January February March April May June July August September)

#echo "gimme month to translate with firs letter uppercase"
read month_name

mon_index=${pol_months[$month_name]}
((mon_index--))
echo ${eng_month[mon_index]}




