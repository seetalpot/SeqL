#!/bin/bash

for filename in $2/*enc05_opt.bench; do
	time python $1 $filename &> ./outs/$(basename $filename).out  
done
