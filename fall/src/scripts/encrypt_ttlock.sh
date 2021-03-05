#!/bin/bash

function usage {
	echo "run_simulation.sh <bench_file_directory> <scripts_directory> <output_directory>"
}

function main {
	if [ ! -d $1 ] || [ -z $1 ]; then
		echo "Invalid bench_file_directory"
		usage
		exit 1

	elif [ ! -d $2 ] || [ -z $2 ]; then
		echo "Invalid scripts_directory"
		usage
		exit 1
	fi
	scripts_dir=$2
	out_dir=$3
	mkdir -p $outdir
        echo "Encrypting bench files."
        for filename in $1/*.bench; do
                echo "Filename: "$filename 
                num_inputs=$(grep -i input $filename | wc -l) 
                key_inputs=$([ "$num_inputs" -gt 64 ] && echo "64" || echo "$num_inputs")
                echo "Key Inputs: "$key_inputs
                python $scripts_dir/sfll_h_enc.py --hamming 0 -k $key_inputs --outdir $out_dir $filename 
        done	
	for fname in $out_dir/*.bench; do
		echo "Optimizing "$(basename $fname)
		$scripts_dir/optimize.sh $fname
	done
}

main $1 $2 $3 $4
