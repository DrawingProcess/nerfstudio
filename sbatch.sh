#!/usr/bin/bash

#SBATCH -J nerfstudio-mipnerf-custom-headset
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-gpu=8
#SBATCH --mem-per-gpu=32G
#SBATCH -p batch_ugrad
#SBATCH -t 3-0
#SBATCH -o logs/slurm-%A.out

squeue --job $SLURM_JOBID
cat $0

pwd
which python
hostname

ns-train mipnerf --data ../../data/nerf_custom/headset/
# ns-train mipnerf --data ../../data/nerf_custom/headset_only_alphabg/
# ns-train nerfacto --data /data/csj000714/data/nerf_synthetic/lego
# ns-train garfield --data /data/csj000714/data/nerf_synthetic/lego
exit 0
