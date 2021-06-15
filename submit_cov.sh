all:
download_data featureCounts

#!/bin/bash

#SBATCH --job-name=featurecounts
#SBATCH --ntasks=8
#SBATCH --nodes=1
#SBATCH --mem=8G
#SBATCH --partition=normal
#SBATCH --time=30:00 
#SBATCH --mail-user=mmk160130@utdallas.edu
#SBATCH --mail-type=ALL

ml load subread
featureCounts -t gene -g gene_id -a cov_genome.gtf -o cov_genome.counts.txt cov_test.paired_end.sorted.bam