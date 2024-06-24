#!/bin/bash
#Define the resource requirements here using #SBATCH


#Max wallTime for the job
#SBATCH -t 95:00:00

#Resource requiremenmt commands end here
#SBATCH -p nvidia
#SBATCH --mem=300G
#SBATCH --gres=gpu:a100:1
#SBATCH -w cn255

#Add the lines for running your code/application
source ~/.bashrc
eval "$(conda shell.bash hook)"
conda activate cost_model_env

#Execute the code
python train_model.py