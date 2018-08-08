#!/bin/bash
#SBATCH --reservation=dl_uoit_wr_gpu  # reservation name to use
#SBATCH --account=dl_uoit_wa_gpu      # account name to use
#SBATCH --gres=gpu:1                  # Number of GPUs (per node)
#SBATCH --mem=4G                      # memory (per node)
#SBATCH --time=0-00:10                # time (DD-HH:MM)
#SBATCH --output=slurm-%j.out         # output filename pattern; j == jobid
source activate pytorch4
python main.py --no-progress
