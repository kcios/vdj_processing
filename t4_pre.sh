#!/bin/bash

#SBATCH --job-name=convert
#SBATCH --time=72:00:00
#SBATCH --output=out.RunVDJ.%A_%a
#SBATCH --error=err.RunVDJ.%A_%a

#SBATCH --mem=180250
#SBATCH --partition=rra
#SBATCH --qos=rra
#SBATCH --nodes=1

module load apps/python/3.8.5

python3 -u "t4_pre_convertCSVtoXLSX.py"