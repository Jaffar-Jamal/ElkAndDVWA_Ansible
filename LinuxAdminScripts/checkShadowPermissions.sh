#!/bin/bash

output=('./permissionlist.txt')

paths=(
	'/etc/shadow'
	'/etc/passwd'
)

echo 'permission list' > $output
echo "" >> $output

for file in ${paths[@]}

do

ls -lah $file >> $output
echo "" >> $output

done

commands=(
	'date'
	'uname -a'
	'hostname -s'
)

for x in {0..2}
do
	results=$(${commands[$x]})
	echo "Results of \"${commands[$x]}\" command:" >> $output
	echo $results >> $output
	echo "" >> $output
done
