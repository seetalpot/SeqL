#! /bin/bash
fname=$(basename $1)
benchdir=$(dirname $1)
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "Decrypting file: "$fname
echo "Finding Comparators"		
time python $scriptdir/find_comparators.py --support $2/$fname.support $benchdir/$fname
echo "Finding support set"
time python $scriptdir/find_supported.py --support $2/$fname.support --candidates $2/$fname.cand $benchdir/$fname
echo "Attempting to find HD node"
time python $scriptdir/detonecounter.py --key $2/$fname.key $2/$fname.cand 
