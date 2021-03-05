#original netlist
open my $o_netlist, '<', "../itc-bench/$ARGV[0].bench";

#pseudo-primary inputs
open my $ppis_enc, '>', "./$ARGV[0]_ppis_subset_enc_$ARGV[2].txt"; 

chomp(my @lines = <$o_netlist>);
close $o_netlist;

#Total number of flip-flops
my $ff_count = $ARGV[1];

#Number of encrypted flip-flops
my $enc_ff_count = $ARGV[2]; 

#Number of cycles in multi-cycle test
my $cycles = $ARGV[3];

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
	     if($ff_n < $enc_ff_count)
	     {
		print $ppis_enc "$line[0]\n";
		@ff_in = split('\)',$et[1]); 
	
		#########################################################################################Input-encryption-logic###################################################################
		print "#Input encryption logic for $line[0]_1\n";
		$ff_n++;
		if($ff_n==1){
			print  "$line[0]_1enc = XOR($line[0]_1, keyinput0)\n";
		}
		elsif($ff_n==2){
			print "$line[0]_1enc_0 = XOR($line[0]_1, keyinput0)\n";
			print "$line[0]_1enc = XOR($line[0]_1enc_0, keyinput1)\n";
		}
		else{
			print "$line[0]_1enc_0 = XOR($line[0]_1, keyinput0)\n";
			$loop_n=0;
			$key_n = $loop_n + 1;
			while($loop_n < $ff_n-2){
				print "$line[0]_1enc_$key_n = XOR($line[0]_1enc_$loop_n, keyinput$key_n)\n";
				$loop_n++;
				$key_n++;
			}
			print "$line[0]_1enc = XOR($line[0]_1enc_$loop_n, keyinput$key_n)\n";
		}


		########################################################################################Output-encryption-logic##################################################################
		print "#Output encryption logic for $ff_in[0]_$cycles\n";
		if($ff_n == $enc_ff_count){
			$temp = $ff_n-1;
			print "$ff_in[0]_$cycles\$enc = XOR($ff_in[0]_$cycles, keyinput$temp)\n";	
		}
		elsif($ff_n < $enc_ff_count){
			$key_n = $ff_n-1;
		     	print "$ff_in[0]_$cycles\$enc_0 = XOR($ff_in[0]_$cycles, keyinput$key_n)\n";			
			$temp = 0;
			$key_n++;
			$loop_n = $temp+1;
			while($key_n < $enc_ff_count-1){
				print "$ff_in[0]_$cycles\$enc_$loop_n = XOR($ff_in[0]_$cycles\$enc_$temp, keyinput$key_n)\n";		
				$temp++;
				$loop_n++;
				$key_n++;
			}
			print "$ff_in[0]_$cycles\$enc = XOR($ff_in[0]_$cycles\$enc_$temp, keyinput$key_n)\n";
		}
		print "\n";	
             }
	     else
	     {
		@ff_in = split('\)',$et[1]); 
	
		#########################################################################################Input-encryption-logic###################################################################
		print "#Input encryption logic for $line[0]_1\n";
		$ff_n++;
		print "$line[0]_1enc_0 = XOR($line[0]_1, keyinput0)\n";
		$loop_n=0;
		$key_n = $loop_n + 1;
		while($loop_n < $enc_ff_count-2){
			print "$line[0]_1enc_$key_n = XOR($line[0]_1enc_$loop_n, keyinput$key_n)\n";
			$loop_n++;
			$key_n++;
		}
			print "$line[0]_1enc = XOR($line[0]_1enc_$loop_n, keyinput$key_n)\n";
		

		########################################################################################Output-encryption-logic##################################################################
		print "#Output encryption logic for $ff_in[0]_$cycles\n";	
                print "$ff_in[0]_$cycles\$enc = BUF($ff_in[0]_$cycles)\n\n";
             }
	}
	else
	{	
	}
}

close $ppis_enc;
