#!/bin/bash
#The name of the job is test_job
#SBATCH -J test_job
#The job requires 1 compute node
#SBATCH -N 1
#The job requires 1 task per node
#SBATCH --ntasks-per-node=1
#The maximum walltime of the job is 5 minutes
#SBATCH -t 150:00:00
#SBATCH --mem=100G
#If you keep the next two lines, you will get an e-mail notification
#whenever something happens to your job (it starts running, completes or fails)
#SBATCH --mail-type=ALL
#Keep this line if you need a GPU for your job
#SBATCH --partition=gpu
#Indicates that you need one GPU node
#SBATCH --gres=gpu:tesla:1
#Commands to execute go below
#Load Python
module load python/3.6.3/CUDA-9.0
#Activate your environment
source activate st
#pip3 install --upgrade simpletransformers
#pip3 install --upgrade transformers
#pip3 install sentence-transformers
#Display Sockeye's help message
#sockeye-train --help
#wget https://github.com/logpai/bugrepo/blob/master/Firefox/mozilla_firefox.zip?raw=true
#wget https://raw.githubusercontent.com/logpai/bugrepo/master/Firefox/train.csv
#wget https://raw.githubusercontent.com/logpai/bugrepo/master/Firefox/test.csv

#unzip mozilla_firefox.zip?raw\=true
#rm mozilla_firefox.zip?raw\=true

#pip3 install strsimpy

#python3 find_duplicate.py
#python3 find_duplicate_rr.py
python3 build_paraphrase.py
