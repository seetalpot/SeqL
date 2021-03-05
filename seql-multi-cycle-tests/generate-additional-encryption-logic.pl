#original netlist
open my $o_netlist, '<', "../itc-bench/$ARGV[0].bench";

#additional-encryption-logic
open my $additional_encryption_logic, '>', "./$ARGV[0]_additional_el.txt";

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

#key counter
my $key_n;

my @line;

#Element Type
my @et;

#flip-flop input
my @ff_in;

#loop counter
my $loop_n;

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
		################SeqL Flip-flop Output-encryption-logic
		if($ff_n <= $no_seql_ll_ffs){
			print $additional_encryption_logic "\n#SeqL Flip-flop Additional Output encryption logic for $line[0]\n";
			$loop_n=1;
			$key_n=$ff_count + ($ff_n)*2 - 1;
			while($loop_n <= $cycles){
				if($loop_n==1) {
					print $additional_encryption_logic "$line[0]_$loop_n", "enc = XOR($line[0]_$loop_n", "encenc, keyinput$key_n)\n";	
				}
				else{
					print $additional_encryption_logic "$line[0]_$loop_n", "enc = XOR($line[0]_$loop_n, keyinput$key_n)\n";
				}
				$loop_n++;
			}
		}
		else{
       			print $additional_encryption_logic "\n#Other Flip-flop Output logic for $line[0]\n";
			$loop_n=1;
			while($loop_n <= $cycles){
                                print $additional_encryption_logic "$line[0]_$loop_n", "enc = BUF($line[0]_$loop_n)\n";
				$loop_n++;
			}
		}
		################SeqL Flip-flop Input-encryption-logic
		if($ff_n <= $no_seql_ll_ffs){
                        print $additional_encryption_logic "\n#SeqL Flip-flop Additional Input encryption logic for $ff_in[0]\n";
                        $loop_n=1;
                        $key_n=$ff_count + ($ff_n-1)*2 ;
                        while($loop_n <= $cycles){
                            print $additional_encryption_logic "$ff_in[0]_$loop_n", "enc = XOR($ff_in[0]_$loop_n, keyinput$key_n)\n";
			    $loop_n++;
                        }
                }
	
	}
	else
	{	
	}
}
close $additional_encryption_logic;
