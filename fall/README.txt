Because adding flip-flops to all PIs/POs of combinational circuit and subsequently the scan-unroll, try running the attack 
on the combinational circuit itself. If the result is "different", no need to pipeline, lock FFs and their FIs and run again (since SeqL corrupts further). So, if result is "different" for the combinational circuit, then it will be "different" for the SeqL-locked scan-unrolled equivalent ("combinational-pipelined-seql-scan-unrolled" folder) as well. 

python3.5 decrypt_unified.py ../combinational-pipelined-seql-scan-unrolled/ttlock/seq_sfll_h_0_k_41_enc.bench --alg 3


./lcmp ../original/combinational/seq.bench ../combinational-pipelined-seql-scan-unrolled-combinational-extracted/ttlock/seq_sfll_h_0_k_41_enc.bench  key=10000110000011100110110111111000101011110
Error. The encrypted circuit is expected to have the same
number of key inputs as the third argument (41).

(after adding all-zero key at end)
./lcmp ../original/combinational/seq.bench ../combinational-pipelined-seql-scan-unrolled-combinational-extracted/ttlock/seq_sfll_h_0_k_41_enc.bench  key=1000011000001110011011011111100010101111000000
different; #cnt: 128

