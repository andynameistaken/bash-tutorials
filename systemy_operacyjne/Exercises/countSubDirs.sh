#!/bin/bash
echo "Podaj ścieżkę"
read filePath
echo "Podana ścieżka $filePath"
ls -lR "$filePath" | grep ^d | wc -l
ls -lR $filePath | grep ^d

