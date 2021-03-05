#original netlist
open my $o_netlist, '<', "../itc-bench/$ARGV[0].bench";

#additional-encryption-logic
open my $stages_connection_logic, '>', "./$ARGV[0]_stages_cl.txt";

chomp(my @lines = <$o_netlist>);
close $o_netlist;

#Flip-flop count
my $ff_count = $ARGV[1];

#Number of cycles in multi-cycle test
my $cycles = $ARGV[2];

#Number of SeqL locked flip-flops
my $no_seql_ll_ffs = $ARGV[3];

#file line counter
my $fln=0;

#flip-flop counter
my $ff_n=0;

my @line;

#Element Type
my @et;

#flip-flop input
my @ff_in;

#loop counter
my $loop_n;
my $loop_n_inc;
my $temp;
while($fln<@lines)
{
	@line = split(' ',$lines[$fln]);
	$fln++;
	
	@et = split('\(', $line[2]);
	if($et[0] eq "DFF") 
	{	
		@ff_in = split('\)',$et[1]); 
	        $ff_n++;
		################SeqL Flip-flops
		if($ff_n <= $no_seql_ll_ffs){
			print $stages_connection_logic "\n#SeqL-locked flip-flops Stage connection logic\n";
			$loop_n=1;
			$loop_n_inc = $loop_n + 1;
			while($loop_n <= $cycles){
					print $stages_connection_logic "$line[0]_$loop_n_inc = BUF($ff_in[0]_$loop_n", "enc)\n";
					$loop_n++;
					$loop_n_inc = $loop_n + 1;
			}
		}
		################Other Flip-flops
		else{
			print "\n#Other flip-flops Stage connection logic\n";
                        $loop_n=1;
			$loop_n_inc = $loop_n + 1;
                        while($loop_n <= $cycles){
                            print $stages_connection_logic "$line[0]_$loop_n_inc = BUF($ff_in[0]_$loop_n)\n";
			    $loop_n++;
			    $loop_n_inc = $loop_n + 1;
                        }
                }
	
	}
	else
	{	
	}
}
close $stages_connection_logic;
