#!/bin/bash
#$ -cwd
#$ -l h_vmem=1330M
#$ -pe smp 6
#$ -R y
# -o and -e need to different for each user.
#$ -o logs/$JOB_ID.o_$TASK_ID
#$ -e logs/$JOB_ID.e_$TASK_ID

python reconstruct.py $SGE_TASK_ID
