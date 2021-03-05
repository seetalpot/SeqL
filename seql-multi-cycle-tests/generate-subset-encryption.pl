#original netlist
open my $o_netlist, '<', "../$ARGV[0].bench";

#final netlist
open my $f_netlist, '>', "./$ARGV[0]_comb_subset_enc_$ARGV[2].bench";

#encryption logic
open my $el, '>', "./$ARGV[0]_subset_$ARGV[2]_el.txt";

#pseudo-primary inputs
open my $ppis_enc, '>', "./$ARGV[0]_ppis_subset_enc_$ARGV[2].txt"; 

chomp(my @lines = <$o_netlist>);
close $o_netlist;
my $ff_count = $ARGV[1];
my $enc_ff_count = $ARGV[2]; 

#file line coufnter
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
		print $f_netlist "INPUT($line[0])\n";
		@ff_in = split('\)',$et[1]); 
		print $f_netlist "OUTPUT($ff_in[0]\$enc)\n";
	 	print $f_netlist "INPUT(keyinput$ff_n)\n\n";	
	
		#########################################################################################Input-encryption-logic###################################################################
		print $el "#Input encryption logic for $line[0]\n";
		$ff_n++;
		if($ff_n==1){
			print $el "$line[0]enc = XOR($line[0], keyinput0)\n";
		}
		elsif($ff_n==2){
			print $el "$line[0]enc_0 = XOR($line[0], keyinput0)\n";
			print $el "$line[0]enc = XOR($line[0]enc_0, keyinput1)\n";
		}
		else{
			print $el "$line[0]enc_0 = XOR($line[0], keyinput0)\n";
			$loop_n=0;
			$key_n = $loop_n + 1;
			while($loop_n < $ff_n-2){
				print $el "$line[0]enc_$key_n = XOR($line[0]enc_$loop_n, keyinput$key_n)\n";
				$loop_n++;
				$key_n++;
			}
			print $el "$line[0]enc = XOR($line[0]enc_$loop_n, keyinput$key_n)\n";
		}


		########################################################################################Output-encryption-logic##################################################################
		print $el "#Output encryption logic for $ff_in[0]\n";
		if($ff_n == $enc_ff_count){
			$temp = $ff_n-1;
			print $el "$ff_in[0]\$enc = XOR($ff_in[0], keyinput$temp)\n";	
		}
		elsif($ff_n < $enc_ff_count){
			$key_n = $ff_n-1;
		     	print $el "$ff_in[0]\$enc_0 = XOR($ff_in[0], keyinput$key_n)\n";			
			$temp = 0;
			$key_n++;
			$loop_n = $temp+1;
			while($key_n < $enc_ff_count-1){
				print $el "$ff_in[0]\$enc_$loop_n = XOR($ff_in[0]\$enc_$temp, keyinput$key_n)\n";		
				$temp++;
				$loop_n++;
				$key_n++;
			}
			print $el "$ff_in[0]\$enc = XOR($ff_in[0]\$enc_$temp, keyinput$key_n)\n";
		}
		print $el "\n";	
             }
	     else
	     {
		print $f_netlist "INPUT($line[0])\n";
		@ff_in = split('\)',$et[1]); 
		print $f_netlist "OUTPUT($ff_in[0])\n";	
	
		#########################################################################################Input-encryption-logic###################################################################
		print $el "#Input encryption logic for $line[0]\n";
		$ff_n++;
		print $el "$line[0]enc_0 = XOR($line[0], keyinput0)\n";
		$loop_n=0;
		$key_n = $loop_n + 1;
		while($loop_n < $enc_ff_count-2){
			print $el "$line[0]enc_$key_n = XOR($line[0]enc_$loop_n, keyinput$key_n)\n";
			$loop_n++;
			$key_n++;
		}
			print $el "$line[0]enc = XOR($line[0]enc_$loop_n, keyinput$key_n)\n";
		

		########################################################################################Output-encryption-logic##################################################################
		print $el "#Output encryption logic for $ff_in[0]\n";	
             }
	}
	else
	{	
		print $f_netlist "@line\n";
	}
}
close $el;
open ( BAR, "<", "./$ARGV[0]_subset_$ARGV[2]_el.txt" ) ;

##################################################################################################READ EACH LINE OF temp_encryption_logic.txt (BAR) and add it to final netlist##################
while ( my $temp_enc = <BAR> ) {
  print $f_netlist "$temp_enc";
}

close $f_netlist;
close $ppis_enc;
