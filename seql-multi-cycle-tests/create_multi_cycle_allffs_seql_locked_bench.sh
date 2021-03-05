#!/bin/bash
        #$1 is name of benchmark, $2 is number of cycles in multi-cycle-test, $3 is number of flip-flops in the benchmark
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

	#Other Outputs
        echo "##################################Other Outputs"
        cat $1.dffs|sed -e 's/)/_'$i'$enc/'|awk '{print $3}'|sed -e 's/DFF(//'|awk '{print "OUTPUT("$1")"}'
        echo 

        #Key Inputs
        k=$3
        j=$((k-1))	
	echo "#################################Key Inputs"
	for i in `seq 0 $j`
	do
		echo "INPUT(keyinput$i)"
	done
	echo

        #SeqL Key Inputs
        i=$((i+1))
        m=$3+$4*2
        n=$((m-1))
        echo "#################################SeqL Key Inputs"
        for l in `seq $i $n`
        do
                echo "INPUT(keyinput$l)"
        done
        echo

        #Generate encryption logic
        perl generate-eff-encryption-logic.pl $1 $3 $2 $4
	perl generate-additional-encryption-logic.pl $1 $3 $2 $4
        perl generate-stages-connection-logic.pl $1 $3 $2 $4

        #Logic
        echo > $1.unroll-logic
        echo > convert_script_$1
        for i in `seq 1 $2`;
        do
		#echo "####################################################################Unroll $i"
		j=$((i+1))
		#cat $1.dffs|sed -e 's/DFF/BUF/'|sed -e 's/ =/'_$j' =/'|sed -e 's/)/_'$i'enc)/' >> $1.unroll-logic
                cat $1.logic|sed -e 's/)/_'$i')/'|sed -e 's/,/_'$i',/g'|sed -e 's/ =/_'$i'=/' >> $1.unroll-logic
                j=$((i+1))
	        cat $1_ppis.txt |awk '{print "sed -i '"'"'1,$s/("$1"_'$i',/("$1"_'$i'enc,/g""'"'"'" " '$1'.unroll-logic"}' >> convert_script_$1
	        cat $1_ppis.txt |awk '{print "sed -i '"'"'1,$s/ "$1"_'$i',/ "$1"_'$i'enc,/g""'"'"'" " '$1'.unroll-logic"}' >> convert_script_$1
	        cat $1_ppis.txt |awk '{print "sed -i '"'"'1,$s/ "$1"_'$i')/ "$1"_'$i'enc)/g""'"'"'" " '$1'.unroll-logic"}' >> convert_script_$1
		cat $1_ppis.txt |awk '{print "sed -i '"'"'1,$s/("$1"_'$i')/("$1"_'$i'enc)/g""'"'"'" " '$1'.unroll-logic"}' >> convert_script_$1
	done
	source convert_script_$1
	rm convert_script_$1

        #Stages connection logic
        cat $1\_stages_cl.txt

	#Unrolled logic	
	cat $1.unroll-logic  
	
        
	#Additional encryption logic
	cat $1\_additional_el.txt

	#EFF encryption logic
	cat $1\_eff_el.txt
 
