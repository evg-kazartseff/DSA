#!/bin/bash
step=10000
for (( count = 10000; count <= 500000; count=count+$step))
do
./lab2 "$count"
sleep 2
done 

cd ../test/
./mkgraph.sh
