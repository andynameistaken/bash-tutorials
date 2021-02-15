#!/bin/bash

echo "Napisz skrypt, który wypisze nazwy plików z całego katalogu, które zaczynają się od
kropki i w nazwie posiadają literkę b. Nazwa katalogu podana jest jako argument skryptu"

dir_path=$1

echo
echo dir_path: $dir_path

find $dir_path -name '.[!.]*[0-9]'

