#!/bin/bash

curl -o lab3-bundle.tar.gz https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

# tr can remove spaces

cat lab3_data.tsv | tr -s '\n' > my_new_file.tsv

tr '\t' ',' < my_new_file.tsv > file.csv

line_count=$(tail -n +2 file.csv | wc -l)

echo "Remaining data lines: $line_count"

tar -czvf converted-archive.tar.gz file.csv
