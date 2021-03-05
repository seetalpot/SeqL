#! /bin/bash
for i in $1/*.bench;
do
    fname=$(basename $i)
    benchdir=$1
    scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
    outdir=$benchdir/output
    logfile=$outdir/$fname.log

    echo "benchmark: $fname"
    /usr/bin/time python $scriptdir/find_comparators.py --support $outdir/$fname.support $benchdir/$fname >& $logfile
    /usr/bin/time python $scriptdir/find_supported.py --support $outdir/$fname.support --candidates $outdir/$fname.cand $benchdir/$fname >> $logfile 2>&1
    /usr/bin/time python $scriptdir/detonecounter.py --key $outdir/$fname.key $outdir/$fname.cand >> $logfile 2>&1
done
