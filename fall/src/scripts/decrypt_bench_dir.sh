#!/bin/bash

function usage {
	echo "run_simulation.sh <encrypted_bench_file_directory> <scripts_directory> <output_directory>"
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
	elif [ -z $3 ]; then
		echo "Invalid output directory"
		usage
		exit 1
	fi
	scripts_dir=$2
	bench_dir=$1
	dec_dir=$3
	echo "Cracking bench files."
	mkdir -p $dec_dir
	for filename in $bench_dir/*.bench; do
		fname=$(basename $filename)
		echo "Decrypting file: "$fname
		#$scripts_dir/optimize.sh $bench_dir/$fname
		echo "Finding Comparators"		
		time python $scripts_dir/find_comparators.py --support $dec_dir/$fname.support $bench_dir/$fname
		echo "Finding support set"
		time python $scripts_dir/find_supported.py --support $dec_dir/$fname.support --candidates $dec_dir/$fname.cand $bench_dir/$fname
		echo "Attempting to find HD node"
		time python $scripts_dir/detonecounter.py --key $dec_dir/$fname.key $dec_dir/$fname.cand 
	done
	        	
}

main $1 $2 $3 $4
