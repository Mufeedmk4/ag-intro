all: 
	featurecounts

featurecounts: counts.txt cov_genome.counts.txt

download_data: genome.gtf test.paired_end.sorted.bam cov_genome.gtf cov_test.paired_end.sorted.bam

%.counts.txt: %_genome.gtf %.paired_end.sorted.bam
	sbatch submit_featurecounts.sh

cov_genome.gtf:
	wget -O cov_genome.gtf https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/genome/genome.gtf
	
cov_test.paired_end.sorted.bam:
	wget -O cov_test.paired_end.sorted.bam https://github.com/nf-core/test-datasets/raw/modules/data/genomics/sarscov2/illumina/bam/test.paired_end.sorted.bam

#testdatadownload
genome.gtf:
    wget https://github.com/nf-core/test-datasets/raw/modules/data/genomics/homo_sapiens/genome/genome.gtf

test.paired_end.sorted.bam:
    wget https://github.com/nf-core/test-datasets/raw/modules/data/genomics/homo_sapiens/illumina/bam/test.paired_end.sorted.bam

conda_env:
	conda env create --name=more-map-and-call --file=env.yaml


running batch job:
	featureCounts: counts.txt cov_genome.counts.txt

	counts.txt
		sbatch submit_job.sh 
	cov_genome.counts.txt	
		sbatch submit_cov.sh 

clean:
	rm genome.gtf test.paired_end.sorted.bam

  