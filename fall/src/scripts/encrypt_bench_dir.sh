#!/bin/bash

function usage {
	echo "run_simulation.sh <bench_file_directory> <scripts_directory> <output_directory> <hamming_frac>"
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
	elif [ -z $4 ]; then
		echo "Invalid hamming weight"
		usage
		exit 1
	fi
	scripts_dir=$2
	out_dir=$3
	hamming_frac=$4
	mkdir -p $outdir
        echo "Encrypting bench files."
        echo "Hamming Fraction: "$hamming_frac
        for filename in $1/*.bench; do
                echo "Filename: "$filename 
                num_inputs=$(grep -i input $filename | wc -l) 
                key_inputs=$([ "$num_inputs" -gt 64 ] && echo "64" || echo "$num_inputs")
                echo "Key Inputs: "$key_inputs
                python $scripts_dir/sfll_h_enc.py --hamming $((key_inputs / $hamming_frac)) -k $key_inputs --outdir $out_dir $filename
        done	
	for fname in $out_dir/*.bench; do
		echo "Optimizing " $fname
		$scripts_dir/optimize.sh $fname
	done
}

main $1 $2 $3 $4
