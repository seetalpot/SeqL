#!/bin/bash
        cp ../itc-bench/$1.bench .
        cat $1.bench |grep -v INPUT|grep -v OUTPUT|grep -v DFF |grep -v "\#" > $1.logic
        cat $1.bench |grep -v INPUT|grep -v OUTPUT|grep DFF > $1.dffs 
        cat $1.bench |grep INPUT > $1.pis
        cat $1.bench |grep OUTPUT > $1.pos

        #Primary Inputs
        for i in `seq 1 $2`
        do     
		echo 
    		echo "##################################Primary Inputs for Unroll-$i"
		cat $1.pis|sed -e 's/)/_'$i')/' 
		echo
        done
        
	#Primary Outputs
	for i in `seq 1 $2`
        do
                echo 
                echo "##################################Primary Outputs for Unroll-$i"
                cat $1.pos|sed -e 's/)/_'$i')/'
                echo
        done

	#Other Inputs
        echo "##################################Other Inputs"
        cat $1.dffs|sed -e 's/ =/_1 =/'|awk '{print $1}'|awk '{print "INPUT("$1")"}'
        echo

        echo "##################################Other Outputs"
        cat $1.dffs|sed -e 's/)/_'$i'/'|awk '{print $3}'|sed -e 's/DFF(//'|awk '{print "OUTPUT("$1")"}'
        echo 


        #Logic
        for i in `seq 1 $2`;
        do
		echo "##################################Unroll $i"
		j=$((i+1))
		cat $1.dffs|sed -e 's/DFF/BUF/'|sed -e 's/ =/'_$j' =/'|sed -e 's/)/_'$i')/'
                cat $1.logic|sed -e 's/)/_'$i')/'|sed -e 's/,/_'$i',/g'|sed -e 's/ =/_'$i'=/'
                j=$((i+1))
        done   
