#!/bin/bash
#SBATCH --job-name=VDJrecord
#SBATCH --time=24:00:00
#SBATCH --partition=rra
#SBATCH --qos=rra
#Notes below for how to estimate time based on what processes need to be run

#SBATCH --ntasks-per-node=8
#SBATCH --mem=40096

#SBATCH --output=output.%j
#SBATCH --error=error.%j



module add apps/python/2.7.11
# -u makes it print stuff immediately instead of everything once it finishes.
python -u t4_run_VDJrecord_kon_dlbcl.py /work/pi_gblanck/Konrad/CMI/CMI_bams_Results/final_csv /work/pi_gblanck/Konrad/CMI/CMI_bams_Results/final_csv/sample.tsv