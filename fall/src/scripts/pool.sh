#! /bin/sh
#PBS -l walltime=3:00:00
#PBS -M pramodsu

cd /export/iitkanpur/logic-locking/ml_logic_locking/src/
python decrypterpool.py /export/iitkanpur/logic-locking/ml_logic_locking/benchmarks/sfll/fixed_benchmarks/ 56
