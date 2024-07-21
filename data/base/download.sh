#!/bin/bash

function download {
    wget https://trace.ncbi.nlm.nih.gov/Traces/sra-reads-be/fastq?acc=$1 -O $1.fastq.gz
}

download SRR10192873
download SRR10192872
download SRR10192871
download SRR10192862
download SRR10192863
download SRR10192864
download SRR10192865
download SRR10192866
download SRR10192867
download SRR10192868
download SRR10192869
download SRR10192870

gunzip *.fastq.gz

# link each to their descriptive name


ln SRR10192862.fastq eco_gluc_1.fastq
ln SRR10192863.fastq eco_gluc_2.fastq
ln SRR10192864.fastq eco_gluc_3.fastq
ln SRR10192865.fastq eco_glyc_1.fastq
ln SRR10192866.fastq eco_glyc_2.fastq
ln SRR10192867.fastq eco_glyc_3.fastq
ln SRR10192868.fastq shi_gluc_1.fastq
ln SRR10192869.fastq shi_gluc_2.fastq
ln SRR10192870.fastq shi_gluc_3.fastq
ln SRR10192871.fastq shi_glyc_1.fastq
ln SRR10192872.fastq shi_glyc_2.fastq
ln SRR10192873.fastq shi_glyc_3.fastq