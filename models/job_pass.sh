#!/bin/bash
#BSUB -J %%%job_name_pass%%%
#BSUB -P %%%user_id%%%
#BSUB -o %J_%%%job_name_pass%%%.log
#BSUB -e %J_%%%job_name_pass%%%.err
#BSUB -W %%%job_time%%%
#BSUB -n %%%job_cores%%%
#BSUB -u %%%user_mail%%%
#BSUB -N
#BSUB -B

script_file="%%%file_base%%%"

if [[ -f $script_file ]]
then
        source $script_file
else
        echo "No script file found"
        exit 1
fi
